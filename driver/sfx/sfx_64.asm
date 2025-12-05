SndHeader_SFX_64:
	db 1 ; Number of slots
.slot0:
	db SNDSLOT4 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -24 ; iSndChInfo_NoteIdBase
	db 0 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_64_Ch2 ; Data pointer
	db $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_64_Ch2:
	note $45, NOTELEN_01
	note $48
	note $47
	duty_cycle $40
	set_var iSndChInfo_LoopTimer0, $0A
	.loop:
		note $4A
		note $47
		fine_tune -1
		fine_tune_value -5
		volume_add -1
		snd_loop .loop, iSndChInfo_LoopTimer0
	chan_stop
