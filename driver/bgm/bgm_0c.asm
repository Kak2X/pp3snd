SndHeader_BGM_0C:
	db 4 ; Number of slots
.slot0:
	db SNDSLOT0 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_2E ; iSndChInfo_Instrument
	db VIBRATO_33 ; iSndChInfo_Vibrato
	db 0 ; iSndChInfo_NoteIdBase
	db 116 ; iSndChInfo_Speed
	db SNDCH_WAVE ; iSndChInfo_ChId
	dw SndData_0C_Ch3 ; Data pointer
	db $80 ; [PLACEHOLDER] ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot1:
	db SNDSLOT1 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 13 ; iSndChInfo_Vol
	db INSTR_2E ; iSndChInfo_Instrument
	db VIBRATO_33 ; iSndChInfo_Vibrato
	db -12 ; iSndChInfo_NoteIdBase
	db 116 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_0C_Ch2 ; Data pointer
	db $80 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot2:
	db SNDSLOT2 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 11 ; iSndChInfo_Vol
	db INSTR_2E ; iSndChInfo_Instrument
	db VIBRATO_33 ; iSndChInfo_Vibrato
	db -12 ; iSndChInfo_NoteIdBase
	db 116 ; iSndChInfo_Speed
	db SNDCH_PULSE1 ; iSndChInfo_ChId
	dw SndData_0C_Ch1 ; Data pointer
	db $80 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot3:
	db SNDSLOT3 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db 0 ; iSndChInfo_NoteIdBase
	db 116 ; iSndChInfo_Speed
	db SNDCH_NOISE ; iSndChInfo_ChId
	dw SndData_0C_Ch4 ; Data pointer
	db $80 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_0C_Ch3:
	wave_id WAVE_09
	note $27, NOTELEN_03
	note $29
	note $2A
	note $2C
	note $2E
	note $31, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $31, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $30, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $30, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $2C, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $2C, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $2E, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $2E, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $2E, NOTELEN_03
	note $2A, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $2A, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $27, NOTELEN_03
	note $29
	note $2A
	note $2C
	note $2E
	note $31, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $31, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $30, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $30, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $33, NOTELEN_03
	note $32
	note $33
	note $00, NOTELEN_0C
	note $27, NOTELEN_03
	note $29
	note $2A
	note $2C
	note $2E
	note $31, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $31, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $30, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $30, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $2C, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $2C, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $2E, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $2E, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $2E, NOTELEN_03
	note $2A, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $2A, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $27, NOTELEN_03
	note $29
	note $2A
	note $2C
	note $2E
	note $31, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $31, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $30, NOTELEN_CUSTOM, $03
	volume_add -5
	instrument INSTR_NONE
	fine_tune_value -1
	note $30, NOTELEN_CUSTOM, $03
	volume_add 5
	instrument INSTR_2E
	fine_tune_value 1
	note $00, NOTELEN_09
	note $33, NOTELEN_0C
	wave_id WAVE_07
	note $30, NOTELEN_06
	note $31, NOTELEN_03
	note $33, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $33, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $35, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $35, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $35, NOTELEN_01
	note $36, NOTELEN_08
	note $35, NOTELEN_06
	note $33
	note $31
	note $30
	note $31, NOTELEN_03
	note $33, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $33, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $30, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $30, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $2E, NOTELEN_09
	note $2C, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $2C, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $2E, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $2E, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $2C, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $2C, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $2F, NOTELEN_01
	note $30, NOTELEN_08
	note $33, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $33, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	wave_id WAVE_01
	volume_add -6
	note $31, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $31, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $30, NOTELEN_CUSTOM, $03
	volume_add -5
	instrument INSTR_NONE
	fine_tune_value -1
	note $30, NOTELEN_CUSTOM, $06
	volume_add 5
	instrument INSTR_2E
	fine_tune_value 1
	note $00, NOTELEN_06
	note $30, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $30, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $2C, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $2C, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	wave_id WAVE_06
	volume_add 6
	note $00, NOTELEN_03
	note $31
	note $36
	note $3A
	note $3D, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $3D, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $3D, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $3D, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $3D, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $3D, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $3D, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $3D, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $3D, NOTELEN_03
	note $3C
	note $3A
	note $38
	wave_id WAVE_07
	note $30, NOTELEN_06
	note $31, NOTELEN_03
	note $33, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $33, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $35, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $35, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $35, NOTELEN_01
	note $36, NOTELEN_08
	note $35, NOTELEN_06
	note $33
	note $31
	note $30
	note $31, NOTELEN_03
	note $33, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $33, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $30, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $30, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $2E, NOTELEN_09
	note $2C, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $2C, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $2E, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $2E, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $2C, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $2C, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $2F, NOTELEN_01
	note $30, NOTELEN_08
	wave_id WAVE_09
	note $2C, NOTELEN_03
	note $2E
	note $31, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $31, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $30, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $30, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $2C, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $2C, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $2E, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $2E, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $2E, NOTELEN_03
	note $2A, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $2A, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $27, NOTELEN_03
	note $29
	note $2A
	note $2C
	note $2E
	note $31, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $31, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $33, NOTELEN_CUSTOM, $03
	volume_add -5
	instrument INSTR_NONE
	fine_tune_value -1
	note $33, NOTELEN_CUSTOM, $06
	volume_add 5
	instrument INSTR_2E
	fine_tune_value 1
	note $00, NOTELEN_12
	wave_id WAVE_07
	note $30, NOTELEN_06
	note $31, NOTELEN_03
	note $33, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $33, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $35, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $35, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $35, NOTELEN_01
	note $36, NOTELEN_08
	note $35, NOTELEN_06
	note $33
	note $31
	note $30
	note $31, NOTELEN_03
	note $33, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $33, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $30, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $30, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $2E, NOTELEN_09
	note $2C, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $2C, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $2E, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $2E, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $2C, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $2C, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $2F, NOTELEN_01
	note $30, NOTELEN_08
	note $33, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $33, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	wave_id WAVE_01
	volume_add -6
	note $31, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $31, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $30, NOTELEN_CUSTOM, $03
	volume_add -5
	instrument INSTR_NONE
	fine_tune_value -1
	note $30, NOTELEN_CUSTOM, $06
	volume_add 5
	instrument INSTR_2E
	fine_tune_value 1
	note $00, NOTELEN_06
	note $30, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $30, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $2C, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $2C, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	wave_id WAVE_06
	volume_add 6
	note $00, NOTELEN_03
	note $31
	note $36
	note $3A
	note $3D, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $3D, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $3D, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $3D, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $3D, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $3D, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $3D, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $3D, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $3D, NOTELEN_03
	note $3C
	note $3A
	note $38
	wave_id WAVE_07
	note $30, NOTELEN_06
	note $31, NOTELEN_03
	note $33, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $33, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $35, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $35, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $35, NOTELEN_01
	note $36, NOTELEN_08
	note $35, NOTELEN_06
	note $33
	note $31
	note $30
	note $31, NOTELEN_03
	note $33, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $33, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $30, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $30, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $2E, NOTELEN_09
	note $2C, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $2C, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $2E, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $2E, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $2C, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $2C, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $2F, NOTELEN_01
	note $30, NOTELEN_08
	note $2C, NOTELEN_CUSTOM, $4B
	wave_id WAVE_09
	instrument INSTR_NONE
	note $2C, NOTELEN_0C
	note $38, NOTELEN_30
	note $36, NOTELEN_CUSTOM, $09
	volume_add -5
	instrument INSTR_NONE
	fine_tune_value -1
	note $36, NOTELEN_CUSTOM, $03
	volume_add 5
	instrument INSTR_NONE
	fine_tune_value 1
	note $35, NOTELEN_CUSTOM, $09
	volume_add -5
	instrument INSTR_NONE
	fine_tune_value -1
	note $35, NOTELEN_CUSTOM, $03
	volume_add 5
	instrument INSTR_NONE
	fine_tune_value 1
	note $33, NOTELEN_CUSTOM, $09
	volume_add -5
	instrument INSTR_NONE
	fine_tune_value -1
	note $33, NOTELEN_CUSTOM, $03
	volume_add 5
	instrument INSTR_NONE
	fine_tune_value 1
	note $35, NOTELEN_02
	note $00, NOTELEN_04
	note $2C, NOTELEN_06
	note $2C, NOTELEN_CUSTOM, $4B
	note $00, NOTELEN_09
	note $2C, NOTELEN_0C
	note $38, NOTELEN_30
	note $36, NOTELEN_CUSTOM, $09
	volume_add -5
	instrument INSTR_NONE
	fine_tune_value -1
	note $36, NOTELEN_CUSTOM, $03
	volume_add 5
	instrument INSTR_NONE
	fine_tune_value 1
	note $35, NOTELEN_CUSTOM, $09
	volume_add -5
	instrument INSTR_NONE
	fine_tune_value -1
	note $35, NOTELEN_CUSTOM, $03
	volume_add 5
	instrument INSTR_NONE
	fine_tune_value 1
	note $33, NOTELEN_CUSTOM, $09
	volume_add -5
	instrument INSTR_NONE
	fine_tune_value -1
	note $33, NOTELEN_CUSTOM, $03
	volume_add 5
	instrument INSTR_NONE
	fine_tune_value 1
	note $35, NOTELEN_02
	note $00, NOTELEN_04
	note $2C, NOTELEN_06
	note $2C, NOTELEN_CUSTOM, $48
	note $00, NOTELEN_0C
	note $2C
	note $3A, NOTELEN_30
	note $38, NOTELEN_CUSTOM, $09
	volume_add -5
	instrument INSTR_NONE
	fine_tune_value -1
	note $38, NOTELEN_CUSTOM, $03
	volume_add 5
	instrument INSTR_NONE
	fine_tune_value 1
	note $37, NOTELEN_CUSTOM, $09
	volume_add -5
	instrument INSTR_NONE
	fine_tune_value -1
	note $37, NOTELEN_CUSTOM, $03
	volume_add 5
	instrument INSTR_NONE
	fine_tune_value 1
	note $35, NOTELEN_CUSTOM, $09
	volume_add -5
	instrument INSTR_NONE
	fine_tune_value -1
	note $35, NOTELEN_CUSTOM, $03
	volume_add 5
	instrument INSTR_NONE
	fine_tune_value 1
	note $37, NOTELEN_02
	note $00, NOTELEN_04
	note $2E, NOTELEN_06
	note $2E, NOTELEN_CUSTOM, $48
	note $00, NOTELEN_0C
	note $2E
	note $3A, NOTELEN_30
	note $38, NOTELEN_CUSTOM, $09
	volume_add -5
	instrument INSTR_NONE
	fine_tune_value -1
	note $38, NOTELEN_CUSTOM, $03
	volume_add 5
	instrument INSTR_NONE
	fine_tune_value 1
	note $37, NOTELEN_CUSTOM, $09
	volume_add -5
	instrument INSTR_NONE
	fine_tune_value -1
	note $37, NOTELEN_CUSTOM, $03
	volume_add 5
	instrument INSTR_NONE
	fine_tune_value 1
	note $35, NOTELEN_CUSTOM, $09
	volume_add -5
	instrument INSTR_NONE
	fine_tune_value -1
	note $35, NOTELEN_CUSTOM, $03
	volume_add 5
	instrument INSTR_NONE
	fine_tune_value 1
	note $37, NOTELEN_02
	note $00, NOTELEN_04
	note $3A, NOTELEN_06
	note $3A, NOTELEN_CUSTOM, $60
	snd_loop SndData_0C_Ch3
