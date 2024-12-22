SndHeader_5C:
	db 1 ; Number of slots
.slot0:
	db SNDSLOT4 ; Slot location
	db SST_CH4 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_1E ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db 10 ; iSndChInfo_NoteIdBase
	db 220 ; iSndChInfo_Speed
	db SNDCH_NOISE ; iSndChInfo_ChId
	dw SndData_5C_Ch4 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_5C_Ch4:
	snd_noise 2, 7, 0
	snd_note $19, NOTELEN_04
	snd_noise 0, 0, 0
	snd_var iSndChInfo_LoopTimer0, $05
	.loop:
		snd_note $19, NOTELEN_01
		snd_inc_vol -3
		snd_djnz iSndChInfo_LoopTimer0, .loop
	snd_end
