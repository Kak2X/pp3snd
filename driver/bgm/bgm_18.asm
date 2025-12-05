SndHeader_BGM_18:
	db 4 ; Number of slots
.slot0:
	db SNDSLOT0 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_3D ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db 0 ; iSndChInfo_NoteIdBase
	db 138 ; iSndChInfo_Speed
	db SNDCH_WAVE ; iSndChInfo_ChId
	dw SndData_18_Ch3 ; Data pointer
	db $80 ; [PLACEHOLDER] ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot1:
	db SNDSLOT1 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 10 ; iSndChInfo_Vol
	db INSTR_3D ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -12 ; iSndChInfo_NoteIdBase
	db 138 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_18_Ch2 ; Data pointer
	db $80 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot2:
	db SNDSLOT2 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 12 ; iSndChInfo_Vol
	db INSTR_2E ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -12 ; iSndChInfo_NoteIdBase
	db 138 ; iSndChInfo_Speed
	db SNDCH_PULSE1 ; iSndChInfo_ChId
	dw SndData_18_Ch1 ; Data pointer
	db $80 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot3:
	db SNDSLOT3 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db 0 ; iSndChInfo_NoteIdBase
	db 138 ; iSndChInfo_Speed
	db SNDCH_NOISE ; iSndChInfo_ChId
	dw SndData_18_Ch4 ; Data pointer
	db $80 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_18_Ch3:
	wave_id WAVE_07
	note $00, NOTELEN_06
	note $2D
	note $2C
	note $2D, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $2D, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $00, NOTELEN_06
	note $24, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $24, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $00, NOTELEN_06
	note $26, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $26, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $00, NOTELEN_06
	note $29, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $29, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $00, NOTELEN_06
	note $2B, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $2B, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $00, NOTELEN_06
	note $2B
	note $29
	note $2B
	note $2D, NOTELEN_CUSTOM, $06
	volume_add -5
	fine_tune_value -1
	note $2D, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $00, NOTELEN_03
	note $30, NOTELEN_06
	note $32, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $32, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $00, NOTELEN_06
	note $2B, NOTELEN_01
	note $2C, NOTELEN_CUSTOM, $05
	note $2B, NOTELEN_06
	note $29, NOTELEN_CUSTOM, $06
	volume_add -5
	fine_tune_value -1
	note $29, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $00, NOTELEN_03
	wave_id WAVE_05
	instrument INSTR_40
	note $37, NOTELEN_01
	note $38, NOTELEN_CUSTOM, $05
	note $37, NOTELEN_06
	note $35, NOTELEN_CUSTOM, $06
	volume_add -5
	fine_tune_value -1
	note $35, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $00, NOTELEN_CUSTOM, $15
	note $00, NOTELEN_12
	wave_id WAVE_07
	instrument INSTR_3D
	note $2C, NOTELEN_01
	note $2D, NOTELEN_CUSTOM, $05
	note $2E, NOTELEN_06
	note $30, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $30, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $00, NOTELEN_06
	note $2E, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $2E, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $00, NOTELEN_06
	note $2D, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $2D, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $00, NOTELEN_06
	note $29, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $29, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $00, NOTELEN_06
	note $29, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $29, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $2B, NOTELEN_06
	note $2C, NOTELEN_01
	note $2D, NOTELEN_03
	note $2D, NOTELEN_02
	volume_add -1
	note $2D
	note $2D
	note $2D
	volume_add -1
	note $2D
	note $2D
	note $2D
	volume_add -1
	note $2D
	note $2D
	note $2D
	wave_id WAVE_09
	note $29, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $29, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $00, NOTELEN_06
	volume_add 1
	note $29, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $29, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $00, NOTELEN_06
	volume_add 1
	note $29, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $29, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $00, NOTELEN_06
	volume_add 1
	note $29
	note $26, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $26, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $24, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $24, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $26, NOTELEN_06
	note $29, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $29, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $2C, NOTELEN_06
	note $2B, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $2B, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $00, NOTELEN_06
	note $35, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $35, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $00, NOTELEN_12
	wave_id WAVE_07
	note $29, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $29, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $26, NOTELEN_06
	note $29, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $29, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $00, NOTELEN_18
	wave_id WAVE_09
	note $2C, NOTELEN_06
	note $2D, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $2D, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $2C, NOTELEN_06
	note $2D, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $2D, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $29, NOTELEN_CUSTOM, $06
	volume_add -5
	fine_tune_value -1
	note $29, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $00, NOTELEN_03
	note $29, NOTELEN_CUSTOM, $06
	volume_add -5
	fine_tune_value -1
	note $29, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $00, NOTELEN_09
	wave_id WAVE_07
	note $29, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $29, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $29, NOTELEN_06
	note $29, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $29, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $00, NOTELEN_12
	wave_id WAVE_09
	note $30, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $30, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $32, NOTELEN_06
	note $35, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $35, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $39, NOTELEN_06
	note $35, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $35, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $00, NOTELEN_1E
	wave_id WAVE_07
	note $29, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $29, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $26, NOTELEN_06
	note $29, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $29, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $00, NOTELEN_18
	wave_id WAVE_09
	note $2C, NOTELEN_06
	note $2D, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $2D, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $2C, NOTELEN_06
	note $2D, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $2D, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $29, NOTELEN_CUSTOM, $06
	volume_add -5
	fine_tune_value -1
	note $29, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $2C, NOTELEN_01
	note $2D
	note $30
	note $35, NOTELEN_CUSTOM, $06
	volume_add -5
	fine_tune_value -1
	note $35, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $00, NOTELEN_09
	wave_id WAVE_07
	note $29, NOTELEN_06
	note $29
	note $29, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $29, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	wave_id WAVE_09
	note $38, NOTELEN_06
	note $39, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $39, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $00, NOTELEN_06
	note $30, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $30, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $32, NOTELEN_06
	note $35, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $35, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $32, NOTELEN_06
	note $35, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $35, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	wave_id WAVE_0B
	instrument INSTR_3E
	note $00, NOTELEN_06
	note $39
	note $38
	note $39, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $39, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $00, NOTELEN_06
	note $30, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $30, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $00, NOTELEN_06
	note $32, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $32, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $00, NOTELEN_06
	note $35, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $35, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $00, NOTELEN_06
	note $37, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $37, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $00, NOTELEN_06
	note $37, NOTELEN_06
	note $35
	note $37
	note $39, NOTELEN_CUSTOM, $06
	volume_add -5
	fine_tune_value -1
	note $39, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $00, NOTELEN_03
	note $3C, NOTELEN_06
	note $3E, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $3E, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $00, NOTELEN_06
	note $37, NOTELEN_01
	note $38, NOTELEN_CUSTOM, $05
	note $37, NOTELEN_06
	note $35, NOTELEN_CUSTOM, $06
	volume_add -5
	fine_tune_value -1
	note $35, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $00, NOTELEN_CUSTOM, $0F
	wave_id WAVE_09
	instrument INSTR_3D
	note $30, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $30, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $32, NOTELEN_06
	note $35, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $35, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $38, NOTELEN_01
	note $39, NOTELEN_CUSTOM, $05
	note $35, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $35, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $00, NOTELEN_06
	note $35, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $35, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $00, NOTELEN_06
	wave_id WAVE_0B
	instrument INSTR_3E
	note $38, NOTELEN_01
	note $39, NOTELEN_CUSTOM, $05
	note $3A, NOTELEN_06
	note $3C, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $3C, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $00, NOTELEN_06
	note $3A, NOTELEN_CUSTOM, $06
	volume_add -5
	fine_tune_value -1
	note $3A, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $00, NOTELEN_03
	note $39, NOTELEN_CUSTOM, $06
	volume_add -5
	fine_tune_value -1
	note $39, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $00, NOTELEN_03
	note $35, NOTELEN_CUSTOM, $06
	volume_add -5
	fine_tune_value -1
	note $35, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $00, NOTELEN_03
	note $35, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $35, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $37, NOTELEN_06
	note $38, NOTELEN_02
	note $39
	note $39
	volume_add -2
	note $39
	note $39
	note $39
	volume_add -2
	note $39
	note $39
	note $39
	volume_add -1
	note $39
	note $39
	note $39
	wave_id WAVE_09
	volume_add 2
	instrument INSTR_3D
	note $35, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $35, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $00, NOTELEN_06
	volume_add 2
	note $35, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $35, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $00, NOTELEN_06
	volume_add 1
	note $35, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $35, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	volume_add 1
	note $00, NOTELEN_06
	note $35
	note $32, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $32, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $30, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $30, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $32, NOTELEN_06
	note $35, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $35, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $38, NOTELEN_06
	note $37, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $37, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $00, NOTELEN_06
	note $35, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $35, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $00, NOTELEN_12
	wave_id WAVE_0B
	instrument INSTR_3E
	note $35, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $35, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $32, NOTELEN_06
	note $35, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $35, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	wave_id WAVE_09
	instrument INSTR_3D
	note $00, NOTELEN_18
	note $2C, NOTELEN_06
	note $2D, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $2D, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $2C, NOTELEN_06
	note $2D, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $2D, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $29, NOTELEN_CUSTOM, $06
	volume_add -5
	fine_tune_value -1
	note $29, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $00, NOTELEN_03
	note $29, NOTELEN_CUSTOM, $06
	volume_add -5
	fine_tune_value -1
	note $29, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $00, NOTELEN_09
	wave_id WAVE_0B
	instrument INSTR_3E
	note $35, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $35, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $35, NOTELEN_06
	note $35, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $35, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $00, NOTELEN_12
	wave_id WAVE_09
	instrument INSTR_3D
	note $30, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $30, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $32, NOTELEN_06
	note $35, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $35, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $39, NOTELEN_06
	note $35, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $35, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $00, NOTELEN_12
	note $35, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $35, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $00, NOTELEN_06
	wave_id WAVE_0B
	instrument INSTR_3E
	note $35, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $35, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $32, NOTELEN_06
	note $35, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $35, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $00, NOTELEN_18
	wave_id WAVE_09
	instrument INSTR_3D
	note $2C, NOTELEN_06
	note $2D, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $2D, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $2C, NOTELEN_06
	note $2D, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $2D, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $29, NOTELEN_CUSTOM, $06
	volume_add -5
	fine_tune_value -1
	note $29, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $2C, NOTELEN_01
	note $2D
	note $30
	note $35, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $35, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $00, NOTELEN_0C
	wave_id WAVE_0B
	instrument INSTR_3E
	note $35, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $35, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $35, NOTELEN_06
	note $35, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $35, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $00, NOTELEN_12
	wave_id WAVE_09
	instrument INSTR_3D
	note $36, NOTELEN_01
	note $37
	note $38, NOTELEN_CUSTOM, $0A
	note $35, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $35, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $37, NOTELEN_06
	note $32, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $32, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $35, NOTELEN_06
	note $34, NOTELEN_01
	note $33
	note $32
	note $30, NOTELEN_02
	note $00, NOTELEN_CUSTOM, $07
	wave_id WAVE_01
	note $35, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $35, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $37, NOTELEN_06
	note $39, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $39, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $00, NOTELEN_CUSTOM, $06
	note $3E, NOTELEN_CUSTOM, $1B
	volume_add -5
	fine_tune_value -1
	note $3E, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $00, NOTELEN_06
	note $40
	note $41, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $41, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $44, NOTELEN_0C
	note $41, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $41, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $3A, NOTELEN_03
	note $39
	note $38, NOTELEN_CUSTOM, $4B
	volume_add -5
	fine_tune_value -1
	note $38, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $00, NOTELEN_12
	note $35, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $35, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $37, NOTELEN_06
	note $39, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $39, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $00, NOTELEN_CUSTOM, $06
	note $3E, NOTELEN_CUSTOM, $1B
	volume_add -5
	fine_tune_value -1
	note $3E, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $00, NOTELEN_06
	note $3E, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $3E, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $40, NOTELEN_06
	note $41, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $41, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $44, NOTELEN_2A
	note $43, NOTELEN_02
	note $42
	note $41
	note $40, NOTELEN_30
	wave_id $40 ; [BUG] Invalid waveform
	volume_add -5
	note $35, NOTELEN_12
	note $35, NOTELEN_18
	note $35, NOTELEN_06
	note $35, NOTELEN_12
	note $35, NOTELEN_0C
	note $2B
	note $32, NOTELEN_06
	note $35, NOTELEN_12
	note $35, NOTELEN_18
	note $35, NOTELEN_06
	note $35, NOTELEN_12
	note $35, NOTELEN_0C
	note $32, NOTELEN_06
	note $35
	note $35
	note $00
	note $35, NOTELEN_0C
	note $30, NOTELEN_06
	note $35, NOTELEN_12
	note $35, NOTELEN_06
	note $35, NOTELEN_12
	note $35, NOTELEN_0C
	note $2B
	note $32, NOTELEN_06
	note $35, NOTELEN_12
	note $35, NOTELEN_18
	note $35, NOTELEN_06
	note $35, NOTELEN_12
	note $35, NOTELEN_0C
	note $32, NOTELEN_06
	note $33
	note $34
	volume_add 5
	note $00, NOTELEN_1E
	wave_id WAVE_07
	note $29, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $29, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $26, NOTELEN_06
	note $29, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $29, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $00, NOTELEN_18
	wave_id WAVE_09
	note $2C, NOTELEN_06
	note $2D, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $2D, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $2C, NOTELEN_06
	note $2D, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $2D, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $29, NOTELEN_CUSTOM, $06
	volume_add -5
	fine_tune_value -1
	note $29, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $00, NOTELEN_03
	note $29, NOTELEN_CUSTOM, $06
	volume_add -5
	fine_tune_value -1
	note $29, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $00, NOTELEN_09
	wave_id WAVE_07
	note $29, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $29, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $29, NOTELEN_06
	note $29, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $29, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $00, NOTELEN_12
	wave_id WAVE_09
	note $30, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $30, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $32, NOTELEN_06
	note $35, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $35, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $39, NOTELEN_06
	note $35, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $35, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $00, NOTELEN_1E
	wave_id WAVE_07
	note $29, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $29, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $26, NOTELEN_06
	note $29, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $29, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $00, NOTELEN_18
	wave_id WAVE_09
	note $2C, NOTELEN_06
	note $2D, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $2D, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $2C, NOTELEN_06
	note $2D, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $2D, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $29, NOTELEN_CUSTOM, $06
	volume_add -5
	fine_tune_value -1
	note $29, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $2C, NOTELEN_01
	note $2D
	note $30
	note $35, NOTELEN_CUSTOM, $06
	volume_add -5
	fine_tune_value -1
	note $35, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $00, NOTELEN_09
	wave_id WAVE_07
	note $29, NOTELEN_06
	note $29
	note $29, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $29, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	wave_id WAVE_09
	note $38, NOTELEN_06
	note $39, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $39, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $00, NOTELEN_CUSTOM, $06
	note $30, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $30, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $32, NOTELEN_06
	note $35, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $35, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $32, NOTELEN_06
	note $35, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $35, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	wave_id WAVE_00
	volume_add -5
	note $00, NOTELEN_06
	note $3C
	note $3C
	note $3C, NOTELEN_0C
	note $3A, NOTELEN_06
	note $39
	note $3A
	note $3C
	note $40, NOTELEN_0C
	note $41, NOTELEN_02
	note $3E
	volume_add -1
	note $41
	note $3E
	volume_add -1
	note $41
	note $3E
	volume_add -1
	note $41
	note $3E
	note $41
	note $3E
	note $41
	note $3E
	note $41
	note $3E
	note $41
	note $00, NOTELEN_1E
	volume_add 8
	wave_id WAVE_07
	note $29, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $29, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $29, NOTELEN_06
	note $29, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $29, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $00, NOTELEN_12
	wave_id WAVE_09
	note $30, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $30, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $32, NOTELEN_06
	note $35, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $35, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $39, NOTELEN_06
	note $35, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $35, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	wave_id WAVE_00
	volume_add -5
	note $00, NOTELEN_0C
	note $3C, NOTELEN_06
	note $3C, NOTELEN_0C
	note $3A, NOTELEN_06
	note $39
	note $3A
	note $3C
	note $40, NOTELEN_0C
	note $41, NOTELEN_02
	note $3E
	volume_add -1
	note $41
	note $3E
	volume_add -1
	note $41
	note $3E
	volume_add -1
	note $41
	note $3E
	note $41
	note $3E
	note $41
	note $3E
	note $41
	note $3E
	note $41
	wave_id WAVE_09
	volume_add 8
	note $29, NOTELEN_CUSTOM, $06
	volume_add -5
	fine_tune_value -1
	note $29, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $2C, NOTELEN_01
	note $2D
	note $30
	note $35, NOTELEN_CUSTOM, $06
	volume_add -5
	fine_tune_value -1
	note $35, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $00, NOTELEN_09
	wave_id WAVE_07
	note $29, NOTELEN_06
	note $29
	note $29, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $29, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	wave_id WAVE_09
	note $38, NOTELEN_06
	note $39, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $39, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $00, NOTELEN_06
	note $30, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $30, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $32, NOTELEN_06
	note $35, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $35, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $32, NOTELEN_06
	note $35, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $35, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	snd_loop SndData_18_Ch3
