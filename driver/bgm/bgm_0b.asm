SndHeader_BGM_0B:
	db 4 ; Number of slots
.slot0:
	db SNDSLOT0 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db 0 ; iSndChInfo_NoteIdBase
	db 121 ; iSndChInfo_Speed
	db SNDCH_WAVE ; iSndChInfo_ChId
	dw SndData_0B_Ch3 ; Data pointer
	db WAVE_01 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot1:
	db SNDSLOT1 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 12 ; iSndChInfo_Vol
	db INSTR_2E ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -12 ; iSndChInfo_NoteIdBase
	db 121 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_0B_Ch2 ; Data pointer
	db $80 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot2:
	db SNDSLOT2 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 10 ; iSndChInfo_Vol
	db INSTR_31 ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -12 ; iSndChInfo_NoteIdBase
	db 121 ; iSndChInfo_Speed
	db SNDCH_PULSE1 ; iSndChInfo_ChId
	dw SndData_0B_Ch1 ; Data pointer
	db $80 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot3:
	db SNDSLOT3 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db 0 ; iSndChInfo_NoteIdBase
	db 121 ; iSndChInfo_Speed
	db SNDCH_NOISE ; iSndChInfo_ChId
	dw SndData_0B_Ch4 ; Data pointer
	db $80 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_0B_Ch3:
	wave_id WAVE_10
	vibrato VIBRATO_35
	snd_call .sub0
	note $36, NOTELEN_09
	note $35, NOTELEN_CUSTOM, $03
	volume_add -5
	instrument INSTR_NONE
	fine_tune_value -1
	note $35, NOTELEN_CUSTOM, $06
	volume_add 5
	instrument INSTR_NONE
	fine_tune_value 1
	note $33, NOTELEN_06
	note $3A, NOTELEN_09
	note $37, NOTELEN_CUSTOM, $03
	volume_add -5
	instrument INSTR_NONE
	fine_tune_value -1
	note $37, NOTELEN_CUSTOM, $06
	volume_add 5
	instrument INSTR_NONE
	fine_tune_value 1
	note $33, NOTELEN_CUSTOM, $1E
	volume_add -5
	instrument INSTR_NONE
	fine_tune_value -1
	note $33, NOTELEN_CUSTOM, $06
	volume_add 5
	instrument INSTR_NONE
	fine_tune_value 1
	note $00, NOTELEN_CUSTOM, $12
	wave_id WAVE_09
	vibrato VIBRATO_34
	note $27, NOTELEN_03
	note $27
	note $24, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $24, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $27, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $27, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $00, NOTELEN_06
	note $29, NOTELEN_01
	note $2A, NOTELEN_02
	note $00, NOTELEN_06
	note $29, NOTELEN_09
	note $24, NOTELEN_06
	note $27, NOTELEN_03
	note $27
	note $24, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $24, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $27, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $27, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $00, NOTELEN_06
	note $1E, NOTELEN_01
	note $1F, NOTELEN_02
	note $00, NOTELEN_06
	note $20, NOTELEN_09
	note $22, NOTELEN_06
	note $27, NOTELEN_03
	note $27
	note $24, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $24, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $27, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $27, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $00, NOTELEN_06
	note $29, NOTELEN_01
	note $2A, NOTELEN_02
	note $00, NOTELEN_06
	note $29, NOTELEN_09
	note $24, NOTELEN_06
	note $27, NOTELEN_03
	note $27
	note $24, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $24, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $27
	note $06
	note $00, NOTELEN_CUSTOM, $04
	note $2B, NOTELEN_01
	note $2C
	note $2D
	note $2E, NOTELEN_CUSTOM, $05
	volume_add -5
	fine_tune_value -1
	note $2E, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $2B, NOTELEN_09
	note $24, NOTELEN_06
	note $27, NOTELEN_03
	note $27
	note $24, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $24, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $27, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $27, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $00, NOTELEN_06
	note $29, NOTELEN_01
	note $2A, NOTELEN_02
	note $00, NOTELEN_06
	note $29, NOTELEN_09
	note $24, NOTELEN_06
	note $27, NOTELEN_03
	note $27
	note $24, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $24, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $27, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $27, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $00, NOTELEN_06
	note $1E, NOTELEN_01
	note $1F, NOTELEN_02
	note $00, NOTELEN_06
	note $20, NOTELEN_09
	note $22, NOTELEN_06
	note $27, NOTELEN_03
	note $27
	note $24, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $24, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $27, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $27, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $00, NOTELEN_06
	note $29, NOTELEN_01
	note $2A, NOTELEN_02
	note $00, NOTELEN_06
	note $29, NOTELEN_09
	note $24, NOTELEN_06
	note $00
	note $2E, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $2E, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $00, NOTELEN_03
	note $2A, NOTELEN_01
	note $2B, NOTELEN_08
	note $27, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $27, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $00, NOTELEN_CUSTOM, $12
	wave_id WAVE_10
	vibrato VIBRATO_35
	snd_call .sub0
	note $36, NOTELEN_09
	note $35, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $35, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $00, NOTELEN_03
	note $33, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $33, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $3A, NOTELEN_09
	note $37, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $37, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $00, NOTELEN_03
	note $33, NOTELEN_CUSTOM, $1E
	volume_add -5
	fine_tune_value -1
	note $33, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $00, NOTELEN_09
	wave_id WAVE_0E
	vibrato VIBRATO_35
	note $29, NOTELEN_03
	note $2B
	note $2C
	note $2E
	note $30, NOTELEN_CUSTOM, $18
	volume_add -5
	instrument INSTR_NONE
	fine_tune_value -1
	note $30, NOTELEN_CUSTOM, $06
	volume_add 5
	instrument INSTR_NONE
	fine_tune_value 1
	note $32, NOTELEN_01
	note $33, NOTELEN_08
	note $31, NOTELEN_09
	note $30, NOTELEN_1E
	note $2E, NOTELEN_09
	note $2C
	note $2F, NOTELEN_01
	note $30, NOTELEN_CUSTOM, $59
	volume_add -5
	instrument INSTR_NONE
	fine_tune_value -1
	note $30, NOTELEN_CUSTOM, $06
	volume_add 5
	instrument INSTR_NONE
	fine_tune_value 1
	note $30, NOTELEN_CUSTOM, $1B
	volume_add -5
	fine_tune_value -1
	note $30, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $32, NOTELEN_01
	note $33, NOTELEN_08
	note $31, NOTELEN_09
	note $30, NOTELEN_CUSTOM, $21
	volume_add -5
	fine_tune_value -1
	note $30, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $36, NOTELEN_01
	note $37, NOTELEN_CUSTOM, $0B
	note $33, NOTELEN_CUSTOM, $4E
	volume_add -5
	instrument INSTR_NONE
	fine_tune_value -1
	note $33, NOTELEN_CUSTOM, $06
	volume_add 5
	instrument INSTR_NONE
	fine_tune_value 1
	note $31, NOTELEN_0C
	note $30, NOTELEN_18
	note $2E
	note $2C, NOTELEN_CUSTOM, $18
	volume_add -5
	instrument INSTR_NONE
	fine_tune_value -1
	note $2C, NOTELEN_CUSTOM, $06
	volume_add 5
	instrument INSTR_NONE
	fine_tune_value 1
	note $30, NOTELEN_09
	note $29
	note $2C, NOTELEN_CUSTOM, $8A
	volume_add -5
	instrument INSTR_NONE
	fine_tune_value -1
	note $2C, NOTELEN_CUSTOM, $06
	volume_add 5
	instrument INSTR_NONE
	fine_tune_value 1
	wave_id WAVE_09
	vibrato VIBRATO_34
	note $2C, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $2C, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $2C, NOTELEN_03
	note $2C, NOTELEN_CUSTOM, $03
	volume_add -5
	instrument INSTR_NONE
	fine_tune_value -1
	note $2C, NOTELEN_CUSTOM, $06
	volume_add 5
	instrument INSTR_NONE
	fine_tune_value 1
	note $00, NOTELEN_06
	note $2C, NOTELEN_03
	note $2C, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $2C, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $2C, NOTELEN_CUSTOM, $03
	volume_add -5
	instrument INSTR_NONE
	fine_tune_value -1
	note $2C, NOTELEN_CUSTOM, $06
	volume_add 5
	instrument INSTR_NONE
	fine_tune_value 1
	note $2C, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $2C, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	snd_loop SndData_0B_Ch3
