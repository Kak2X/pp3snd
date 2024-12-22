SndHeader_SFX_68:
	db 1 ; Number of slots
.slot0:
	db SNDSLOT7 ; Slot location
	db SST_CH123|SST_PAUSEREST ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db 0 ; iSndChInfo_NoteIdBase
	db 0 ; iSndChInfo_Speed
	db SNDCH_NOISE ; iSndChInfo_ChId
	dw SndData_68_Ch4 ; Data pointer
	nrx1 SNDDUTY_12, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_68_Ch4:
	snd_var iSndChInfo_LoopTimer0, $07
	.loop:
		snd_noise 3, 0, 0
		snd_note $19, NOTELEN_01
		snd_noise 3, 1, 0
		snd_note $19
		snd_noise 3, 2, 0
		snd_note $19
		snd_noise 3, 3, 0
		snd_note $19
		snd_noise 4, 4, 0
		snd_note $19, NOTELEN_02
		snd_noise 4, 5, 0
		snd_note $19
		snd_noise 4, 6, 0
		snd_note $19
		snd_noise 4, 7, 0
		snd_note $19
		snd_inc_vol -2
		snd_djnz iSndChInfo_LoopTimer0, .loop
	snd_end