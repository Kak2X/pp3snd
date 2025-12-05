SndHeader_SFX_63:
	db 1 ; Number of slots
.slot0:
	db SNDSLOT4 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -15 ; iSndChInfo_NoteIdBase
	db 0 ; iSndChInfo_Speed
	db SNDCH_NOISE ; iSndChInfo_ChId
	dw SndData_63_Ch4 ; Data pointer
	db $80 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_63_Ch4:
	fade SSF_FADEOUT, 0, 255
	noise_freq $47
	note $25, NOTELEN_01
	note $29
	noise_freq $36
	note $19, NOTELEN_01
	noise_freq $30
	note $19
	noise_freq $08
	note $3D
	noise_freq $34
	note $19, NOTELEN_01
	noise_freq $33
	note $19
	noise_freq $32
	note $19
	noise_freq $31
	note $19
	noise_freq $30
	note $19, NOTELEN_02
	chan_stop