.sub0:
	note $3A, NOTELEN_CUSTOM, $18
	volume_add -5
	instrument INSTR_NONE
	fine_tune_value -1
	note $3A, NOTELEN_CUSTOM, $06
	volume_add 5
	instrument INSTR_NONE
	fine_tune_value 1
	note $3F, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $3F, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $3C, NOTELEN_06
	note $3A, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $3A, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $37, NOTELEN_09
	note $35, NOTELEN_CUSTOM, $06
	volume_add -5
	fine_tune_value -1
	note $35, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $33, NOTELEN_CUSTOM, $0C
	volume_add -5
	instrument INSTR_NONE
	fine_tune_value -1
	note $33, NOTELEN_CUSTOM, $06
	volume_add 5
	instrument INSTR_NONE
	fine_tune_value 1
	note $30, NOTELEN_06
	note $33, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $33, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $36, NOTELEN_09
	note $35, NOTELEN_CUSTOM, $06
	volume_add -5
	fine_tune_value -1
	note $35, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $33, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $33, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $2F, NOTELEN_09
	note $2E, NOTELEN_CUSTOM, $06
	volume_add -5
	fine_tune_value -1
	note $2E, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $37, NOTELEN_CUSTOM, $1E
	volume_add -5
	instrument INSTR_NONE
	fine_tune_value -1
	note $37, NOTELEN_CUSTOM, $06
	volume_add 5
	instrument INSTR_NONE
	fine_tune_value 1
	note $00, NOTELEN_06
	note $38, NOTELEN_0C
	note $3A, NOTELEN_CUSTOM, $18
	volume_add -5
	instrument INSTR_NONE
	fine_tune_value -1
	note $3A, NOTELEN_CUSTOM, $06
	volume_add 5
	instrument INSTR_NONE
	fine_tune_value 1
	note $3F, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $3F, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $3C, NOTELEN_06
	note $3A, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $3A, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $37, NOTELEN_09
	note $35, NOTELEN_CUSTOM, $06
	volume_add -5
	fine_tune_value -1
	note $35, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $33, NOTELEN_CUSTOM, $0C
	volume_add -5
	fine_tune_value -1
	note $33, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $00, NOTELEN_03
	note $30, NOTELEN_06
	note $33, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $33, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	snd_ret
