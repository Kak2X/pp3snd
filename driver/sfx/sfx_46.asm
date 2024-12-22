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
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_DutyOrWave
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
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_46_Ch1:
	snd_noise_sweep 1, 0, 0
	snd_note $48, NOTELEN_02
	snd_inc_vol -3
	snd_note $4E, NOTELEN_01
	snd_note $65
	snd_note $63
	snd_inc_vol 1
	snd_note $60, NOTELEN_02
	snd_inc_vol 1
	snd_note $54
	snd_inc_vol 1
	snd_noise_sweep 0, 0, 0
	snd_fade SSF_FADEOUT, 3, 112
	.loop:
		snd_noise 7, 0, 0
		snd_note $25, NOTELEN_01
		snd_noise 8, 0, 0
		snd_note $25, NOTELEN_01
		snd_noise 9, 0, 0
		snd_note $25, NOTELEN_01
		snd_jpfade .loop
	snd_end
SndData_46_Ch2:
	snd_note $27, NOTELEN_01
	snd_note $1B
	snd_note $18
	snd_inc_base_note 3
	snd_var iSndChInfo_LoopTimer0, $06
	.loop:
		snd_note $11
		snd_note $14
		snd_note $12
		snd_note $14
		snd_djnz iSndChInfo_LoopTimer0, .loop
	snd_end
