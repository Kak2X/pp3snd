; =============== dp ===============
; Shorthand for far pointers in standard order.
MACRO dp
	db BANK(\1)
	dw \1
ENDM

; LOWERCASE nrxx macros to try avoiding conflicts

; =============== nr10 ===============
; NR10 data.
; IN
; - 1: Pace ($0-7)
; - 2: Direction (SNDPRD_INC or SNDPRD_DEC)
; - 3: Individual step
MACRO nr10
	db (\1 << 4)|\2|\3
ENDM

; =============== nrx1 ===============
; NRx1 data.
;
; IN
; - 1: Wave Duty (SNDDUTY_*)
; - 2: Initial length timer
MACRO nrx1
	db (\1 << 6)|\2
ENDM

; =============== nrx2 ===============
; NRx2 data.
;
; IN
; - 1: Volume ($0-$F)
; - 2: Envelope direction (SNDENV_INC or SNDENV_DEC) [non-Wave]
; - 3: Envelope pace [non-Wave]
MACRO nrx2
	db (\1 << 4)|\2|\3
ENDM

; =============== nr32 ===============
; NR32 data, in hNRx2Data format.
;
; IN
; - 1: Volume (SNDCH3VOL_*)
MACRO nr32
	db (\1 << 6)
ENDM

; =============== INSTRUMENT / VIBRATO DATA COMMANDS ===============

; =============== ivol ===============
; Command: Sound_DoInstrument.cmdSetNewData
;
; Sets new NRx2 data block.
;
; IN
; - 1: Length, in frames. This NRx2 data is valid for that duration.
;      Must not be between $80-$84
; - 2-4: nrx2 args
MACRO ivol
	db \1
	nrx2 \2,\3,\4
ENDM

; =============== vfrq ===============
; Command: Sound_DoVibrato.cmdShiftFreq
;
; Shifts the frequency by the specified amount.
;
; IN
; - 1: Amount (signed)
;      Must not be between $80-$84
MACRO vfrq
	db \1
ENDM

; =============== irewind ===============
; Command: Sound_DoInstrument.cmdReset
;
; Restarts the instrument from the beginning.
MACRO irewind
	db SNDENVCMD_RESET
ENDM

; =============== vrewind ===============
; Command: Sound_DoVibrato.cmdReset
;
; Restarts the vibrato from the beginning.
MACRO vrewind
	db SNDENVCMD_RESET
ENDM

; =============== iloop_prev ===============
; Command: Sound_DoInstrument.cmdLoop
;
; Repeats the previous command.
MACRO iloop_prev
	db SNDENVCMD_LOOP
ENDM

; =============== vloop_prev ===============
; Command: Sound_DoVibrato.cmdLoop
;
; Repeats the previous command.
MACRO vloop_prev
	db SNDENVCMD_LOOP
ENDM

; =============== iloop_prev_cond ===============
; Command: Sound_DoInstrument.cmdLoopCond
;
; Repeats the previous command until the key is released.
;
; IN (same as ivol)
; - 1: Length, in frames.
; - 2-4: nrx2 args
MACRO iloop_prev_cond
	db SNDENVCMD_LOOPCOND
	ivol \1,\2,\3,\4
ENDM

; =============== vloop_prev_cond ===============
; Command: Sound_DoVibrato.cmdLoopCond
;
; Repeats the previous command until the key is released.
; IN (same as vfrq)
; - 1: Amount (signed)
MACRO vloop_prev_cond
	db SNDENVCMD_LOOPCOND
	vfrq \1
ENDM

; =============== iloop_far ===============
; Command: Sound_DoInstrument.cmdLoopFar
;
; Makes the instrument loop to the specified label.
;
; IN
; - 1: Label
;      Must point to before current location.
MACRO iloop_far
	db SNDENVCMD_LOOPFAR, (@ - \1 - 1)
ENDM

; =============== vloop_far ===============
; Command: Sound_DoVibrato.cmdLoopFar
;
; Makes the vibrato loop to the specified label.
;
; IN
; - 1: Label
;      Must point to before current location.
MACRO vloop_far
	db SNDENVCMD_LOOPFAR, (@ - \1 - 1)
ENDM

