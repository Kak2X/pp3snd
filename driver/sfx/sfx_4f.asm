SndHeader_SFX_4F:
	db 1 ; Number of slots
.slot0:
	db SNDSLOT5 ; Slot location
	db SST_CH4 ; iSndChInfo_Status
	db 5 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -12 ; iSndChInfo_NoteIdBase
	db 0 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_4F_Ch2 ; Data pointer
	db $80 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_4F_Ch2:
	noise_sweep $07
	set_s3
	fade SSF_FADEIN, 13, 160
	set_var iSndChInfo_LoopTimer0, $19
	.loop:
		note $19, NOTELEN_03
		fine_tune 2
		snd_loop .loop, iSndChInfo_LoopTimer0
	chan_stop