SndData_0C_Ch2:
	duty_cycle $01
	note $14, NOTELEN_09
	note $1B, NOTELEN_0C
	note $20
	note $1B, NOTELEN_09
	note $20, NOTELEN_06
	note $12, NOTELEN_09
	note $19, NOTELEN_0C
	note $1E
	note $0F, NOTELEN_06
	note $00, NOTELEN_03
	note $1B, NOTELEN_06
	note $14, NOTELEN_09
	note $1B, NOTELEN_0C
	note $20
	note $1B, NOTELEN_09
	note $20, NOTELEN_06
	note $12, NOTELEN_09
	note $19, NOTELEN_0C
	note $1E
	note $0F, NOTELEN_06
	note $00, NOTELEN_03
	note $0F, NOTELEN_06
	note $14, NOTELEN_09
	note $1B, NOTELEN_0C
	note $20
	note $1B, NOTELEN_09
	note $12, NOTELEN_06
	note $12, NOTELEN_09
	note $19, NOTELEN_0C
	note $1E, NOTELEN_06
	note $0F
	note $0F, NOTELEN_03
	note $16, NOTELEN_06
	note $12
	note $14, NOTELEN_09
	note $1B, NOTELEN_0C
	note $20
	note $1B, NOTELEN_09
	note $12, NOTELEN_06
	note $12, NOTELEN_09
	note $19, NOTELEN_0C
	note $1E
	note $0F, NOTELEN_06
	note $00, NOTELEN_03
	note $0F, NOTELEN_06
	note $14, NOTELEN_09
	note $1B, NOTELEN_0C
	note $20
	note $1B, NOTELEN_09
	note $12, NOTELEN_06
	note $12, NOTELEN_09
	note $19, NOTELEN_0C
	note $1E
	note $0F, NOTELEN_09
	note $0F, NOTELEN_06
	note $14, NOTELEN_09
	note $1B, NOTELEN_0C
	note $20
	note $1B, NOTELEN_09
	note $12, NOTELEN_06
	note $12, NOTELEN_09
	note $19, NOTELEN_06
	note $1E
	note $0F
	note $0F, NOTELEN_09
	note $16, NOTELEN_06
	note $1B
	note $14, NOTELEN_09
	note $1B, NOTELEN_0C
	note $20
	note $1B, NOTELEN_09
	note $12, NOTELEN_06
	note $12, NOTELEN_09
	note $19, NOTELEN_0C
	note $1E
	note $0F, NOTELEN_09
	note $0F, NOTELEN_06
	note $14, NOTELEN_09
	note $1B, NOTELEN_0C
	note $20
	note $1B, NOTELEN_09
	note $12, NOTELEN_06
	note $12, NOTELEN_09
	note $19
	note $1E
	note $0F, NOTELEN_06
	note $0F, NOTELEN_03
	note $16, NOTELEN_06
	note $12
	note $14, NOTELEN_09
	note $1B, NOTELEN_0C
	note $20
	note $1B, NOTELEN_09
	note $12, NOTELEN_06
	note $12, NOTELEN_09
	note $19, NOTELEN_0C
	note $1E
	note $0F, NOTELEN_09
	note $0F, NOTELEN_06
	note $14, NOTELEN_09
	note $1B, NOTELEN_0C
	note $20
	note $1B, NOTELEN_09
	note $12, NOTELEN_06
	note $12, NOTELEN_09
	note $19, NOTELEN_06
	note $1E
	note $0F, NOTELEN_03
	note $00
	note $1B, NOTELEN_09
	note $1A, NOTELEN_03
	note $00
	note $1A, NOTELEN_06
	note $19, NOTELEN_09
	note $1D
	note $19, NOTELEN_06
	note $17, NOTELEN_09
	note $16
	note $14, NOTELEN_06
	note $19, NOTELEN_09
	note $1D
	note $19, NOTELEN_06
	note $17, NOTELEN_09
	note $1B
	note $1E, NOTELEN_06
	note $19, NOTELEN_09
	note $1D
	note $19, NOTELEN_06
	note $17, NOTELEN_09
	note $16
	note $14, NOTELEN_06
	note $19, NOTELEN_09
	note $1D
	note $19, NOTELEN_06
	note $17, NOTELEN_09
	note $1E
	note $17, NOTELEN_06
	note $19, NOTELEN_09
	note $1D
	note $19, NOTELEN_06
	note $17, NOTELEN_09
	note $16
	note $14, NOTELEN_06
	note $19, NOTELEN_09
	note $1D
	note $19, NOTELEN_06
	note $17, NOTELEN_09
	note $1B
	note $1E, NOTELEN_06
	note $19, NOTELEN_09
	note $1D
	note $19, NOTELEN_06
	note $17, NOTELEN_09
	note $16
	note $14, NOTELEN_06
	note $19, NOTELEN_09
	note $1D
	note $19, NOTELEN_06
	note $17, NOTELEN_09
	note $1E
	note $17, NOTELEN_06
	note $1B, NOTELEN_09
	note $1F
	note $1B, NOTELEN_06
	note $19, NOTELEN_09
	note $18
	note $16, NOTELEN_06
	note $1B, NOTELEN_09
	note $1F
	note $1B, NOTELEN_06
	note $19, NOTELEN_09
	note $1D
	note $20, NOTELEN_06
	note $1B, NOTELEN_09
	note $1F
	note $1B, NOTELEN_06
	note $19, NOTELEN_09
	note $18
	note $16, NOTELEN_06
	note $1B, NOTELEN_09
	note $1F
	note $1B, NOTELEN_06
	note $00, NOTELEN_03
	note $19, NOTELEN_06
	note $19, NOTELEN_03
	note $1A
	note $00
	note $1A, NOTELEN_06
	note $1B, NOTELEN_09
	note $1F, NOTELEN_03
	note $00
	note $1B
	note $00
	note $19
	note $00
	note $19, NOTELEN_09
	note $1D, NOTELEN_03
	note $00
	note $19
	note $00
	note $1B, NOTELEN_09
	note $1F, NOTELEN_03
	note $00
	note $1B
	note $00
	note $19
	note $00
	note $19, NOTELEN_09
	note $1D, NOTELEN_03
	note $00
	note $19
	note $00
	note $1B, NOTELEN_09
	note $1F, NOTELEN_03
	note $00
	note $1B
	note $00
	note $19
	note $00
	note $19, NOTELEN_09
	note $1D, NOTELEN_03
	note $00
	note $20
	note $00
	note $1B, NOTELEN_09
	note $1F, NOTELEN_03
	note $00
	note $1B
	note $00
	note $19
	note $00
	note $19, NOTELEN_06
	note $18, NOTELEN_03
	note $16
	note $00
	note $18
	note $00
	snd_loop SndData_0C_Ch2
