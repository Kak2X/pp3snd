SndHeader_SFX_5C:
	db 1 ; Number of slots
.slot0:
	db SNDSLOT4 ; Slot location
	db SST_CH4 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_1E ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db 10 ; iSndChInfo_NoteIdBase
	db 220 ; iSndChInfo_Speed
	db SNDCH_NOISE ; iSndChInfo_ChId
	dw SndData_5C_Ch4 ; Data pointer
	db $80 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_5C_Ch4:
	noise_freq $27
	note $19, NOTELEN_04
	noise_freq $00
	set_var iSndChInfo_LoopTimer0, $05
	.loop:
		note $19, NOTELEN_01
		volume_add -3
		snd_loop .loop, iSndChInfo_LoopTimer0
	chan_stop
