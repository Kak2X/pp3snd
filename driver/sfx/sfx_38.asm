SndHeader_SFX_38:
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
	db $80 ; iSndChInfo_DutyOrWave
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
	db $80 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_38_Ch1:
	note $00, NOTELEN_0C
	fine_tune_value -2
SndData_38_Ch2:
	set_s3
	fade SSF_FADEOUT, 1, 64
	note_slide SSE_NSDOWN, 2
	note $2E, NOTELEN_04
	note_slide SSE_NSDOWN, 0
	vibrato VIBRATO_05
	set_var iSndChInfo_LoopTimer0, $03
	.loop:
		note $2C, NOTELEN_0C
		fine_tune 2
		snd_loop .loop, iSndChInfo_LoopTimer0
	chan_stop
