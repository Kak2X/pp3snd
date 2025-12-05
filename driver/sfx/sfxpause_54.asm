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
	set_s3
	note $41, NOTELEN_01
	note $43
	note $46
	note $00
	note $39
	note $3C
	note $3E
	note $00
	note $41, NOTELEN_01
	note $43
	note $46
	note $00
	note $39
	note $3C
	note $3E
	clr_s3
	note $00
	chan_stop
