; =============== dp ===============
; Shorthand for far pointers in standard order.
MACRO dp
	db BANK(\1)
	dw \1
ENDM

; =============== INSTRUMENT / VIBRATO DATA COMMANDS ===============

; =============== ienv ===============
; Command: Sound_DoInstrument.cmdSetNewData
;
; Sets new NRx2 data block.
;
; IN
; - 1: Length, in frames. This NRx2 data is valid for that duration.
;      Must not be between $80-$84
; - 2: NRx2 data
MACRO ienv
	db \1, \2
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

; =============== irestart ===============
; Command: Sound_DoInstrument.cmdReset
;
; Restarts the instrument from the beginning.
MACRO irestart
	db SNDENVCMD_RESET
ENDM

; =============== vrestart ===============
; Command: Sound_DoVibrato.cmdReset
;
; Restarts the vibrato from the beginning.
MACRO vrestart
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

; =============== iloop_prev_held ===============
; Command: Sound_DoInstrument.cmdLoopCond
;
; Repeats the previous command until the key is released.
;
; IN (same as ienv)
; - 1: Length, in frames.
; - 2: NRx2 data
MACRO iloop_prev_held
	db SNDENVCMD_LOOPCOND
	ienv \1,\2
ENDM

; =============== vloop_prev_held ===============
; Command: Sound_DoVibrato.cmdLoopCond
;
; Repeats the previous command until the key is released.
; IN (same as vfrq)
; - 1: Amount (signed)
MACRO vloop_prev_held
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

; =============== iloop_far_held ===============
; Command: Sound_DoInstrument.cmdLoopFarCond
;
; Makes the instrument loop to the specified label until the key is released.
;
; IN
; - 1: Label
;      Must point to before current location.
; (remaining same as ienv)
; - 2: Length, in frames.
; - 3: NRx2 data
MACRO iloop_far_held
	db SNDENVCMD_LOOPFARCOND, (@ - \1 - 1)
	ienv \2,\3
ENDM

; =============== vloop_far_held ===============
; Command: Sound_DoVibrato.cmdLoopFarCond
;
; Makes the vibrato loop to the specified label until the key is released.
;
; IN
; - 1: Label
;      Must point to before current location.
; (remaining same as vfrq)
; - 2: Amount (signed)
MACRO vloop_far_held
	db SNDENVCMD_LOOPFARCOND, (@ - \1 - 1)
	vfrq \2
ENDM

; =============== SOUND DATA COMMANDS ===============


; =============== snd_nop ===============
; Command: SoundDataCmd_Nop
MACRO snd_nop
	db SNDDATACMD_NOP
ENDM

; =============== chan_id ===============
; Command: SoundDataCmd_SetCh
;
; Sets a new channel ID.
;
; IN
; - 1: Channel ID (SNDCH_*)
MACRO chan_id
	db SNDDATACMD_CH, \1
ENDM

; =============== chan_type ===============
; Command: SoundDataCmd_SetStatus
;
; Sets a new slot status bitmask.
; Used to alter the target channel type from/to the noise channel.
;
; IN
; - 1: Status flags	
MACRO chan_type
	db SNDDATACMD_STATUS, \1
ENDM

; =============== speed ===============
; Command: SoundDataCmd_SetSpeed
;
; Sets a new playback speed.
;
; IN
; - 1: Playback speed
MACRO speed
	db SNDDATACMD_SPEED, \1
ENDM

; =============== set_var ===============
; Command: SoundDataCmd_SetVar
;
; Writes an arbitrary value to the specified slot struct.
; This is also used to write loop timers, for use with snd_djnz
;
; IN
; - 1: Struct offset (iSndChInfo_*)
; - 2: Value to write
MACRO set_var
	db SNDDATACMD_VAR, \1, \2
ENDM

