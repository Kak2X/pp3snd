SndHeader_SFX_47:
	db 1 ; Number of slots
.slot0:
	db SNDSLOT6 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 11 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -12 ; iSndChInfo_NoteIdBase
	db 0 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_47_Ch2 ; Data pointer
	db $80 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_47_Ch2:
	set_s3
	note $27, NOTELEN_01
	note $33
	clr_s3
	note_slide SSE_NSUP, 6
	fade SSF_FADEOUT, 0, 64
	.loop:
		note $2C, NOTELEN_0C
		snd_loop_fade .loop
	chan_stop
