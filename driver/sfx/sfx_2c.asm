SndHeader_2C:
	db 1 ; Number of slots
.slot0:
	db SNDSLOT4 ; Slot location
	db SST_CH4 ; iSndChInfo_Status
	db 11 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -12 ; iSndChInfo_NoteIdBase
	db 0 ; iSndChInfo_Speed
	db SNDCH_NOISE ; iSndChInfo_ChId
	dw SndData_2C_Ch4 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_2C_Ch4:
	snd_noise_sweep 3, 0, 0
	snd_noise 11, 0, 0
	snd_note $44, NOTELEN_02
	snd_noise_sweep 1, 0, 0
	snd_noise 0, 0, 0
	snd_note $68, NOTELEN_03
	snd_end