; =============== snd_loop ===============
; Command: SoundDataCmd_Jp / SoundDataCmd_JpByTimer
;
; Loops the song to the specified location.
; If no timer ID is passed, the loop is always done.
; Otherwise, the value associated to the timer gets decremented and the loop will only be taken if it hasn't become 0.-
; The timer's initial value isn't specified here, use set_var to do so before the loop point.
;
; IN
; - 1: Target location
; - 2: [Optional] Timer ID (Slot struct offset)
;      This contains the timer, mostly points to iSndChInfo_LoopTimer0
MACRO snd_loop
	IF _NARG > 1 ; Conditonal
		db SNDDATACMD_DJNZ, \2
		dw \1
	ELSE ; Infinite
		db SNDDATACMD_JP
		dw \1
	ENDC
ENDM

; =============== snd_loop_fade ===============
; Command: SoundDataCmd_JpIfFade
;
; Conditional jump, performed until the slot fade in/out has finished.
;
; IN
; - 1: Target location
MACRO snd_loop_fade
	db SNDDATACMD_JP_FADE
	dw \1
ENDM

; =============== snd_loop_if_chan ===============
; Command: SoundDataCmd_JpCh
;
; Loops the song to the specified location if the sound channel matches the specified one.
;
; IN
; - 1: Channel ID (SNDCH_*)
; - 2: Target location
MACRO snd_loop_if_chan
	db SNDDATACMD_JPCH, \1
	dw \2
ENDM

; =============== if_chan ===============
; Command: SoundDataCmd_IfCh
;
; Handles the next command only if the sound channel matches the specified one.
; If it isn't, it gets skipped over.
; To work properly, the next command must be a 2-byte one.
;
; IN
; - 1: Channel ID (SNDCH_*)
MACRO if_chan
	db SNDDATACMD_IFCH, \1
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

; =============== volume ===============
; Command: SoundDataCmd_SetVol
;
; Sets a new base volume.
; IN
; - 1: Volume ($0-$F)
MACRO volume
	db SNDDATACMD_VOL, \1
ENDM

; =============== volume_add ===============
; Command: SoundDataCmd_IncVol
;
; Increments the slot volume by the specified amount.
;
; IN
; - 1: Volume offset (signed)
MACRO volume_add
	db SNDDATACMD_INC_VOL, \1
ENDM

; =============== fade ===============
; Command: SoundDataCmd_SlotFade
;
; Starts or stops a fade for the current slot.
;
; IN
; - 1: Fade type (SSF_FADEOUT/SSF_FADEIN)
; - 2: Target volume
; - 3: Fade speed. 
;      If 0, the fade is stopped.
MACRO fade
	db SNDDATACMD_FADE, \1|\2, \3
ENDM

; =============== panning ===============
; Command: SoundDataCmd_StereoPan
;
; Sets stereo panning.
;
; IN
; - 1: Stereo Panning flags, as NR51 bits.
MACRO panning
	db SNDDATACMD_PAN, \1
ENDM

; =============== sweep ===============
; Command: SoundDataCmd_SetVibrato
;
; Sets a Pulse 1 sweep value.
; IN
; - 1: Raw NR10 data
MACRO sweep
	db SNDDATACMD_VIBRATO, SVB_SET|\1
ENDM

; =============== noise_sweep ===============
; Command: SoundDataCmd_SetNoiseSweep
;
; Sets a new noise sweep value.
;
; IN
; - 1: Raw NR43 data
MACRO noise_sweep
	db SNDDATACMD_NOISE_SWEEP, \1
ENDM

; =============== noise_sweep_single ===============
; Command: SoundDataCmd_NoiseSweepSingle
;
; Performs a single noise sweep with the specified value.
; This does not alter the sweep value currently saved to the slot through noise_sweep.
;
; IN
; - 1: NR43 data
MACRO noise_sweep_single
	db SNDDATACMD_NOISE_SWEEP_SINGLE, \1
ENDM