SndData_0B_Ch2:
	duty_cycle $40
	fine_tune -12
	note $1B, NOTELEN_06
	note $1B, NOTELEN_03
	note $1E, NOTELEN_01
	note $1F, NOTELEN_08
	note $22, NOTELEN_06
	note $25, NOTELEN_01
	note $26
	note $27, NOTELEN_CUSTOM, $07
	note $24, NOTELEN_06
	note $24, NOTELEN_03
	note $22
	note $22
	note $21
	note $21
	note $21
	note $24, NOTELEN_09
	note $27, NOTELEN_06
	note $29, NOTELEN_01
	note $2A
	note $2B, NOTELEN_CUSTOM, $07
	note $27, NOTELEN_06
	note $27, NOTELEN_03
	note $24, NOTELEN_06
	note $20, NOTELEN_03
	note $20, NOTELEN_06
	note $23, NOTELEN_01
	note $24, NOTELEN_08
	note $27, NOTELEN_06
	note $23, NOTELEN_01
	note $24
	note $25, NOTELEN_CUSTOM, $07
	note $20, NOTELEN_06
	note $20, NOTELEN_03
	note $19, NOTELEN_06
	note $1B, NOTELEN_03
	note $1B, NOTELEN_06
	note $1E, NOTELEN_01
	note $1F, NOTELEN_08
	note $22, NOTELEN_06
	note $27, NOTELEN_0C
	note $1C
	note $1B, NOTELEN_06
	note $1B, NOTELEN_03
	note $1E, NOTELEN_01
	note $1F, NOTELEN_08
	note $22, NOTELEN_06
	note $25, NOTELEN_01
	note $26
	note $27, NOTELEN_CUSTOM, $07
	note $24, NOTELEN_06
	note $24, NOTELEN_03
	note $22
	note $22
	note $21
	note $21
	note $21
	note $24, NOTELEN_09
	note $27, NOTELEN_06
	note $29, NOTELEN_01
	note $2A
	note $2B, NOTELEN_CUSTOM, $07
	note $27, NOTELEN_06
	note $27, NOTELEN_03
	note $24, NOTELEN_06
	fine_tune 12
	note $1D, NOTELEN_03
	note $1D, NOTELEN_06
	note $20, NOTELEN_09
	note $21, NOTELEN_06
	note $22, NOTELEN_09
	note $16
	note $19, NOTELEN_02
	note $1A, NOTELEN_04
	note $1B, NOTELEN_03
	note $1B, NOTELEN_06
	note $1E, NOTELEN_01
	note $1F, NOTELEN_08
	note $22, NOTELEN_06
	note $27, NOTELEN_0C
	note $27
	note $1B, NOTELEN_03
	note $1B
	note $17
	note $18
	note $1B, NOTELEN_0C
	note $1E, NOTELEN_09
	note $1D, NOTELEN_03
	note $1C
	note $1D
	note $18, NOTELEN_06
	note $1B, NOTELEN_03
	note $1B
	note $17
	note $18
	note $1B, NOTELEN_0C
	note $13, NOTELEN_09
	note $14, NOTELEN_03
	note $13
	note $14
	note $16, NOTELEN_06
	note $1B, NOTELEN_03
	note $1B
	note $17
	note $18
	note $1B, NOTELEN_0C
	note $1E, NOTELEN_09
	note $1D, NOTELEN_03
	note $1C
	note $1D
	note $18, NOTELEN_06
	note $1B, NOTELEN_03
	note $1B
	note $17
	note $18
	note $1B, NOTELEN_0C
	note $22, NOTELEN_09
	note $1F, NOTELEN_03
	note $1E
	note $1F
	note $18, NOTELEN_06
	note $1B, NOTELEN_03
	note $1B
	note $17
	note $18
	note $1B, NOTELEN_0C
	note $1E, NOTELEN_09
	note $1D, NOTELEN_03
	note $1C
	note $1D
	note $18, NOTELEN_06
	note $1B, NOTELEN_03
	note $1B
	note $17
	note $18
	note $1B, NOTELEN_0C
	note $13, NOTELEN_09
	note $14, NOTELEN_03
	note $13
	note $14
	note $16, NOTELEN_06
	note $1B, NOTELEN_03
	note $1B
	note $17
	note $18
	note $1B, NOTELEN_0C
	note $1E, NOTELEN_09
	note $1D, NOTELEN_03
	note $1C
	note $1D
	note $18, NOTELEN_06
	note $00
	note $22, NOTELEN_09
	note $1E, NOTELEN_03
	note $1F, NOTELEN_06
	note $1B
	note $00, NOTELEN_12
	fine_tune -12
	note $1B, NOTELEN_06
	note $1B, NOTELEN_03
	note $1E, NOTELEN_01
	note $1F, NOTELEN_08
	note $22, NOTELEN_06
	note $25, NOTELEN_01
	note $26
	note $27, NOTELEN_CUSTOM, $07
	note $24, NOTELEN_06
	note $24, NOTELEN_03
	note $22
	note $22
	note $21
	note $21
	note $21
	note $24, NOTELEN_09
	note $27, NOTELEN_06
	note $29, NOTELEN_01
	note $2A
	note $2B, NOTELEN_CUSTOM, $07
	note $27, NOTELEN_06
	note $27, NOTELEN_03
	note $24, NOTELEN_06
	note $20, NOTELEN_03
	note $20, NOTELEN_06
	note $23, NOTELEN_01
	note $24, NOTELEN_08
	note $27, NOTELEN_06
	note $25, NOTELEN_03
	note $23, NOTELEN_06
	note $22
	note $20
	note $19, NOTELEN_03
	note $1B
	note $1B, NOTELEN_06
	note $1E, NOTELEN_01
	note $1F, NOTELEN_08
	note $22, NOTELEN_06
	note $27, NOTELEN_0C
	note $1C
	note $1B, NOTELEN_06
	note $1B, NOTELEN_03
	note $1E, NOTELEN_01
	note $1F, NOTELEN_08
	note $22, NOTELEN_06
	note $25, NOTELEN_01
	note $26
	note $27, NOTELEN_CUSTOM, $07
	note $24, NOTELEN_09
	note $27, NOTELEN_03
	note $28
	note $28, NOTELEN_01
	note $29, NOTELEN_08
	note $24, NOTELEN_09
	note $27, NOTELEN_03
	note $29
	note $2A, NOTELEN_02
	note $2B, NOTELEN_CUSTOM, $07
	note $27, NOTELEN_09
	note $24, NOTELEN_06
	note $1D, NOTELEN_03
	note $1D, NOTELEN_06
	note $1F, NOTELEN_01
	note $20, NOTELEN_08
	note $21, NOTELEN_06
	note $20, NOTELEN_01
	note $21
	note $22, NOTELEN_CUSTOM, $07
	note $16, NOTELEN_09
	note $1A, NOTELEN_06
	note $1B, NOTELEN_03
	note $1B, NOTELEN_06
	note $1E, NOTELEN_01
	note $1F, NOTELEN_08
	note $22, NOTELEN_06
	note $27, NOTELEN_0C
	note $27
	fine_tune 12
	fine_tune -12
	note $21, NOTELEN_01
	note $22, NOTELEN_08
	note $25, NOTELEN_09
	note $29, NOTELEN_06
	note $2E, NOTELEN_01
	note $2F
	note $30, NOTELEN_CUSTOM, $07
	note $2E, NOTELEN_09
	note $2C, NOTELEN_06
	note $2A, NOTELEN_01
	note $2B, NOTELEN_08
	note $27, NOTELEN_09
	note $22, NOTELEN_18
	note $1A, NOTELEN_01
	note $1B, NOTELEN_CUSTOM, $05
	note $1F, NOTELEN_01
	note $20, NOTELEN_08
	note $24, NOTELEN_09
	note $27, NOTELEN_06
	note $2D, NOTELEN_01
	note $2E, NOTELEN_08
	note $2C, NOTELEN_09
	note $2B, NOTELEN_06
	note $28, NOTELEN_01
	note $29, NOTELEN_08
	note $24, NOTELEN_09
	note $1D, NOTELEN_12
	note $1B, NOTELEN_01
	note $1C
	note $1D, NOTELEN_CUSTOM, $0A
	note $21, NOTELEN_01
	note $22, NOTELEN_08
	note $25, NOTELEN_09
	note $29, NOTELEN_06
	note $2E, NOTELEN_01
	note $2F
	note $30, NOTELEN_CUSTOM, $07
	note $2E, NOTELEN_09
	note $2C, NOTELEN_06
	note $2A, NOTELEN_01
	note $2B, NOTELEN_08
	note $27, NOTELEN_09
	note $22, NOTELEN_18
	note $1A, NOTELEN_01
	note $1B, NOTELEN_CUSTOM, $05
	note $1F, NOTELEN_01
	note $20, NOTELEN_08
	note $24, NOTELEN_09
	note $27, NOTELEN_06
	note $2D, NOTELEN_01
	note $2E, NOTELEN_08
	note $2C, NOTELEN_09
	note $2B, NOTELEN_06
	note $2A, NOTELEN_01
	note $2B, NOTELEN_08
	note $27, NOTELEN_09
	note $24, NOTELEN_12
	note $19, NOTELEN_01
	note $1A
	note $1B, NOTELEN_CUSTOM, $0A
	note $24, NOTELEN_01
	note $25, NOTELEN_CUSTOM, $17
	note $23, NOTELEN_01
	note $24, NOTELEN_CUSTOM, $17
	note $21, NOTELEN_01
	note $22, NOTELEN_CUSTOM, $17
	note $1A, NOTELEN_01
	note $1B, NOTELEN_CUSTOM, $17
	fine_tune 12
	note $12, NOTELEN_09
	note $19
	note $1E, NOTELEN_06
	note $1F, NOTELEN_01
	note $20, NOTELEN_08
	note $12, NOTELEN_09
	note $19, NOTELEN_06
	note $14, NOTELEN_09
	note $1B
	note $20, NOTELEN_06
	note $24, NOTELEN_03
	note $23, NOTELEN_06
	note $21, NOTELEN_01
	note $22, NOTELEN_08
	note $20, NOTELEN_03
	note $1F
	note $1E, NOTELEN_09
	note $19
	note $1E
	note $1F, NOTELEN_01
	note $20, NOTELEN_08
	note $12, NOTELEN_06
	note $13
	note $14, NOTELEN_09
	note $16
	note $18, NOTELEN_06
	note $18, NOTELEN_03
	note $17, NOTELEN_01
	note $18, NOTELEN_08
	note $19, NOTELEN_06
	note $1A
	snd_loop SndData_0B_Ch2
