SndHeader_SFX_5D:
	db 1 ; Number of slots
.slot0:
	db SNDSLOT4 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db 0 ; iSndChInfo_NoteIdBase
	db 220 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_5D_Ch2 ; Data pointer
	db $40 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_5D_Ch2:
	set_var iSndChInfo_LoopTimer0, $0A
	.loop:
		note $19, NOTELEN_01
		note $0D
		volume_add -2
		fine_tune_value -24
		snd_loop .loop, iSndChInfo_LoopTimer0
	chan_stop
	noise_freq $47
	noise_sweep $0F ;X
	note $0D, NOTELEN_30 ;X
	chan_stop ;X
