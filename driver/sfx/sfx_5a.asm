SndHeader_SFX_5A:
	db 1 ; Number of slots
.slot0:
	db SNDSLOT4 ; Slot location
	db SST_CH4 ; iSndChInfo_Status
	db 13 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db 0 ; iSndChInfo_NoteIdBase
	db 200 ; iSndChInfo_Speed
	db SNDCH_NOISE ; iSndChInfo_ChId
	dw SndData_5A_Ch4 ; Data pointer
	db $40 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_5A_Ch4:
	snd_noise $37
	snd_note $19, NOTELEN_01
	snd_noise $17
	snd_note $19, NOTELEN_02
	snd_inc_vol -5
	snd_noise $07
	snd_note $19, NOTELEN_02
	snd_inc_vol -8
	snd_noise $00
	snd_note $19, NOTELEN_03
	snd_end