SndData_18_Ch2:
	duty_cycle $40
	instrument INSTR_3C
	set_var iSndChInfo_LoopTimer0, $03
	.loop0:
		snd_call .sub0
		note $00
		note $29, NOTELEN_0C
		note $21, NOTELEN_06
		note $1D
		note $21
		note $24
		note $1D, NOTELEN_0C
		note $22, NOTELEN_06
		note $26
		note $1D, NOTELEN_0C
		note $22
		note $1A, NOTELEN_06
		note $1D
		note $21
		note $24
		note $1D, NOTELEN_0C
		note $21, NOTELEN_06
		note $24
		note $1D, NOTELEN_0C
		note $22, NOTELEN_06
		note $26
		note $1D, NOTELEN_0C
		note $22, NOTELEN_06
		note $1B
		note $1C
		snd_loop .loop0, iSndChInfo_LoopTimer0
	snd_call .sub0
	note $00, NOTELEN_12
	note $21, NOTELEN_06
	note $1D
	note $21
	note $24
	note $1D, NOTELEN_0C
	note $22, NOTELEN_06
	note $26
	note $1D, NOTELEN_0C
	note $22
	note $1A, NOTELEN_06
	note $1D
	note $21
	note $24
	note $1D, NOTELEN_0C
	note $21, NOTELEN_06
	note $24
	note $1D, NOTELEN_0C
	note $22, NOTELEN_06
	note $26
	note $2E, NOTELEN_0C
	note $2D
	note $2C, NOTELEN_06
	note $00, NOTELEN_12
	duty_cycle $40
	note $26, NOTELEN_02
	note $00, NOTELEN_04
	note $28, NOTELEN_06
	note $29, NOTELEN_02
	note $00, NOTELEN_CUSTOM, $0A
	note $2F, NOTELEN_CUSTOM, $1E
	note $00, NOTELEN_06
	note $30
	note $32, NOTELEN_02
	note $00, NOTELEN_04
	note $35, NOTELEN_0C
	note $32, NOTELEN_02
	note $00, NOTELEN_04
	note $2B, NOTELEN_03
	note $2A
	note $29, NOTELEN_CUSTOM, $4E
	note $00, NOTELEN_12
	note $26, NOTELEN_02
	note $00, NOTELEN_04
	note $28, NOTELEN_06
	note $29, NOTELEN_02
	note $00, NOTELEN_CUSTOM, $0A
	note $2F, NOTELEN_CUSTOM, $1E
	note $00, NOTELEN_06
	note $35, NOTELEN_02
	note $00, NOTELEN_04
	note $37, NOTELEN_06
	note $39, NOTELEN_02
	note $00, NOTELEN_04
	note $3C, NOTELEN_2A
	note $3B, NOTELEN_02
	note $3A
	note $39
	note $38, NOTELEN_30
	duty_cycle $40
	set_var iSndChInfo_LoopTimer0, $02
	.loop1:
		note $1D, NOTELEN_0C
		note $24, NOTELEN_06
		note $1D, NOTELEN_0C
		note $21, NOTELEN_06
		note $24
		note $1D
		note $1D
		note $22
		note $26
		note $1D, NOTELEN_0C
		note $22
		note $1A, NOTELEN_06
		note $1D
		note $21
		note $24
		note $1D, NOTELEN_0C
		note $21, NOTELEN_06
		note $24
		note $1D
		note $1D
		note $22
		note $26
		note $1D, NOTELEN_0C
		note $22, NOTELEN_06
		note $1D
		note $1D
		note $00
		note $29, NOTELEN_0C
		note $21, NOTELEN_06
		note $1D
		note $21
		note $24
		note $1D
		note $1D
		note $22
		note $26
		note $1D, NOTELEN_0C
		note $22
		note $1A, NOTELEN_06
		note $1D
		note $21
		note $24
		note $1D, NOTELEN_0C
		note $21, NOTELEN_06
		note $24
		note $1D
		note $1D
		note $22
		note $26
		note $1D, NOTELEN_0C
		note $22, NOTELEN_06
		note $1B
		note $1C
		snd_loop .loop1, iSndChInfo_LoopTimer0
	note $1D
	duty_cycle $00
	note $39
	note $39
	note $39, NOTELEN_0C
	note $37, NOTELEN_06
	note $35
	note $37
	note $39
	note $3C
	duty_cycle $40
	note $26
	note $1D, NOTELEN_0C
	note $22
	note $1A, NOTELEN_06
	note $1D
	note $21
	note $24
	note $1D, NOTELEN_0C
	note $21, NOTELEN_06
	note $24
	note $1D
	note $1D
	note $22
	note $26
	note $1D, NOTELEN_0C
	note $22, NOTELEN_06
	note $1D
	note $1D
	note $00
	duty_cycle $00
	note $39
	note $39
	note $39, NOTELEN_0C
	note $37, NOTELEN_06
	note $35
	note $37
	note $39
	note $3C
	duty_cycle $40
	note $26
	note $1D, NOTELEN_0C
	note $22
	note $1A, NOTELEN_06
	note $1D
	note $21
	note $24
	note $1D, NOTELEN_0C
	note $21, NOTELEN_06
	note $24
	note $1D
	note $1D
	note $22
	note $26
	note $29
	duty_cycle $00
	note $2D
	note $2D
	note $2D
	note $2D
	snd_loop SndData_18_Ch2