SndData_0B_Ch1:
	duty_cycle $40
	note $36, NOTELEN_01
	note $37, NOTELEN_CUSTOM, $05
	note $37, NOTELEN_03
	note $37, NOTELEN_06
	note $2E
	note $33
	note $33, NOTELEN_03
	note $2E, NOTELEN_06
	note $30
	note $33
	note $37
	note $37, NOTELEN_03
	note $37, NOTELEN_06
	note $30
	note $33
	note $33, NOTELEN_03
	note $2D, NOTELEN_06
	note $30
	note $33
	note $33
	note $33, NOTELEN_03
	note $33, NOTELEN_06
	note $30
	note $30, NOTELEN_03
	note $35, NOTELEN_06
	note $35, NOTELEN_03
	note $35, NOTELEN_06
	note $33
	note $2F, NOTELEN_03
	note $3A, NOTELEN_06
	note $3A, NOTELEN_03
	note $36, NOTELEN_01
	note $37, NOTELEN_CUSTOM, $05
	note $33, NOTELEN_09
	note $2E, NOTELEN_0C
	note $3B, NOTELEN_02
	note $3B
	note $3B
	note $3B
	note $3B
	note $3B
	note $37, NOTELEN_06
	note $36, NOTELEN_03
	note $37, NOTELEN_06
	note $2E
	note $33
	note $33, NOTELEN_03
	note $2E, NOTELEN_06
	note $30
	note $33
	note $37
	note $3C, NOTELEN_03
	note $37, NOTELEN_06
	note $30
	note $33
	note $33, NOTELEN_03
	note $2D, NOTELEN_06
	note $30
	note $33
	note $33
	note $33, NOTELEN_03
	note $33, NOTELEN_06
	note $30
	note $30, NOTELEN_03
	note $33, NOTELEN_06
	note $33, NOTELEN_03
	note $33, NOTELEN_06
	note $30
	note $2C, NOTELEN_03
	note $3A, NOTELEN_06
	note $3A, NOTELEN_03
	note $36, NOTELEN_01
	note $37, NOTELEN_CUSTOM, $05
	note $33, NOTELEN_09
	note $33, NOTELEN_0C
	note $33, NOTELEN_02
	note $33
	note $33
	note $33
	note $33
	note $33
	duty_cycle $00
	note $33, NOTELEN_03
	note $33
	note $30, NOTELEN_06
	note $33, NOTELEN_0C
	note $35, NOTELEN_01
	note $36, NOTELEN_08
	note $35, NOTELEN_09
	note $30, NOTELEN_06
	note $33, NOTELEN_03
	note $33
	note $30, NOTELEN_06
	note $33, NOTELEN_0C
	note $2A, NOTELEN_01
	note $2B, NOTELEN_08
	note $2C, NOTELEN_09
	note $2E, NOTELEN_06
	note $33, NOTELEN_03
	note $33
	note $30, NOTELEN_06
	note $33, NOTELEN_0C
	note $35, NOTELEN_01
	note $36, NOTELEN_08
	note $35, NOTELEN_09
	note $30, NOTELEN_06
	note $33, NOTELEN_03
	note $33
	note $30, NOTELEN_06
	note $33, NOTELEN_CUSTOM, $0A
	note $37, NOTELEN_01
	note $38
	note $39
	note $3A, NOTELEN_08
	note $37, NOTELEN_09
	note $30, NOTELEN_06
	note $33, NOTELEN_03
	note $33
	note $30, NOTELEN_06
	note $33, NOTELEN_0C
	note $35, NOTELEN_01
	note $36, NOTELEN_08
	note $35, NOTELEN_09
	note $30, NOTELEN_06
	note $33, NOTELEN_03
	note $33
	note $30, NOTELEN_06
	note $33, NOTELEN_0C
	note $2A, NOTELEN_01
	note $2B, NOTELEN_08
	note $2C, NOTELEN_09
	note $2E, NOTELEN_06
	note $33, NOTELEN_03
	note $33
	note $30, NOTELEN_06
	note $33, NOTELEN_0C
	note $35, NOTELEN_01
	note $36, NOTELEN_08
	note $35, NOTELEN_09
	note $30, NOTELEN_06
	note $00
	note $3A, NOTELEN_09
	note $36, NOTELEN_01
	note $37, NOTELEN_08
	note $33, NOTELEN_18
	duty_cycle $40
	note $36, NOTELEN_01
	note $37, NOTELEN_CUSTOM, $05
	note $37, NOTELEN_03
	note $37, NOTELEN_06
	note $2E
	note $33
	note $33, NOTELEN_03
	note $2E, NOTELEN_06
	note $30
	note $33
	note $37
	note $37, NOTELEN_03
	note $37, NOTELEN_06
	note $30
	note $33
	note $33, NOTELEN_03
	note $2D, NOTELEN_06
	note $30
	note $33
	note $33
	note $33, NOTELEN_03
	note $33, NOTELEN_06
	note $30
	note $30, NOTELEN_03
	note $35, NOTELEN_06
	note $35, NOTELEN_03
	note $35, NOTELEN_06
	note $33
	note $2F, NOTELEN_03
	note $3A, NOTELEN_06
	note $3A, NOTELEN_03
	duty_cycle $00
	note $2A, NOTELEN_01
	note $2B, NOTELEN_CUSTOM, $05
	note $27, NOTELEN_09
	note $22, NOTELEN_03
	note $00, NOTELEN_09
	duty_cycle $40
	note $3B, NOTELEN_02
	note $3B
	note $3B
	note $3B
	note $3B
	note $3B
	note $37, NOTELEN_06
	note $36, NOTELEN_03
	note $37, NOTELEN_06
	note $2E
	note $33
	note $33, NOTELEN_03
	note $2E, NOTELEN_06
	note $30
	note $33
	note $37
	note $3C, NOTELEN_03
	note $37, NOTELEN_06
	note $30
	note $33
	note $33, NOTELEN_03
	note $2D, NOTELEN_06
	note $30
	note $33
	note $33
	note $33, NOTELEN_03
	note $33, NOTELEN_06
	note $30
	note $30, NOTELEN_03
	note $33, NOTELEN_06
	note $33, NOTELEN_03
	note $33, NOTELEN_06
	note $30
	note $2C, NOTELEN_03
	note $3A, NOTELEN_06
	duty_cycle $80
	volume_add -2
	note $2E, NOTELEN_03
	note $30
	note $33
	note $30
	note $2E
	note $30
	note $27, NOTELEN_0C
	duty_cycle $80
	volume_add -1
	note $33, NOTELEN_02
	note $33
	note $33
	note $33
	note $33, NOTELEN_04
	note $38, NOTELEN_02
	note $3C
	volume_add -1
	note $38
	note $3C
	volume_add -1
	note $38
	note $3C
	volume_add -1
	note $38
	note $3C
	note $38
	note $3C
	note $38
	note $3C
	note $38
	note $3C
	note $38
	note $3C
	note $38
	note $3C
	note $38
	note $3C
	note $38
	note $3C
	note $38
	note $3C
	volume_add 3
	set_var iSndChInfo_LoopTimer0, $02
	.loop:
		note $37
		note $3C
		volume_add -1
		note $37
		note $3C
		volume_add -1
		note $37
		note $3C
		volume_add -1
		note $37
		note $3C
		note $37
		note $3C
		note $37
		note $3C
		note $37
		note $3C
		note $37
		note $3C
		note $37
		note $3C
		note $37
		note $3C
		note $37
		note $3C
		note $37
		note $3C
		volume_add 3
		snd_loop .loop, iSndChInfo_LoopTimer0
	note $33
	note $37
	volume_add -1
	note $33
	note $37
	volume_add -1
	note $33
	note $37
	volume_add -1
	note $33
	note $37
	note $33
	note $37
	note $33
	note $37
	note $33
	note $37
	note $33
	note $37
	note $33
	note $37
	note $33
	note $37
	note $33
	note $37
	note $33
	note $37
	volume_add 3
	note $38
	note $3C
	volume_add -1
	note $38
	note $3C
	volume_add -1
	note $38
	note $3C
	volume_add -1
	note $38
	note $3C
	note $38
	note $3C
	note $38
	note $3C
	note $38
	note $3C
	note $38
	note $3C
	note $38
	note $3C
	note $38
	note $3C
	note $38
	note $3C
	note $38
	note $3C
	volume_add 3
	note $37
	volume_add -1
	note $3C
	volume_add -1
	note $37
	volume_add -1
	note $3C
	note $37
	note $3C
	note $37
	note $3C
	note $37
	note $3C
	note $37
	note $3C
	note $37
	note $3C
	note $37
	note $3C
	note $37
	note $3C
	note $37
	note $3C
	note $37
	note $3C
	note $37
	note $3C
	volume_add 3
	note $3C
	volume_add -1
	note $3F
	volume_add -1
	note $3C
	volume_add -1
	note $3F
	note $3C
	note $3F
	note $3C
	note $3F
	note $3C
	note $3F
	note $3C
	note $3F
	note $3C
	note $3F
	note $3C
	note $3F
	note $3C
	note $3F
	note $3C
	note $3F
	note $3C
	note $3F
	note $3C
	note $3F
	volume_add 3
	note $37
	volume_add -1
	note $3C
	volume_add -1
	note $37
	volume_add -1
	note $3C
	note $37
	note $3C
	note $37
	note $3C
	note $37
	note $3C
	note $37
	note $3C
	note $33
	note $37
	note $33
	note $37
	note $33
	note $37
	note $36
	note $3D
	note $36
	note $3D
	note $36
	note $3D
	volume_add 3
	note $38
	volume_add -1
	note $3C
	volume_add -1
	note $38
	volume_add -1
	note $3C
	note $38
	note $3C
	note $38
	note $3C
	note $38
	note $3C
	note $38
	note $3C
	note $37
	note $3A
	note $37
	note $3A
	note $37
	note $3A
	note $37
	note $3A
	note $37
	volume_add 1
	note $3A
	volume_add 1
	note $37
	volume_add 1
	note $3A
	note $35
	volume_add -1
	note $38
	volume_add -1
	note $35
	volume_add -1
	note $38
	note $35
	note $38
	note $35
	note $38
	note $35
	note $38
	note $35
	note $38
	note $35
	note $38
	note $35
	note $38
	note $35
	note $38
	note $35
	note $38
	note $35
	volume_add 1
	note $38
	volume_add 1
	note $35
	volume_add 1
	note $38
	volume_add 3
	note $2A, NOTELEN_06
	note $2E, NOTELEN_09
	note $2A, NOTELEN_06
	note $2E
	note $2A, NOTELEN_09
	note $2E, NOTELEN_06
	note $2A
	note $2C
	note $30, NOTELEN_09
	note $2C, NOTELEN_06
	note $30
	note $2C
	note $30, NOTELEN_03
	note $30, NOTELEN_06
	note $2C
	note $2A
	note $2E, NOTELEN_09
	note $2A, NOTELEN_06
	note $2E
	note $2A, NOTELEN_09
	note $2E, NOTELEN_06
	note $2A
	duty_cycle $80
	note $38
	note $38, NOTELEN_03
	note $38, NOTELEN_CUSTOM, $0F
	note $38, NOTELEN_03
	note $38, NOTELEN_06
	note $38, NOTELEN_09
	note $38, NOTELEN_06
	snd_loop SndData_0B_Ch1
