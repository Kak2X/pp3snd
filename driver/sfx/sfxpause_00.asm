SndHeader_SFXPause_00:
	db 1 ; Number of slots
.slot0:
	db SNDSLOTPAUSE ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db 0 ; iSndChInfo_NoteIdBase
	db 160 ; iSndChInfo_Speed
	db SNDCH_WAVE ; iSndChInfo_ChId
	dw SndData_00_Ch3 ; Data pointer
	db WAVE_06 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_00_Ch3:
	snd_note $3D, NOTELEN_01
	snd_note $38
	snd_note $3A
	snd_note $3C
	snd_note $3D
	snd_note $38
	snd_note $3A
	snd_note $3C
	snd_end