.sub0:
	note $1D, NOTELEN_0C
	note $24, NOTELEN_06
	note $1D, NOTELEN_0C
	note $21, NOTELEN_06
	note $24
	note $1D, NOTELEN_0C
	note $22, NOTELEN_06
	note $26
	note $1D, NOTELEN_0C
	note $22
	note $1A, NOTELEN_06
	note $1D
	note $21
	note $24
	note $1D, NOTELEN_0C
	note $21, NOTELEN_06
	note $24
	note $1D, NOTELEN_0C
	note $22, NOTELEN_06
	note $26
	note $1D, NOTELEN_0C
	note $22, NOTELEN_06
	note $1D
	note $1D
	snd_ret
SndData_18_Ch1:
	duty_cycle $01
	note $29, NOTELEN_0C
	note $21, NOTELEN_06
	note $29, NOTELEN_0C
	note $2D, NOTELEN_06
	note $30
	note $29
	note $29
	note $2E
	note $32
	note $35, NOTELEN_0C
	note $2B
	note $26, NOTELEN_06
	note $29
	note $2D
	note $30
	note $29, NOTELEN_0C
	note $2D, NOTELEN_06
	note $30
	note $29
	note $29
	note $2E
	note $32
	note $29, NOTELEN_0C
	note $26, NOTELEN_06
	note $29
	note $29
	note $00
	note $35, NOTELEN_0C
	note $30, NOTELEN_06
	note $29
	note $2D
	note $30
	note $29
	note $29
	note $2E
	note $32
	note $29, NOTELEN_0C
	note $2B
	note $26, NOTELEN_06
	note $29
	note $2D
	note $30
	note $29, NOTELEN_0C
	note $2D, NOTELEN_06
	note $30
	note $29
	note $29
	duty_cycle $02
	note $35
	note $32, NOTELEN_02
	note $00, NOTELEN_04
	note $30, NOTELEN_02
	note $00, NOTELEN_04
	note $32, NOTELEN_06
	note $35, NOTELEN_02
	note $00, NOTELEN_04
	note $38, NOTELEN_06
	note $37, NOTELEN_02
	note $00, NOTELEN_04
	duty_cycle $01
	note $11, NOTELEN_12
	note $18, NOTELEN_18
	note $16, NOTELEN_06
	note $16, NOTELEN_12
	note $13
	note $18, NOTELEN_0C
	note $11, NOTELEN_12
	note $18, NOTELEN_18
	note $16, NOTELEN_06
	note $16, NOTELEN_12
	note $1A
	note $1D, NOTELEN_0C
	note $1D, NOTELEN_12
	note $18, NOTELEN_18
	note $16, NOTELEN_06
	note $16, NOTELEN_12
	note $13
	note $18, NOTELEN_0C
	note $11, NOTELEN_12
	note $18, NOTELEN_18
	note $16, NOTELEN_06
	note $16, NOTELEN_12
	note $1A, NOTELEN_0C
	note $1B
	note $1C, NOTELEN_06
	note $11, NOTELEN_12
	note $18, NOTELEN_18
	note $16, NOTELEN_06
	note $16, NOTELEN_12
	note $13
	note $18, NOTELEN_0C
	note $11, NOTELEN_12
	note $18, NOTELEN_18
	note $16, NOTELEN_06
	note $16
	note $1D, NOTELEN_0C
	note $1A
	note $16, NOTELEN_06
	note $11
	note $11
	note $00, NOTELEN_12
	note $11, NOTELEN_06
	note $11
	note $18, NOTELEN_0C
	note $16, NOTELEN_06
	note $16, NOTELEN_12
	note $13
	note $18, NOTELEN_0C
	note $11, NOTELEN_12
	note $18, NOTELEN_18
	note $16, NOTELEN_06
	note $16, NOTELEN_12
	note $1A, NOTELEN_0C
	note $1B
	note $1C, NOTELEN_06
	note $11, NOTELEN_0C
	note $1A, NOTELEN_06
	note $18, NOTELEN_0C
	note $1A
	note $16, NOTELEN_06
	note $16, NOTELEN_12
	note $13, NOTELEN_0C
	note $1A, NOTELEN_06
	note $18
	note $1A
	note $11, NOTELEN_0C
	note $1A, NOTELEN_06
	note $18, NOTELEN_0C
	note $1A
	note $16, NOTELEN_06
	note $16
	note $1D, NOTELEN_0C
	note $1A
	note $16, NOTELEN_06
	note $11
	note $11
	note $00, NOTELEN_12
	note $11, NOTELEN_06
	note $11
	note $18, NOTELEN_0C
	note $16, NOTELEN_06
	note $16, NOTELEN_12
	note $13, NOTELEN_0C
	note $1A, NOTELEN_06
	note $18
	note $1A
	note $11, NOTELEN_0C
	note $1A, NOTELEN_06
	note $18, NOTELEN_0C
	note $1A
	note $16, NOTELEN_06
	note $16, NOTELEN_12
	note $16, NOTELEN_0C
	note $15
	note $14, NOTELEN_06
	note $13
	note $13, NOTELEN_0C
	note $13, NOTELEN_06
	note $1A, NOTELEN_0C
	note $1D
	note $00
	note $1F
	note $13, NOTELEN_12
	note $13, NOTELEN_06
	note $16
	note $16, NOTELEN_0C
	note $16, NOTELEN_06
	note $1D, NOTELEN_0C
	note $20
	note $00, NOTELEN_06
	note $22
	note $22, NOTELEN_0C
	note $16, NOTELEN_12
	note $16, NOTELEN_06
	note $13
	note $13, NOTELEN_0C
	note $13, NOTELEN_06
	note $1A, NOTELEN_0C
	note $1D
	note $00, NOTELEN_06
	note $1F
	note $1F, NOTELEN_0C
	note $13, NOTELEN_12
	note $13, NOTELEN_06
	note $12, NOTELEN_12
	note $12
	note $12, NOTELEN_0C
	note $00
	note $12, NOTELEN_24
	duty_cycle $29
	note $29, NOTELEN_0C
	note $30, NOTELEN_06
	note $29, NOTELEN_0C
	note $2D, NOTELEN_06
	note $30
	note $29
	note $29
	note $2E
	note $32
	note $29, NOTELEN_0C
	note $1F
	note $26, NOTELEN_06
	note $29
	note $2D
	note $30
	note $29, NOTELEN_0C
	note $2D, NOTELEN_06
	note $30
	note $29
	note $29
	note $2E
	note $32
	note $29, NOTELEN_0C
	note $26, NOTELEN_06
	note $29
	note $29
	note $00
	note $1D, NOTELEN_0C
	note $24, NOTELEN_06
	note $29
	note $2D
	note $30
	note $29
	note $29
	note $2E
	note $32
	note $29, NOTELEN_0C
	note $1F
	note $26, NOTELEN_06
	note $29
	note $2D
	note $30
	note $29, NOTELEN_0C
	note $2D, NOTELEN_06
	note $30
	note $29
	note $29
	note $2E
	note $32
	duty_cycle $01
	note $16, NOTELEN_0C
	note $22
	note $16, NOTELEN_06
	note $11, NOTELEN_12
	note $18, NOTELEN_18
	note $16, NOTELEN_06
	note $16, NOTELEN_12
	note $13
	note $18, NOTELEN_0C
	note $11, NOTELEN_12
	note $18, NOTELEN_18
	note $16, NOTELEN_06
	note $16
	note $1D, NOTELEN_0C
	note $1A
	note $16, NOTELEN_06
	note $11
	note $11
	note $00, NOTELEN_12
	note $11, NOTELEN_06
	note $11
	note $18, NOTELEN_0C
	note $16, NOTELEN_06
	note $16, NOTELEN_12
	note $13
	note $18, NOTELEN_0C
	note $11, NOTELEN_12
	note $18, NOTELEN_18
	note $16, NOTELEN_06
	note $16, NOTELEN_12
	note $1A, NOTELEN_0C
	note $1B
	note $1C, NOTELEN_06
	note $11, NOTELEN_0C
	note $1A, NOTELEN_06
	note $18, NOTELEN_0C
	note $1A
	note $16, NOTELEN_06
	note $16, NOTELEN_12
	note $13, NOTELEN_0C
	note $1A, NOTELEN_06
	note $18
	note $1A
	note $11, NOTELEN_0C
	note $1A, NOTELEN_06
	note $18, NOTELEN_0C
	note $1A
	note $16, NOTELEN_06
	note $16
	note $1D, NOTELEN_0C
	note $1A
	note $16, NOTELEN_06
	note $11
	note $11
	note $00, NOTELEN_12
	note $11, NOTELEN_06
	note $11
	note $18, NOTELEN_0C
	note $16, NOTELEN_06
	note $16, NOTELEN_12
	note $13, NOTELEN_0C
	note $1A, NOTELEN_06
	note $18
	note $1A
	note $11, NOTELEN_0C
	note $1A, NOTELEN_06
	note $18, NOTELEN_0C
	note $1A
	note $16, NOTELEN_06
	note $16, NOTELEN_12
	note $11, NOTELEN_06
	note $11
	note $11
	note $11
	note $11
	snd_loop SndData_18_Ch1
