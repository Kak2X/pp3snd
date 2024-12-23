; =============== Sound_Do ===============
; Entry point of the main sound code.
Sound_Do:
	; No double execution!
	ld   hl, wSndFlags
	bit  SDTB_EXEC, [hl]
	ret  nz
	set  SDTB_EXEC, [hl]
	
IF KEEP_PCM
	;
	; [TCRF] PCM Self-check.
	; If a PCM sample is marked as currently playing, but PCM isn't enabled,
	; clear the former for consistency.
	;
	ld   a, [wSndPcmPlaying]
	and  a								; Some PCM currently playing?
	jr   z, .doQueue					; If not, skip
	ld   a, [wSndFlags]
	bit  SDTB_PCMON, a					; Is PCM support enabled in the driver?
	call z, Sound_DisablePCMPlayback	; If not, disable playback
ENDC
	
.doQueue:
	; Check if there's anything new that we want to play
	ld   a, [wSndBankMain]		; Switch to the bank containing song headers
	ldh  [hROMBank], a
	ld   [MBC1RomBank], a
	call Sound_DoQueue			; Handle the entire queue
	
	; Reset the registers before starting processing.
	; Among others, this allows us to detect which sound channels have been processed on this tick after processing ends.
	call Sound_InitWorkRegs
	
	;
	; Process the individual sound slots, from last to first.
	; This gives higher priority to sound effects, since by convention they use higher slots (4-7)
	; and the sound *channels* the slots target can get processed only once.
	;
	; Usually, the 8 normal slots (wSndChInfo0-7) get processed in a loop as normal.
	; There are three ways to pause the other channels though, with the first two going together:
	; - The sound driver being paused, which goes along with...
	; - ...playing anything in the extra 9th slot.
	;   Pause sounds are played at the same time the sound driver is paused.
	; - Flagging a sound slot with SST_PAUSEREST
	;   This will pause the remaining unprocessed slots.
	;
	
	; DE = Ptr to initial sound slot
	; B  = Number of slots remaining + flags
	ld   hl, wSndFlags
	bit  SDTB_PAUSE, [hl]		; Is the game paused?
	jr   nz, .fromPause			; If so, jump
	ld   a, [wSndChInfoEx0]
	and  a						; Is there anything playing on the ninth channel?
	jr   z, .fromNorm			; If not, jump (normal case)
.fromPause:
	; Pause case: Process only wSndChInfoEx0
	; The SOUND_PAUSED flag forces the game to pause all other sound slots
	; after processing wSndChInfoEx0.
	ld   de, wSndChInfoEx0
	ld   b, SOUND_PAUSED|wSndChInfo_Count
	jr   .setDualPtr
.fromNorm:
	; Normal case: Process the 8 normal channels
	ld   de, wSndChInfo7
	ld   b, wSndChInfo_Count - 1
.setDualPtr:
	; Slot processing frequently uses two pointers to the same slot. (DE and HL)
	; This will be done other times to restore HL.
	ld   h, d					; H = D = $D1
	
.slotLoop:
	xor  a
	ldh  [hSndChInfoNewFlags], a
	push bc
	
	.getFields:
		; Skip processing this slot if it isn't enabled (zeroed out status).
		; Also read it to a fixed location, any updates will be done there.
		ld   a, [de]				; A = iSndChInfo_Status
		and  a						; A == 0?
		ldh  [hSndChInfoStatus], a	; (Copy it here)
		jp   z, .eos				; If so, skip far ahead
		
		
		; Keep track of the base sound slot pointer.
		; Only its low byte can change, so that's the only one we save.
		ld   a, e
		ldh  [hSndChInfoPtrBakLow], a
		
		; Read out the flags to fixed locations, like the status before them.
		; All of these will be saved back right before this slot is done being processed.
		add  iSndChInfo_FxFlags0
		ld   l, a
		ldi  a, [hl]
		ldh  [hSndChInfoFxFlags0], a
		ld   a, [hl]
		ldh  [hSndChInfoFxFlags1], a
		
		;
		; SONG TIMING
		;
		; Every frame, add the song speed to the slot timer.
		; Once that reaches the target value, new data is fetched.
		;
		; Note that the song speed and timer values are 2-byte values, but to save on
		; processing some parts are implicitly 0:
		; - The song speed only has the low byte defined.
		; - The note length only has the high byte defined.
		;
	.timingLow:
		ld   a, e										; HL = Ptr to iSndChInfo_Speed
		add  iSndChInfo_Speed
		ld   l, a
		add  iSndChInfo_Timer_Low - iSndChInfo_Speed	; BC = Ptr to iSndChInfo_Timer_Low
		ld   c, a
		
		; If the speed is 0, treat it as $0100 instead (skip the check, always overflow)
		ld   a, [hl]			; A = iSndChInfo_Timer_Low
		and  a					; A == 0?
		ld   l, c				; (HL = BC, prepare for sum)
		jr   z, .chkKeyRel		; If so, jump (skip next check)
		add  [hl]				; A += iSndChInfo_Timer_Low
		ld   [hl], a			; Save back
		jr   nc, .noNextData	; Did we overflow? If not, we're done timing
		
	.chkKeyRel:
		dec  l					; C = iSndChInfo_KeyRelTarget
		ld   c, [hl]
		dec  l					; B = iSndChInfo_Timer_High
		ld   b, [hl]
		dec  l					; HL = Ptr to iSndChInfo_NoteLen
		
		;##
		;
		; SUSTAIN / RELEASE KEY
		;
		; Times when exactly the key should be released.
		; Doing so clears SSEB_KEYON, on which instrument data can conditionally loop on.
		;
		; [TCRF] A target is required to do this, but the sound data never sets one,
		;        and the instruments don't use conditional loops anyway.
		;
		
		; Skip if we're forcing the key to be pressed
		ldh  a, [hSndChInfoStatus]
		bit  SSTB_KEYHOLD, a
		jr   nz, .timingHi
		
		; Skip if the key is already released
		ldh  a, [hSndChInfoFxFlags0]
		bit  SSEB_KEYON, a
		jr   z, .timingHi
		
		; Skip if no target (iSndChInfo_KeyRelTarget) was specified.
		ld   a, c
		and  a
		jr   z, .timingHi		; Always jumps
		
		;
		; The key is released within iSndChInfo_KeyRelTarget <times we get here> from either the start or end of the note.
		; STGB_END determines which side it is.
		;
		bit  STGB_END, a		; Checking from the end?
		jr   z, .relFromStart	; If not, it's from the start
		
	.relFromEnd:
		;
		; Release key if Timer >= Length - Target
		;            aka Timer + Target >= Length
		;
		
		; Remove type indicator
		and  $FF^STG_END

		; Timer + Target
		; If this overflowed, we're definitely past the target (and the check below wouldn't work)
		add  b 					; A += iSndChInfo_Timer_High
		jr   c, .releaseKey		; Overflowed? If so, jump (ok)
		
		; If that didn't reach the note's length yet, don't clear yet
		cp   [hl]				; A < iSndChInfo_NoteLen?
		jr   c, .timingHi		; If so, jump (skip)
		
		; All OK
		jr   .releaseKey 
		
	.relFromStart:
		;
		; Release key if Timer >= Target.
		;
		cp   b
		jr   c, .timingHi		; iSndChInfo_KeyRelTarget  < iSndChInfo_Timer_High? If so, jump (skip)
		
	.releaseKey:
		;--
		; [POI] Duplicate useless check.
		ldh  a, [hSndChInfoStatus]
		bit  SSTB_KEYHOLD, a
		jr   nz, .timingHi
		;--
		
		; Release the key!
		ldh  a, [hSndChInfoFxFlags0]
		res  SSEB_KEYON, a
		ldh  [hSndChInfoFxFlags0], a
		;##
		
	.timingHi:
		;
		; Increment the high byte of the timer.
		; If that reaches the target, process the next song data bytes.
		;
		inc  b					; A = iSndChInfo_Timer_High + 1
		ld   a, b
		ld   c, l				; BC = Ptr to iSndChInfo_Timer_High
		inc  c
		ld   b, h
		
		ld   [bc], a				; Save back the high byte
		cp   [hl]					; Did it reach the target note length?
		jp   z, Sound_ReadNextData 	; If so, fetch new data. This will return to .soundDataDone once done.
									; It could have been a "call z", but we do not want to execute the following block.
		
	.noNextData:
		; Import the frequency data.
		; This is skipped over when going through Sound_ReadNextData since new data is copied instead.
		ld   a, e				; HL = Ptr to iSndChInfo_Freq_Low
		add  iSndChInfo_Freq_Low
		ld   l, a
		ldi  a, [hl]			; A = iSndChInfo_Freq_Low
		ldh  [hNRx3Data], a		; Sync to here
		ld   a, [hl]			; A = iSndChInfo_Freq_High
		ldh  [hNRx4Data], a		; Sync to here
		
	.soundDataDone:
		; If we jumped to Sound_ReadNextData, execution returns here.
	
		
		; Process envelope data to simulate instruments
		ld   h, d				; Restore slot pointer
		call Sound_DoInstrument
		
		;--
		;
		; Handle pitch bends, if enabled
		;
		
		; Portamento, from note to <uncapped>
		ldh  a, [hSndChInfoFxFlags0]
		bit  SSEB_NS, a
		call nz, Sound_DoNoteSlide
		
		; Pitch bend, from frequency to frequency
		ldh  a, [hSndChInfoFxFlags1]
		bit  SSEB_PITCHBEND, a
		call nz, Sound_DoPitchBend
		;--
		
		call Sound_DoVibrato
		
		; Try to apply noise sweep if that channel is being processed on this slot
		ldh  a, [hSndChInfoStatus]
		bit  SSTB_CH4, a
		call nz, Sound_DoNoiseSweep
		
		; Save slot changes to WRAM mirror
		call Sound_UpdateWorkRegsFromSlot
		
		;##
		;
		; Sound slot-specific fade in/out
		; See also: .chkFade for the global one.
		;
		
		
		ld   h, d
		
		ldh  a, [hSndChInfoFxFlags0]	; A = Flags
		bit  SSEB_FADE, a				; Fading enabled?
		jr   z, .saveFields				; If not, skip ahead
		
		ld   c, a						; C = Flags
		
		
		;
		; SLOT-SPECIFIC FADE
		;
	
		; iSndChInfo_FadeTimer += iSndChInfo_FadeSpeed
		ldh  a, [hSndChInfoPtrBakLow]
		add  iSndChInfo_FadeSpeed
		ld   l, a
		ldi  a, [hl]					; A = iSndChInfo_FadeSpeed, seek to iSndChInfo_FadeTimer
		add  [hl]						; A += iSndChInfo_FadeTimer
		ldi  [hl], a					; Save back to iSndChInfo_FadeTimer, seek to iSndChInfo_FadeTarget
		jr   nc, .saveFields			; Didn't overflow? If so, skip ahead (no volume change)
		
	.chkSlotVolumeTarget:
		;
		; Check if we reached the target volume.
		;
		ld   b, [hl]					; B = iSndChInfo_FadeTarget
		ld   a, l						; HL = Ptr to iSndChInfo_Vol
		add  iSndChInfo_Vol - iSndChInfo_FadeTarget
		ld   l, a
		
		ld   a, [hl]					; A = iSndChInfo_Vol
		cp   b							; iSndChInfo_Vol != iSndChInfo_FadeTarget?
		jr   nz, .chkSlotFadeType		; If not, jump (target not reached yet, alter volume)
		
		; Otherwise, mark the fade as done.
		ld   hl, hSndChInfoFxFlags0
		set  SSEB_FADEDONE, [hl]
		jr   .slotFadeDone
		
	.chkSlotFadeType:
		;--
		; Incrementing or decrementing the volume?
		bit  SSEB_FADEOUT, c			; Doing a fade out?
		jr   nz, .slotFadeOut			; If so, jump
		;--
	.slotFadeIn:
		; Fades always alter the volume by 1.
		; Since a dec is coming, balance it out by doing +2
		add  $02						; Volume += 2
	.slotFadeOut:
		dec  a							; Volume--
		ld   [hl], a					; Save back to iSndChInfo_Vol
		; Fade not done yet
		ld   hl, hSndChInfoFxFlags0		
		res  SSEB_FADEDONE, [hl]
		;##
		
	.slotFadeDone:
		; We overwrote HL with hSndChInfoFxFlags0, so restore (the high byte) back to the normal.
		; The lower byte is restored right below.
		ld   h, d
		
	.saveFields:
		
		;
		; Save the changes to the fields we got at the start of processing
		;
		ldh  a, [hSndChInfoPtrBakLow]	; DE = Ptr to iSndChInfo_Status
		ld   e, a
		add  iSndChInfo_FxFlags0		; HL = Ptr to iSndChInfo_FxFlags0
		ld   l, a
		
		ldh  a, [hSndChInfoStatus]		; hSndChInfoStatus to iSndChInfo_Status
		ld   [de], a
		ldh  a, [hSndChInfoFxFlags0]	; hSndChInfoFxFlags0 to iSndChInfo_FxFlags0
		ldi  [hl], a
		ldh  a, [hSndChInfoFxFlags1]	; hSndChInfoFxFlags1 to iSndChInfo_FxFlags1
		ld   [hl], a
		;--
		; Not necessary
		ldh  a, [hSndChInfoPtrBakLow]	
		ld   e, a
		;--
	.eos:
	pop  bc ; B = Slots left
	
	;##
	;
	; Processed the slot.
	; Before seeking to the previous one, see if the remaining slots get to be paused.
	;
	
	bit  SOUNDB_PAUSED, b		; Are we paused or playing an exclusive sound?
	jr   nz, .eosPause			; If so, jump
	
	ld   a, [de]
	bit  SSTB_PAUSEREST, a		; Doing a sound effect that pauses BGM while playing?
	jr   z, .eosNorm			; If not, jump
	
.eosPause:
	;
	; Pause mode.
	;
	; Since we're not processing the remaining slots (which is how pausing works),
	; mute them all to prevent their notes from hanging.
	;
	
	res  SOUNDB_PAUSED, b		; Filter out flags from counter
	dec  b						; From the previous slot... (1/2)
	jr   z, .chkFade			; Skip ahead if there are none left
	
	ld   a, e					; Seek to the field to bulk set, iSndChInfo_FxFlags1
	add  iSndChInfo_FxFlags1
	ld   l, a
	ld   de, -wSndChInfo_Size	; From the previous slot... (2/2)
	add  hl, de					; ""
.pauseLoop:
	set  SSEB_MUTED, [hl]		; No audio out from this
	add  hl, de					; Seek to previous slot
	dec  b						; SlotsLeft--
	jr   nz, .pauseLoop			; Done? If not, loop
	
	jr   .chkFade
	
.eosNorm:

	;
	; Normal mode.
	; Just seek back to the previous slot, if there's one.
	;
	ld   hl, -wSndChInfo_Size	; DE = -$30 (to seek back to previous slot)
	add  hl, de					; Seek there
	ld   d, h					; DE = HL
	ld   e, l
	dec  b						; SlotsLeft--
	jp   nz, .slotLoop			; Done? If not, loop
	;##
	
.chkFade:
	;
	; GLOBAL FADE
	;
	ld   a, [wSndFlags]			; A = Flags
	bit  SDTB_FADE, a			; Fading enabled?
	jr   z, .end				; If not, skip ahead
	
	ld   c, a					; C = Flags
	
	;
	; Handle the fade timing.
	;
	; Every frame, do wSndFadeTimerSub += wSndFadeIncSpeedSub.
	; Update the volume only when the result overflows.
	;
	; Note that the command that sets the fade speed initializes its timer to $FF, which guarantees
	; the volume updating immediately the first frame it processes the fade.
	;
	
	ld   hl, wSndFadeIncSpeedSub
	ldi  a, [hl]				; A = wSndFadeIncSpeedSub, seek to wSndFadeTimerSub
	add  [hl]					; A += wSndFadeTimerSub
	ldi  [hl], a				; Save back to wSndFadeTimerSub, seek to wSndFadeVolumeTarget
	jr   nc, .end				; Didn't overflow? If so, skip ahead (no volume change)
	
.chkFadeType:
	; Incrementing or decrementing the volume?
	bit  SDTB_FADEOUT, c		; Doing a fade out?
	jr   nz, .fadeOut			; If so, jump
	;--
	
.fadeIn:
	; Increment the volume until it reaches the target, then disable the fade.
	ldi  a, [hl]				; A = wSndFadeVolumeTarget, seek to wSndFadeVolume 
	cp   [hl]					; wSndFadeVolumeTarget == wSndFadeVolume?
	jr   z, .fadeInTargetOk		; If so, jump
	inc  [hl]					; Otherwise, wSndFadeVolume++
	jr   .end
.fadeInTargetOk:
	call Sound_FadeInTargetReached	; End the fade
	jr   .end
	;--
	
.fadeOut:
	; Decrement the volume until it reaches the target value
	ldi  a, [hl]				; A = wSndFadeVolumeTarget, seek to wSndFadeVolume 
	cp   [hl]					; wSndFadeVolumeTarget == wSndFadeVolume?
	jr   z, .end				; If so, skip
	dec  [hl]					; Otherwise, wSndFadeVolume--
	;--
	
	;##
.end:
	; Sync the registers from the WRAM mirror
	call Sound_UpdateRegs
	
	; We're done processing the sound driver
	ld   hl, wSndFlags
	res  SDTB_EXEC, [hl]
	
	; In case any previous processing added anything to the queue (ie: mute commands),
	; handle them before returning.
	jp   Sound_DoQueue
	
; =============== Sound_UpdateRegs ===============
; Copies the sound register mirror in WRAM to the changes to the hardware registers. 
Sound_UpdateRegs:

	;
	; Pulse 1
	;
	
	; Update NR12 only if the channel is retriggered, as those changes wouldn't do anything.
	; Always update NR10 though.
	ld   hl, wNR12
	ld   a, [wNR14]
	bit  SNDCHFB_RESTART, a		; Retriggering the channel?
	ldi  a, [hl]				; (A = wNR12, seek to wNR13)
	jr   z, .ch1_no2			; If not, skip
.ch1_with2:
	ldh  [rNR12], a				; Sync NR12
	ld   a, [wNR10]
	ldh  [rNR10], a				; Sync NR10
	jr   .ch1_setOther
.ch1_no2:
	; [TCRF] If NR10 is zeroed out, skip updating the other fields (never happens)
	ld   a, [wNR10]				; Sync NR10
	ldh  [rNR10], a
	and  a
	jr   z, .ch1_setOther
	;--
	inc  l ; Seek to wNR14
	inc  l ; Seek to wNR51_ChMask2
	jr   .ch2
	;--
.ch1_setOther:
	; Sync over the other fields
	ldi  a, [hl]
	ldh  [rNR13], a
	ldi  a, [hl]
	ldh  [rNR14], a
	ld   a, [wNR11]
	ldh  [rNR11], a
	
.ch2:
	;
	; Pulse 2
	;
	
	; Update NR22 only if the channel is retriggered.
	inc  l ; Seek to wNR21
	inc  l ; Seek to wNR22
	ld   a, [wNR24]
	bit  SNDCHFB_RESTART, a		; Retriggering the channel?
	ldi  a, [hl]				; (A = wNR22, seek to wNR23)
	jr   z, .ch2_setOther		; If not, skip
	ldh  [rNR22], a
.ch2_setOther:
	ldi  a, [hl]
	ldh  [rNR23], a
	ldi  a, [hl]
	ldh  [rNR24], a
	ld   a, [wNR21]
	ldh  [rNR21], a
	
IF KEEP_PCM