; =============== iloop_far_cond ===============
; Command: Sound_DoInstrument.cmdLoopFarCond
;
; Makes the instrument loop to the specified label until the key is released.
;
; IN
; - 1: Label
;      Must point to before current location.
; (remaining same as ivol)
; - 2: Length, in frames.
; - 3-5: nrx2 args
MACRO iloop_far_cond
	db SNDENVCMD_LOOPFARCOND, (@ - \1 - 1)
	ivol \2,\3,\4,\5
ENDM

; =============== vloop_far_cond ===============
; Command: Sound_DoVibrato.cmdLoopFarCond
;
; Makes the vibrato loop to the specified label until the key is released.
;
; IN
; - 1: Label
;      Must point to before current location.
; (remaining same as vfrq)
; - 2: Amount (signed)
MACRO vloop_far_cond
	db SNDENVCMD_LOOPFARCOND, (@ - \1 - 1)
	vfrq \2
ENDM

; =============== snd_jp ===============
; Command: SoundDataCmd_Jp
;
; Loops the song to the specified location.
;
; IN
; - 1: Target location
MACRO snd_jp
	db SNDDATACMD_JP
	dw \1
ENDM

; =============== snd_djnz ===============
; Command: SoundDataCmd_JpByTimer
;
; Decrements the specified counter on the slot struct.
; It will loop the song akin to snd_jp until the counter becomes 0.
;
; IN
; - 1: Slot struct offset
;      This contains the timer, mostly points to iSndChInfo_LoopTimer0
; - 2: Target location if the jump is taken
MACRO snd_djnz
	db SNDDATACMD_DJNZ, \1
	dw \2
ENDM

; =============== snd_end ===============
; Command: SoundDataCmd_End
;
; Ends the sound channel data without looping.
MACRO snd_end
	db SNDDATACMD_END
ENDM

; =============== snd_vibrato ===============
; Command: SoundDataCmd_SetVibrato
;
; Sets a new vibrato.
; IN
; - 1: Vibrato ID (VIBRATO_*)
MACRO snd_vibrato
	db SNDDATACMD_VIBRATO, \1
ENDM

; =============== snd_pulse1_sweep ===============
; Command: SoundDataCmd_SetVibrato
;
; Sets a Pulse 1 sweep value.
; IN
; - 1: NR10 sweep data
MACRO snd_pulse1_sweep
	db SNDDATACMD_VIBRATO, SVB_SET|\1
ENDM

; =============== snd_pitchbend ===============
; Command: SoundDataCmd_PitchBend
;
; Enables/disables pitch bends.
;
; When this command is used to enable them, two more notes need to be played to start the first bend.
; First note for the source frequency, the second for the destination.
;
; From the second note onwards, the current note counts as the source frequency.
;
; IN
; - 1: Pitch bend speed.
;      If 0, pitch bends are disabled.
MACRO snd_pitchbend
	db SNDDATACMD_PITCH_BEND, \1
ENDM

; =============== snd_playsndarg ===============
; Command: SoundDataCmd_PlaySndArg
;
; Plays a new sound with the specified arguments.
; This internally uses Sound_ReqPlayIdWithArg, which adds to the queue without checking for bounds.
;
; IN
; - 1: Sound ID
; - 2: Argument
MACRO snd_playsndarg
	db SNDDATACMD_PLAYSNDARG, \1, \2
ENDM

; =============== snd_end_saveid ===============
; Command: SoundDataCmd_EndSaveID
;
; Like snd_end, except it also saves the song's Sound ID to wSndSavedSoundID.
MACRO snd_end_saveid
	db SNDDATACMD_END_SAVEID
ENDM

; =============== snd_vol ===============
; Command: SoundDataCmd_SetVol
;
; Sets a new base volume.
; IN
; - 1: Volume ($0-$F)
MACRO snd_vol
	db SNDDATACMD_VOL, \1
ENDM

; =============== snd_instrument ===============
; Command: SoundDataCmd_SetInstrument
;
; Sets a new instrument.
; IN
; - 1: Instrument ID (INSTR_*)
MACRO snd_instrument
	db SNDDATACMD_INSTRUMENT, \1
ENDM

; =============== snd_nrx2 ===============
; Command: SoundDataCmd_SetInstrument
;
; Sets new envelope data.
; IN
; - 1+: <nrx2 arguments>
MACRO snd_nrx2
	db SNDDATACMD_INSTRUMENT
	nrx2 \#
ENDM


