SndHeader_3C:
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
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_DutyOrWave
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
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_3C_Ch1:
	snd_note $5F, NOTELEN_01
	snd_status SST_CH4
	snd_noise_sweep 0, 7, 0
	snd_note $60, NOTELEN_02
	snd_note $3A, NOTELEN_01
	snd_status SST_CH123
	snd_note $54, NOTELEN_02
	snd_note $65, NOTELEN_01
	snd_status SST_CH4
	snd_noise_sweep 0, 7, 0
	snd_inc_base_note -12
	snd_fade SSF_FADEOUT, 4, 64
	.loop:
		snd_note $60, NOTELEN_02
		snd_note $5F
		snd_note $5D
		snd_note $59
		snd_inc_base_note -4
		snd_jpfade .loop
	snd_end
SndData_3C_Ch2:
	snd_sets3
	snd_note $29, NOTELEN_01
	snd_note $27
	snd_note $22
	snd_note $1D
	snd_note $16
	snd_inc_vol -6
	snd_instrument INSTR_02
	snd_inc_base_note 6
	snd_var iSndChInfo_LoopTimer0, $04
	.loop:
		snd_note $1D
		snd_note $00
		snd_note $16
		snd_note $27
		snd_note $1E
		snd_note $12
		snd_inc_base_note -2
		snd_djnz iSndChInfo_LoopTimer0, .loop
	snd_end
