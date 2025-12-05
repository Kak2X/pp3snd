SndHeader_SFX_4A:
	db 1 ; Number of slots
.slot0:
	db SNDSLOT6 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 12 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db 0 ; iSndChInfo_NoteIdBase
	db 0 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_4A_Ch2 ; Data pointer
	db $80 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_4A_Ch2:
	fine_tune -2
	note $0F, NOTELEN_01
	note $0E
	note $11
	note $0D
	fine_tune 2
	note_slide SSE_NSUP, 7
	set_var iSndChInfo_LoopTimer0, $03
	.loop:
		note $19, NOTELEN_06
		volume_add -5
		fine_tune 9
		snd_loop .loop, iSndChInfo_LoopTimer0
	chan_stop
