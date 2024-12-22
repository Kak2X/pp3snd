SndHeader_SFXPause_54:
	db 1 ; Number of slots
.slot0:
	db SNDSLOTPAUSE ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -13 ; iSndChInfo_NoteIdBase
	db 0 ; iSndChInfo_Speed
	db SNDCH_WAVE ; iSndChInfo_ChId
	dw SndData_54_Ch3 ; Data pointer
	db WAVE_10 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_54_Ch3:
	snd_sets3
	snd_note $41, NOTELEN_01
	snd_note $43
	snd_note $46
	snd_note $00
	snd_note $39
	snd_note $3C
	snd_note $3E
	snd_note $00
	snd_note $41, NOTELEN_01
	snd_note $43
	snd_note $46
	snd_note $00
	snd_note $39
	snd_note $3C
	snd_note $3E
	snd_clrs3
	snd_note $00
	snd_end