; =============== snd_inc_base_note ===============
; Command: SoundDataCmd_IncBaseNote
;
; Alters the base note ID by the specified value.
;
; IN
; - 1: Value (signed)
;      If $80, it will zero out the note ID.
MACRO snd_inc_base_note
	db SNDDATACMD_INC_BASE_NOTE, \1
ENDM

; =============== snd_inc_vol ===============
; Command: SoundDataCmd_IncVol
;
; Increments the slot volume by the specified amount.
;
; IN
; - 1: Volume offset (signed)
MACRO snd_inc_vol
	db SNDDATACMD_INC_VOL, \1
ENDM

; =============== snd_playsnd ===============
; Command: SoundDataCmd_PlaySnd
;
; Plays a new sound.
; This internally uses Sound_ReqPlayId, which doesn't set any arguments but performs bound checks on the queue.
;
; IN
; - 1: Sound ID
; - 2: Argument
MACRO snd_playsnd
	db SNDDATACMD_PLAYSND, \1
ENDM

; =============== snd_nop ===============
; Command: SoundDataCmd_Nop
MACRO snd_nop
	db SNDDATACMD_NOP
ENDM

; =============== snd_var ===============
; Command: SoundDataCmd_SetVar
;
; Writes an arbitrary value to the specified slot struct.
; This is also used to write loop timers, for use with snd_djnz
;
; IN
; - 1: Struct offset (iSndChInfo_*)
; - 2: Value to write
MACRO snd_var
	db SNDDATACMD_VAR, \1, \2
ENDM

; =============== snd_noise_sweep ===============
; Command: SoundDataCmd_SetNoiseSweep
;
; Sets a new noise sweep value.
;
; IN
; - 1: Clock shift increment (0-2 or 8)
; - 2: Clock divider increment (0 or 1)
; - 3: LFSR toggle (SBDCH4_LFSR7)
;      If set, toggles between 15-bit and 7-bit modes.
MACRO snd_noise_sweep
	db SNDDATACMD_NOISE_SWEEP, (\1 << 4)|\2|\3
ENDM

; =============== snd_noise_sweep_single ===============
; Command: SoundDataCmd_NoiseSweepSingle
;
; Performs a single noise sweep with the specified value.
; This does not alter the sweep value currently saved to the slot through snd_noise_sweep.
;
; IN
; - 1: Clock shift increment (0-2 or 8)
; - 2: Clock divider increment (0 or 1)
; - 3: LFSR toggle (SBDCH4_LFSR7)
;      If set, toggles between 15-bit and 7-bit modes.
MACRO snd_noise_sweep_single
	db SNDDATACMD_NOISE_SWEEP_SINGLE, (\1 << 4)|\2|\3
ENDM

; =============== snd_status ===============
; Command: SoundDataCmd_SetStatus
;
; Sets a new slot status bitmask.
; Used to alter the target channel type from/to the noise channel.
;
; IN
; - 1: Status flags	
MACRO snd_status
	db SNDDATACMD_STATUS, \1
ENDM

; =============== snd_orsaveid ===============
; Command: SoundDataCmd_OrSnd
;
; Merges the specified value into wSndSavedSoundID.
;
; IN
; - 1: Status flags	
MACRO snd_orsaveid
	db SNDDATACMD_ORSAVEID, \1
ENDM

; =============== snd_noise ===============
; Command: SoundDataCmd_SetNoiseFreq
;
; Sets a new noise frequency value.
;
; IN
; - 1: Clock shift
; - 2: Clock divider
; - 3: LFSR mode (SBDCH4_LFSR7)
MACRO snd_noise
	db SNDDATACMD_NOISE_FREQ, (\1 << 4)|\2|\3
ENDM

; =============== snd_fade ===============
; Command: SoundDataCmd_SlotFade
;
; Starts or stops a fade for the current slot.
;
; IN
; - 1: Fade type (SSF_FADEOUT/SSF_FADEIN)
; - 2: Target volume
; - 3: Fade speed. 
;      If 0, the fade is stopped.
MACRO snd_fade
	db SNDDATACMD_FADE, \1|\2, \3
ENDM