SndData_0B_Ch4:
	snd_call .sub0
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_01, NOTELEN_0C
	note_ex PRESET_00
	snd_call .sub0
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_00, NOTELEN_01
	note_ex PRESET_00
	note_ex PRESET_00
	note_ex PRESET_00, NOTELEN_03
	note_ex PRESET_00
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_00, NOTELEN_0C
	note_ex PRESET_00, NOTELEN_03
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_01, NOTELEN_06
	note_ex PRESET_01, NOTELEN_03
	note_ex PRESET_02
	note_ex PRESET_00, NOTELEN_09
	note_ex PRESET_00, NOTELEN_01
	note_ex PRESET_00
	note_ex PRESET_00
	note_ex PRESET_01, NOTELEN_03
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_00, NOTELEN_06
	note_ex PRESET_01, NOTELEN_03
	note_ex PRESET_00
	note_ex PRESET_01
	note_ex PRESET_00
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_00, NOTELEN_06
	note_ex PRESET_02, NOTELEN_03
	note_ex PRESET_00
	note_ex PRESET_01
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_00, NOTELEN_06
	note_ex PRESET_01, NOTELEN_03
	note_ex PRESET_00
	note_ex PRESET_01, NOTELEN_06
	note_ex PRESET_01, NOTELEN_03
	note_ex PRESET_02
	note_ex PRESET_00, NOTELEN_09
	note_ex PRESET_00, NOTELEN_01
	note_ex PRESET_00
	note_ex PRESET_00
	note_ex PRESET_01, NOTELEN_03
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_00, NOTELEN_06
	note_ex PRESET_01, NOTELEN_03
	note_ex PRESET_00
	note_ex PRESET_01
	note_ex PRESET_00
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_00, NOTELEN_06
	note_ex PRESET_02, NOTELEN_03
	note_ex PRESET_00
	note_ex PRESET_01
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_00
	note_ex PRESET_00
	note_ex PRESET_01
	note_ex PRESET_00
	note_ex PRESET_01, NOTELEN_06
	note_ex PRESET_01, NOTELEN_03
	note_ex PRESET_02
	note_ex PRESET_00, NOTELEN_09
	note_ex PRESET_00, NOTELEN_01
	note_ex PRESET_00
	note_ex PRESET_00
	note_ex PRESET_01, NOTELEN_03
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_00, NOTELEN_06
	note_ex PRESET_01, NOTELEN_03
	note_ex PRESET_00
	note_ex PRESET_01
	note_ex PRESET_00
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_00, NOTELEN_06
	note_ex PRESET_02, NOTELEN_03
	note_ex PRESET_00
	note_ex PRESET_01
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_00, NOTELEN_06
	note_ex PRESET_01, NOTELEN_03
	note_ex PRESET_00
	note_ex PRESET_01, NOTELEN_06
	note_ex PRESET_01, NOTELEN_03
	note_ex PRESET_02
	note_ex PRESET_00, NOTELEN_09
	note_ex PRESET_00, NOTELEN_01
	note_ex PRESET_00
	note_ex PRESET_00
	note_ex PRESET_01, NOTELEN_03
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_00, NOTELEN_06
	note_ex PRESET_01, NOTELEN_03
	note_ex PRESET_00
	note_ex PRESET_01, NOTELEN_06
	note_ex PRESET_00
	note_ex PRESET_02, NOTELEN_03
	note_ex PRESET_00, NOTELEN_06
	note_ex PRESET_02, NOTELEN_03
	note_ex PRESET_00, NOTELEN_CUSTOM, $0F
	note_ex PRESET_00, NOTELEN_01
	note_ex PRESET_00
	note_ex PRESET_00
	note_ex PRESET_00, NOTELEN_03
	note_ex PRESET_00
	snd_call .sub0
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_01, NOTELEN_0C
	note_ex PRESET_00
	snd_call .sub0
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_00, NOTELEN_01
	note_ex PRESET_00
	note_ex PRESET_00
	note_ex PRESET_00, NOTELEN_03
	note_ex PRESET_00
	note_ex PRESET_01
	note_ex PRESET_00, NOTELEN_01
	note_ex PRESET_00
	note_ex PRESET_00
	note_ex PRESET_00, NOTELEN_0C
	note_ex PRESET_00
	note_ex PRESET_01, NOTELEN_06
	note_ex PRESET_02, NOTELEN_03
	note_ex PRESET_01
	note_ex PRESET_00, NOTELEN_06
	note_ex PRESET_01
	note_ex PRESET_01
	note_ex PRESET_02, NOTELEN_03
	note_ex PRESET_01
	note_ex PRESET_00, NOTELEN_06
	note_ex PRESET_01
	note_ex PRESET_01
	note_ex PRESET_02, NOTELEN_03
	note_ex PRESET_01
	note_ex PRESET_00, NOTELEN_06
	note_ex PRESET_01
	note_ex PRESET_01
	note_ex PRESET_02, NOTELEN_03
	note_ex PRESET_01
	note_ex PRESET_00, NOTELEN_06
	note_ex PRESET_01
	note_ex PRESET_01
	note_ex PRESET_02, NOTELEN_03
	note_ex PRESET_01
	note_ex PRESET_00, NOTELEN_06
	note_ex PRESET_01
	note_ex PRESET_01
	note_ex PRESET_02, NOTELEN_03
	note_ex PRESET_01
	note_ex PRESET_00, NOTELEN_06
	note_ex PRESET_01
	note_ex PRESET_01
	note_ex PRESET_02, NOTELEN_03
	note_ex PRESET_01
	note_ex PRESET_00, NOTELEN_06
	note_ex PRESET_01
	note_ex PRESET_01, NOTELEN_03
	note_ex PRESET_00, NOTELEN_06
	note_ex PRESET_01, NOTELEN_03
	note_ex PRESET_00, NOTELEN_06
	note_ex PRESET_01
	note_ex PRESET_01
	note_ex PRESET_02, NOTELEN_03
	note_ex PRESET_01
	note_ex PRESET_00, NOTELEN_06
	note_ex PRESET_01
	note_ex PRESET_01
	note_ex PRESET_02, NOTELEN_03
	note_ex PRESET_01
	note_ex PRESET_00, NOTELEN_06
	note_ex PRESET_01
	note_ex PRESET_01
	note_ex PRESET_02, NOTELEN_03
	note_ex PRESET_01
	note_ex PRESET_00, NOTELEN_06
	note_ex PRESET_01
	note_ex PRESET_01
	note_ex PRESET_02, NOTELEN_03
	note_ex PRESET_01
	note_ex PRESET_00, NOTELEN_06
	note_ex PRESET_01
	note_ex PRESET_01
	note_ex PRESET_02, NOTELEN_03
	note_ex PRESET_01
	note_ex PRESET_00, NOTELEN_06
	note_ex PRESET_01
	note_ex PRESET_01
	note_ex PRESET_02, NOTELEN_03
	note_ex PRESET_01
	note_ex PRESET_00, NOTELEN_06
	note_ex PRESET_01
	note_ex PRESET_01
	note_ex PRESET_02, NOTELEN_03
	note_ex PRESET_01
	note_ex PRESET_00, NOTELEN_06
	note_ex PRESET_01
	note_ex PRESET_01, NOTELEN_03
	note_ex PRESET_00, NOTELEN_06
	note_ex PRESET_01, NOTELEN_03
	note_ex PRESET_02
	note_ex PRESET_00
	note_ex PRESET_01
	note_ex PRESET_00
	note_ex PRESET_01, NOTELEN_0C
	note_ex PRESET_00
	note_ex PRESET_01
	note_ex PRESET_00
	note_ex PRESET_01
	note_ex PRESET_00
	note_ex PRESET_00, NOTELEN_06
	note_ex PRESET_02, NOTELEN_03
	note_ex PRESET_01
	note_ex PRESET_00
	note_ex PRESET_00, NOTELEN_06
	note_ex PRESET_00, NOTELEN_03
	snd_call .sub0
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_00, NOTELEN_06
	note_ex PRESET_01, NOTELEN_03
	note_ex PRESET_00, NOTELEN_06
	note_ex PRESET_00
	snd_loop SndData_0B_Ch4
.sub0:
	set_var iSndChInfo_LoopTimer0, $03
	.sub0loop0:
		note_ex PRESET_01, NOTELEN_03
		note_ex PRESET_02
		note_ex PRESET_02
		note_ex PRESET_01
		note_ex PRESET_00
		note_ex PRESET_02
		note_ex PRESET_01
		note_ex PRESET_02
		note_ex PRESET_01
		note_ex PRESET_02
		note_ex PRESET_02
		note_ex PRESET_01
		note_ex PRESET_00
		note_ex PRESET_02
		note_ex PRESET_01
		note_ex PRESET_02
		snd_loop .sub0loop0, iSndChInfo_LoopTimer0
	snd_ret
