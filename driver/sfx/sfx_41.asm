SndHeader_SFX_41:
	db 2 ; Number of slots
.slot0:
	db SNDSLOT5 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -32 ; iSndChInfo_NoteIdBase
	db 0 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_41_Ch2 ; Data pointer
	db $80 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot1:
	db SNDSLOT6 ; Slot location
	db SST_CH4 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -18 ; iSndChInfo_NoteIdBase
	db 0 ; iSndChInfo_Speed
	db SNDCH_NOISE ; iSndChInfo_ChId
	dw SndData_41_Ch4 ; Data pointer
	db $80 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_41_Ch2:
	set_var iSndChInfo_LoopTimer0, $0C
	.loop:
		note $29, NOTELEN_01
		note $24, NOTELEN_02
		volume_add -2
		snd_loop .loop, iSndChInfo_LoopTimer0
	chan_stop
SndData_41_Ch4:
	toggle_hold
	noise_freq $80
	fade SSF_FADEOUT, 4, 112
	.loop:
		note $22, NOTELEN_06
		snd_loop_fade .loop
	chan_stop