; =============== snd_note_slide ===============
; Command: SoundDataCmd_NoteSlide
;
; Enables/disables portamento.
;
; IN
; - 1: Direction (SSE_NSUP/SSE_NSDOWN)
;      This is shifted up by 1 compared to the internal status bit.
; - 2: Speed ($00-$7F)
;      If $00, portamento is disabled.
MACRO snd_note_slide
	db SNDDATACMD_NOTE_SLIDE, (\1 << 1)|\2
ENDM

; =============== snd_jpfade ===============
; Command: SoundDataCmd_JpIfFade
;
; Conditional jump, performed until the slot fade in/out has finished.
;
; IN
; - 1: Target location
MACRO snd_jpfade
	db SNDDATACMD_JP_FADE
	dw \1
ENDM

; =============== snd_toggle_keyhold ===============
; Command: SoundDataCmd_ToggleKeyHold
;
; Toggles the "key held" status.
; When toggled on, it causes instruments to stay in the sustain phase
; (conditional loops enabled) until this gets toggled back off again.
MACRO snd_toggle_keyhold
	db SNDDATACMD_TOGGLE_KEYHOLD
ENDM

; =============== snd_call ===============
; Command: SoundDataCmd_Call
;
; Calls the data subroutine. Cannot be nested.
;
; IN
; - 1: Target location
MACRO snd_call
	db SNDDATACMD_CALL
	dw \1
ENDM

; =============== snd_ret ===============
; Command: SoundDataCmd_Ret
;
; Returns from the called data subroutine.
MACRO snd_ret
	db SNDDATACMD_RET
ENDM

; =============== snd_speed ===============
; Command: SoundDataCmd_SetSpeed
;
; Sets a new playback speed.
;
; IN
; - 1: Playback speed
MACRO snd_speed
	db SNDDATACMD_SPEED, \1
ENDM

; =============== snd_inc_freq_offset ===============
; Command: SoundDataCmd_IncFreqOff
;
; Alters the frequency value offset by the specified amount.
; The higher this is, the lower the final frequency will be.
;
; IN
; - 1: Value (signed)
MACRO snd_inc_freq_offset
	db SNDDATACMD_INC_FREQ_OFFSET, \1
ENDM


; =============== snd_ch ===============
; Command: SoundDataCmd_SetCh
;
; Sets a new channel ID.
;
; IN
; - 1: Channel ID (SNDCH_*)
MACRO snd_ch
	db SNDDATACMD_CH, \1
ENDM

; =============== snd_inc_base_note_by_loop ===============
; Command: SoundDataCmd_IncBaseNoteByLoop
;
; Alters the base note ID by the specified *values*.
; The one picked depends on the primary loop counter:
; \2[\1 - iSndChInfo_LoopTimer0]
;
; IN
; - 1: Last Index, will be picked when the counter reaches 0.
; - 2: Ptr to table of note offsets
MACRO snd_inc_base_note_by_loop
	db SNDDATACMD_INC_BASE_NOTE_BY_LOOP, \1
	dw \2
ENDM

; =============== snd_keyon ===============
; Command: SoundDataCmd_SetKeyOn
;
; Sets how long the key should be held, will be \1 ticks after the note starts or before the note ends.
; This splits the note between sustain and release.
;
; IN
; - 1: Value
MACRO snd_keyon
	db SNDDATACMD_KEYON, \1
ENDM

; =============== snd_ifch ===============
; Command: SoundDataCmd_IfCh
;
; Handles the next command only if the sound channel matches the specified one.
; If it isn't, it gets skipped over.
; To work properly, the next command must be a 2-byte one.
;
; IN
; - 1: Channel ID (SNDCH_*)
MACRO snd_ifch
	db SNDDATACMD_IFCH, \1
ENDM

; =============== snd_jpch ===============
; Command: SoundDataCmd_JpCh
;
; Loops the song to the specified location if the sound channel matches the specified one.
;
; IN
; - 1: Channel ID (SNDCH_*)
; - 2: Target location
MACRO snd_jpch
	db SNDDATACMD_JPCH, \1
	dw \2
ENDM

; =============== snd_duty ===============
; Command: SoundDataCmd_SetDuty
;
; Sets a new length/duty sweep.
; Do not use for the wave channel.
;
; IN
; - 1: Duty (SNDDUTY_*)
; - 2: Initial length timer
MACRO snd_duty
	db SNDDATACMD_DUTY
	nrx1 \1,\2
ENDM