; =============== duty_cycle ===============
; Command: SoundDataCmd_SetDuty
;
; Sets a new length/duty sweep.
; Do not use for the wave channel.
;
; IN
; - 1: NRx1 data
MACRO duty_cycle
	db SNDDATACMD_DUTY
	db \1
ENDM

; =============== envelope ===============
; Command: SoundDataCmd_SetInstrument
;
; Sets new envelope data.
; IN
; - 1: NRx2 data
MACRO envelope
	db SNDDATACMD_INSTRUMENT, \1
ENDM

; =============== wave_id ===============
; Command: SoundDataCmd_SetDuty
;
; Sets new wave data. For the wave channel-only.
;
; IN
; - 1: Wave ID
MACRO wave_id
	db SNDDATACMD_DUTY, \1
ENDM

; =============== noise_freq ===============
; Command: SoundDataCmd_SetNoiseFreq
;
; Sets a new noise frequency value.
;
; IN
; - 1: NR43 data
MACRO noise_freq
	db SNDDATACMD_NOISE_FREQ, \1
ENDM

; =============== fine_tune ===============
; Command: SoundDataCmd_IncBaseNote
;
; Alters the base note ID by the specified value.
;
; IN
; - 1: Value (signed)
;      If $80, it will zero out the note ID.
MACRO fine_tune
	db SNDDATACMD_INC_BASE_NOTE, \1
ENDM

; =============== fine_tune_by_loop ===============
; Command: SoundDataCmd_IncBaseNoteByLoop
;
; Alters the base note ID by the specified *values*.
; The one picked depends on the primary loop counter:
; \2[\1 - iSndChInfo_LoopTimer0]
;
; IN
; - 1: Last Index, will be picked when the counter reaches 0.
; - 2: Ptr to table of note offsets
MACRO fine_tune_by_loop
	db SNDDATACMD_INC_BASE_NOTE_BY_LOOP, \1
	dw \2
ENDM

; =============== fine_tune_value ===============
; Command: SoundDataCmd_IncFreqOff
;
; Alters the frequency value offset by the specified amount.
; The higher this is, the lower the final frequency will be.
;
; IN
; - 1: Value (signed)
MACRO fine_tune_value
	db SNDDATACMD_INC_FREQ_OFFSET, \1
ENDM







; =============== vibrato ===============
; Command: SoundDataCmd_SetVibrato
;
; Sets a new vibrato.
; IN
; - 1: Vibrato ID (VIBRATO_*)
MACRO vibrato
	db SNDDATACMD_VIBRATO, \1
ENDM

; =============== pitch_bend ===============
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
MACRO pitch_bend
	db SNDDATACMD_PITCH_BEND, \1
ENDM

; =============== instrument ===============
; Command: SoundDataCmd_SetInstrument
;
; Sets a new instrument.
; IN
; - 1: Instrument ID (INSTR_*)
MACRO instrument
	db SNDDATACMD_INSTRUMENT, \1
ENDM

; =============== note_slide ===============
; Command: SoundDataCmd_NoteSlide
;
; Enables/disables portamento.
;
; IN
; - 1: Direction (SSE_NSUP/SSE_NSDOWN)
;      This is shifted up by 1 compared to the internal status bit.
; - 2: Speed ($00-$7F)
;      If $00, portamento is disabled.
MACRO note_slide
	db SNDDATACMD_NOTE_SLIDE, (\1 << 1)|\2
ENDM

; =============== toggle_hold ===============
; Command: SoundDataCmd_ToggleKeyHold
;
; Toggles the "key held" status.
; When toggled on, it causes instruments to stay in the sustain phase
; (conditional loops enabled) until this gets toggled back off again.
MACRO toggle_hold
	db SNDDATACMD_TOGGLE_KEYHOLD
ENDM

; =============== hold_for ===============
; Command: SoundDataCmd_SetKeyOn
;
; Sets how long the key should be held, will be \1 ticks after the note starts or before the note ends.
; This splits the note between sustain and release.
;
; IN
; - 1: Value
MACRO hold_for
	db SNDDATACMD_KEYON, \1