SndData_0C_Ch1:
	duty_cycle $02
	note $1B, NOTELEN_03
	note $1D
	note $1E
	note $20
	note $22
	note $25
	note $00
	note $24
	note $00
	note $20
	note $00
	note $22
	note $00
	note $22
	note $1E
	note $00
	note $1B
	note $1D
	note $1E
	note $20
	note $22
	note $25
	note $00
	note $24
	note $00
	note $27
	note $26
	note $27
	note $00, NOTELEN_0C
	note $1B, NOTELEN_03
	note $1D
	note $1E
	note $20
	note $22
	note $25
	note $00
	note $24
	note $00
	note $20
	note $00
	note $22
	note $00
	note $22
	note $1E
	note $00
	note $1B
	note $1D
	note $1E
	note $20
	note $22
	note $25
	note $00
	note $24
	note $00, NOTELEN_0C
	note $27
	duty_cycle $29
	note $2C, NOTELEN_06
	note $27, NOTELEN_03
	note $2A, NOTELEN_06
	note $2E
	note $2C, NOTELEN_CUSTOM, $0F
	note $2C, NOTELEN_06
	note $27
	note $2A
	note $22, NOTELEN_03
	note $25, NOTELEN_06
	note $29
	note $2A, NOTELEN_CUSTOM, $0F
	note $2A, NOTELEN_06
	note $27
	note $2C
	note $27, NOTELEN_03
	note $2A, NOTELEN_06
	note $2E
	note $2C, NOTELEN_CUSTOM, $0F
	note $2C, NOTELEN_06
	note $27
	note $2A
	note $22, NOTELEN_03
	note $25, NOTELEN_06
	note $29
	note $2A, NOTELEN_CUSTOM, $0F
	note $2A, NOTELEN_06
	note $27
	note $2C
	note $27, NOTELEN_03
	note $2A, NOTELEN_06
	note $2E
	note $2C, NOTELEN_CUSTOM, $0F
	note $2C, NOTELEN_06
	note $27
	note $2A
	note $22, NOTELEN_03
	note $25, NOTELEN_06
	note $29
	note $2A, NOTELEN_CUSTOM, $0F
	note $2A, NOTELEN_06
	note $27
	duty_cycle $02
	note $1B, NOTELEN_03
	note $1D
	note $1E
	note $20
	note $22
	note $25
	note $00
	note $24
	note $00
	note $20
	note $00
	note $22
	note $00
	note $22
	note $1E
	note $00
	note $1B
	note $1D
	note $1E
	note $20
	note $22
	note $25
	note $00
	note $27
	note $00, NOTELEN_0C
	duty_cycle $00
	note $2A, NOTELEN_01
	note $2C
	note $2D
	note $2F
	note $31
	note $33
	note $34
	note $36
	note $38
	note $39
	note $3B
	note $3D
	note $2C, NOTELEN_06
	note $2E, NOTELEN_03
	note $30, NOTELEN_06
	note $31
	note $33, NOTELEN_09
	note $31, NOTELEN_06
	note $30
	note $2E
	note $2C
	note $2E, NOTELEN_03
	note $30, NOTELEN_06
	note $2C
	note $2A, NOTELEN_09
	note $29, NOTELEN_06
	note $2A
	note $29
	duty_cycle $29
	note $2C
	note $27, NOTELEN_03
	note $2A, NOTELEN_06
	note $2E
	note $2C, NOTELEN_CUSTOM, $0F
	note $2C, NOTELEN_06
	note $27
	note $2A
	note $22, NOTELEN_03
	note $25, NOTELEN_06
	note $29
	note $2A, NOTELEN_CUSTOM, $0F
	note $2A, NOTELEN_06
	note $27
	duty_cycle $00
	note $2C
	note $2E, NOTELEN_03
	note $30, NOTELEN_06
	note $31
	note $33, NOTELEN_09
	note $31, NOTELEN_06
	note $30
	note $2E
	note $2C
	note $2E, NOTELEN_03
	note $30, NOTELEN_06
	note $2C
	note $2A, NOTELEN_09
	note $29, NOTELEN_06
	note $2A
	note $29
	duty_cycle $02
	note $1B, NOTELEN_03
	note $1D
	note $1E
	note $20
	note $22
	note $25, NOTELEN_06
	note $24
	note $20
	note $22
	note $22, NOTELEN_03
	note $1E, NOTELEN_06
	note $1B, NOTELEN_03
	note $1D
	note $1E
	note $20
	note $22
	note $25, NOTELEN_06
	note $24
	note $20
	note $22
	note $22, NOTELEN_03
	note $1E, NOTELEN_06
	duty_cycle $28
	note $31
	note $29, NOTELEN_03
	note $2C, NOTELEN_06
	note $31
	note $2F
	note $2F
	note $2E, NOTELEN_03
	note $2C, NOTELEN_06
	note $2E
	note $31
	note $29, NOTELEN_03
	note $2C, NOTELEN_06
	note $31
	note $2F
	note $2F
	note $2E, NOTELEN_03
	note $2C, NOTELEN_0C
	note $31, NOTELEN_06
	note $29, NOTELEN_03
	note $2C, NOTELEN_06
	note $31
	note $2F
	note $2F
	note $2E, NOTELEN_03
	note $2C, NOTELEN_06
	note $2E
	note $31
	note $29, NOTELEN_03
	note $2C, NOTELEN_06
	note $31
	note $2F
	note $2F
	note $2E, NOTELEN_03
	note $2C, NOTELEN_0C
	note $31, NOTELEN_06
	note $29, NOTELEN_03
	note $2C, NOTELEN_06
	note $31
	note $2F
	note $2F
	note $2E, NOTELEN_03
	note $2C, NOTELEN_06
	note $2E
	note $31
	note $29, NOTELEN_03
	note $2C, NOTELEN_06
	note $31
	note $2F
	note $2F
	note $2E, NOTELEN_03
	note $2C, NOTELEN_0C
	note $31, NOTELEN_06
	note $29, NOTELEN_03
	note $2C, NOTELEN_06
	note $31
	note $2F
	note $2F
	note $2E, NOTELEN_03
	note $2C, NOTELEN_06
	note $2E
	note $31
	note $29, NOTELEN_03
	note $2C, NOTELEN_06
	note $31
	note $2F
	note $2F
	note $2E, NOTELEN_03
	note $2C, NOTELEN_06
	note $2A
	note $33
	note $2B, NOTELEN_03
	note $2E, NOTELEN_06
	note $33
	note $31
	note $31
	note $30, NOTELEN_03
	note $2E, NOTELEN_06
	note $30
	note $33
	note $2B, NOTELEN_03
	note $2E, NOTELEN_06
	note $33
	note $31
	note $31
	note $30, NOTELEN_03
	note $2E, NOTELEN_06
	note $2C
	note $33
	note $2B, NOTELEN_03
	note $2E, NOTELEN_06
	note $33
	note $31
	note $31
	note $30, NOTELEN_03
	note $2E, NOTELEN_06
	note $30
	note $33
	note $2B, NOTELEN_03
	note $2E, NOTELEN_06
	note $33
	note $31
	note $31
	note $30, NOTELEN_03
	note $2E, NOTELEN_06
	note $2C
	note $33
	note $2B, NOTELEN_03
	note $2E, NOTELEN_06
	note $33
	note $31
	note $31
	note $30, NOTELEN_03
	note $2E, NOTELEN_06
	note $30
	note $33
	note $2B, NOTELEN_03
	note $2E, NOTELEN_06
	note $33
	note $31
	note $31
	note $30, NOTELEN_03
	note $2E, NOTELEN_06
	note $2C
	note $33
	note $2B, NOTELEN_03
	note $2E, NOTELEN_06
	note $33
	note $31
	note $31
	note $30, NOTELEN_03
	note $2E, NOTELEN_06
	note $30
	note $33
	note $2B, NOTELEN_03
	note $2E, NOTELEN_06
	note $33
	note $31
	note $31
	note $30, NOTELEN_03
	note $2E, NOTELEN_06
	note $30
	snd_loop SndData_0C_Ch1
