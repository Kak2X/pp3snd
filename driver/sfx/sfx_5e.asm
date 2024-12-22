SndHeader_5E:
	db 1 ; Number of slots
.slot0:
	db SNDSLOT5 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db 10 ; iSndChInfo_NoteIdBase
	db 220 ; iSndChInfo_Speed
	db SNDCH_NOISE ; iSndChInfo_ChId
	dw SndData_5E_Ch4 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_5E_Ch4:
	snd_noise 6, 7, 0
	snd_note $19, NOTELEN_06
	snd_var iSndChInfo_LoopTimer0, $04
	.loop:
		snd_noise 0, 5, 0
		snd_note $19, NOTELEN_01
		snd_noise 0, 4, 0
		snd_note $19, NOTELEN_01
		snd_noise 0, 3, 0
		snd_note $19, NOTELEN_01
		snd_inc_vol -2
		snd_noise 0, 2, 0
		snd_note $19, NOTELEN_01
		snd_noise 0, 1, 0
		snd_note $19, NOTELEN_01
		snd_noise 0, 0, 0
		snd_note $19, NOTELEN_01
		snd_inc_vol -2
		snd_djnz iSndChInfo_LoopTimer0, .loop
	snd_end
