SndHeader_SFX_4C:
	db 1 ; Number of slots
.slot0:
	db SNDSLOT5 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -12 ; iSndChInfo_NoteIdBase
	db 0 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_4C_Ch2 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_4C_Ch2:
	snd_note $19, NOTELEN_01
	snd_note $00
	snd_status SST_CH4
	snd_note $3A, NOTELEN_03
	snd_noise 8, 0, 0
	snd_nrx2 8, SNDENV_DEC, 1 ; $81
	snd_note $31, NOTELEN_12
	snd_end