SndData_0C_Ch4:
	duty_cycle $00
	snd_call .sub0
	snd_call .sub0
	snd_call .sub0
	snd_call .sub0
	snd_call .sub0
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_00
	note_ex PRESET_02
	set_var iSndChInfo_LoopTimer0, $04
	.loop0:
		note_ex PRESET_01
		note_ex PRESET_02
		note_ex PRESET_02
		note_ex PRESET_01
		note_ex PRESET_00
		note_ex PRESET_02
		note_ex PRESET_02
		note_ex PRESET_00
		note_ex PRESET_00
		note_ex PRESET_02
		note_ex PRESET_02
		note_ex PRESET_00
		note_ex PRESET_00
		note_ex PRESET_02
		note_ex PRESET_00
		note_ex PRESET_01
		note_ex PRESET_01
		note_ex PRESET_00
		note_ex PRESET_02
		note_ex PRESET_01
		note_ex PRESET_00
		note_ex PRESET_02
		note_ex PRESET_02
		note_ex PRESET_00
		note_ex PRESET_00
		note_ex PRESET_02
		note_ex PRESET_02
		note_ex PRESET_00
		note_ex PRESET_00
		note_ex PRESET_02
		note_ex PRESET_00
		note_ex PRESET_01
		snd_loop .loop0, iSndChInfo_LoopTimer0
	set_var iSndChInfo_LoopTimer0, $08
	.loop1:
		note_ex PRESET_01
		note_ex PRESET_02
		note_ex PRESET_02
		note_ex PRESET_07
		note_ex PRESET_01
		note_ex PRESET_02
		note_ex PRESET_02
		note_ex PRESET_02
		note_ex PRESET_01
		note_ex PRESET_02
		note_ex PRESET_02
		note_ex PRESET_05
		note_ex PRESET_01
		note_ex PRESET_02
		note_ex PRESET_02
		note_ex PRESET_02
		snd_loop .loop1, iSndChInfo_LoopTimer0
	set_var iSndChInfo_LoopTimer0, $07
	.loop2:
		note_ex PRESET_01
		note_ex PRESET_02
		note_ex PRESET_02
		note_ex PRESET_01
		note_ex PRESET_02
		note_ex PRESET_01
		note_ex PRESET_02
		note_ex PRESET_01
		note_ex PRESET_02
		note_ex PRESET_01
		note_ex PRESET_02
		note_ex PRESET_01
		note_ex PRESET_01
		note_ex PRESET_02
		note_ex PRESET_02
		note_ex PRESET_02
		snd_loop .loop2, iSndChInfo_LoopTimer0
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_00, NOTELEN_06
	note_ex PRESET_00
	snd_loop SndData_0C_Ch4
.sub0:
	note_ex PRESET_01, NOTELEN_03
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_02
	snd_ret
