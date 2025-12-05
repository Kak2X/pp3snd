SndHeader_SFX_3C:
	db 2 ; Number of slots
.slot0:
	db SNDSLOT5 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 10 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -12 ; iSndChInfo_NoteIdBase
	db 0 ; iSndChInfo_Speed
	db SNDCH_PULSE1 ; iSndChInfo_ChId
	dw SndData_3C_Ch1 ; Data pointer
	db $80 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot1:
	db SNDSLOT6 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 10 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -6 ; iSndChInfo_NoteIdBase
	db 0 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_3C_Ch2 ; Data pointer
	db $80 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_3C_Ch1:
	note $5F, NOTELEN_01
	chan_type SST_CH4
	noise_sweep $07
	note $60, NOTELEN_02
	note $3A, NOTELEN_01
	chan_type SST_CH123
	note $54, NOTELEN_02
	note $65, NOTELEN_01
	chan_type SST_CH4
	noise_sweep $07
	fine_tune -12
	fade SSF_FADEOUT, 4, 64
	.loop:
		note $60, NOTELEN_02
		note $5F
		note $5D
		note $59
		fine_tune -4
		snd_loop_fade .loop
	chan_stop
SndData_3C_Ch2:
	set_s3
	note $29, NOTELEN_01
	note $27
	note $22
	note $1D
	note $16
	volume_add -6
	instrument INSTR_02
	fine_tune 6
	set_var iSndChInfo_LoopTimer0, $04
	.loop:
		note $1D
		note $00
		note $16
		note $27
		note $1E
		note $12
		fine_tune -2
		snd_loop .loop, iSndChInfo_LoopTimer0
	chan_stop
