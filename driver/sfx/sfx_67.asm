SndHeader_SFX_67:
	db 2 ; Number of slots
.slot0:
	db SNDSLOT5 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -12 ; iSndChInfo_NoteIdBase
	db 0 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_67_Ch2 ; Data pointer
	db $40 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot1:
	db SNDSLOT6 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db 0 ; iSndChInfo_NoteIdBase
	db 0 ; iSndChInfo_Speed
	db SNDCH_WAVE ; iSndChInfo_ChId
	dw SndData_67_Ch3 ; Data pointer
	db WAVE_05 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_67_Ch3:
	note $00, NOTELEN_02
SndData_67_Ch2:
	note $39, NOTELEN_01
	note $3B
	note $3D
	note $3B
	note $3D
	note $3F
	note $3D
	note $3B
	note $3D
	note $41
	note $3F
	note $41
	note $43
	note $41
	note $3F
	note $45
	note $43
	note $47
	note $43
	note $41
	note $43
	note $45
	note $43
	note $49
	note $45
	note $47
	note $43
	note $45
	chan_stop
