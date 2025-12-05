SndHeader_SFX_56:
	db 1 ; Number of slots
.slot0:
	db SNDSLOT4 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -20 ; iSndChInfo_NoteIdBase
	db 0 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_56_Ch2 ; Data pointer
	db $80 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_56_Ch2:
	fade SSF_FADEOUT, 0, 176
	set_s3
	note $3A, NOTELEN_01
	note $3C
	note $3E
	note $40
	note $3D
	note $3A
	note $37
	note $34
	note $31
	note $2F
	note $31
	note $34
	note $37
	note $3A
	note $3D
	note $40
	note $3D
	note $3A
	note $37
	note $34
	note $31
	note $2F
	chan_stop