ENDM

; =============== set_s3 ===============
; Command: SoundDataCmd_SetS3
;
; Sets the otherwise unused flag SST_3.
MACRO set_s3
	db SNDDATACMD_SETS3
ENDM

; =============== clr_s3 ===============
; Command: SoundDataCmd_ClrS3
;
; Clears the otherwise unused flag SST_3.
MACRO clr_s3
	db SNDDATACMD_CLRS3
ENDM

; =============== play_snd ===============
; Command: SoundDataCmd_PlaySnd / SoundDataCmd_PlaySndArg
;
; Plays a new sound.
; Without an argument set, it internally uses Sound_ReqPlayId, which doesn't set any arguments but performs bound checks on the queue.
; With an argument set, it instead uses Sound_ReqPlayIdWithArg, which adds to the queue without checking for bounds.
;
; IN
; - 1: Sound ID
; - 2: [Optional] Argument
MACRO play_snd
	IF _NARG > 1
		db SNDDATACMD_PLAYSNDARG, \1, \2
	ELSE
		db SNDDATACMD_PLAYSND, \1
	ENDC
ENDM

; =============== play_pcm ===============
; Command: SoundDataCmd_PlayPcm
;
; Plays a new PCM sample.
;
; IN
; - 1: PCM Sample ID
; - 2: Playback speed
; - 3+: <_note parameters>
MACRO play_pcm
	db SNDDATACMD_PLAYPCM, \1, \2
	_note \#
ENDM

; =============== play_slot_pcm ===============
; Command: SoundDataCmd_PlaySlotPcm
;
; Plays the PCM sample previously assigned to the slot.
;
; IN
; - 1: Playback speed
; - 2+: <_note parameters>
MACRO play_slot_pcm
	db SNDDATACMD_PLAYSLOTSND, \1
	_note \#
ENDM

; =============== or_sound ===============
; Command: SoundDataCmd_OrSnd
;
; Merges the specified value into wSndSavedSoundID.
;
; IN
; - 1: Status flags	
MACRO or_sound
	db SNDDATACMD_ORSAVEID, \1
ENDM

; =============== chan_stop ===============
; Command: SoundDataCmd_End / SoundDataCmd_EndSaveID
;
; Ends the sound channel data without looping.
; IN
; - 1: [Optional] If ECH_SAVE, the song's Sound ID to wSndSavedSoundID.
;      This can be used by the game to restart the song.
MACRO chan_stop
	IF _NARG > 0
		_chan_stop \1
	ELSE
		_chan_stop 0
	ENDC
ENDM
MACRO _chan_stop
	IF \1 == ECH_SAVE
		db SNDDATACMD_END_SAVEID
	ELSE
		db SNDDATACMD_END
	ENDC
ENDM

; =============== note ===============
; Command: SoundDataCmd_Note
;
; Standard octave.
;
; IN
; - 1: Relative note ID ($00-$7F)
; - 2: Note length ID (NOTELEN_*) [Optional]
; - 3: Custom note length value [If NOTELEN_CUSTOM is set]
; - 4: Key release target [Optional]
MACRO note
	db \1
	SHIFT
	_note \#
ENDM

; =============== note_ex ===============
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
MACRO note_ex
	db \1
	SHIFT
	_note \#
ENDM

; =============== note_ex2 ===============
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
MACRO note_ex2
	db \1
	SHIFT
	note \#
ENDM

; =============== note_repeat ===============
; Command: SoundDataCmd_NoteEx.noNote
;
; Changes the existing note settings.
;
; IN
; - 1+: <_note parameters>
MACRO note_repeat
	_note \#
ENDM

; =============== _note ===============
; Shared arguments for note commands, do not use directly.
; - 1: Note length ID (NOTELEN_*) [Optional]
; - 2: Custom note length value [If NOTELEN_CUSTOM is set]
; - 3: Key release target [Optional]
MACRO _note
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