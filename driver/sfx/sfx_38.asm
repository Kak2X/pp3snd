SndHeader_38:
	db 2 ; Number of slots
.slot0:
	db SNDSLOT6 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 12 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -22 ; iSndChInfo_NoteIdBase
	db 0 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_38_Ch2 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot1:
	db SNDSLOT7 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 6 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -22 ; iSndChInfo_NoteIdBase
	db 0 ; iSndChInfo_Speed
	db SNDCH_PULSE1 ; iSndChInfo_ChId
	dw SndData_38_Ch1 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_38_Ch1:
	snd_note $00, NOTELEN_0C
	snd_inc_freq_offset -2
SndData_38_Ch2:
	snd_sets3
	snd_fade SSF_FADEOUT, 1, 64
	snd_note_slide SSE_NSDOWN, 2
	snd_note $2E, NOTELEN_04
	snd_note_slide SSE_NSDOWN, 0
	snd_vibrato VIBRATO_05
	snd_var iSndChInfo_LoopTimer0, $03
	.loop:
		snd_note $2C, NOTELEN_0C
		snd_inc_base_note 2
		snd_djnz iSndChInfo_LoopTimer0, .loop
	snd_end