.pcm:
	;
	; [TCRF] Wave Channel - PCM Mode.
	;
	; This is pulled off by having the waveform set to all $FF (Sound_ClearWave will do that)
	; and altering the wave channel's volume at a very fast rate, through the GB's timer interrupt.
	;
	; However... the feature isn't used, the timer interrupt doesn't ever call the PCM handler, 
	; and the bank intended to contain PCM definitions is completely blank.
	;
	; Either this feature was never fully implemented, or it got cut for performance issues on the DMG.
	; Worth noting that the GBC-only sequel *does* have PCM samples.
	;
	
	;
	; If we want to play a new PCM sample, wSndPcmSpeedSet and wSndPcmIDSet must be set.
	;
	; wSndPcmIDSet     -> PCM Sample ID
	; wSndPcmSpeedSet  -> Playback speed. The lower it is, the lower rate the sample plays.
	;                     This is because it maps to rTMA, marking how the timer interrupt (new PCM data)
	;                     should happen every ($100 - wSndPcmSpeedSet) rTIMA overflows.
	;                     Note that the base clock speed (rTAC) is hardcoded to the max possible frequency.
	;
	
	; This check right below has two purposes:
	; - If a new PCM has been requested, it checks if a speed has been set
	; - If existing PCM is playing, it checks if it can continue. (!)
	;   This is because Sound_UpdateWorkRegsFromSlot sets it to $01 when it passes validation.
	; Note that wSndPcmSpeedSet and wSndPcmIDSet are reset at the start of the frame.
	ld   hl, wSndPcmSpeedSet
	ldd  a, [hl]				; A = wSndPcmSpeedSet, seek to wSndPcmIDSet
	and  a						; A == 0? (PCM can continue? / Is a PCM speed set?)
	jr   z, .pcm_tryEnd			; If not, jump (always happens, end PCM playback)
	; We never get here
	
	; Check if a new PCM has been set or not.
	; If it hasn't, skip to ch4 and don't alter anything. This is the normal behaviour when PCM is playing.
	ld   a, [hl] 				; A = wSndPcmIDSet
	and  a						; A == 0?
	jr   z, .pcm_noChange		; If so, skip this (nothing to do)
	
.pcm_new:
	;
	; Index the table of PCM settings and copy them over.
	; Each entry in the table is 5 bytes long:
	; - 0-1: Data Pointer
	; - 2: Data Bank Number
	; - 3: Number of samples / 4
	; - 4: Playback speed [rTMA]
	;
	
	; HL = Sound_PCMTable[wSndPcmIDSet]
	add  a ; *2
	add  a ; *2
	add  a, [hl] ; +1
	ld   l, a
	ld   h, HIGH(Sound_PCMTable); + table base
	; Switch to the bank supposed to contain this data.
	ld   a, [wSndBankPcmDef]
	ldh  [hROMBank], a
	ld   [MBC1RomBank], a
	
	; We don't want the interrupt to trigger in the middle of changing the PCM state.
	; [POI] Yon opts to fully disable it from rIE
	ld   a, rTAC_262144_HZ		; Disable timer interrupt
	ldh  [rTAC], a

	; Read out the far pointer
	ldi  a, [hl]				; C = byte0
	ld   c, a
	ldi  a, [hl]				; B = byte1
	ld   b, a
	ld   e, l					; DE = Ptr to byte2
	ld   d, h
	
	; Initialize data byte to nothing
	ld   hl, hPCMVolData
	ld   [hl], $00 				; hPCMVolData = 0
	inc  l
	; Make Sound_PCMHandler fetch the next byte immediately
	ld   [hl], $01 				; hPCMVolPairsLeft = 1
	inc  l
	
	ld   a, [de]				; A = byte2
	inc  de 					; Seek to byte3
	
	; Save data pointer
	ldi  [hl], a				; hPCMDataBank = byte2
	ld   [hl], b				; hPCMDataPtrHigh = byte1
	inc  l
	ld   [hl], c				; hPCMDataPtrLow = byte0
	inc  l						; Seek to hPCMDataLeft
	
	; Save sample length
	ld   a, [de]				; A = byte3
	inc  de						; Seek to byte4
	ld   [hl], a				; hPCMDataLeft = byte3
	
	;
	; If a custom playback speed isn't being specified (wSndPcmSpeedSet == $FF), use the one from the entry's byte4.
	; As a side effect of how this check works, the custom speed is offset by 1.
	;
	ld   a, [wSndPcmSpeedSet]
	inc  a						; wSndPcmSpeedSet + 1 != 0?
	jr   nz, .pcm_setTimer		; If so, jump (use override)
	ld   a, [de] 				; Otherwise, A = byte4
.pcm_setTimer:
	ldh  [rTMA], a 				; Set new speed
	ldh  [rTIMA], a 			; This will cause an almost immediate overflow
	
	;
	; Prepare the wave channel for PCM playback.
	;
.pcm_prepCh3:
	; Disable ch3, in preparation for potentially clearing wave data
	xor  a
	ldh  [rNR30], a
	ldh  [rNR34], a
	ldh  [rNR32], a
	
	; Clear the wave data to all $FF if it isn't already.
	ld   a, [wWaveCurId]
	cp   $FF					; Wave data is already cleared?
	call nz, Sound_ClearWave	; If not, do that
	
	; A will always be $FF when we get here.
	
	; Set max period value
	ldh  [rNR33], a
	; Enable the channel
	ld   a, SNDCH3_ON + $07
	ldh  [rNR30], a
	; And save the changes with a retrigger
	ldh  [rNR34], a
	; Always use the longest possible length (NR31 = 0)
	xor  a
	ldh  [rNR31], a

	; Finally, enable the timer, at the max possible base frequency
	ld   a, (1 << rTAC_ON) | rTAC_262144_HZ
	ldh  [rTAC], a
	; And flag that a PCM sample is currently playing (!= 0)
	ld   [wSndPcmPlaying], a

.pcm_noChange:
	; PCM being enabled implies that the wave channel cannot be used for its normal purpose.
	ld   hl, wNR42				; So skip to ch4
	jr   .ch4
	
.pcm_tryEnd:
	; End PCM playback if PCM is currently playing.
	ld   a, [wSndPcmPlaying]
	and  a						; Is it?
	jr   z, .ch3				; If not, jump
	;--
	; We never get here
	call Sound_DisablePCM
	;--
	;##
ENDC
.ch3:

	;
	; Wave Channel - Normal Mode
	;
	
	; First, switch waveforms if needed.
	ld   hl, wWaveSetId
	ldi  a, [hl]				; A = New waveform ID, seek to wWaveCurId
	cp   [hl]					; Does it match the current one?
	jr   z, .ch3_regs			; If not, skip
.ch3_newWave:					; Otherwise...
	; Update current value (wWaveCurId)
	ld   [hl], a		
	
	;
	; Index the wave table and copy over the entry to the registers.
	;
	
	; BC = A * $10
	swap a
	ld   b, a
	and  $F0
	ld   c, a
	ld   a, b
	and  $0F
	ld   b, a
	
	; Offset it
	ld   hl, Sound_WaveTable
	add  hl, bc
	
	; Copy the $10 bytes of wave data to the regs
	ld   c, LOW(rWave)  		; C = Destination
	ld   b, $04					; B = Loop count
	xor  a						; Disable ch3 during this
	ldh  [rNR30], a
.waveCpLoop:
REPT 4
	ldi  a, [hl]				; Read in, next src
	ld   [c], a					; Write out
	inc  c						; Next dest
ENDR
	dec  b
	jr   nz, .waveCpLoop
	
	; Apply the changes
	ld   hl, wNR34
	set  SNDCHFB_RESTART, [hl]
	
.ch3_regs:
	;
	; Copy over the other ch3 registers
	;
	
	; Cut off the channel if it isn't being processed.
	; For reasons explained in Sound_UpdateWorkRegsFromSlot, this channel
	; must silence itself manually here when it isn't processed.
	ld   hl, wNR51_ChMask3
	ldi  a, [hl]				; read, seek to wNR30
	and  a						; Has the channel been processed? (wNR51_ChMask3 == 0)
	jr   z, .ch3_onSet			; If so, jump
.ch3_onClear:
	ld   [hl], $00				; Mark the channel as processed
	ldh  [rNR30], a				; Silence!
	ld   l, LOW(wNR42)
	jr   .ch4					; Don't do anything else
.ch3_onSet:

	; Do the write to enable the channel rNR30 only if we're retriggering it
	ld   a, [wNR34]
	bit  SNDCHFB_RESTART, a		; Retriggering the channel?
	jr   z, .ch3_setOther		; If not, skip
	ld   a, SNDCH3_ON
	ldh  [rNR30], a				; Otherwise, enable it
	ld   [hl], a				; Also copy to WRAM mirror
.ch3_setOther:
	; Sync NR32-4
	ld   l, LOW(wNR32)
	ldi  a, [hl]
	ldh  [rNR32], a
	ldi  a, [hl]
	ldh  [rNR33], a
	ldi  a, [hl] 				; ..., seek to wNR51_ChMask4
	ldh  [rNR34], a
	
	; Always use the longest possible length (NR31 = 0)
	xor  a
	ldh  [rNR31], a
	
	inc  l 						; Seek to wNR41
	inc  l 						; Seek to wNR42
	
.ch4:
	;
	; Noise channel
	;
	
	; Only update rNR42 if retriggering it
	ld   a, [wNR44]
	bit  SNDCHFB_RESTART, a		; Retriggering the channel?
	ldi  a, [hl]				; (A = wNR42, seek to wNR43)
	jr   z, .ch4_setOther		; If not, skip
	ldh  [rNR42], a
.ch4_setOther:
	; Sync NR43-4
	ldi  a, [hl]
	ldh  [rNR43], a
	ldi  a, [hl]
	ldh  [rNR44], a
	; And the bitmask with enabled channels
	ldi  a, [hl]
	ldh  [rNR51], a
	ret
	
IF KEEP_PCM
; =============== Sound_PCMHandler ===============
; [TCRF] Interrupt handler for feeding new PCM data through the wave channel's volume.
; This is supposed to be hooked up by the sound driver's init code as in Yon, but it doesn't happen in this game.
Sound_PCMHandler:
	;
	; PCM data has a bit depth of 2, allowing four pairs to fit in a byte
	; (hPCMVolData), ordered from top to bottom.
	; 
	; Only the topmost two bits of NR32 matter, so we can set to it the
	; current data byte directly, then shift left the next pair in place.
	;
	push af
		; Set PCM data
		ldh  a, [hPCMVolData]
		ldh  [rNR32], a
		; << 2 the next data in-place
		rlca 
		rlca 
		ldh  [hPCMVolData], a
		
		; PairsLeft--
		ldh  a, [hPCMVolPairsLeft]
		dec  a						; Shifted out all 4 pairs?
		jr   z, .fetchNext			; If so, fetch some more
		ldh  [hPCMVolPairsLeft], a
	pop  af
	reti
	
	.fetchNext:
		push hl
		
			; Reset the pair counter
			ld   hl, hPCMVolPairsLeft
			ld   [hl], $04			; 4 pairs of 2 bits
			
			; Bankswitch to the bank with this PCM data
			inc  l					; Seek to hPCMDataBank
			ldi  a, [hl]			; Read bank number, seek to hPCMDataPtrHigh
			ld   [MBC1RomBank], a
			
				; Read out the data pointer to HL
				ldi  a, [hl]			
				ld   l, [hl]		; L = hPCMDataPtrLow
				ld   h, a			; H = hPCMDataPtrHigh
				
				; Get the next PCM byte and increment the data pointer
				ldi  a, [hl]
				ldh  [hPCMVolData], a
			
			; Bankswitch back
			ldh  a, [hROMBank]
			ld   [MBC1RomBank], a
			
			; Save back updated data pointer
		.setLowByte:
			ld   a, l
			and  a					; Low byte overflowed?	
			ldh  [hPCMDataPtrLow], a	; (Write low byte)
			jr   z, .setHighByte	; If so, jump
		pop  hl
	pop  af
	reti 
		.setHighByte:
			ld   a, h
			ld   hl, hPCMDataPtrHigh
			ldi  [hl], a			; Write high byte, seek to hPCMDataPtrLow
		.decBytesLeft:
			; Decrement the number of pairs left.
			; If there's nothing left, end PCM playback.
			inc  l					; Seek to hPCMDataLeft
			dec  [hl]				; hPCMDataLeft--
		pop  hl
		jr   nz, .end				; hPCMDataLeft != 0? If so, skip
		
		; Otherwise, mark PCM playback as ended.
		; This causes Sound_UpdateWorkRegsFromSlot to tell Sound_UpdateRegs that PCM playback should end.
		xor  a
		ld   [wSndPcmPlaying], a	
		; And disable the timer counter.
		; This prevents the interrupt from firing.
		ldh  [rTAC], a
	.end:
	pop  af
	reti 
	;--
ENDC

; =============== Sound_ReadNextData ===============
; Handles the next command in the song data.
; IN
; - DE: Ptr to sound slot
; - HL: Ptr to sound slot
Sound_ReadNextData:

	;
	; Seek to the address the data pointer currently is, bankswitching as needed.
	; The command will be read from that location.
	;
	
	; HL = Ptr to data pointer (low byte)
	ld   a, e
	add  iSndChInfo_DataPtr_Low
	ld   l, a
	; DE = Ptr to bank number
	add  iSndChInfo_Bank - iSndChInfo_DataPtr_Low
	ld   e, a
	
	; Perform the bankswitch
	ld   a, [de]
	ldh  [hROMBank], a
	ld   [MBC1RomBank], a
	
	ld   h, d ; Not necessary
	
	; BC = Current ptr to song data
	ldi  a, [hl]
	ld   c, a
	ld   b, [hl]
.loop:

	;
	; Determine what type of command we're handling.
	; Sound commands are split in groups:
	; - $00-$7F:
	;   New note
	; - $80-$A5:
	;   Special commands
	; - $C0-$C9:
	;   New note from preset
	; - $DE-$FF:
	;   Same note, different args
	;

	ld   a, [bc]						; A = Command ID
	bit  SNDDATACMDB_SPEC_START, a		; A < $80?
	jp   z, SoundDataCmd_Note			; If so, jump 
	cp   SNDDATACMD_NOTEPRESET_START	; A >= $C0?
	jp   nc, SoundDataCmd_NoteEx		; If so, jump
	
.specCmd:
	;
	; Special commands, handled by a jump table.
	; As they may not set new frequency data, most return to the command loop once done.
	;
	; FORMAT:
	; <command id>[<1st argument>[<2nd argument>,[...]]]
	; Arguments are command-specific, some may have more than one or even none.
	;
	; Command handlers all take the following arguments:
	; IN
	; - BC: Ptr to <1st argument>
	; - E: <1st argument>
	;      Can be ignored if the command doesn't have any.
	; - A: Also the <1st argument>.
	; OUT
	; - BC: Updated data pointer (-1, see below)
	;
	call .execSpecCmd
	;--
	ldh  a, [hSndChInfoPtrBakLow] ; What
	;--
	
	; This is here so commands don't have to manually seek past their last argument.
	inc  bc
	
	; Return back to the command loop
	jr   .loop
	
.execSpecCmd:
	inc  bc				; Seek to 1st argument.
	
	; Index the jump table
	; HL = Sound_DataCmdPtrTable[A]
	push bc
		ld   hl, Sound_DataCmdPtrTable
		ld   b, $00
		add  a 			; This both handles the word indexing and deletes the MSB
		ld   c, a
		add  hl, bc
		ldi  a, [hl]
		ld   h, [hl]
		ld   l, a
	pop  bc
	
	ld   a, [bc]		; E = 1st Argument
	ld   e, a
	; Fall-through
	
Sound_JpHl:
	jp   hl
	
; =============== Sound_DataCmdPtrTable ===============
; Sound data command assignments.
Sound_DataCmdPtrTable:
	dw SoundDataCmd_Jp                   ; $80
	dw SoundDataCmd_JpByTimer            ; $81
	dw SoundDataCmd_End                  ; $82
	dw SoundDataCmd_SetVibrato           ; $83
	dw SoundDataCmd_PitchBend            ; $84
	dw SoundDataCmd_PlaySndArg           ; $85 ;X
	dw SoundDataCmd_EndSaveID            ; $86
	dw SoundDataCmd_SetVol               ; $87
	dw SoundDataCmd_SetInstrument        ; $88
	dw SoundDataCmd_IncBaseNote          ; $89
	dw SoundDataCmd_IncVol               ; $8A
	dw SoundDataCmd_PlaySnd              ; $8B ;X
	dw SoundDataCmd_Nop                  ; $8C ;X
	dw SoundDataCmd_SetVar               ; $8D
	dw SoundDataCmd_SetNoiseSweep        ; $8E
	dw SoundDataCmd_NoiseSweepSingle     ; $8F ;X
	dw SoundDataCmd_SetStatus            ; $90
	dw SoundDataCmd_OrSnd                ; $91 ;X
	dw SoundDataCmd_SetNoiseFreq         ; $92
	dw SoundDataCmd_SlotFade             ; $93
	dw SoundDataCmd_NoteSlide            ; $94
	dw SoundDataCmd_JpIfFade             ; $95
	dw SoundDataCmd_SetSpeed             ; $96 ;X
	dw SoundDataCmd_IncFreqOff           ; $97
	dw SoundDataCmd_SetCh                ; $98 ;X
	dw SoundDataCmd_ToggleKeyHold        ; $99
	dw SoundDataCmd_Call                 ; $9A
	dw SoundDataCmd_Ret                  ; $9B
	dw SoundDataCmd_IncBaseNoteByLoop    ; $9C ;X
	dw SoundDataCmd_SetKeyOn             ; $9D ;X
	dw SoundDataCmd_IfCh                 ; $9E ;X
	dw SoundDataCmd_JpCh                 ; $9F ;X
	dw SoundDataCmd_SetDuty              ; $A0
	dw SoundDataCmd_StereoPan            ; $A1
	dw SoundDataCmd_SetS3                ; $A2
	dw SoundDataCmd_ClrS3                ; $A3
IF KEEP_PCM
	dw SoundDataCmd_PlayPcm              ; $A4 ;X
	dw SoundDataCmd_PlaySlotPcm          ; $A5 ;X
ENDC

; =============== SoundDataCmdS_JpCustom ===============
; Performs an unconditional jump to the specified location in the sound data.
; The next two data bytes will be treated as new sound data pointer.
SoundDataCmdS_JpCustom:
	ld   a, [bc]	; C = Dest. Sound data ptr (low byte)
	ld   e, a
	; Fall-through
	
; =============== SoundDataCmd_Jp / snd_jp ===============
; Command version of subroutine above.
; FORMAT:
; - 0: Command ID ($80)
; - 1: Dest. Sound data ptr (low byte)
; - 2: Dest. Sound data ptr (high byte)
SoundDataCmd_Jp:
	inc  bc			; Seek to byte2
.readHi:
	; Read out the new data pointer to BC, assuming E contains its low byte already
	ld   a, [bc]	; B = byte2
	ld   b, a
	ld   c, e		; C = byte1
	
	; BC now points to the proper new location.
	; However, the base command handler at Sound_ReadNextData will increment it once we exit,
	; so we've got to balance it out first...
	; Fall-through
	
; =============== SoundDataCmd_Nop / snd_nop ===============
; [TCRF] No operation. Unused by itself.
; FORMAT:
; - 0: Command ID ($8C)
SoundDataCmd_Nop:
	dec  bc
	ret
	
; =============== SoundDataCmd_JpByTimer / snd_djnz ===============
; Conditional jump based on a loop counter, which is decremented each time we get here.
; Note this does not initialize the loop timer, that must be manually done through SoundDataCmd_SetVar.
;
; FORMAT:
; - 0: Command ID ($81)
; - 1: Loop timer ID
; - 2: Dest. Sound data ptr (low byte)
; - 3: Dest. Sound data ptr (high byte)	
SoundDataCmd_JpByTimer:
	inc  bc							; Seek to byte2, for the potential jump
	;--
	; HL = Ptr to loop timer
	; The loop timer ID, which comes from the args, is just an index to the sound slot struct.
	ldh  a, [hSndChInfoPtrBakLow]	; A = Base struct pointer
	add  e							; Add the timer ID
	ld   l, a						; Put in HL
	ld   h, d
	;--
	dec  [hl]						; Has the timer elapsed?
	jp   nz, SoundDataCmdS_JpCustom	; If not, jump
	; Otherwise, continue as normal.
	inc  bc							; Seek to byte3, the last arg
	ret
	
