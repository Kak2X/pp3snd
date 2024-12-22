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
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_4F_Ch2:
	snd_noise_sweep 0, 7, 0
	snd_sets3
	snd_fade SSF_FADEIN, 13, 160
	snd_var iSndChInfo_LoopTimer0, $19
	.loop:
		snd_note $19, NOTELEN_03
		snd_inc_base_note 2
		snd_djnz iSndChInfo_LoopTimer0, .loop
	snd_end