SndData_18_Ch4:
	duty_cycle $00
	set_var iSndChInfo_LoopTimer0, $07
	.loop0:
		note_ex PRESET_02, NOTELEN_06
		note_ex PRESET_02
		note_ex PRESET_02
		note_ex PRESET_02
		note_ex PRESET_00
		note_ex PRESET_02
		note_ex PRESET_02
		note_ex PRESET_02
		snd_loop .loop0, iSndChInfo_LoopTimer0
	note_ex PRESET_02
	note_ex PRESET_00, NOTELEN_03
	note_ex PRESET_00
	note_ex PRESET_00, NOTELEN_06
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_00
	note_ex PRESET_00, NOTELEN_03
	note_ex PRESET_00
	note_ex PRESET_00, NOTELEN_06
	snd_call .sub0
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_00
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_00, NOTELEN_03
	note_ex PRESET_00
	note_ex PRESET_00, NOTELEN_06
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_00
	note_ex PRESET_00, NOTELEN_03
	note_ex PRESET_00
	note_ex PRESET_00, NOTELEN_06
	snd_call .sub0
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_00
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_00
	note_ex PRESET_00, NOTELEN_03
	note_ex PRESET_00
	set_var iSndChInfo_LoopTimer0, $03
	note_ex PRESET_01, NOTELEN_06
	note_ex PRESET_02
	note_ex PRESET_00
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_02, NOTELEN_03
	note_ex PRESET_02
	note_ex PRESET_00, NOTELEN_06
	note_ex PRESET_02, NOTELEN_03
	note_ex PRESET_02
	note_ex PRESET_02, NOTELEN_06
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_00
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_02, NOTELEN_03
	note_ex PRESET_02
	note_ex PRESET_00, NOTELEN_06
	note_ex PRESET_02, NOTELEN_03
	note_ex PRESET_02
	note_ex PRESET_02, NOTELEN_06
	note_ex PRESET_00
	note_ex PRESET_00
	note_ex PRESET_01, NOTELEN_0C
	note_ex PRESET_02, NOTELEN_06
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_02, NOTELEN_03
	note_ex PRESET_02
	note_ex PRESET_00, NOTELEN_06
	note_ex PRESET_02, NOTELEN_03
	note_ex PRESET_02
	note_ex PRESET_02, NOTELEN_06
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_00
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_00, NOTELEN_03
	note_ex PRESET_00
	note_ex PRESET_00, NOTELEN_06
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_00
	note_ex PRESET_00, NOTELEN_03
	note_ex PRESET_00
	note_ex PRESET_00, NOTELEN_06
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_01
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_02, NOTELEN_03
	note_ex PRESET_02
	note_ex PRESET_02, NOTELEN_06
	note_ex PRESET_00, NOTELEN_0C
	note_ex PRESET_02, NOTELEN_06
	note_ex PRESET_00
	note_ex PRESET_00, NOTELEN_03
	note_ex PRESET_00
	note_ex PRESET_00, NOTELEN_06
	set_var iSndChInfo_LoopTimer0, $38
	.loop1:
		note_ex PRESET_02
		snd_loop .loop1, iSndChInfo_LoopTimer0
	note_ex PRESET_02
	note_ex PRESET_00, NOTELEN_03
	note_ex PRESET_00
	note_ex PRESET_00, NOTELEN_06
	note_ex PRESET_00
	note_ex PRESET_01
	note_ex PRESET_00
	note_ex PRESET_00, NOTELEN_03
	note_ex PRESET_00
	note_ex PRESET_00, NOTELEN_06
	snd_call .sub0
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_00
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_00, NOTELEN_03
	note_ex PRESET_00
	note_ex PRESET_00, NOTELEN_06
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_00
	note_ex PRESET_00, NOTELEN_03
	note_ex PRESET_00
	note_ex PRESET_00, NOTELEN_06
	snd_call .sub0
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_00
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_00
	note_ex PRESET_00
	note_ex PRESET_00
	note_ex PRESET_00
	note_ex PRESET_00
	snd_loop SndData_18_Ch4
.sub0:
	set_var iSndChInfo_LoopTimer1, $03
	.sub0loop:
		note_ex PRESET_01
		note_ex PRESET_02
		note_ex PRESET_00
		note_ex PRESET_01
		note_ex PRESET_02
		note_ex PRESET_00
		note_ex PRESET_02
		note_ex PRESET_01
		note_ex PRESET_02
		note_ex PRESET_02
		note_ex PRESET_02
		note_ex PRESET_00
		note_ex PRESET_02
		note_ex PRESET_02
		note_ex PRESET_00
		note_ex PRESET_02
		snd_loop .sub0loop, iSndChInfo_LoopTimer1
	snd_ret
	note $00