; =============== SoundDataCmd_EndSaveID / snd_end_saveid ===============
; Like SoundDataCmd_End, except it also saves the slot's Sound ID to a fixed location,
; presumably so it could be restarted at a later point.
; However, the code that uses said fixed location is only used by an unused command.
;
; FORMAT:
; - 0: Command ID ($86)
SoundDataCmd_EndSaveID:
	; Seek HL to the slot's sound ID
	ldh  a, [hSndChInfoPtrBakLow]
	add  iSndChInfo_SoundId
	ld   l, a
	ld   h, d
	
	; Copy it to wSndSavedSoundID
	ld   a, [hl]
	ld   [wSndSavedSoundID], a
	
	; Fall-through
	
; =============== SoundDataCmd_End / snd_end ===============
; Marks the end of the sound data.
; This one is special, as it exits the command loop immediately.
;
; FORMAT:
; - 0: Command ID ($82)
SoundDataCmd_End:
	; Disable the current sound slot
	ldh  a, [hSndChInfoPtrBakLow]
	ld   e, a
	ld   h, d
	xor  a
	ld   [de], a
	
	; Cleanly exit out of the command loop.
	; As we disabled the slot, we can skip directly to the post-slot checks.
	pop  bc
	ld   a, [wSndBankMain]
	ldh  [hROMBank], a
	ld   [MBC1RomBank], a
	jp   Sound_Do.eos
	
; =============== SoundDataCmd_SetInstrument / snd_instrument ===============
; Sets a new instrument ID.
; This changes the note's envelope and volume.
;
; FORMAT:
; - 0: Command ID ($88)
; - 1: Instrument ID
SoundDataCmd_SetInstrument:
	; Store it to iSndChInfo_Instrument
	ldh  a, [hSndChInfoPtrBakLow]
	add  iSndChInfo_Instrument
	ld   l, a
	ld   h, d
	ld   [hl], e
	; Instrument changed
	ld   hl, hSndChInfoNewFlags
	set  SFNB_TRIG, [hl]
	ret
	
; =============== SoundDataCmd_SetVol / snd_vol ===============
; Sets a new slot volume.
;
; FORMAT:
; - 0: Command ID ($87)
; - 1: Volume ($00-$0F)	
SoundDataCmd_SetVol:
	ldh  a, [hSndChInfoPtrBakLow]
	inc  a ; Seek to iSndChInfo_Vol
	; Fall-through
	
; =============== SoundDataCmdS_SetSlotField ===============
; Helper function for writing a value into a sound slot.
;
; IN
; - A: Low byte of the slot pointer
; - E: Value to write (1st command parameter)
SoundDataCmdS_SetSlotField:
	ld   h, d		; Put shared high byte
	ld   l, a		; Then the custom low
	ld   [hl], e	; and write the arg there
	ret
	
; =============== SoundDataCmd_SetVibrato / snd_vibrato / snd_pulse1_sweep ===============
; Sets a new Pulse 1 sweep value OR Vibrato ID.
;
; FORMAT:
; - 0: Command ID ($83)
; - 1: Vibrato ID/NR10 value + Type marker (SVB_SET)
SoundDataCmd_SetVibrato:
	ldh  a, [hSndChInfoPtrBakLow]
	add  iSndChInfo_Vibrato
	jr   SoundDataCmdS_SetSlotField
	
; =============== SoundDataCmd_SetNoiseSweep / snd_pitchbend ===============
; Sets a new Noise sweep value.
;
; FORMAT:
; - 0: Command ID ($8E)
; - 1: Noise sweep (+ LSFR mode toggle bit)
SoundDataCmd_SetNoiseSweep:
	ldh  a, [hSndChInfoPtrBakLow]
	add  iSndChInfo_NoiseSweep
	jr   SoundDataCmdS_SetSlotField
	
; =============== SoundDataCmd_SetNoiseFreq / snd_noise ===============
; Sets a new noise channel frequency.
;
; FORMAT:
; - 0: Command ID ($92)
; - 1: NR43 value	
SoundDataCmd_SetNoiseFreq:
	ldh  a, [hSndChInfoPtrBakLow]
	add  iSndChInfo_NoiseFreq
	jr   SoundDataCmdS_SetSlotField
	
; =============== SoundDataCmd_SetSpeed / snd_speed ===============
; [TCRF] Sets a new playback speed.
;
; FORMAT:
; - 0: Command ID ($96)
; - 1: Playback speed	
SoundDataCmd_SetSpeed:
	ldh  a, [hSndChInfoPtrBakLow]
	add  iSndChInfo_Speed
	jr   SoundDataCmdS_SetSlotField

; =============== SoundDataCmd_SetCh / snd_ch ===============
; [TCRF] Sets a new channel ID.
;
; FORMAT:
; - 0: Command ID ($98)
; - 1: SNDCH_* value	
SoundDataCmd_SetCh:
	ldh  a, [hSndChInfoPtrBakLow]
	add  iSndChInfo_ChId
	jr   SoundDataCmdS_SetSlotField
	
; =============== SoundDataCmd_SetKeyOn / snd_keyon ===============
; [TCRF] Sets how long the key should be held.
; See also: Sound_Do.chkKeyRel
;
; FORMAT:
; - 0: Command ID ($9D)
; - 1: Value	
SoundDataCmd_SetKeyOn:
	ldh  a, [hSndChInfoPtrBakLow]
	add  iSndChInfo_KeyRelTarget
	jr   SoundDataCmdS_SetSlotField
	
; =============== SoundDataCmd_SetDuty / snd_duty / snd_wave ===============
; Sets a new length/duty sweep, or a wave ID.
;
; FORMAT:
; - 0: Command ID ($A0)
; - 1: NRx1 value or Wave ID
SoundDataCmd_SetDuty:
	ldh  a, [hSndChInfoPtrBakLow]
	add  iSndChInfo_DutyOrWave
	jr   SoundDataCmdS_SetSlotField
	
; =============== SoundDataCmd_StereoPan / snd_pan ===============
; Sets the stereo panning.
;
; FORMAT:
; - 0: Command ID ($A1)
; - 1: Stereo Panning flags, as NR51 bits.
SoundDataCmd_StereoPan:
	ldh  a, [hSndChInfoPtrBakLow]
	add  iSndChInfo_Pan
	jr   SoundDataCmdS_SetSlotField
	
; =============== SoundDataCmd_PitchBend / snd_pitchbend ===============
; Enables/disables pitch bends.
;
; When this command is used to enable them, two more notes need to be played to start the first bend.
; First note for the source frequency, the second for the destination.
;
; From the second note onwards, the current note counts as the source frequency.
;
; FORMAT:
; - 0: Command ID ($84)
; - 1: Speed
SoundDataCmd_PitchBend:
	; Disable feature if we've set a speed of 0.
	and  a			
	jr   z, .disable
	
.enable:
	; Save speed value to slot
	ld   h, d
	ldh  a, [hSndChInfoPtrBakLow]
	add  iSndChInfo_PitchBendSpeed
	ld   l, a
	ld   [hl], e
	
	; Clear the relative frequency ID for the note.
	; Doing this is what allows waiting for two new notes before the pitch bend starts, since the
	; code that them sets up will not trigger when iSndChInfo_NoteId is 0, and every new
	; note played writes to iSndChInfo_NoteId. (so only the first time will not trigger).
	inc  l				; to iSndChInfo_FreqMod
	inc  l				; to iSndChInfo_NoteId
	ld   [hl], $00		; iSndChInfo_NoteId = $00
	
	; Enable pitch bend
	ld   hl, hSndChInfoFxFlags1
	set  SSEB_PITCHBEND, [hl]
	ret
.disable:
	ld   hl, hSndChInfoFxFlags1
	res  SSEB_PITCHBEND, [hl]
	ret
	
; =============== SoundDataCmd_IncBaseNote / snd_inc_base_note ===============
; Increments the base note/frequency ID by the specified value.
;
; FORMAT:
; - 0: Command ID ($89)
; - 1: ID Offset (signed)
SoundDataCmd_IncBaseNote:
	; Seek HL to the target address
	ld   h, d
	ldh  a, [hSndChInfoPtrBakLow]
	add  iSndChInfo_NoteIdBase
	ld   l, a
	
	; If the offset is exactly $80, zero it out instead.
	; None of the songs in this game do this.
	ld   a, e				
	cp   $80				; byte1 == $80?
	jr   z, .reset			; If so, jump
	
	; OK, add byte1 to iSndChInfo_NoteIdBase
	add  [hl]
	ld   [hl], a
	ret
.reset:
	; [TCRF] We never get here.
	ld   [hl], $00
	ret
	
; =============== SoundDataCmd_SetVar / snd_var ===============
; Writes a value to the specified sound slot field.
;
; FORMAT:
; - 0: Command ID ($8D)
; - 1: Struct offset (iSndChInfo_*)
; - 2: Value to write
SoundDataCmd_SetVar:
	; Seek to target slot entry
	ldh  a, [hSndChInfoPtrBakLow]	; Base low byte
	add  e				; + offset
	ld   l, a			; Set to HL
	ld   h, d
	
	inc  bc				; Seek to byte2
	ld   a, [bc]		; Read value from command
	ld   [hl], a		; Write it to the slot
	ret
	
; =============== SoundDataCmd_NoiseSweepSingle / snd_noise_sweep_single ===============
; [TCRF] ; Performs a single noise sweep with the specified value.
;
; FORMAT:
; - 0: Command ID ($8F)
; - 1: Clock increment value
SoundDataCmd_NoiseSweepSingle:

	; Prepare arguments for Sound_ApplyNoiseSweep
	
	; HL = Ptr to iSndChInfo_NoiseFreq
	ld   h, d
	ldh  a, [hSndChInfoPtrBakLow]
	add  iSndChInfo_NoiseFreq
	ld   l, a
	
	; A = 1st argument
	;     Normally this would be iSndChInfo_NoiseSweep
	ld   a, e
	
	push bc
		call Sound_ApplyNoiseSweep
	pop  bc
	ret
	
; =============== SoundDataCmd_SetStatus / snd_status ===============
; Sets a new slot status bitmask.
;
; FORMAT:
; - 0: Command ID ($90)
; - 1: Status flags	
SoundDataCmd_SetStatus:
	ldh  [hSndChInfoStatus], a
	ret
	
; =============== SoundDataCmd_IncVol / snd_inc_vol ===============
; Increments the slot volume by the specified amount.
;
; FORMAT:
; - 0: Command ID ($8A)
; - 1: Volume offset (signed)
SoundDataCmd_IncVol:
	; Seek to slot volume field
	ld   h, d
	ldh  a, [hSndChInfoPtrBakLow]
	inc  a ; iSndChInfo_Vol
	ld   l, a
	
	;
	; Add the offset to the volume, capped between $00-$0F.
	;
	
	; Positive or negative offset?
	ld   a, e			; A = Offset
	bit  7, a			; MSB set?
	jr   nz, .neg		; If so, it's a negative number
.pos:
	add  [hl]			; Offset += iSndChInfo_Vol
	cp   $10			; Went out of range?
	jr   c, .end		; If not, skip
	ld   a, $0F			; Otherwise, cap it back to $0F
.end:
	ld   [hl], a		; Save back to iSndChInfo_Vol
	ret
.neg:
	; When adding a negative number, we go out of range when Volume + Offset < $100.
	; ie: $05 + -$06 => $05 + $FA => $FF
	;     $05 + -$04 => $05 + $FC => $01
	add  [hl]			; Offset += iSndChInfo_Vol
	jr   c, .end2		; Went out of range? If not, skip
	xor  a				; Otherwise, cap it back to $00
.end2:
	ld   [hl], a		; Save back to iSndChInfo_Vol
	ret
	
; =============== SoundDataCmd_PlaySndArg / snd_playsndarg ===============
; [TCRF] ; Plays a new sound with the specified arguments.
;
; FORMAT:
; - 0: Command ID ($85)
; - 1: Sound ID
; - 2: Argument
SoundDataCmd_PlaySndArg:
	; Note that Sound_ReqPlayIdWithArg does not do bounds checking if all queue slots are full.
	inc  bc	; Seek to byte2
	push bc
		ld   a, [bc]	; C = Argument
		ld   c, a
		ld   b, e		; B = Sound ID
		call Sound_ReqPlayIdWithArg
	pop  bc
	ret

; =============== SoundDataCmd_OrSnd / snd_orsaveid ===============
; [TCRF] Merges the specified value into wSndSavedSoundID.
;
; FORMAT:
; - 0: Command ID ($91)
; - 1: Value
SoundDataCmd_OrSnd:
	ld   hl, wSndSavedSoundID
	or   [hl]
	ld   [hl], a
	ret

; =============== SoundDataCmd_IncBaseNoteByLoop / snd_inc_base_note_by_loop ===============
; [TCRF] Alters the base note ID based on the loop count, given a table of offsets.
;        This can only be used inside conditional loops.
;
; It's accomplished by doing this:
; iSndChInfo_NoteIdBase += OffsetTable[LastIndex - iSndChInfo_LoopTimer0]
;
; iSndChInfo_LoopTimer0 is the first loop timer.
; It's set by sound data through snd_var and decrements when snd_djnz targets it.
;
; Since iSndChInfo_LoopTimer0 is subtracted to LastIndex, means that the index to the offset
; table increments over time, until it reaches LastIndex at the last loop.
; 
; FORMAT:
; - 0: Command ID ($9C)
; - 1: Total number of loops.
;      This is the last index to the table, which will be used on the last loop.
; - 2-3: Ptr to a table of offsets.
;        Individual entries are signed and get added to the slot's base note ID.
SoundDataCmd_IncBaseNoteByLoop:

	;
	; Generate the table index.
	; E = byte1 - iSndChInfo_LoopTimer0
	;
	
	; Seek HL to the primary loop counter
	ld   h, d
	ldh  a, [hSndChInfoPtrBakLow]
	add  iSndChInfo_LoopTimer0
	ld   l, a
	; Subtract it to the last index
	ld   a, e		; A = byte1
	sub  [hl]		; -= iSndChInfo_LoopTimer0
	ld   e, a		; to E
	
	;
	; Index the offset table with it.
	; DE = byte23[E]
	;
	
	; E = byte2 + E
	inc  bc			; Seek to byte2
	ld   a, [bc]	; Read low byte
	add  e			; Add index
	ld   e, a		; Save back
	; D = byte3 + (carry)
	inc  bc			; Seek to byte3
	ld   a, [bc]	; Read high byte
	adc  a, $00		; Add carry
	ld   d, a		; Save back
	
	;
	; Add the resulting value to the slot's base note ID.
	;
	
	; Seek HL to current note ID
	ld   a, l
	add  iSndChInfo_NoteIdBase - iSndChInfo_LoopTimer0
	ld   l, a
	; iSndChInfo_NoteIdBase += *DE
	ld   a, [de]		; Read offset
	add  [hl]			; Add base ID
	ld   [hl], a		; Save back
	; Restore pointer
	ld   d, h
	ret