; =============== snd_wave ===============
; Command: SoundDataCmd_SetDuty
;
; Sets new wave data. For the wave channel-only.
;
; IN
; - 1: Wave ID
MACRO snd_wave
	db SNDDATACMD_DUTY, \1
ENDM

; =============== snd_pan ===============
; Command: SoundDataCmd_StereoPan
;
; Sets stereo panning.
;
; IN
; - 1: Stereo Panning flags, as NR51 bits.
MACRO snd_pan
	db SNDDATACMD_PAN, \1
ENDM

; =============== snd_sets3 ===============
; Command: SoundDataCmd_SetS3
;
; Sets the otherwise unused flag SST_3.
MACRO snd_sets3
	db SNDDATACMD_SETS3
ENDM

; =============== snd_clrs3 ===============
; Command: SoundDataCmd_ClrS3
;
; Clears the otherwise unused flag SST_3.
MACRO snd_clrs3
	db SNDDATACMD_CLRS3
ENDM

; =============== snd_playpcm ===============
; Command: SoundDataCmd_PlayPcm
;
; Plays a new PCM sample.
;
; IN
; - 1: PCM Sample ID
; - 2: Playback speed
; - 3+: <_snd_note parameters>
MACRO snd_playpcm
	db SNDDATACMD_PLAYPCM, \1, \2
	_snd_note \#
ENDM

; =============== snd_playslotpcm ===============
; Command: SoundDataCmd_PlaySlotPcm
;
; Plays the PCM sample previously assigned to the slot.
;
; IN
; - 1: Playback speed
; - 2+: <_snd_note parameters>
MACRO snd_playslotpcm
	db SNDDATACMD_PLAYSLOTSND, \1
	_snd_note \#
ENDM

; =============== snd_note ===============
; Command: SoundDataCmd_Note
;
; Standard octave.
;
; IN
; - 1: Relative note ID ($00-$7F)
; - 2: Note length ID (NOTELEN_*) [Optional]
; - 3: Custom note length value [If NOTELEN_CUSTOM is set]
; - 4: Key release target [Optional]
MACRO snd_note
	db \1
	SHIFT
	_snd_note \#
ENDM

; =============== snd_noteex ===============
; Command: SoundDataCmd_NoteEx
;
; Standard octave with preset settings.
; Use when the preset includes a Note ID.
;
; IN
; - 1: Preset ID
; - 2: Note length ID (NOTELEN_*) [Optional]
; - 3: Custom note length value [If NOTELEN_CUSTOM is set]
; - 4: Key release target [Optional]
MACRO snd_noteex
	db \1
	SHIFT
	_snd_note \#
ENDM

; =============== snd_noteex2 ===============
; Command: SoundDataCmd_NoteEx
;
; Standard octave with preset settings.
; Use when the preset doesn't include a Note ID.
;
; IN
; - 1: Preset ID
; - 2: Relative note ID ($00-$7F)
;      If $00, it will mute the sound channel.
; - 3: Note length ID (NOTELEN_*) [Optional]
; - 4: Custom note length value [If NOTELEN_CUSTOM is set]
; - 5: Key release target [Optional]
MACRO snd_noteex2
	db \1
	SHIFT
	snd_note \#
ENDM

; =============== snd_samenote ===============
; Command: SoundDataCmd_NoteEx.noNote
;
; Changes the existing note settings.
;
; IN
; - 1+: <_snd_note parameters>
MACRO snd_samenote
	_snd_note \#
ENDM

; =============== _snd_note ===============
; Shared arguments for note commands, do not use directly.
; - 1: Note length ID (NOTELEN_*) [Optional]
; - 2: Custom note length value [If NOTELEN_CUSTOM is set]
; - 3: Key release target [Optional]
MACRO _snd_note
	; "is not constant at assembly time"
	IF _NARG > 0
		IF \1 == NOTELEN_CUSTOM
			IF _NARG > 2
				db SNDDATACMD_NOTELENARG_WITHMID + \1, \2, \3
			ELSE
				db SNDDATACMD_NOTELENARG_NOMID + \1, \2
			ENDC
		ELSE
			IF _NARG > 1
				db SNDDATACMD_NOTELENARG_WITHMID + \1, \2
			ELSE
				db SNDDATACMD_NOTELENARG_NOMID + \1
			ENDC
		ENDC
	ENDC
ENDM