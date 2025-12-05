SndHeader_SFX_46:
	db 2 ; Number of slots
.slot0:
	db SNDSLOT5 ; Slot location
	db SST_CH4 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -12 ; iSndChInfo_NoteIdBase
	db 0 ; iSndChInfo_Speed
	db SNDCH_PULSE1 ; iSndChInfo_ChId
	dw SndData_46_Ch1 ; Data pointer
	db $80 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot1:
	db SNDSLOT6 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -12 ; iSndChInfo_NoteIdBase
	db 0 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_46_Ch2 ; Data pointer
	db $80 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_46_Ch1:
	noise_sweep $10
	note $48, NOTELEN_02
	volume_add -3
	note $4E, NOTELEN_01
	note $65
	note $63
	volume_add 1
	note $60, NOTELEN_02
	volume_add 1
	note $54
	volume_add 1
	noise_sweep $00
	fade SSF_FADEOUT, 3, 112
	.loop:
		noise_freq $70
		note $25, NOTELEN_01
		noise_freq $80
		note $25, NOTELEN_01
		noise_freq $90
		note $25, NOTELEN_01
		snd_loop_fade .loop
	chan_stop
SndData_46_Ch2:
	note $27, NOTELEN_01
	note $1B
	note $18
	fine_tune 3
	set_var iSndChInfo_LoopTimer0, $06
	.loop:
		note $11
		note $14
		note $12
		note $14
		snd_loop .loop, iSndChInfo_LoopTimer0
	chan_stop