; =============== SoundDataCmd_SlotFade / snd_fade ===============
; Fades the volume for the current slot.
;
; FORMAT:
; - 0: Command ID ($93)
; - 1: Target volume + Fade direction
;      F---TTTT
;      - F: Direction flag (SSF_FADEOUT)
;      - T: Target volume (iSndChInfo_FadeTarget)
;      It's important these are consistent with the current volume value at iSndChInfo_Vol,
;      since the fade is marked as over when it reaches the specific target volume.
; - 2: Fade speed, in subticks (iSndChInfo_FadeSpeed)
SoundDataCmd_SlotFade:

	ld   h, d
	
	;
	; Update the fade status.
	; - Always set the slot fade bit 
	;   (will be disabled later if the fade speed is 0)
	; - Set it as a fade out if byte1 contains its flag.
	;   Otherwise, it's a fade-in.
	;
	
	; Update hSndChInfoFxFlags0 bits:
	; SSE_FADE -> set (if byte2 is != 0, always the case, see later)
	; SSE_FADEOUT -> set if bit 7 of byte1 is set
	ldh  a, [hSndChInfoFxFlags0]
	or   SSE_FADE				; Enable slot fading
	and  $FF^(SSE_FADEDONE|SSE_FADEOUT) ; Clear existing flags from the last fade
	bit  SSFB_FADEOUT, e		; Requesting a fade out?
	jr   z, .setB				; If not, skip (it's a fade in, volume up)
	or   SSE_FADEOUT			; Fade out, volume down
.setB:
	ldh  [hSndChInfoFxFlags0], a
	
	
	; Seek HL to iSndChInfo_FadeTarget
	ldh  a, [hSndChInfoPtrBakLow]
	add  iSndChInfo_FadeTarget
	ld   l, a
	
	; The lower nybble of byte1 is the target volume
	; iSndChInfo_FadeTarget = byte1 & $0F
	ld   a, e
	and  $0F
	ldd  [hl], a	; Seek to iSndChInfo_FadeTimer
	
	; Reset fade timer
	; iSndChInfo_FadeTimer = $00
	xor  a
	ldd  [hl], a	; Seek to iSndChInfo_FadeSpeed
	inc  bc			; Seek to byte2
	
	; Fade speed
	; iSndChInfo_FadeSpeed = byte2
	ld   a, [bc]
	ld   [hl], a
	
	
	;
	; [TCRF] If the fade speed is zero, abruptly disable the fade.
	;        This never happens though.
	;

	and  a			; iSndChInfo_FadeSpeed != 0?
	ret  nz			; If so, return
	; Otherwise, clear the fade flag too
	ldh  a, [hSndChInfoFxFlags0]
	and  $FF^SSE_FADE ; $DF
	ldh  [hSndChInfoFxFlags0], a
	ret

; =============== SoundDataCmd_NoteSlide / snd_note_slide ===============
; Enables/disables portamento.
;
; This takes effect immediately, unlike the frequency-to-frequency pitch bend.
; Logically, every new note played restarts the effect.
;
; FORMAT:
; - 0: Command ID ($94)
; - 1: Speed + Direction flag
SoundDataCmd_NoteSlide:
	; Disable the effect is the speed is 0.
	and  a
	jr   z, .disable
	
	;
	; For inexplicable reasons, the MSB from the speed is extracted to a separate bitmask,
	; while the other bits are stored normally to iSndChInfo_NSSpeed, as an "unsigned" value.
	;
	; On top of that the MSB ends up having the opposite effect it would have had, had
	; the signed value been used directly. (if set, the notes slide up).
	;
	; This would have made some sense if we were adding an 8-bit value to a 16-bit one, 
	; since overflows can't be cheated there... but the Note ID is not 16-bit. What gives?
	;
	
	; Seek HL to portamento speed value
	ld   h, d
	ldh  a, [hSndChInfoPtrBakLow]
	add  iSndChInfo_NSSpeed
	ld   l, a
	
	; Save it as "unsigned"
	ld   a, e			; E = iSndChInfo_NSSpeed
	and  $7F
	ld   [hl], a
	
	; 
	; Update the status flags
	; -> SSE_NS, to enable portamento
	; -> SSE_NSUP depending on its direction
	;
	ld   hl, hSndChInfoFxFlags0
	ld   a, [hl]				; Read flags
	or   SSE_NS|SSE_NSUP		; Set both for now
	bit  SNSB_UP, e				; Sliding notes up?
	jr   nz, .enable			; If so, keep both flags
	res  SSEB_NSUP, a			; Otherwise, unmark the "upwards direction" one
.enable:
	ld   [hl], a				; Save them back
	ret
	
.disable:
	ld   hl, hSndChInfoFxFlags0
	res  SSEB_NS, [hl]
	ret
	
; =============== SoundDataCmd_JpIfFade / snd_jpfade ===============
; SoundDataCmd_JpOnWaitFade
;
; Conditional jump, performed until the slot fade in/out has finished.
;
; FORMAT:
; - 0: Command ID ($95)
; - 1: Dest. Sound data ptr (low byte)
; - 2: Dest. Sound data ptr (high byte)
SoundDataCmd_JpIfFade:
	inc  bc							; Seek to byte2
	ldh  a, [hSndChInfoFxFlags0]
	bit  SSEB_FADEDONE, a			; Fading is done?
	jp   z, SoundDataCmd_Jp.readHi	; If not, loop
	ret
	
; =============== SoundDataCmd_ToggleKeyHold / snd_toggle_keyhold ===============
; Toggles the "key held" status.
; When toggled on, it causes instruments to stay in the sustain phase
; (conditional loops enabled) until this gets toggled back off again.
;
; FORMAT:
; - 0: Command ID ($99)
SoundDataCmd_ToggleKeyHold:
	; Toggle status 
	ldh  a, [hSndChInfoStatus]
	xor  SST_KEYHOLD
	ldh  [hSndChInfoStatus], a
	
	; If we toggled it on, flag that we've just done so.
	; This is required due to how SoundDataCmd_Note.chkHeld works.
	and  SST_KEYHOLD			; Toggled it on?
	jr   z, .end				; If not, skip (never taken)
.setBit3:
	ldh  a, [hSndChInfoNewFlags]
	or   SFN_KEYHOLDNEW		; Newly enabled, needs instrument reset
	ldh  [hSndChInfoNewFlags], a
.end:
	dec  bc	; no args
	ret
	
; =============== SoundDataCmd_SetS3 / snd_sets3 ===============
; Sets the otherwise unused flag SST_3.
;
; FORMAT:
; - 0: Command ID ($A2)
SoundDataCmd_SetS3:
	ldh  a, [hSndChInfoStatus]
	or   SST_3
	ldh  [hSndChInfoStatus], a
	jr   SoundDataCmd_ToggleKeyHold.setBit3
	
; =============== SoundDataCmd_ClrS3 / snd_clrs3 ===============
; Clears the otherwise unused flag SST_3.
;
; FORMAT:
; - 0: Command ID ($A3)
SoundDataCmd_ClrS3:
	ldh  a, [hSndChInfoStatus]
	and  $FF^SST_3
	ldh  [hSndChInfoStatus], a
	dec  bc
	ret
	
; =============== SoundDataCmd_Call / snd_call ===============
; Calls the data subroutine. Cannot be nested.
;
; FORMAT:
; - 0: Command ID ($9A)
; - 1-2: Sound data ptr 
SoundDataCmd_Call:
	; Seek HL to where we're saving the current data pointer.
	; There is no concept of a stack here, so no nested calls.
	ld   h, d
	ldh  a, [hSndChInfoPtrBakLow]
	add  iSndChInfo_RetDataPtr_Low
	ld   l, a
	
	; This isn't necessary, as byte1 is already in E.
	; But this is what we're using later, so...
	ld   a, [bc]	; A = Low byte of sound data ptr
	
	; Seek to byte2 for later. 
	inc  bc			; Seek to byte2
	
	; Save the current data pointer.
	; As BC is currently pointing to last argument of this command, 
	; we won't need to touch it inside SoundDataCmd_Ret.
	ld   [hl], c	; Save low byte
	inc  l			; Seek to iSndChInfo_RetDataPtr_High
	ld   [hl], b	; Save high byte
	
	; Set the new data pointer.
	ld   l, a		; E is still untouched...
	ld   a, [bc]	; Read high byte
	ld   b, a		; Put it on B
	ld   c, l		; Could have been "ld c, e"
	dec  bc 		; To balance out the inc on exit
	ret
	
; =============== SoundDataCmd_Ret / snd_ret ===============
; Returns from the called data subroutine.
;
; FORMAT:
; - 0: Command ID ($9B)
SoundDataCmd_Ret:
	; Seek to the return address
	ldh  a, [hSndChInfoPtrBakLow]
	add  iSndChInfo_RetDataPtr_Low
	ld   l, a
	ld   h, d
	
	; Pop it out
	ld   c, [hl]	; C = iSndChInfo_RetDataPtr_Low 
	inc  l
	ld   b, [hl]	; B = iSndChInfo_RetDataPtr_High
	ret
	
; =============== SoundDataCmd_IncFreqOff / snd_inc_freq_offset ===============
; Alters the frequency value offset by the specified amount.
; The higher the offset gets, the lower the final frequency will be.
;
; FORMAT:
; - 0: Command ID ($97)
; - 1: Value (signed)
SoundDataCmd_IncFreqOff:
	; Seek to the frequency value offset
	ld   h, d
	ldh  a, [hSndChInfoPtrBakLow]
	add  iSndChInfo_FreqMod
	ld   l, a
	
	; Increment it by the amount specified
	ld   a, e		; A = byte1
	add  [hl]		; += iSndChInfo_FreqMod
	ld   [hl], a	; Save it back to iSndChInfo_FreqMod
	ret
	
; =============== SoundDataCmd_IfCh / snd_ifch ===============
; [TCRF] Handles the next command only if the sound channel matches the specified one.
;        If it isn't, it gets skipped over.
;        To work properly, the next command must be a 2-byte one.
;
; FORMAT:
; - 0: Command ID ($9E)
; - 1: Channel ID (SNDCH_*)
SoundDataCmd_IfCh:
	; Seek to the slot's channel ID
	ld   h, d
	ldh  a, [hSndChInfoPtrBakLow]
	add  a, iSndChInfo_ChId
	ld   l, a
	
	; Are we skipping it?
	ld   a, [hl]		; Read current channel ID
	cp   e				; Does it match what we're checking for? (byte1)
	jr   z, .ret		; If so, jump (don't skip next)
	inc  bc				; Seek to byte0 of next
.skip1:
	inc  bc				; Seek to byte1 of next	
.ret:
	ret

; =============== SoundDataCmd_JpCh / snd_jpch ===============
; [TCRF] Conditional jump, taken if the slot's sound channel matches the specified one.
;
; FORMAT:
; - 0: Command ID ($9F)
; - 1: Matched Channel ID (SNDCH_*)
; - 2: Dest. Sound data ptr (low byte)
; - 3: Dest. Sound data ptr (high byte)
SoundDataCmd_JpCh:
	; Seek to the slot's channel ID
	ld   h, d
	inc  bc		; And to byte2 too
	ldh  a, [hSndChInfoPtrBakLow]
	add  a, iSndChInfo_ChId
	ld   l, a
	
	; Are we skipping it?
	ld   a, [hl]		; Read current channel ID
	cp   e				; Does it match what we're checking for? (byte1)
	jr   nz, SoundDataCmd_IfCh.skip1	; If not, jump (don't loop, continue as normal)
	
	; Otherwise, treat the next two bytes like a jump command
	jp   SoundDataCmdS_JpCustom

IF KEEP_PCM
; =============== SoundDataCmd_PlaySlotPcm / snd_playslotpcm ===============
; [TCRF] Plays the slot-specific PCM sample, which was passed when creating the slot.
;
; Identical to SoundDataCmd_PlayPcm otherwise.
;
; FORMAT:
; - 0: Command ID ($A5)
; - 1: Playback speed
; --- rest from normal note
; - 2: Note length ID + "Contains extension offset" marker.
; - 3: Custom note length value [Optional, if \1 is $DE or $EF]
; - 4: Key release target [Optional, if \1 is between $DE-$EE] 
SoundDataCmd_PlaySlotPcm:
	; A = iSndChInfo_PCMId
	ldh  a, [hSndChInfoPtrBakLow]
	add  a, iSndChInfo_PCMId
	ld   e, a
	ld   a, [de]
	
	jr   SoundDataCmd_PlayPcm.setPcm

; =============== SoundDataCmd_PlayPcm / snd_playpcm ===============
; [TCRF] Plays the specified PCM sample.
;
; This is the only way to play a PCM sample in Sun's driver, unlike Yon there's no special
; command (SoundCmd_*) to play a PCM sample by ID.
;
; FORMAT:
; - 0: Command ID ($A4)
; - 1: PCM Sample ID
; - 2: Playback speed
; --- rest from normal note
; - 3: Note length ID + "Contains extension offset" marker. [Optional]
; - 4: Custom note length value [Optional, if \1 is $DE or $EF]
; - 5: Key release target [Optional, if \1 is between $DE-$EE] 
SoundDataCmd_PlayPcm:
	inc  bc					; Seek to byte2
	ld   a, e				; wSndPcmIDSet = byte1
.setPcm:
	ld   [wSndPcmIDSet], a
	ld   a, [bc]			; wSndPcmSpeedSet = byte2
	ld   [wSndPcmSpeedSet], a
	inc  bc					; Seek to byte3
	
	; Flag PCM as played in this slot.
	ld   hl, hSndChInfoFxFlags1
	set  SSEB_PCM, [hl]
	
	; Channels can optionally turn themselves off.
	; This feature must be disabled while playing PCM, as the $FF wave data has to play continuously.
	ld   a, $01
	ldh  [hNRx4Data], a
	
	; Skip past the point it tries to set frequency data
	jp   SoundDataCmd_Note.tryNoteLen
	
ENDC

; =============== SoundDataCmd_NoteEx / snd_noteex ===============
; Superset of the normal SoundDataCmd_Note.
; It takes the same parameters, except the first one is an index to a table of preset settings.
;
; These settings change a bunch of stuff at once, such as Instrument ID and stereo panning,
; so they can be a good alternative to save bytes.
;
; While these could be used by any channel, in practice, not only the included presets are made
; for the Noise channel, but snd_noteex almost always replaces the normal snd_note there.
;
; FORMAT:
; - 0: Slot preset ID [Optional]
; - 1: Relative note ID [Optional, only if a preset was passed and it lacks a Note ID]
; - 2: Note length ID + "Contains extension offset" marker. [Optional]
; - 3: Custom note length value [Optional, if \1 is $DE or $EF]
; - 4: Key release target [Optional, if \1 is between $DE-$EE] 
;
; IN
; - A: byte0
; - BC: Ptr to byte0
SoundDataCmd_NoteEx:
	
	; [TCRF] Different command when ID >= $DE.
	;        This is a specific range that can be used to detect if the first parameter wasn't passed,
	;        since no valid preset IDs are >= $DE, but all valid Note length IDs *are* >= $DE.
	;        Which works for us, given the SameNote commands start with that one.
	cp   SNDDATACMD_NOTELENARG_START	; Command ID >= $DE?
	jp   nc, SoundDataCmd_SameNote		; If so, jump (we never do)
	
	;--
	;
	; Index the table of slot settings/presets using byte0.
	;
	; Each entry in the table is 8 bytes long, containing various fields -- most
	; get copied as-is to the current slot.
	;
	; This table is only $0A entries long, so the command ID should be in range $C0-$C9.
	;
	
	; A = Command ID - $C0
	sub  SNDDATACMD_NOTEPRESET_START
	
	; The current location doubles as the pointer that needs to be passed to SoundDataCmd_Note.
	; When we're popping this value back out, A will also contain the Note ID, taken fresh from the table entry.
	push bc
	
		; Build the offset to the entry.
		; BC = A * 8
		add  a
		add  a
		add  a
		ld   c, a
		ld   b, $00
		
		; Switch to BANK $06, that's where the table is
		ldh  a, [hROMBank]
		push af
			ld   a, [wSndBankMain]
			ldh  [hROMBank], a
			ld   [MBC1RomBank], a
			
			; Do the indexing
			ld   hl, Sound_SlotPresetTable ; BANK $06
			add  hl, bc
			
			;--
			
			;
			; Copy the data to the slot.
			;
			
			; Seek DE to iSndChInfo_DutyOrWave
			ldh  a, [hSndChInfoPtrBakLow]	
			add  iSndChInfo_DutyOrWave
			ld   e, a
			
			; byte0 -> NRx1/Wave ID (iSndChInfo_DutyOrWave)
			ldi  a, [hl]
			ld   [de], a
			inc  e
			
			; byte1 -> Stereo Panning (iSndChInfo_Pan)
			ldi  a, [hl]
			ld   [de], a
			ld   a, e
			
			; byte2 -> Instrument ID (iSndChInfo_Instrument)
			add  iSndChInfo_Instrument - iSndChInfo_Pan
			ld   e, a
			ldi  a, [hl]
			ld   [de], a
			
			; byte3 -> Vibrato ID or NR10 sweep settings.
			;          This will either be for iSndChInfo_Vibrato (Pulse 1 sweep/Vibrato ID) or iSndChInfo_NoiseSweep (Noise sweep)
			;          depending on the channel and preset flags (see below)
			
			; Always copy this data over to Pulse 1.
			ldi  a, [hl]	; Read byte3, seek to byte4
			inc  e			; Seek to iSndChInfo_Vibrato
			ld   [de], a	; Alwayws copy it here
			
			push af ; Save byte3
			
				; byte4 -> Noise channel frequency (iSndChInfo_NoiseFreq)
				ld   a, e
				add  iSndChInfo_NoiseFreq - iSndChInfo_Vibrato
				ld   e, a
				ldi  a, [hl]
				ld   [de], a
				
				;
				; byte5 - Preset flags, in this format:
				;
				; S-----CC
				;
				; CC -> The channel flags SSTB_CH123 & SSTB_CH4, which mark if the slot contains ch1-3 and/or ch4 data.
				;       These are stored the exact same way hSndChInfoStatus requires them to be.
				;
				; S  -> Tells if the sweep settings (byte3) are for the Noise channel.
				;       Obviously will only have an effect if the slot handles that channel.
				;
				
				; Replace the slot's channel flags with those from the preset.
				; To allow the later NCI check, the untouched byte5 is copied to B.
				ldh  a, [hSndChInfoStatus]		; Read slot status
				and  $FF^(SST_CH123|SST_CH4)	; Wipe channel flags
				ld   c, a						; Store to C
				ldi  a, [hl]					; Read preset flags
				ld   b, a						; (For later)
				and  SST_CH123|SST_CH4			; Filter out the non-channel bits
				or   c							; Merge with other status flags
				ldh  [hSndChInfoStatus], a		; Save back
				
				;
				; byte3.2 - Noise sweep.
				;
				
				; First, disable the noise sweep.
				dec  e						; Seek to iSndChInfo_NoiseSweep				
				xor  a
				ld   [de], a				; iSndChInfo_NoiseSweep = 0
				
			; Then, only if the preset flag is set, we copy over the sweep settings.
			pop  af 						; Restore sweep value
			bit  SPRB_USECH4SWEEP, b		; Setting sweep opts?
			jr   z, .chkNs					; If not, skip
			ld   [de], a
			
		.chkNs:
			;
			; byte6 -> Portamento speed (iSndChInfo_NSSpeed)
			;
			ldi  a, [hl]
			push hl
				call SoundDataCmd_NoteSlide
			pop  hl
			
			; Byte 7 -> Note ID (optional)
			; Passed as-is to SoundDataCmd_Note, it's always $19 though.
			ld   b, [hl]			; Pass to B while restoring the data bank
		pop  af						; Bankswitch back
		ldh  [hROMBank], a
		ld   [MBC1RomBank], a
		ld   a, b					; A = Note ID
	pop  bc
	
	; If the Note ID is $00, it means the preset did not specify one...
	and  a							; Note ID != 0?
	jr   nz, SoundDataCmd_Note		; If so, use it (always jumps)
	
	;##
	; [TCRF] ...so we try again from the next byte.
	;        This means a normal note command follows the Preset ID.
	;
	;        But that's itself an optional parameter, so we have to account for it!
	inc  bc							; Seek to byte1
	; Identical to the check in Sound_ReadNextData.loop.
	ld   a, [bc]					; Read either Note ID or Note length
	bit  SNDDATACMDB_SPEC_START, a	; Value <= $80?
	jr   z, SoundDataCmd_Note		; If so, it's a Note ID.
	
	; Otherwise, it's a note length. (parameter skipped)
	; Inconsistently to the earlier check at the start of the subroutine,
	; if the first parameter is skipped, rather keeping the old Note ID...
	xor  a							; ...it will mute the channel instead!
	jr   SoundDataCmd_Note.fromByte1
	
; =============== SoundDataCmd_SameNote / snd_samenote ===============
; [TCRF] Like SoundDataCmd_Note, but the relative note ID doesn't change.
;
; FORMAT:
; - 0: Note length ID + "Contains extension offset" marker. ($DE-$FF)
; - 1: Custom note length value [Optional, if \1 is $DE or $EF]
; - 2: Key release target [Optional, if \1 is between $DE-$EE] 
SoundDataCmd_SameNote:

	; Seek DE to the relative note ID
	ldh  a, [hSndChInfoPtrBakLow]
	add  iSndChInfo_NoteId
	ld   e, a
	
	; Check if that is zero.
	ld   a, [de]
	and  a
	
	; Don't set a new one, skip past the point SoundDataCmd_Note would write back to it
	push af
		jr   SoundDataCmd_Note.withNoteId
	;##

; =============== SoundDataCmd_Note / snd_note ===============
; Sets a new note, which updates the slot's frequency.
;
; FORMAT:
; - 0: Relative note ID ($00-$7F)
; - 1: Note length ID + "Contains extension offset" marker. [Optional]
; - 2: Custom note length value [Optional, if \1 is $DE or $EF]
; - 3: Key release target [Optional, if \1 is between $DE-$EE] 
;
; IN
; - A: byte0
; - BC: Ptr to byte0
SoundDataCmd_Note:
	inc  bc		; Seek to byte1, for much later
.fromByte1:
	ld   l, a	; Save byte0 for later
	
	;--
	;
	; Set the new frequency data right away.
	;
	
	ldh  a, [hSndChInfoPtrBakLow]
	add  iSndChInfo_NoteId
	ld   e, a	; Seek DE to the relative note ID
	
	ld   a, [de]
	and  a		; Check if that is zero, which is treated as silence.
	push af		; Save the result for later
	
		; Update the note ID
		; iSndChInfo_NoteId = byte0
		ld   a, l
		ld   [de], a
		
	.withNoteId:
		; Set new frequency data, off the new note ID
		call Sound_SetFreq
		;--
	
	.tryStartTrs:
		;##
		;
		; PITCH BEND SETUP
		;
		; This feature allows to smoothly fade between the old and new frequency
		; at a specified speed, rather than instantly setting the new one.
		;
		; This functionality is set through the command snd_pitchbend.
		;
		; Notes:
		; - We're doing this after calling Sound_SetFreq, so the new frequency data
		;   has already been applied to wNRx3/4Data -- setting up means moving the new
		;   frequency elsewhere and restoring the old one.
		; - This is bypassed when either the source or destination frequency are $0000 (sound channel
		;   is or previously was muted) since:
		;   - Muting needs to be instantaneous (destination == $0000)
		;   - Pitch bends from the lowest frequency are plain wrong (source == $0000)
		; - Enabling pitch bends clears iSndChInfo_NoteId. Due to the above check, it means that
		;   to set up a pitch bend, *two* notes need to be played first (so we'd have to get here twice).
		;   The first note sets up the source, the second the destination.
		;   From the second note onwards, the current note is treated as the source, while the new one
		;   as the destination.
		;
		
		; If the feature isn't enabled, skip
		ldh  a, [hSndChInfoFxFlags1]
		bit  SSEB_PITCHBEND, a	; Is the bit set?
		jr   z, .tryNoteLen		; If not, skip ahead
		
		; Do not do this is the destination frequency is muted.
		ldh  a, [hSndChInfoPtrBakLow]
		add  iSndChInfo_NoteId
		ld   e, a
		ld   a, [de]					
		and  a					; iSndChInfo_NoteId == 0?
		jr   z, .tryNoteLen		; If so, skip
		
		; Set the new frequency as the target.
		ld   a, e				
		add  iSndChInfo_FreqTarget_High - iSndChInfo_NoteId
		ld   l, a				; HL = Ptr to iSndChInfo_FreqTarget_High
		ld   h, d				
		ldh  a, [hNRx4Data]		; iSndChInfo_FreqTarget_High = hNRx4Data
		ldd  [hl], a
		ldh  a, [hNRx3Data]		; iSndChInfo_FreqTarget_Low = hNRx3Data
		ldd  [hl], a
		
		; Do not do this is the source frequency was muted.
		; We still filled iSndChInfo_FreqTarget_Low/iSndChInfo_FreqTarget_High though, which isn't really necessary.
	pop  af						; Restore old iSndChInfo_NoteId check
	push af						; Was the last iSndChInfo_NoteId == 0?
		jr   z, .tryNoteLen		; If so, don't restore anything.
		
		; Restore the old frequencies, so that we'll be fading from them.
		ldd  a, [hl]			; hNRx4Data = iSndChInfo_Freq_High
		ldh  [hNRx4Data], a
		ld   a, [hl]			; hNRx3Data = iSndChInfo_Freq_Low
		ldh  [hNRx3Data], a
		;##
		
	.tryNoteLen:
		;##
		;
		; NOTE LENGTH
		;
		; Optional parameter. (1 or 2 bytes)
		;
		; How the driver sees this is relatively simple.
		; Depending on the decoded parameter:
		; - If it's $01-$10, it's used as an index to Sound_NoteLenTable.
		;   The note's length will be Sound_NoteLenTable[idx-1]
		; - If it's $00, the next parameter will be treated as the length.
		; 
		; That's not how the 1st parameter is encoded though!
		; Because this parameter is completely optional and is the last one, it needs to take
		; unique values that don't conflict with the first byte of notes or other commands.
		; So in the sound data it takes two sets of ranges:
		; - $EF-$FF
		; - $DE-$EE
		; These are converted to their decoded values by subtracting $EF up to two times.
		; *IF* the values go back in their intended $00-$11 range by that point, the note length will be set.
		;
		; But why twice?
		;
		; If only one time is needed to put the values in range (no underflow), there's an additional parameter telling
		; when, mid-note, the key should be released (iSndChInfo_KeyRelTarget).
		;
		; There is a completely separate branch that handles it, but the code that handles the note length
		; is pratically identical in both branches!
		;
		
; =============== mLenFromData ===============
; Helper macro containing the common code for setting 
; the note's length to the sound slot.
;
; IN
; - 1: Unique marker
; - A: Decoded length ID
; - BC: Ptr to byte1
MACRO mLenFromData
.len0_\1:
	;
	; Length value is $00.
	;
	; Treat next byte as length data.
	;
	inc  bc					; Seek to byte2
	ld   a, [bc]			; Use that as note length
	jr   .setNoteLen_\1
.lenIdx_\1:
	;
	; Length value is $01-$11.
	;
	; Treat it as a length table index.
	;
	add  LOW(Sound_NoteLenTable-1) 		; Add table base to index, minus 1
	ld   l, a					
	ld   a, HIGH(Sound_NoteLenTable-1)	; Account for carry
	adc  a, $00
	ld   h, a
	ld   a, [hl]						; Read indexed result
.setNoteLen_\1:
	inc  bc								; Seek to byte2 or byte3, for later
	
	; Set the note's length to that
	ld   e, a							; E = Note length
	ldh  a, [hSndChInfoPtrBakLow]
	add  iSndChInfo_NoteLen				; Seek HL to iSndChInfo_NoteLen
	ld   l, a
	ld   h, d
	ld   [hl], e						; Write it there
ENDM	
		
		
		; Do we specify how long to hold the key?
		; [TCRF] This always branches, sound data just doesn't use this feature.
		ld   a, [bc]		
		sub  $EF			; Try to force back in range
		jr   c, .noInstOff	; Underflowed? If so, try again
		; $EF-$FF
	.withInstOff:
		jr   nz, .lenIdx_wi	; A > 0? If so, read from table
		; Otherwise, treat next arg as length.
		mLenFromData wi
		
		;
		; KEY RELEASE TARGET (1 byte)
		;
		; Tells when, mid-note, the key should switch from sustained to released.
		; This is specific to this branch, making it an optional parameter.
		; See also: Sound_Do.chkKeyRel, where this value is used.
		;
		inc  l				; Seek to iSndChInfo_Timer_High
		inc  l				; Seek to iSndChInfo_KeyRelTarget
		ld   a, [bc]		; Read src data
		ld   [hl], a		; Write to iSndChInfo_KeyRelTarget
		inc  bc				; Seek to next byte
		jr   .saveDataPtr
		
	.noInstOff:
		; $DE-$EE
		; Subtract again! This makes what's it's checking not explicit due to underflow.
		sub  $DE+$11		; Try to force back in range
		jr   z, .len0_ni	; A == 0? If so, treat next arg as length
		jr   nc, .lenIdx_ni	; A > 0? If so, read from table
		
		; Otherwise, the raw argument was < $DE.
		; Don't set either a new length, nor a new offset.
		; This means there are no additional parameters, and we're currently on the first byte of the next command.
		ld   h, d				
		jr   .saveDataPtr
		
		mLenFromData ni
		;##
		
	.saveDataPtr:
		;##
		;
		; Update the data pointer from BC back to the sound slot.
		;
		
		; Command's over, restore the main bank.
		; We also don't need to change the data pointer's bank number, that never changes.
		ld   a, [wSndBankMain]
		ldh  [hROMBank], a
		ld   [MBC1RomBank], a
		
		; Save updated data ptr from BC back to the slot
		ldh  a, [hSndChInfoPtrBakLow]
		add  iSndChInfo_DataPtr_Low
		ld   l, a
		ld   [hl], c		; Low byte to iSndChInfo_DataPtr_Low
		inc  l				; Seek to iSndChInfo_DataPtr_High
		ld   [hl], b		; High byte to iSndChInfo_DataPtr_High
		
		; Reset note timer
		add  iSndChInfo_Timer_High - iSndChInfo_DataPtr_Low
		ld   l, a
		ld   [hl], $00
	
	;--
	; 
	; By default, every new note played should count as a new key.
	;
	; We can override this behaviour by using snd_toggle_keyhold, which switches
	; between always holding keys and the default behaviour.
	; What this does in practice is causing conditional loops inside the instrument data to always trigger.
	;
	; However, because the command is called when the key is released, we still need to
	; press a new key the first time after toggling it on, which explains why SFNB_KEYHOLDNEW exists.
	;
	; This should absolutely not be done with NoteEx that change instruments.
	;
	.chkHeld:	
		; Seek HL to iSndChInfo_VibratoOffset, for .noHeld
		add  iSndChInfo_VibratoOffset - iSndChInfo_Timer_High
		ld   l, a
	
	; Not applicable if the slot was muted
	pop  af					; last iSndChInfo_NoteId == 0?
	jr   z, .noHeld			; If so, skip
	
	; Not applicable if not holding keys
	ldh  a, [hSndChInfoStatus]
	bit  SSTB_KEYHOLD, a
	jr   z, .noHeld
	
	; Must be after the first time we get here
	ldh  a, [hSndChInfoNewFlags]
	bit  SFNB_KEYHOLDNEW, a	; Just started holding keys?
	jr   z, .held			; If not, jump (ok)
	
	; Otherwise, this is our first time.
	; As SSEB_KEYON could be currently disabled, we must go through .noHeld once.
	; After that, SSEB_KEYON will stay enabled until we manually
	; toggle the held status by using SoundDataCmd_ToggleKeyHold again. 
	
	;--
.noHeld:
	; Rewind vibrato & instrument
	xor  a				
	ldi  [hl], a			; iSndChInfo_VibratoOffset = 0
	ldi  [hl], a			; iSndChInfo_InstrumentOffset = 0
	; Reset instrument timer
	inc  a
	ldi  [hl], a			; iSndChInfo_InstrumentTimer = 1
	
	; Press the key at the start of the note.
	ldh  a, [hSndChInfoFxFlags0]
	set  SSEB_KEYON, a
	ldh  [hSndChInfoFxFlags0], a
	
	; Mark that a new note was set, and retrigger the channel.
	ldh  a, [hSndChInfoNewFlags]
	or   SFN_NEWNOTE|SFN_TRIG
	ldh  [hSndChInfoNewFlags], a
	
	; We're no longer muted, if we were before
	ldh  a, [hSndChInfoFxFlags1]
	res  SSEB_MUTED, a
	ldh  [hSndChInfoFxFlags1], a
	
	; Back to the main loop
	jp   Sound_Do.soundDataDone
	
.held:
	; Only mark that a new note was set, otherwise the Portamento handler won't recalculate its base note.
	ld   hl, hSndChInfoNewFlags
	set  SFNB_NEWNOTE, [hl]
	jp   Sound_Do.soundDataDone
	
; =============== Sound_SetFreq ===============
; Sets new frequency data to the sound slot.
;
; This updates hNRx3Data and hNRx4Data, but not any sound slot values,
; which is important given we need to keep track of the old frequency.
;
; IN
; - A: Relative note ID
Sound_SetFreq:
	
	;
	; Note ID 0 is treated as silence, and so it zeroes out the frequency data.
	; Sound_UpdateWorkRegsFromSlot skips processing slots with zeroed out frequencies, 
	; causing the channel to be silenced.
	;
	and  a					; Note ID != 0?
	jr   nz, .idxFreq		; If so, jump
	ldh  [hNRx3Data], a		; Potentially clear NRx3
	ldh  [hNRx4Data], a		; Otherwise, also clear NRx4
	ret
	
.idxFreq:

	;
	; Index the frequency table using both pairs of indexes.
	; Frequencies are word values, so each table entry is 2 bytes long.
	;
	; The double indexes allows reusing the same data at different base intonations.
	; 
	; HL = Sound_FreqDataTbl[iSndChInfo_NoteIdBase + A]
	;

	ld   l, a					; L = ID Offset
	; Seek DE to iSndChInfo_NoteIdBase
	ldh  a, [hSndChInfoPtrBakLow]
	add  iSndChInfo_NoteIdBase
	ld   e, a
	; Index the frequency table.
	ld   a, [de]				; Get base note ID
	add  l						; Add the relative offset
	add  a						; *2, as each entry is 2 bytes long
	add  LOW(Sound_FreqDataTbl)	; Add the table base
	ld   l, a					; Set low byte
	ld   a, HIGH(Sound_FreqDataTbl)	; Table base 
	adc  a, $00					; In case of overflow
	ld   h, a					; Set high byte
	
.chkNeg:	

	;
	; Write the frequency data to the slot.
	;
	; If the slot has a non-zero *value* offset, subtract that to the frequency *value*.
	;

	; Seek DE to the value offset
	ld   a, e
	add  iSndChInfo_FreqMod - iSndChInfo_NoteIdBase
	ld   e, a
	
	; If the offset is 0, just write the frequency as-is
	ld   a, [de]
	and  a					; iSndChInfo_FreqMod != 0?
	jr   nz, .withOffset	; If so, jump
.noOffset:
	ldi  a, [hl]			; Low byte to hNRx3Data
	ldh  [hNRx3Data], a	
	ldi  a, [hl]			; High byte to hNRx4Data
	ldh  [hNRx4Data], a
	ret
	
.withOffset:

	; As the offset is subtracted, invert it to E before using it.
	xor  $FF			; cpl a
	inc  a
	ld   e, a			; E = -iSndChInfo_FreqMod

	; Then add the inverted number over.
	; This is a slightly different version of the normal word += byte operation, since the byte is signed.
	; $0180 + $FF -> $027F -> $017F
	; $0100 + $FF -> $01FF -> $00FF
	ldi  a, [hl]		; Low byte
	add  e				; + offset
	ldh  [hNRx3Data], a	; to hNRx3Data
	ld   a, [hl]		; High byte
	adc  a, $00			; + carry
	bit  7, e			; The offset is negative?
	jr   z, .noNeg		; If not, skip
	dec  a				; Otherwise, decrement the high byte too
.noNeg:
	ldh  [hNRx4Data], a	; to hNRx4Data
	ret

; =============== Sound_DoInstrument ===============
; This subroutine prepares the volume/envelope-related fields (NRx2) for Sound_UpdateWorkRegsFromSlot.
;
; This data is updated at its own pace, indipendently from the song's frequencies.
; Effectively, this handles the instruments.
;
; Overall, this needs to set up two fields in particular:
; - The slot's volume to wSndChInfoVolume
; - The note's volume/envelope settings to hNRx2Data
Sound_DoInstrument:

	;
	; SLOT VOLUME
	;
	; Just gets copied as-is to wSndChInfoVolume.
	;
	
	ldh  a, [hSndChInfoPtrBakLow]
	inc  a						; Seek to iSndChInfo_Vol
	ld   e, a
	ld   a, [de]				; Read the volume
	ld   [wSndChInfoVolume], a	; and copy it over
	
	;
	; SLOT INSTRUMENT (NOTE VOLUME/ENVELOPE)
	;
	; This is a bit more involved, as this subroutine has the responsability
	; of fetching new data over time.
	;
	; There's a giant pointer table in BANK $06, with each entry pointing to an instrument.
	; Each instrument is a table of commands, typically defining the NRx2 data and
	; how long before fetching more.
	;
	; Sound slots keep track of both the instrument's ID and the offset to the instrument data.
	; The ID can be altered through snd_instrument, while the instrument offset is altered on
	; its own depending on the commands in the instrument data.
	;
	
	; Prepare the args for later.
	; DE = Ptr to iSndChInfo_Instrument
	; HL = Ptr to iSndChInfo_InstrumentTimer
	inc  e						; To iSndChInfo_Instrument
	ld   a, e
	add  iSndChInfo_InstrumentTimer - iSndChInfo_Instrument
	ld   l, a
	
	;
	; Calculate the offset to the instrument pointer table.
	; This table has $7F entries (though not all valid), and index $01 is the first valid one
	; since the base table pointer is 2 bytes before the actual start of the table.
	;
	; Out of range IDs behave differently:
	; - ID    $00: Plays the note at max volume, with incrementing envelope.
	; - ID >= $80: Plays the note at max volume, with a customizable envelope.
	;              In practice, the lower nybble of the ID is treated as raw NRx2 data.
	;
	ld   a, [de]
	add  a						; *2, for word ptr table
	jr   z, .rawInc				; Is the index 0? If so, jump
	jr   nc, .chkTimer			; Didn't overflow? If so, jump (A * 2 < $100)
.raw:
	rrca 						; /2 with carry shifted back, to restore original
	or   ($0F<<4)				; Force max volume
	ldh  [hNRx2Data], a
	ret
.rawInc:
	ld   a, ($0F<<4)|SNDENV_INC	; Force max volume, *incrementing* envelope
	ldh  [hNRx2Data], a
	ret
	
.chkTimer:

	;
	; Keep using the current NRx2 settings as long as the timer doesn't elapse.
	;
	dec  [hl]					; iSndChInfo_InstrumentTimer--
	jr   z, .useNew				; Did it elapse? If so, jump
.useCur:
	; Otherwise...
	inc  l						; Seek to iSndChInfo_InstrumentData
	ld   a, [hl]				; and use it as current NRx2 data
	ldh  [hNRx2Data], a
	ret
	
.useNew:

	;--
	;
	; Seek to the current instrument data.
	;
	
	dec  l						; Seek to iSndChInfo_InstrumentOffset for later
	
	; DE = Ptr to Sound_InstrumentPtrTable-2[iSndChInfo_Instrument]
	ld   e, a
	ld   a, LOW(Sound_InstrumentPtrTable-2)
	add  e
	ld   e, a
	ld   a, HIGH(Sound_InstrumentPtrTable-2)
	adc  a, $00
	ld   d, a
	
	; Read out the resulting pointer, and index it by the instrument data offset.
	; BC = (*DE)[iSndChInfo_InstrumentOffset]
	ld   a, [de]				; Read low byte
	add  [hl]					; Add iSndChInfo_InstrumentOffset, the table offset
	ld   c, a					; Save to C
	
	inc  de						; Seek to high byte
	ld   a, [de]				; and read it
	adc  a, $00					; Add the carry
	ld   b, a					; Save to B
	
	;--
	
	;
	; Handle the command ID at the current location.
	; Most just lead directly to .cmdSetNewData.
	;
	
	ld   a, [bc]				; A = Command ID
	bit  SECB_SPEC_START, a		; ID < $80?	
	jr   z, .cmdSetNewData		; If so, jump
	cp   SNDENVCMD_LOOPFARCOND	; ID < $84?	
	jp   c, .chkCmd83			; If so, jump
	;--
	; [TCRF] We never get here.
	jr   z, .cmdLoopFarCond 	; ID == $84? If so, jump
	;--
	
; --------------- .cmdSetNewData / ivol ---------------
; Command ID $00-$7F
;
; Sets new volume/envelope data for the current slot.
; All commands eventually fall back to this, meaning they need to end with these two bytes.
;
; FORMAT:
; - 0: Timer value. When this elapses, more data gets fetched.
; - 1: NRx2 data.
.cmdSetNewData:
	; Increment the data offset for next time.
	ld   a, [hl]	; iSndChInfo_InstrumentOffset += 2
	add  $02
.setOffset:
	ld   [hl], a
	
.setNewData:
	ld   d, h
		
		; Copy the timer.
		; byte0 -> iSndChInfo_InstrumentTimer
		inc  l					; Seek to iSndChInfo_InstrumentTimer
		ld   a, [bc]			; Read byte0
		ld   [hl], a			; Write to iSndChInfo_InstrumentTimer
		inc  bc					; Seek to byte1
		inc  l					; Seek to iSndChInfo_InstrumentData
		
		; Copy the NRx2 data.
		; byte1 -> hNRx2Data, iSndChInfo_InstrumentData
		ld   a, [bc]			; Read byte1
		ldh  [hNRx2Data], a		; Write to the current NRx2 data
		cp   [hl]
		ld   [hl], a			; Write to iSndChInfo_InstrumentData too, so that it will be remembered the next frames
		ret  z
		
		; Only retrigger the channel if the NRx2 data is different compared to last time.
		ld   hl, hSndChInfoNewFlags
		set  SFNB_TRIG, [hl]
	ld   h, d
	ret
; ------------------------------
.chkCmd83:
	cp   SNDENVCMD_RESET
	jr   z, .cmdReset			; ID == $82? If so, jump 
	jr   c, .chkCmd81			; ID < $82? If so, jump
								; Otherwise, it's $83
						
; --------------- .cmdLoopCond / iloop_prev_cond ---------------
; [TCRF] Command ID $83
;
; Repeats the previous command until the key is released.
; This and all other loop commands expect to land on a standard (ID < $80) one.
;
; FORMAT:
; - 0: Command ID ($80)
; When the loop isn't taken...
; - 1: Timer value
; - 2: NRx2 data
.cmdLoopCond:
	; Check loop condition
	ldh  a, [hSndChInfoFxFlags0]
	bit  SSEB_KEYON, a 			; Holding keys?
	jr   nz, .cmdLoop 			; If so, loop
	
	; No loop
	inc  bc						; Seek to byte1
	ld   a, [hl]				; iSndChInfo_InstrumentOffset += 3
	add  $03
	jr   .setOffset
	
; ------------------------------
.chkCmd81:
	cp   SNDENVCMD_LOOPFAR
	jr   z, .cmdLoopFar			; ID == $81? If so, jump
								; Otherwise, it's $80
	
; --------------- .cmdLoop / iloop_prev ---------------
; Command ID $80
;
; Repeats the previous command.
;
; FORMAT:
; - 0: Command ID ($80)
.cmdLoop:
	; Move the data pointer back to the previous command. 
	dec  bc						; Seek back to byte1 of prev command
	dec  bc						; "" byte0 ""
	; The data offset stays untouched, since we aren't moving.
	jr   .setNewData

; --------------- .cmdLoopFarCond / iloop_far_cond ---------------
; [TCRF] Command ID $84
;
; Loops back by the specified amount of bytes when the keys are held.
; This could be used to jump forwards too, but that's not the intention.
;
; FORMAT:
; - 0: Command ID ($84)
; - 1: Loop offset
; When the loop isn't taken...
; - 2: Timer value
; - 3: NRx2 data
.cmdLoopFarCond:
	; Check loop condition
	ldh  a, [hSndChInfoFxFlags0]
	bit  SSEB_KEYON, a 			; Holding keys?
	jr   nz, .cmdLoopFar		; If so, loop
	
	; No loop
	inc  bc						; Seek to byte1
	inc  bc						; Seek to byte2
	ld   a, [hl]				; iSndChInfo_InstrumentOffset += 4
	add  $04
	jr   .setOffset
	
; --------------- .cmdLoopFar / iloop_far ---------------
; [TCRF] Command ID $81
;
; Loops back by the specified amount of bytes.
;
; FORMAT:
; - 0: Command ID ($81)
; - 1: Loop offset
.cmdLoopFar:

	; E = Loop offset
	inc  bc						; Seek to byte1
	ld   a, [bc]				; Read loop offset
	ld   e, a
	
	; Set up the data offset for next time.
	; This means making it point two bytes after the target location.
	; iSndChInfo_InstrumentOffset -= E - 2
	ld   a, [hl]				; Read iSndChInfo_InstrumentOffset
	sub  e						; Subtract loop count
	add  $02					; + 2
	ld   [hl], a				; Save back
	
	; For the current data pointer, subtract the loop offset
	; to reach the target location.
	; BC -= E + 1
	ld   a, c					; 
	scf							; Extra 1 because we incremented bc before
	sbc  e						; -= E + 1
	ld   c, a
	jr   nc, .setNewData		; Did we underflow? If not, jump
	dec  b						; Otherwise dec the high byte too
	jr   .setNewData
	
; --------------- .cmdReset / irewind ---------------
; [TCRF] Command ID $82
;
; Loops to the beginning of the data.
;
; FORMAT:
; - 0: Command ID ($82)
.cmdReset:	

	; As the first command must be a standard one, the next one is 2 bytes after.
	ld   [hl], $02	; iSndChInfo_InstrumentOffset = $02
	
	; Use the offset from the very first command.
	; Note that DE is currently pointing to the high byte of said pointer.
	ld   a, [de]				; Read high byte of base instrument pointer
	ld   b, a					; to B
	dec  de						; Seek back to low byte
	ld   a, [de]				; Read low byte of base instrument pointer
	ld   c, a					; to C
	jr   .setNewData

; =============== Sound_DoVibrato ===============
; Handles the square vibrato effect.
;
; This is accomplished by processing through a list of commands which shift the frequency
; by a certain offset.
;
; Code-wise, this is extremely similar to Sound_DoInstrument and even uses the same special commands.
Sound_DoVibrato:

	; Prepare args
	; DE = Ptr to iSndChInfo_Vibrato
	ldh  a, [hSndChInfoPtrBakLow]
	add  iSndChInfo_Vibrato
	ld   l, a
	
	;
	; Determine if iSndChInfo_Vibrato is both set and actually contains a Vibrato ID.
	; If it has the SVB_SET flag set, it's treated as NR10 data instead, and this feature is disabled.
	;
	ld   a, [hl]
	add  a
	ret  z						; iSndChInfo_Vibrato == 0? If so, nothing was set. Return
	ret  c						; iSndChInfo_Vibrato >= $80? If so, it's NR10 data. Return
	
	;--
	;
	; Seek to the current vibrato data.
	;
	
	;
	; First index the vibrato ptr table.
	; DE = Sound_VibratoPtrTable-2[iSndChInfo_Vibrato]
	;

	; Offset the pointer table
	ld   hl, Sound_VibratoPtrTable-2	; HL = Table base
	ld   c, a							; BC = iSndChInfo_Vibrato
	ld   b, $00
	add  hl, bc
	; Read out the resulting ptr to DE
	ldi  a, [hl]
	ld   e, a
	ld   a, [hl]
	ld   h, d		
	ld   d, a		
	
	;
	; Then index the vibrato table by the data offset.
	; BC = DE + iSndChInfo_VibratoOffset
	;

	; Seek HL to iSndChInfo_VibratoOffset
	ldh  a, [hSndChInfoPtrBakLow]
	add  iSndChInfo_VibratoOffset
	ld   l, a
	ld   a, [hl]				; Read offset
	add  e						; Add low byte
	ld   c, a					; Save to C
	ld   a, d					; Read high byte
	adc  a, $00					; Add the carry
	ld   b, a					; Save to B
	
	;
	; Handle the command ID at the current location.
	; Most just lead directly to .cmdShiftFreq.
	;
	ld   a, [bc]				; A = Command ID
	bit  SECB_SPEC_START, a		; A < $80?
	jr   z, .cmdShiftFreq		; If so, jump
	cp   SNDENVCMD_LOOPFARCOND	; ID < $84?	
	jp   c, .chkCmd83			; If so, jump
	jr   z, .cmdLoopFarCond		; ID == $84? If so, jump
	
; --------------- .cmdShiftFreq / vfrq ---------------
; Command ID $00-$7F, $85-$FF
;
; Alters the current frequency by adding the offset to it.
; All commands eventually fall back to this, meaning they need to end with these two bytes.
;
; FORMAT:
; - 0: Offset (signed)
.cmdShiftFreq:
	; Increment the data offset for next time.
	inc  [hl]					; iSndChInfo_VibratoOffset++
	
.setNewData:
	ld   d, h
		
		; If the offset is 0, there's nothing to do
		and  a					; Offset == 0?
		ret  z					; If so, return
		
		; The frequency is a 16-bit value, so the offset should be one too.
		; Since the offset is signed, the high byte should be set accordingly.
		ld   c, a				; BC = A
		ld   b, $00
		bit  7, c				; Offset had the MSB set?
		jr   z, .updateFreq		; If not, skip
		dec  b					; Otherwise, make high byte $FF
	.updateFreq:
	
		; If the frequency value is $0000, don't disrupt silence.
		ldh  a, [hNRx3Data]		; L = hNRx3Data
		ld   l, a
		ldh  a, [hNRx4Data]		; E = hNRx4Data
		ld   e, a
		or   l					; Are both zero?
		ret  z					; If so, return
		
		; Frequency += BC
		ld   a, l				; Get low byte
		add  c					; Add offset
		ldh  [hNRx3Data], a		; Save back
		ld   a, e				; Get high byte
		adc  a, b				; Add offset + carry
		ldh  [hNRx4Data], a		; Save back
		
		;--
		; If the frequency over or underflowed, zero it out.
		; [TCRF] This never happens with the used songs.
		cp   HIGH($7FF+1)		; hNRx4Data < $08?
		ret  c					; If so, return
		xor  a
		ldh  [hNRx3Data], a
		ldh  [hNRx4Data], a
	ret
	
; ------------------------------
.chkCmd83:
	cp   SNDENVCMD_RESET
	jr   z, .cmdReset			; ID == $82? If so, jump 
	jr   c, .chkCmd81			; ID < $82? If so, jump
								; Otherwise, it's $83
						
; --------------- .cmdLoopCond / vloop_prev_cond ---------------
; [TCRF] Command ID $83
;
; Repeats the previous command until the key is released.
; This and all other loop commands expect to land on a standard (ID < $80) one.
;
; FORMAT:
; - 0: Command ID ($80)
; When the loop isn't taken...
; - 1: Offset (signed)
.cmdLoopCond:
	; Check loop condition
	ldh  a, [hSndChInfoFxFlags0]
	bit  SSEB_KEYON, a 			; Holding keys?
	jr   nz, .cmdLoop 			; If so, loop
	
	; No loop
	ld   a, [hl]				; iSndChInfo_VibratoOffset += 2
	add  $02
	ld   [hl], a
	
	; Prepare for standard command
	inc  bc						; Seek to byte1
	ld   a, [bc]
	jr   .setNewData
	
; ------------------------------
.chkCmd81:
	cp   SNDENVCMD_LOOPFAR
	jr   z, .cmdLoopFar			; ID == $81? If so, jump
								; Otherwise, it's $80
	
; --------------- .cmdLoop / vloop_prev ---------------
; Command ID $80
;
; Repeats the previous command.
;
; FORMAT:
; - 0: Command ID ($80)
.cmdLoop:
	; Move the data pointer back to the previous command. 
	dec  bc						; Seek back to prev command
	; Prepare for standard command
	ld   a, [bc]
	; The data offset stays untouched, since we aren't moving.
	jr   .setNewData

; --------------- .cmdLoopFarCond / vloop_far_cond ---------------
; [TCRF] Command ID $84
;
; Loops back by the specified amount of bytes when the keys are held.
; This could be used to jump forwards too, but that's not the intention.
;
; FORMAT:
; - 0: Command ID ($84)
; - 1: Loop offset
; When the loop isn't taken...
; - 2: Offset (signed)
.cmdLoopFarCond:
	; Check loop condition
	ldh  a, [hSndChInfoFxFlags0]
	bit  SSEB_KEYON, a 			; Holding keys?
	jr   nz, .cmdLoopFar		; If so, loop
	
	; No loop
	ld   a, [hl]				; iSndChInfo_VibratoOffset += 3
	add  $03
	ld   [hl], a
	
	; Prepare for standard command
	inc  bc						; Seek to byte1
	inc  bc						; Seek to byte2
	
.prepStd:
	ld   a, [bc]
	jr   .setNewData
	
; --------------- .cmdLoopFar / vloop_far ---------------
; Command ID $81
;
; Loops back by the specified amount of bytes.
;
; FORMAT:
; - 0: Command ID ($81)
; - 1: Loop offset
.cmdLoopFar:

	; E = Loop offset
	inc  bc						; Seek to byte1
	ld   a, [bc]				; Read loop offset
	ld   e, a
	
	
	; Set up the data offset for next time.
	; This means making it point 1 byte after the target location.
	; iSndChInfo_VibratoOffset -= E - 1
	ld   a, [hl]				; Read iSndChInfo_VibratoOffset
	sub  e						; Subtract loop count
	inc  a						; + 1
	ld   [hl], a				; Save back
	
	; For the current data pointer, subtract the loop offset
	; to reach the target location.
	; BC -= E + 1
	ld   a, c					; 
	scf							; Extra 1 because we incremented bc before
	sbc  e						; -= E + 1
	ld   c, a
	jr   nc, .prepStd			; Did we underflow? If not, jump. This could have just skipped the byte below...
	dec  b						; Otherwise dec the high byte too
	ld   a, [bc]            	; Get the frequency offset
	jr   .setNewData
	
; --------------- .cmdReset / vrewind ---------------
; Command ID $82
;
; Loops to the beginning of the data.
;
; FORMAT:
; - 0: Command ID ($82)
.cmdReset:	

	; As the first command must be a standard one, the next one is 1 byte after.
	ld   [hl], $01	; iSndChInfo_VibratoOffset = $02
	
	; Use the offset from the very first command.
	ld   a, [de]
	jr   .setNewData

	
; =============== Sound_DoNoiseSweep ===============
; Performs a frequency sweep on the Noise channel from the slot fields.
Sound_DoNoiseSweep:
	; Prepare arguments for Sound_ApplyNoiseSweep
	
	; DE = Ptr to iSndChInfo_NoiseSweep
	ldh  a, [hSndChInfoPtrBakLow]
	add  iSndChInfo_NoiseSweep
	ld   e, a
	
	; HL = Ptr to iSndChInfo_NoiseFreq
	add  $01
	ld   l, a
	
	ld   a, [de]
	and  a						; iSndChInfo_NoiseSweep == 0?
	ret  z						; If so, return
	; Fall-through
	
; =============== Sound_ApplyNoiseSweep ===============
; Performs a frequency sweep on the Noise channel using the specified parameters.
;
; This increments the noise frequency clocks.
;
; When a sound slot handles ch4, this can be done either by setting the 
; noise sweep field (from Sound_DoNoiseSweep) or by including in
; the song data a command that sets a new sweep value, the latter only processed once.
;
; IN
; - A: Sweep value + SBDCH4_LFSR7 toggle flag.
;      This is in a NR43-like format to allow easy increments, so:
;      SSSSLCCC
;      -> S: Clock shift increment
;      -> C: Clock divider increment
;      -> L: LFSR *toggle* flag
;            Unlike the actual NR43, setting this switches
;            between 15-bit and 7-bit modes.
;      In practice, the lower increment shoud never be more than 1, while the upper one never more than 2 (or 8),
;      as it would run afoul of the overflow checks otherwise.
; - HL: Ptr to NR43 data
Sound_ApplyNoiseSweep:

	;
	; Increment the two clocks, which is just adding the sweep value to the current NR43 data.
	;
	; Bit 3 is unrelated to this so it's filtered out after every operaton, which also prevents
	; the lower nybble from overflowing, given that its increment isn't more than 1.
	; 
	
	ld   c, a 					; C = Increment iSndChInfo_NoiseSweep
		ld   a, [hl]			; Get current NR43 data
		and  $FF^SBDCH4_LFSR7	; Filter out LFSR flag
		ld   b, a
	ld   a, c 					; A = iSndChInfo_NoiseSweep
	and  $FF^SBDCH4_LFSR7		; Filter out LFSR *toggle* 
	add  b						; Sum the two
	and  $FF^SBDCH4_LFSR7		; No clock divider overflow
	
	;
	; Try preventing the upper nybble from overflowing.
	;
	
	; If the upper nybble is < $E, we're fine.
	cp   $E0					; A < $E0?
	jr   c, .merge				; If so, jump
	
	;--
	; [TCRF] If the increment is $8, subtract 2 from it.
	;        This causes the upper nybble to shift back and forth between $6 and $0.
	;        Values higher than $8 will cause overflows and should not be used.
	bit  7, c					; iSndChInfo_NoiseSweep >= $80?
	jr   nz, .decS2				; If so, jump
.decSE:
	; Otherwise, cycle it back to $0
	sub  $E0
	jr   .merge
.decS2:
	; We never get here
	sub  $20
	
.merge:
	;
	; Merge the updated clocks with the LSFR mode.
	;
	ld   b, a					; B = New clocks
	ld   a, [hl]				; Get current NR43 data
	xor  c						; Flip LSFR mode when the toggle flag is set
	and  SBDCH4_LFSR7			; Only keep that bit, the others are trash
	or   b						; Merge the new valid clocks
	ld   [hl], a				; Save back to iSndChInfo_NoiseFreq
	ret
	
; =============== Sound_DoNoteSlide ===============
; Portamento.
;
; Handles note-based pitch bends, from a note ID without an upper limit.
; Unlike its frequency-based counterpart, it takes effect immediately 
; without requiring to specify two other notes.
;
; This kind of pitch bend is only used for sound effects.
Sound_DoNoteSlide:

	; Seek DE to the current bended note
	ldh  a, [hSndChInfoPtrBakLow]
	add  iSndChInfo_NSNoteId
	ld   e, a
	
	;
	; This pitch bend is applied to a precalculated copy of the Note ID, so that
	; the original value can be restored if the effect ends.
	;
	; As a result, the note should be recalculated whenever a new one is set,
	; restarting the effect.
	;
	
	ldh  a, [hSndChInfoNewFlags]
	bit  SFNB_NEWNOTE, a	; New note set on this frame?
	jr   z, .exec			; If not, jump
	
.setup:
	; Seek HL to base Note ID
	ld   a, e
	add  iSndChInfo_NoteIdBase - iSndChInfo_NSNoteId
	ld   l, a
	; Seek BC to relative Note ID
	add  iSndChInfo_NoteId - iSndChInfo_NoteIdBase
	ld   c, a
	ld   b, d
	
	;
	; Precalculate the absolute Note ID by summing the two together to iSndChInfo_NSNoteId.
	; 
	; Relative note $00 counts as silence, the absolute one should be $00 too in
	; that case, which disables the effect (see .exec).
	;
	ld   a, [bc]			; A = iSndChInfo_NoteId
	and  a					; A == 0?
	jr   z, .setInitial		; If so, skip (never happens)
	add  [hl]				; A += iSndChInfo_NoteIdBase
.setInitial:
	ld   [de], a			; iSndChInfo_NSNoteId = A
	ret
	
.exec:
	
	; If we're playing silence, don't do the effect.
	; This can happen if either the starting note was $00 (see above), or the note slid out of range (see below).
	ld   a, [de]			; iSndChInfo_NSNoteId
	and  a			
	ret  z
	
	;
	; Apply the portamento speed to the absolute note.
	;
	
	; Seek HL to the unsigned speed value
	ld   l, e
	dec  l					; iSndChInfo_NSSpeed
	
	ldh  a, [hSndChInfoFxFlags0]
	bit  SSEB_NSUP, a		; Are we sliding up?
	ld   a, [de]			; (Get the note we're updating, iSndChInfo_NSNoteId)
	jr   nz, .slideUp		; If so, jump
.slideDown:
	sub  [hl]				; A -= iSndChInfo_NSSpeed
	jr   .chkMute
.slideUp:
	add  [hl]				; A += iSndChInfo_NSSpeed
.chkMute:
	; If this operation caused the note ID to reach $00, end the effect.
	jr   z, .endSlide
	
	;
	; Index the resulting frequency value from the table, by ID.
	;
	; This value will never be zero, so the table base is 2 bytes before its actual start
	;
	ld   bc, Sound_FreqDataTbl-2
	
	; Because the sliding is automatic and uncapped, we have to check its range unlike other uses of Sound_FreqDataTbl.
	; If that went out of range, also end the effect.
	cp   (Sound_FreqDataTbl.end-Sound_FreqDataTbl+2)/2
	jr   nc, .endSlide
	
.playOk:
	ld   [de], a			; (Save back the updated note ID)
	
	add  a					; *2, as each entry is 2 bytes long
	ld   l, a				; to HL
	ld   h, $00
	add  hl, bc				; Offset it
	
	;
	; Write the frequency data to the slot.
	; This replaces whatever was previously set by iSndChInfo_Freq_Low/iSndChInfo_Freq_High.
	;
	ld   a, [hl]			; Low byte to hNRx3Data
	ldh  [hNRx3Data], a
	inc  hl
	ld   a, [hl]			; High byte to hNRx4Data
	ldh  [hNRx4Data], a
	ld   h, d				; Restore pointer
	ret
	
.endSlide:
	; Reset the note.
	xor  a
	ld   [de], a			; iSndChInfo_NSNoteId = 0
	; And mute the sound channel for this frame only.
	ldh  [hNRx3Data], a
	ldh  [hNRx4Data], a
	ld   h, d
	ret
	
; =============== Sound_DoPitchBend ===============
; Handles frequency-based pitch bends, from a source frequency to a target frequency.
Sound_DoPitchBend:

	;
	; Fetch necessary data from the sound slot.
	;
	ldh  a, [hSndChInfoPtrBakLow]
	add  iSndChInfo_FreqTarget_Low
	ld   l, a
	
	; BC = Target frequency
	ldi  a, [hl]	; iSndChInfo_FreqTarget_Low 
	ld   c, a
	ldi  a, [hl]	; iSndChInfo_FreqTarget_High
	ld   b, a
	
	; E = Pitch bend speed
	ld   e, [hl]	; iSndChInfo_PitchBendSpeed
	
	;
	; Not applicable if the current note is silence.
	;
	ldh  a, [hNRx3Data]
	ld   l, a			; L = hNRx3Data
	ldh  a, [hNRx4Data]	; A = hNRx4Data
	or   l				; A == 0 && L == 0?
	ret  z				; If so, return
	
	;
	; Determine if the target frequency is higher or lower than the current one.
	; Based on that we know if we should add or subtract the speed.
	;
	
	; Start checking the high byte
	ldh  a, [hNRx4Data]		; A = CurHi
	cp   b
	ld   a, l				; (A = CurLo, for a later check) 
	jp   c, .add			; CurHi < DestHi? If so, add the speed
	jp   nz, .sub			; CurHi > DestHi? If so, subtract the speed
	
	; High byte matches, check the low byte
	cp   c
	jp   c, .add			; CurLo < DestLo? If so, add the speed
	ret  z					; CurLo == DestLo? If so, there's nothing to bend.
	; Otherwise, subtract the speed (CurLo > DestLo)
	
.sub:
	;
	; Subtract the speed from the frequency, making sure to cap the result.
	;
	
	; Subtract it from the low byte
	sub  e
	ld   l, a
	ldh  [hNRx3Data], a		; hNRx3Data -= iSndChInfo_PitchBendSpeed
	; Account for carry
	ldh  a, [hNRx4Data]
	sbc  $00
	ldh  [hNRx4Data], a		; hNRx4Data -= (carry)
	; Do cap checks, we don't want going below the target.
	cp   b					
	ld   a, l				; (A = CurLo, for second check)
	jr   c, .cap			; CurHi < DestHi? If so, we went below. Cap it back up.
	ret  nz					; CurHi > DestHi? If so, we didn't yet reach the target, so return. 
	cp   c
	ret  nc					; CurLo >= DestHi? If so, we either exactly reached the target, or didn't yet, so return.
	
.cap:
	; We went past the target, so copy the target frequency over.
	; This ends the current pitch bend, but otherwise doesn't disable them.
	; You have to disable them through the data command.
	ld   a, c
	ldh  [hNRx3Data], a
	ld   a, b
	ldh  [hNRx4Data], a
	ret
	
.add:
	;
	; Add the speed to the frequency, making sure to cap the result.
	;
	
	; Add it to the low byte
	add  e
	ld   l, a
	ldh  [hNRx3Data], a		; hNRx3Data += iSndChInfo_PitchBendSpeed
	; Account for carry
	ldh  a, [hNRx4Data]
	adc  a, $00
	ldh  [hNRx4Data], a		; hNRx4Data += (carry)
	; Do cap checks, we don't want going above the target.
	cp   b
	ld   a, l				; (A = CurLo, for second check)
	ret  c					; CurHi < DestHi? If so, we didn't reach it yet, so return.
	jr   nz, .cap			; CurHi > DestHi? If so, we went past, cap it.
	cp   c
	ret  z					; CurLo == DestLo? If so, target perfectly reached.
	ret  c					; CurLo < DestLo? If so, we didn't reach it yet, so return.
	jr   .cap				; Otherwise, CurLo > DestLo. Cap it back.
	
; =============== Sound_InitWorkRegs ===============
; Resets the set of sound register in the WRAM mirror at the end of the frame.
Sound_InitWorkRegs:
	xor  a
	ld   [wNR10], a
	ld   [wNR32], a
	ld   [wNR34], a
IF KEEP_PCM
	; These are temporary
	ld   [wSndPcmIDSet], a
	ld   [wSndPcmSpeedSet], a
ENDC

	ld   a, $08
	ld   [wNR12], a
	ld   [wNR22], a
	ld   [wNR42], a
	
	ld   a, $80
	ld   [wNR14], a
	ld   [wNR24], a
	ld   [wNR44], a
	
	; Reset the channel-specific NR51 bitmasks.
	; These are used to filter out bits when updating wNR51, and then zeroed out once done (hence the need to reset them every frame).
	ld   a, $11
	ld   [wNR51_ChMask1], a
	add  a ; $22
	ld   [wNR51_ChMask2], a
	add  a ; $44
	ld   [wNR51_ChMask3], a
	add  a ; $88
	ld   [wNR51_ChMask4], a
	; Enable all channels by default.
	ld   a, $FF ; All
	ld   [wNR51], a
	ret
	
; =============== Sound_UpdateWorkRegsFromSlot ===============
; Saves the changes from the sound slot into the sound registers in the WRAM mirror.
Sound_UpdateWorkRegsFromSlot:

	; If we're muted, audio won't play so don't bother setting up the registers
	ldh  a, [hSndChInfoFxFlags1]
	bit  SSEB_MUTED, a
	ret  nz
	
IF KEEP_PCM
	;
	; Verify if PCM playback on this slot can start/continue.
	; This mostly involves writing to wSndPcmSpeedSet, which here counts as a marker for keeping PCM enabled.
	; Sound_UpdateRegs will make use of that.
	;
	; - At the start of the frame it's set to $00. 
	; - If a new PCM is requested, it's set to the requested speed, which will definitely be > $00.
	;   -> This should be left untouched if it's allowed to start, reset to $00 if not.
	; - If nothing new is requested, it stays at $00.
	;   -> This should be changed to != 0 if it's allowed to start.
	;
	
	; Skip all of this if this slot doesn't use PCM.
	bit  SSEB_PCM, a			; Slot using song PCM?
	jr   z, .noPcm				; If not, skip
	;--
	; We never get here.
	; This also assumes the current slot handles the wave channel.
	ld   hl, wNR51_ChMask3		; HL = NR51 mask
	
	; Playing a new PCM from song data also always plays a new note.
	ldh  a, [hSndChInfoNewFlags]
	bit  SFNB_NEWNOTE, a		; Is a new PCM requested?
	jr   z, .pcmNotNew			; If not, jump
	
.pcmNew:
	; Cancel the request if...
	
	; ...PCM isn't globally enabled at a sound driver level
	ld   a, [wSndFlags]
	and  SDT_PCMON				; PCM enabled?
	jr   z, .pcmCancelReq		; If not, jump

	; ...the wave channel is in use (by an higher priority sound)
	ld   a, [hl]
	and  a						; Processed ch3 yet? (wNR51_ChMask3 == 0)
	jr   nz, .pcmSetNR51		; If not, jump
	
.pcmCancelReq:
	; Don't allow the PCM to start.
	; A side effect is that if what was previously using the wave channel was itself PCM, that will get disabled too.
	ld   [wSndPcmSpeedSet], a
	; And mute the slot so next time this subroutine returns immediately.
	jp   .muted
	
.pcmNotNew:
	; Stop the channel and PCM playback if...

	; ...a PCM sample isn't playing anymore
	ld   a, [wSndPcmPlaying]
	and  a
	jr   z, .muted
	
	; ...the wave channel is in use (by an higher priority sound)
	ld   a, [hl]
	and  a						; Processed ch3 yet? (wNR51_ChMask3 == 0)
	jr   z, .muted				; If so, jump
	
	; Otherwise, mark the validation as passed
	ld   a, $01
	ld   [wSndPcmSpeedSet], a
	
.pcmSetNR51:
	;
	; Apply stereo panning, identically to .setNR51.
	;
	
	; B = Bits for the other channels
	ld   a, [wNR51]
	xor  [hl]
	ld   b, a
	
	; A = Stereo panning bits
	ldh  a, [hSndChInfoPtrBakLow]
	add  iSndChInfo_Pan
	ld   e, a
	ld   a, [de]
	
	; Extract the relevant channel bits.
	and  [hl]
	
	; Merge back the bits for other channels & save
	or   b				
	ld   [wNR51], a
	
	; Wipe out the mask
	ld   [hl], $00
	ret
.noPcm:
ENDC
	;
	; Sync the sound slot's wNRx3/4 data with the working values.
	;
	ldh  a, [hSndChInfoPtrBakLow]	; HL = Ptr to iSndChInfo_Freq_Low
	add  iSndChInfo_Freq_Low
	ld   l, a
	ldh  a, [hNRx3Data]			; Copy hNRx3Data to iSndChInfo_Freq_Low
	ldi  [hl], a
	ld   c, a					; C = hNRx3Data
	ldh  a, [hNRx4Data]			; Copy hNRx4Data to iSndChInfo_Freq_High
	ld   [hl], a
	
	; If they are both empty, treat the channel as muted by returning early.
	; This works because all wNRx2 get reset at the start of the frame and 
	; we're returning before copying the slot's value to it.
	;
	; A zeroed out NRx2 silences the pulse and noise channels... but we hit a bit of a snag with wave.
	; To mute the wave channel we have to clear rNR30 instead, but since we're returning early
	; we've got to do that on Sound_UpdateRegs, especially since wNR30 can't be reset between frames (see below).
	or   c
	ret  z
	
	;##
	;
	; Calculate the volume, and save it back to hNRx2Data for later.
	;
	; The formula used is in practice this:
	; Vol = (SlotVolume - $0F) + (FadeVolume - $0F) + InstrumentVolume
	;
	; The modifiers SlotVolume and FadeVolume will reduce the volume when they aren't at their max value $0F.
	; Doing it this way helps fit the final result into a nybble.
	;
	
	; C = Slot base volume
	ld   a, [wSndChInfoVolume]		
	ld   c, a
	
	;
	; If fades are enabled for the slot, add (wSndFadeVolume - $0F).
	; This means the lower wSndFadeVolume is, the lower the final volume will be.
	;
.chkFade:
	ldh  a, [hSndChInfoFxFlags0]
	bit  SSEB_USEFADEVOL, a		; Fades enabled?
	jr   z, .applyVol			; If not, skip

	; Apply modifier
	; C += wSndFadeVolume - $0F
	ld   a, [wSndFadeVolume]		
	add  c
	sub  $0F			
	ld   c, a
	
	; If we underflowed the volume, cap it back to zero.
	; As a sound slot with 0 volume will prevent every note from playing anyway, we can skip .applyVol.
	jr   nc, .applyVol
	ld   a, $08
	jr   .setNRx2
.applyVol:
	; The upper nybble of NRx2 contains the volume settings.
	; Swap it to the lower nybble, that makes it easier to calculate stuff.
	ldh  a, [hNRx2Data]
	swap a
	; Keep a copy to preserve the other nybble
	ld   b, a
	; Then filter it out. Now A only contains the instrument's volume.
	and  $0F
	; Add the base slot volume (which may or may not have been faded)
	add  c
	; Compact to single nybble. This will never be > $0F.
	sub  $0F
	; If we underflowed though, cap it back to zero
	jr   nc, .mergeVol
	xor  a
.mergeVol:
	; Move out of the way
	ld   c, a
	; Restore the (swapped) other nybble
	ld   a, b
	and  $F0
	; Merge it with the new final volume
	or   c
	; Finally, swap them back in place
	swap a
.setNRx2:
	ldh  [hNRx2Data], a
	;##
	
	;
	; Seek to the set of sound registers in the WRAM mirror,
	; depending on the channel we're using.
	;
	; These start at wNR51_ChMask1 ($D020) and each channel has five each, so:
	; HL = wNR51_ChMask1 + (iSndChInfo_ChId * 5)
	;      Which will be wNR51_ChMask*.
	;
	
	ld   a, l					; HL = Ptr to iSndChInfo_ChId
	add  iSndChInfo_ChId - iSndChInfo_Freq_High
	ld   l, a
	ld   a, [hl]				; A = C = Channel ID
	ld   c, a
	add  a						; A * 2
	add  a						; ... 4
	add  c						; ... 5
	add  LOW(wNR51_ChMask1) 	; + base address low						
	ld   l, a
	ld   h, HIGH(wNR51_ChMask1)	; + base address high
	
	;--
	;
	; Sound slots can contain data for up two channels.
	; - A single channel from 1 to 3
	; - Channel 4
	;
	ldh  a, [hSndChInfoStatus]
	bit  SSTB_CH123, a			; Does the slot contain ch1-3 data?
	jr   z, .procCh4			; If not, it has to contain ch4 data.
	call .procCh				; Do ch1-3 data.
	ldh  a, [hSndChInfoStatus]
	bit  SSTB_CH4, a			; Does the slot contain ch4 data?
	ret  z						; If not, return
	
.procCh4:
	ld   hl, wNR51_ChMask4
.procCh:
	; Only process each sound channel once.
	; If multiple slots want to update the same channel, only the first one goes through.
	ld   a, [hl]
	and  a						; wNR51_ChMask* != 0?
	jr   nz, .setNR51			; If so, ok. it hasn't been processed yet
	
.muted:
	; Mark the current slot as muted
	ldh  a, [hSndChInfoFxFlags1]
	set  SSEB_MUTED, a
	ldh  [hSndChInfoFxFlags1], a
	ret
	
.setNR51:
	
	;--
	;
	; Apply the stereo panning options from iSndChInfo_Pan to wNR51.
	; This should only affect the bits for the current channel.
	;
	; This also flags the sound channel as processed.
	;
	
	; B = Bits for the other channels
	; When doing bitwise negation like this, we'd normally have to do an "and" after the "xor".
	; However, we can skip that since when we get here:
	; - wNR51 is reset to $FF at the start of the frame
	; - wNR51_ChMask* will always have the bits for the current channel set
	ld   a, [wNR51]				; A = Channel playback settings
	xor  [hl]					; Mask unrelated bits using wNR51_ChMask*
	ld   b, a					; Save to B
	
	; A = Stereo panning bits.
	ldh  a, [hSndChInfoPtrBakLow]
	add  iSndChInfo_Pan
	ld   e, a
	ld   a, [de]
	
	; The value currently in A would affect every channel (ie: $FF, $F0, ...),
	; so we've got to extract the relevant channel bits.
	and  [hl]					; Only affect the current sound channel, using the same mask
	
	or   b						; Merge back the bits for other channels
	ld   [wNR51], a				; Save everything back
	
	; Wipe out the mask, which doubles as a marker that the sound channel has been processed.
	xor  a
	ldi  [hl], a				; Seek to the first register for the channel
	;--
	
	
.setRegs:
	;
	; Update the channel-specific registers.
	;
	
	; Seek DE to iSndChInfo_DutyOrWave, the first one to write
	ld   a, e
	add  (iSndChInfo_DutyOrWave-iSndChInfo_Pan)
	ld   e, a
	
	; The wave channel has very different registers
	ld   a, l
	cp   LOW(wNR30)				; Are we writing to the wave channel?
	jr   nz, .ch124				; If not, jump
.ch3:
	; Prepare args
	ld   b, [hl]				; B = wNR30
	inc  l						; Seek to wNR32
	
	;--
	; iSndChInfo_DutyOrWave -> wWaveSetId
	ld   a, [de]				; Read iSndChInfo_DutyOrWave...
	ld   [wWaveSetId], a		; ...and treat it as the new wWaveSetId
	
	;--
	;
	; Volume control.
	;
	; As the wave channel lacks envelopes and has coarser volume control,
	; only the upper two volume bits are used from hNRx2Data.
	; This is helpful, as it allows reusing the same instrument data between multiple channels
	; even with the differences.
	;
	; However, the volume value needs to go through conversion first:
	;
	; RAW -> xor -> GB  |
	; %11 -> %00 -> %01 | 100% Volume
	; %10 -> %01 -> %10 |  50% Volume
	; %01 -> %10 -> %11 |  25% Volume
	; %00 -> %11 -> %00 |   0% Volume
	;
	; All values except for the lowest one are flipped around.
	;
	
	; Read source
	ldh  a, [hNRx2Data]
	; Move bits down to their proper location
	rrca
	; Flipping bits almost yields the correct result, except offset down by 1
	xor  %01100000
	; Offset it back up
	add  %00100000
	; Clear unrelated bits out, this converts 0% Volume back to %00
	and  %01100000
	; Save to wNR32, seek to wNR33
	ldi  [hl], a
	
	;--
	; hNRx3Data -> wNR33
	ldh  a, [hNRx3Data]
	ldi  [hl], a
	
	;--
	; hNRx3Data -> wNR34
	ldh  a, [hNRx4Data]
	ld   [hl], a
	
	; If the channel was previously turned off, retrigger it.
	; This requires wNR30 to be persistent, which is why it's not reset between frames.
	bit  SNDCH3B_ON, b			; Turned on already?
	ret  nz						; If so, ignore
	set  SNDCHFB_RESTART, [hl]	; Otherwise, trigger changes (will require setting SNDCH3B_ON in Sound_UpdateRegs)
	ret
	
.ch124:
	;--
	; Duty cycle + Length timer.
	; iSndChInfo_DutyOrWave & $C0 -> wNRx1
	; [POI] Inexplicably, the length timer is forced to $00, overriding whatever is specified in snd_duty.
	;       That said, 99% of the time what it specifies is $00 anyway.
	ld   a, [de]				; Read iSndChInfo_DutyOrWave
	and  $C0					; Zero out length
	ldi  [hl], a				; Save it to wNRx1, seek to wNRx2 
	
	;--
	; hNRx2Data -> wNRx2
	ldh  a, [hNRx2Data]			; Read hNRx2Data
	ldi  [hl], a				; Write to wNRx2, seek to wNRx3
	
	;--
	; The remaining registers are different for the noise channel.
	ld   a, l
	cp   LOW(wNR51_ChMask4)		; Handling the noise channel? (addr >= ch4)
	jr   nc, .ch4Freq			; If so, jump
	
.ch12Freq:
	;--
	;
	; Copy over the frequency data.
	;

	; hNRx3Data -> wNRx3
	ldh  a, [hNRx3Data]
	ldi  [hl], a
	
	; hNRx4Data -> wNRx4
	ldh  a, [hNRx4Data]
	ld   [hl], a
	
	;--
	;
	; Copy over the sweep data, if it's been set.
	;

	; Only Pulse 1 has this.
	ld   a, l
	cp   LOW(wNR51_ChMask2)		; Handling Pulse 2? (addr >= ch2)
	jr   nc, .end				; If so, skip ahead
	
	; Seek to iSndChInfo_Vibrato
	ld   a, e
	add  iSndChInfo_Vibrato - iSndChInfo_DutyOrWave
	ld   e, a
	
	;
	; [TCRF] If iSndChInfo_Vibrato has the MSB set (SVBB_SET), treat it as raw NR10 data.
	;        This is never the case for used songs, as they use it as a Vibrato ID, so we always jump to the end.
	;
	ld   a, [de]
	bit  SVBB_SET, a			; Is the bit set?
	jr   z, .end				; If not, skip
	
	; iSndChInfo_Vibrato & $7F -> wNR10
	and  $FF^SVB_SET			; Otherwise, remove the MSB (NR10 doesn't use this bit anyway)
	ld   [wNR10], a				; And save it
	;--
	
	jr   .end
	
.ch4Freq:
	;
	; iSndChInfo_NoiseFreq -> wNR43
	;
	ld   a, e
	add  iSndChInfo_NoiseFreq - iSndChInfo_DutyOrWave
	ld   e, a
	ld   a, [de]
	ldi  [hl], a
	
	;
	; $00 -> wNR44
	;	
	xor  a
	ld   [hl], a
	
.end:
	;
	; Retrigger the channel if we've been asked to.
	; Note that HL must point to wNRx4 here.
	;
	ldh  a, [hSndChInfoNewFlags]
	bit  SFNB_TRIG, a			; Retrigger requested?
	ret  z						; If not, return
	set  SNDCHFB_RESTART, [hl]	; Otherwise, let's go
	ret
	
;================ Sound_DoQueue ================
; Processes the entire sound queue, from start to end.
Sound_DoQueue:

	; Nothing to do if the queue is empty
	ld   a, [wSndQueueLen]
	and  a
	ret  z
	
	; Switch to the main bank
	ldh  a, [hROMBank]
	push af
		ld   a, [wSndBankMain]
		ldh  [hROMBank], a
		ld   [MBC1RomBank], a
		
		; From the start of the queue...
		ld   hl, wSndQueueId
	.loop:
		push hl ; Save queue pointer
			
			;
			; Determine if this slot contains a Song ID or Command ID.
			; Command IDs have values >= $F0, everything else is a song.
			;
			; Also, the two sound-related queues are located in a precise address range that allows to:
			; - Switch between the two by just toggling bit 3
			; - Using the queue index directly as the low byte of the queue pointer for the Song ID.
			; ($D000-7 v $D008-F)
			;
			ld   a, [hl]		; A = Slot value
			cp   SNDCMD_START	; A < $F0?
			set  3, l			; (Switch to the respective argument, in the other queue)
			jr   c, .song 		; If so, it's a sound ID
		.cmd:
			; Otherwise it's a command
			ld   c, [hl]		; C = Command argument, command-specific
			
			;
			; Index the command pointer table.
			; This is offset by $E0 because the lowest command ID is $F0,
			; which, when multiplied by 2, returns $E0.
			;
			add  a				; DE = Command ID * 2
			ld   e, a
			ld   d, $00
			ld   hl, Sound_CmdPtrTable - LOW(SNDCMD_START * 2)	
			add  hl, de			; Add table base
			ldi  a, [hl]		; Read out pointer
			ld   h, [hl]
			ld   l, a
			call Sound_JpHl		; and execute it
			jr   .seekNext
		.song:
			ld   c, a			; C = Sound ID
		IF KEEP_PCM
			ld   a, [hl]		; hSndTmpSongPcm = Command argument, PCM sample ID
			ldh  [hSndTmpSongPcm], a
		ENDC
			call Sound_StartNew
			
		.seekNext:
		;
		; Seek to the next queue slot, or return if we're done.
		;
		pop  hl ; Restore queue pointer
		
		inc  l  				; QueuePtr++
	
		ld   a, [wSndQueueLen]	; A = Queue Length
		sub  l					; Does it match the low byte of the pointer?
		jr   nz, .loop			; If not, loop
		ld   [wSndQueueLen], a	; Otherwise, we're done. Zero out the length.
	; Restore previous bank
	pop  af
	ldh  [hROMBank], a
	ld   [MBC1RomBank], a
	ret
	
;================ Sound_Init ================
; Initializes the sound driver.
; IN
; - A: Bank with base data, set 1 (BANK $06)
; - B: Bank with base data, set 2 (BANK $0F)
Sound_Init:
	; Set up the bank numbers
	ld   [wSndBankMain], a
	ldh  [hROMBank], a
	ld   [MBC1RomBank], a
	ld   a, b
	ld   [wSndBankPcmDef], a
	
	; Clear sound queue
	xor  a
	ld   [wSndQueueLen], a		; only the index matters
	ld   [wSndFlags], a			; and the driver flags
	
	; Fall-through
	
;================ SoundCmd_ResetAll ================
; Command ID: $F1
; Resets the sound driver to the default state, also muting everything.
SoundCmd_ResetAll:

	; Enable sound hardware
	ld   a, SNDCTRL_ON
	ldh  [rNR52], a
	
	; Enable all sound channels
	; Not necessary, already done by Sound_InitWorkRegs
	ld   a, $FF
	ldh  [rNR51], a
	
	; Set max volume for both left/right speakers
	ld   a, %01110111
	ldh  [rNR50], a
	
	; Mute all channels
	xor  a
	ldh  [rNR31], a
	ldh  [rNR41], a
	ldh  [rNR30], a
	ldh  [rNR34], a
	ld   [wNR30], a
	ld   [wNR11], a
	ld   [wNR21], a
	ld   [wNR34], a
	call Sound_ClearWave
	
	; Fall-through
	
;================ SoundCmd_StopAll ================
; Command ID: $F2
; Disables the sound sets, which mutes everything.
SoundCmd_StopAll:

	IF KEEP_PCM
	; [TCRF] Reset everything except for PCM support.
	ld   a, [wSndFlags]
	and  SDT_PCMON
	ld   [wSndFlags], a
	ENDC
	
	; [POI] Yon's driver would hook up the timer interrupt to Sound_PCMHandler here,
	;       by writing to its WRAM address, as well as setting up the timer settings.
	
	; Disable the nine slots by clearing the first byte of each
	ld   hl, wSndChInfo0		; HL = Starting address
	ld   de, +wSndChInfo_Size	; DE = Sound slot size ($30)
	ld   b, wSndChInfo_Count	; B = Number of sound sets
.loop:
	ld   [hl], $00				; Wipe first byte
	add  hl, de					; Seek to next slot
	dec  b						; Are we done?
	jr   nz, .loop				; If not, loop
	
	; Reset to max volume.
	; This is here for SoundCmd_FadeIn, the only fade-related command which doesn't initialize the volume.
	ld   a, $0F
	ld   [wSndFadeVolume], a
	
	call Sound_InitWorkRegs
	call Sound_DisablePCM
	jp   Sound_UpdateRegs
	
; =============== Sound_ReqPlayId / SoundDataCmd_PlaySnd ===============
; Requests playback for a new sound ID, adding it to the end of the queue.
; This does not set any arguments.
; FORMAT / IN
; - 0: Command ID ($8B)
; - A / 1: Sound ID to play
SoundDataCmd_PlaySnd:
Sound_ReqPlayId:	
	push bc
		push hl
			ld   b, a				; B = Sound ID
		.retry:
			; Seek to the current queue entry.
			; This works because wSndQueueId sits at the top at $D000.
			; HL = &wSndQueueId[wSndQueueLen]
			ld   h, HIGH(wSndQueueId) 	; Queue base
			ld   a, [wSndQueueLen]		; Index
			ld   l, a
			
			; If writing to the first entry, no special checks are needed.
			and  a					; Index != 0?
			jr   nz, .writeSlotN	; If so, jump
			ld   [hl], b			; Write sound ID there
			inc  a					; Increment queue length
			jr   .setLen			
		
		.writeSlotN:
			;--
			; If we have a full queue, process all entries before retrying.
			; This might not be possible to trigger in the unmodified game.
			cp   $08				; Are all 8 entries filled?
			jr   nc, .overflow		; If so, jump
			;--
			
			; If we're trying to add a duplicate entry, return immediately
			ld   a, b				; A = Sound ID
			dec  l					; Seek to previous slot
			cp   [hl]				; Same value as the last one?
			jr   z, .end			; If so, return
			
			; OK!
			inc  l					; Seek back to current slot
			ldi  [hl], a			; Write Sound ID, increment queue length
			ld   a, l
		.setLen:					; Save back the new length
			ld   [wSndQueueLen], a
		.end:
		pop  hl
	pop  bc
	ret
		.overflow:
			; Process all 8 queue entries.
			
			; Mark the sound driver as being executed.
			; This avoid double execution if the timer or VBlank triggers it while doing this.
			ld   hl, wSndFlags
			set  SDTB_EXEC, [hl]
			; Process the queue
			push bc
				push de
					call Sound_DoQueue
				pop  de
			pop  bc
			; Done executing it
			ld   hl, wSndFlags
			res  SDTB_EXEC, [hl]
			jr   .retry
			
; =============== Sound_ReqPlayIdWithArg ===============
; Requests playback for a new sound ID with arguments.
; This is performed in an "unsafe" way that doesn't check if the queue is full.
; IN
; - B: Sound ID to play	
; - C: Arguments	
Sound_ReqPlayIdWithArg:
	push hl
		; HL = Ptr to current queue entry
		ld   h, HIGH(wSndQueueId)
		ld   a, [wSndQueueLen]
		ld   l, a
		
		; Write the entry and its argument to the respective queues.
		ld   [hl], b				; Save B to Song ID queue
		set  3, l					; Switch to respective entry in argument queue
		ld   [hl], c				; Write C to the Song Argument queue
		
		; Next slot ptr
		inc  a
		ld   [wSndQueueLen], a
	pop  bc
	ret
	
; =============== Sound_FadeInTargetReached ===============
; Ends the fade-in.
Sound_FadeInTargetReached:
	push de
		push hl
			; Disable fading in sound driver
			ld   hl, wSndFlags
			res  SDTB_FADE, [hl]
			
			; Reset fading volume to default value, not necessary though.
			ld   a, $0F
			ld   [wSndFadeVolume], a
			
			; Disable fading for all sound slots.
			; This is the reverse of what's done in SoundCmdS_EnableFade.
			ld   hl, wSndChInfo0 + iSndChInfo_FxFlags0	; HL = Ptr to flags of first slot
			ld   de, +wSndChInfo_Size	; DE = Slot size, seekahead
			ld   a, wSndChInfo_Count	; A = Number of slots
		.loop:
			res  SSEB_USEFADEVOL, [hl]	; Stop using fading volume
			add  hl, de				; Seek to next slot
			dec  a					; Are we done?
			jr   nz, .loop			; If not, loop
		pop  hl
	pop  de
	ret
	
IF KEEP_PCM
; =============== Sound_DisablePCM ===============
; [TCRF] Disables PCM completely.
Sound_DisablePCM:
	; If PCM support is enabled, disable the timer interrupt
	ld   a, [wSndFlags]
	bit  SDTB_PCMON, a				; Is PCM support still enabled?
	jr   z, .clrPlay				; If not, skip
	;--
	; We never get here
	xor  a					
	ldh  [rTAC], a
	;--
.clrPlay:
; =============== Sound_DisablePCMPlayback ===============
; [TCRF] Marks that no PCM sample is currently playing.
Sound_DisablePCMPlayback:
	xor  a
	ld   [wSndPcmPlaying], a
	ret
ENDC

; =============== Sound_ClearWave ===============
; Initializes / wipes out the complete set of wave data.
Sound_ClearWave:
	; Fill entire wave pattern with $FF
	ld   hl, rWave					; HL = Start address
	ld   a, $FF						; A = Value
	ld   b, rWave_End-rWave			; B = Bytes to wipe
.loop:
	ldi  [hl], a
	dec  b
	jr   nz, .loop
	
	; Clear selected wave pattern ID.
	; $FF is not a valid value, ensuring that whatever wWaveSetId gets set to is applied. 
	ld   [wWaveSetId], a
	ld   [wWaveCurId], a
	ret
	
; =============== Sound_NoteLenTable ===============
; Table of note lengths, by ID.
; These are used by the default note command (SoundDataCmd_Note) 
; to save bytes when the delay is "well known".
; If the length we want isn't in the following table, it takes 
; two bytes to specify rather than one.
Sound_NoteLenTable: 
	;  VAL   |  ID | ENCODED IN COMMAND's byte1
	db $01   ; $01 | $F0 or $DF
	db $02   ; $02 | $F1 or $E0
	db $03   ; $03 | $F2 or $E1
	db $04   ; $04 | $F3 or $E2
	db $06   ; $05 | $F4 or $E3
	db $08   ; $06 | $F5 or $E4
	db $0C   ; $07 | $F6 or $E5
	db $10   ; $08 | $F7 or $E6
	db $18   ; $09 | $F8 or $E7
	db $20;X ; $0A | $F9 or $E8
	db $30   ; $0B | $FA or $E9
	db $09   ; $0C | $FB or $EA
	db $12   ; $0D | $FC or $EB
	db $1E   ; $0E | $FD or $EC
	db $24   ; $0F | $FE or $ED
	db $2A   ; $10 | $FF or $EE

; =============== Sound_CmdPtrTable ===============
; Pointer table to sound commands, which take up the highest $10 sound IDs.
Sound_CmdPtrTable:
	dw SoundCmd_Unused_None;X       ; $F0 
	dw SoundCmd_ResetAll            ; $F1
	dw SoundCmd_StopAll             ; $F2
	dw SoundCmd_FadeOut             ; $F3
	dw SoundCmd_FadeInStartNew;X    ; $F4
	dw SoundCmd_FadeIn;X            ; $F5
	dw SoundCmd_Pause               ; $F6
	dw SoundCmd_Unpause             ; $F7
	dw SoundCmd_Unused_None;X       ; $F8
	dw SoundCmd_Unused_None;X       ; $F9
	dw SoundCmd_Unused_None;X       ; $FA
	dw SoundCmd_Unused_None;X       ; $FB
	dw SoundCmd_Unused_None;X       ; $FC
	dw SoundCmd_Unused_None;X       ; $FD
	dw SoundCmd_Unused_None;X       ; $FE
	dw SoundCmd_Unused_None;X       ; $FF


; =============== SoundCmd_Unused_None ===============
; Unused noop command.
SoundCmd_Unused_None:
	ret
	
;================ SoundCmd_FadeOut ================
; Command ID: $F3
; Starts a full fade-out, starting from max volume to none.
; IN
; - C: Fade speed
SoundCmd_FadeOut:
	call SoundCmdS_EnableFade
	
	; Start at max volume
	ld   a, $0F
	ld   [wSndFadeVolume], a
	
	; End with no volume
	xor  a
	ld   [wSndFadeVolumeTarget], a
	
	; Enable fade-out
	ld   a, [wSndFlags]
	or   SDT_FADEOUT|SDT_FADE
	ld   [wSndFlags], a
	ret
	
;================ SoundCmd_FadeInStartNew ================
; [TCRF] Not used.
; Command ID: $F4
; Starts a new song while doing a full fade-in, starting from zero volume to max volume.
; IN
; - C: Sound ID
SoundCmd_FadeInStartNew:
	; Start the new song
	call Sound_StartNew
	; Start the fade-in
	xor  a
	ld   [wSndFadeVolume], a
	; Since only one argument can be passed, the fade speed doesn't change from last time.
	; Nothing prevents you from writing to wSndFadeIncSpeedSub before sending out this command though. 
	ld   a, [wSndFadeIncSpeedSub]
	ld   c, a
	ld   a, [wSndFlags]
	jp   SoundCmd_FadeIn.setFade
	
;================ SoundCmd_FadeIn ================
; [TCRF] Not used.
; Command ID: $F5
; Starts a fade-in, starting from the *current volume* to max volume.
; IN
; - C: Fade speed
SoundCmd_FadeIn:
	; If a fade is already in progress, don't interrupt it
	ld   a, [wSndFlags]
	bit  SDTB_FADE, a
	ret  z
	
.setFade:
	; Delete the existing fade out, in case we came here from SoundCmd_FadeInStartNew
	and  $FF^SDT_FADEOUT
	; Enable fade-in
	or   SDT_FADE
	ld   [wSndFlags], a
	; Prepare for fade
	call SoundCmdS_EnableFade
	
	; End at max volume
	ld   a, $0F
	ld   [wSndFadeVolumeTarget], a
	ret

;================ SoundCmdS_EnableFade ================
; Shared code for enabling a fade.
; IN
; - C: Fade speed
SoundCmdS_EnableFade:
	; wSndFadeIncSpeedSub = Argument
	ld   a, c
	ld   [wSndFadeIncSpeedSub], a
	; Trigger overflow check for next increase
	ld   a, $FF
	ld   [wSndFadeTimerSub], a
	
	; Start using wSndFadeVolume for all normal slots.
	; Important otherwise the volume change won't get applied.
	; See also: Sound_FadeInTargetReached
	ld   hl, wSndChInfo0 + iSndChInfo_FxFlags0	; HL = Ptr to flags of first slot
	ld   de, +wSndChInfo_Size		; DE = Slot size, seekahead
	ld   a, wSndChInfo_Count - 1	; A = Number of slots
.loop:
	set  SSEB_USEFADEVOL, [hl]		; Start using fading volume
	add  hl, de						; Seek to next slot
	dec  a							; Are we done?
	jr   nz, .loop					; If not, loop
	
	ret
	
;================ SoundCmd_Pause ================
; Command ID: $F6
; Pauses normal sound slot processing. Only wSndChInfoEx0 will be processed.
SoundCmd_Pause:
	ld   a, [wSndFlags]
	or   SDT_PAUSE
	jr   SoundCmd_Unpause.setFlags
	
;================ SoundCmd_Unpause ================
; Command ID: $F7
; Unpauses normal sound slot processing.
SoundCmd_Unpause:
	ld   a, [wSndFlags]
	and  $FF^SDT_PAUSE	
.setFlags:
	ld   [wSndFlags], a
	; We don't need the baggage of playing the unpause sound here
	;ld   c, $00
	;jp   Sound_StartNew
	ret
	
;================ Sound_StartNew ================
; Plays a new song with an optional sample.
; IN
; - C: Sound ID
; - hSndTmpSongPcm: PCM Sample ID
Sound_StartNew:

	;
	; Index the song header pointer table.
	;
	
	; Offset the table
	; Each table entry is 3 bytes long (bank number + pointer)
	ld   hl, Sound_SndHeaderPtrTable ; BANK $06
	ld   b, $00 ; BC = Song ID
	add  hl, bc
	add  hl, bc
	add  hl, bc
	; B = Bank number for song header
	ldi  a, [hl]
	ld   b, a
	; HL = Pointer to song header
	ldi  a, [hl]
	ld   h, [hl]
	ld   l, a
	; Switch banks
	ld   a, b
	ldh  [hROMBank], a
	ld   [MBC1RomBank], a
	
	;
	; Parse out the data from the song header.
	;
	
	; 0: Slot header count.
	;    Process the next loop this amount of times.
	ldi  a, [hl]
	ld   b, a
.slLoop:

	; 1.0: Slot ID
	;      Determines the priority, the lower it is, less priority it has.
	;      By convention, slots 0-3 are used for BGM, 4-7 for SFX, and 8 for pause sounds.
	
	; DE = HL
	; HL = Ptr to slot, indexed from Sound_SndChInfoPtrTable
	ldi  a, [hl]						; A = Slot ID
	push hl
		add  a							; DE = Table offset
		ld   e, a
		ld   d, $00
		ld   hl, Sound_SndChInfoPtrTable; HL = Table base
		add  hl, de						; Add them over
		ldi  a, [hl]					; Read out the slot pointer to HL
		ld   h, [hl]
		ld   l, a
	pop  de
	
	;--
	; 1.1: Slot status
	ld   a, [de]	; A = 1-1
	inc  de			; Seek to 1-2
	
	; [POI] Mute the slot if the new status is fully blank.
	;       This doesn't come into play with this game's songs.
	and  a
	jr   z, .muteSlot
	
	; If an high priority sound is currently playing, do not interrupt it.
	; Only SFX use this, and when they do they mark all of their slots with it.
	bit  SSTB_PRIORITY, [hl]
	jr   nz, .end
	
	ldi  [hl], a	; Checks passed, copy it to iSndChInfo_Status
	;--
	
	; 1.2-B: Slot bytes, copied sequentially as-is to iSndChInfo_Vol-iSndChInfo_Pan
	;        For the Wave channel, what's specified in iSndChInfo_DutyOrWave could be an invalid wave ID.
	;        When that's the case, the song data will almost immediately contain a snd_wave command.
	push bc
		ld   b, $05 ; Copy 5 times
	.cpLoop:
		REPT 2 ; 2 bytes at a time
			ld   a, [de]
			ldi  [hl], a
			inc  de
		ENDR
		dec  b
		jr   nz, .cpLoop
	pop  bc
	;--
	
	;
	; Initialize the rest
	;
	
	xor  a
	; Zero out flags
	ldi  [hl], a	; iSndChInfo_FxFlags0 = 0
	ldi  [hl], a	; iSndChInfo_FxFlags1 = 0
	; Save the Sound ID
	; In the context of what the game uses, this is pointless to store.
	ld   [hl], c	; iSndChInfo_SoundId = Sound ID
	
	ld   a, l
	add  iSndChInfo_NoteLen - iSndChInfo_SoundId
	ld   l, a
	
	; Set the current note length to $01.00...
	ld   a, $01		; iSndChInfo_NoteLen = 1
	ldi  [hl], a
	; ...and set the timer to $00.FF, which guarantees that, regardless of the song's speed,
	;    new data will be fetched immediately (Timer + Speed >= Length).
	dec  a
	ldi  [hl], a	; iSndChInfo_Timer_High = 0
	ldi  [hl], a	; iSndChInfo_KeyRelTarget = 0
	dec  a			; iSndChInfo_Timer_Low = $FF
	ld   [hl], a
	
	ld   a, l
	add  iSndChInfo_FreqMod - iSndChInfo_Timer_Low
	ld   l, a
	
	; No note or frequency offset by default.
	; Song data will have to request those manually.
	xor  a
	ldi  [hl], a	; iSndChInfo_FreqMod = 0
	ld   [hl], a	; iSndChInfo_NoteId = 0
	ld   a, l 
	add  iSndChInfo_NoiseSweep - iSndChInfo_NoteId
	ld   l, a
	
	; In case the slot handles the noise channel...
	; ...no default sweep
	xor  a			; iSndChInfo_NoiseSweep = 0
	ldi  [hl], a
	; ...frequency at the base 262144 hz (shift and divider cancel themselves out)
	ld   a, $20		; iSndChInfo_NoiseFreq = $20
	ld   [hl], a
	
	ld   a, l
	add  iSndChInfo_Bank - iSndChInfo_NoiseFreq
	ld   l, a
	
	; Save the current bank number.
	; The song data is always in the same bank as its header.
	ldh  a, [hROMBank]
	ldi  [hl], a	; iSndChInfo_Bank = hROMBank
	
IF KEEP_PCM
	;
	; [TCRF] The command argument when starting a new song is the ID to a PCM sample.
	;        This can be used alongside SoundDataCmd_PlaySlotPcm to play it at the specified speed.
	;
	ldh  a, [hSndTmpSongPcm] ; iSndChInfo_PCMId = hSndTmpSongPcm
	ld   [hl], a
ENDC
.chkNext:
	ld   l, e		; Restore the song header ptr to HL
	ld   h, d
	dec  b			; Copied all channel data?
	jp   nz, .slLoop	; If not, loop
.end:
	; Restore main bank and return
	ld   a, [wSndBankMain]
	ldh  [hROMBank], a
	ld   [MBC1RomBank], a
	ret  
.muteSlot:
	; Save the zeroed out flags. This causes Sound_Do.slotLoop to skip the slot.
	ld   [hl], a
	jr   .chkNext
	
; =============== Sound_SndChInfoPtrTable ===============
; List of pointers to the individual sound slots.
; Song headers include IDs for indexing this table.
Sound_SndChInfoPtrTable:
	dw wSndChInfo0
	dw wSndChInfo1
	dw wSndChInfo2
	dw wSndChInfo3
	dw wSndChInfo4
	dw wSndChInfo5
	dw wSndChInfo6
	dw wSndChInfo7
	dw wSndChInfoEx0