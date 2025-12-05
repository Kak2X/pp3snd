SndHeader_SFX_2B:
	db 1 ; Number of slots
.slot0:
	db SNDSLOT5 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 12 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -11 ; iSndChInfo_NoteIdBase
	db 0 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_2B_Ch2 ; Data pointer
	db $80 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_2B_Ch2:
	set_var iSndChInfo_LoopTimer0, $03
	.loop:
		set_s3
		note $4E, NOTELEN_01
		note $42, NOTELEN_06
		clr_s3
		volume_add -7
		snd_loop .loop, iSndChInfo_LoopTimer0
	chan_stop
