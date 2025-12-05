SndHeader_BGM_0D:
	db 4 ; Number of slots
.slot0:
	db SNDSLOT0 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_35 ; iSndChInfo_Vibrato
	db 2 ; iSndChInfo_NoteIdBase
	db 121 ; iSndChInfo_Speed
	db SNDCH_WAVE ; iSndChInfo_ChId
	dw SndData_0D_Ch3 ; Data pointer
	db $80 ; [PLACEHOLDER] ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot1:
	db SNDSLOT1 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 13 ; iSndChInfo_Vol
	db INSTR_2E ; iSndChInfo_Instrument
	db VIBRATO_35 ; iSndChInfo_Vibrato
	db -10 ; iSndChInfo_NoteIdBase
	db 121 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_0D_Ch2 ; Data pointer
	db $80 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot2:
	db SNDSLOT2 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 8 ; iSndChInfo_Vol
	db INSTR_2E ; iSndChInfo_Instrument
	db VIBRATO_33 ; iSndChInfo_Vibrato
	db -10 ; iSndChInfo_NoteIdBase
	db 121 ; iSndChInfo_Speed
	db SNDCH_PULSE1 ; iSndChInfo_ChId
	dw SndData_0D_Ch1 ; Data pointer
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
	dw SndData_0D_Ch4 ; Data pointer
	db $80 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_0D_Ch3:
	wave_id WAVE_12
	instrument INSTR_30
	vibrato VIBRATO_36
	note $2B, NOTELEN_CUSTOM, $2D
	volume_add -5
	fine_tune_value -1
	note $2B, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $29, NOTELEN_18
	note $2E
	note $2B, NOTELEN_CUSTOM, $2A
	volume_add -5
	instrument INSTR_NONE
	fine_tune_value -1
	note $2B, NOTELEN_CUSTOM, $06
	volume_add 5
	instrument INSTR_NONE
	fine_tune_value 1
	note $29, NOTELEN_18
	note $2E
	note $2B, NOTELEN_CUSTOM, $41
	volume_add -5
	instrument INSTR_NONE
	fine_tune_value -1
	note $2B, NOTELEN_CUSTOM, $06
	volume_add 5
	instrument INSTR_NONE
	fine_tune_value 1
	note $2E, NOTELEN_01
	note $2F
	note $30, NOTELEN_08
	note $2E, NOTELEN_09
	note $27, NOTELEN_06
	note $2B, NOTELEN_CUSTOM, $48
	volume_add -5
	instrument INSTR_NONE
	fine_tune_value -1
	note $2B, NOTELEN_CUSTOM, $06
	volume_add 5
	instrument INSTR_NONE
	fine_tune_value 1
	note $27, NOTELEN_0C
	note $29, NOTELEN_06
	note $2B, NOTELEN_CUSTOM, $2D
	volume_add -5
	fine_tune_value -1
	note $2B, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $29, NOTELEN_18
	note $2E
	note $2B, NOTELEN_CUSTOM, $2A
	volume_add -5
	instrument INSTR_NONE
	fine_tune_value -1
	note $2B, NOTELEN_CUSTOM, $06
	volume_add 5
	instrument INSTR_NONE
	fine_tune_value 1
	note $29, NOTELEN_CUSTOM, $16
	note $2B, NOTELEN_01
	note $2C
	note $2D
	note $2E, NOTELEN_CUSTOM, $17
	note $2B, NOTELEN_CUSTOM, $42
	volume_add -5
	instrument INSTR_NONE
	fine_tune_value -1
	note $2B, NOTELEN_CUSTOM, $06
	volume_add 5
	instrument INSTR_30
	fine_tune_value 1
	note $27, NOTELEN_18
	note $2B, NOTELEN_CUSTOM, $50
	volume_add -5
	instrument INSTR_NONE
	fine_tune_value -1
	note $2B, NOTELEN_CUSTOM, $06
	volume_add 5
	instrument INSTR_30
	fine_tune_value 1
	wave_id WAVE_09
	vibrato VIBRATO_35
	note $34, NOTELEN_02
	note $35
	note $37
	note $39
	note $3B
	note $3C, NOTELEN_CUSTOM, $1B
	volume_add -5
	fine_tune_value -1
	note $3C, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $35, NOTELEN_06
	note $38
	note $3F
	note $3C, NOTELEN_12
	note $3A
	note $38, NOTELEN_0C
	note $37, NOTELEN_CUSTOM, $1B
	volume_add -5
	fine_tune_value -1
	note $37, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $33, NOTELEN_06
	note $30
	note $33, NOTELEN_CUSTOM, $1E
	volume_add -5
	instrument INSTR_NONE
	fine_tune_value -1
	note $33, NOTELEN_CUSTOM, $06
	volume_add 5
	instrument INSTR_30
	fine_tune_value 1
	note $00, NOTELEN_06
	note $32, NOTELEN_0C
	note $31, NOTELEN_CUSTOM, $1B
	volume_add -5
	fine_tune_value -1
	note $31, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $35, NOTELEN_06
	note $38
	note $3F
	note $3C, NOTELEN_12
	note $3A, NOTELEN_CUSTOM, $15
	volume_add -5
	fine_tune_value -1
	note $3A, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $38, NOTELEN_03
	note $3A
	note $3C, NOTELEN_CUSTOM, $48
	volume_add -5
	instrument INSTR_NONE
	fine_tune_value -1
	note $3C, NOTELEN_CUSTOM, $06
	volume_add 5
	instrument INSTR_30
	fine_tune_value 1
	note $00, NOTELEN_06
	note $33, NOTELEN_03
	note $35
	note $37
	note $38
	note $3A, NOTELEN_CUSTOM, $1B
	volume_add -5
	fine_tune_value -1
	note $3A, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $33, NOTELEN_06
	note $36
	note $3D
	note $3A, NOTELEN_12
	note $38
	note $36, NOTELEN_0C
	note $35, NOTELEN_CUSTOM, $18
	volume_add -5
	instrument INSTR_NONE
	fine_tune_value -1
	note $35, NOTELEN_CUSTOM, $06
	volume_add 5
	instrument INSTR_30
	fine_tune_value 1
	note $31, NOTELEN_06
	note $2E
	note $31, NOTELEN_CUSTOM, $1E
	volume_add -5
	instrument INSTR_NONE
	fine_tune_value -1
	note $31, NOTELEN_CUSTOM, $06
	volume_add 5
	instrument INSTR_30
	fine_tune_value 1
	note $00, NOTELEN_06
	note $31, NOTELEN_0C
	note $30, NOTELEN_CUSTOM, $1B
	volume_add -5
	fine_tune_value -1
	note $30, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $32, NOTELEN_06
	note $33
	note $2D, NOTELEN_CUSTOM, $19
	volume_add -5
	fine_tune_value -1
	note $2D, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $2E, NOTELEN_01
	note $2F
	note $30, NOTELEN_CUSTOM, $16
	note $31, NOTELEN_01
	note $32
	note $33, NOTELEN_CUSTOM, $2A
	volume_add -5
	instrument INSTR_NONE
	fine_tune_value -1
	note $33, NOTELEN_CUSTOM, $06
	volume_add 5
	instrument INSTR_NONE
	fine_tune_value 1
	note $32, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $32, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $32, NOTELEN_CUSTOM, $03
	volume_add -5
	instrument INSTR_NONE
	fine_tune_value -1
	note $32, NOTELEN_CUSTOM, $06
	volume_add 5
	instrument INSTR_NONE
	fine_tune_value 1
	note $32, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $32, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $32, NOTELEN_0C
	wave_id WAVE_12
	note $26, NOTELEN_03
	note $27, NOTELEN_06
	note $29
	snd_loop SndData_0D_Ch3
SndData_0D_Ch2:
	duty_cycle $01
	note $18, NOTELEN_09
	note $18, NOTELEN_03
	note $1F, NOTELEN_0C
	note $18, NOTELEN_09
	note $18, NOTELEN_03
	note $1F, NOTELEN_0C
	note $1B, NOTELEN_09
	note $1B, NOTELEN_03
	note $22, NOTELEN_0C
	note $1B, NOTELEN_09
	note $1B, NOTELEN_03
	note $22, NOTELEN_06
	note $21
	note $20, NOTELEN_09
	note $20, NOTELEN_03
	note $1B, NOTELEN_0C
	note $20, NOTELEN_09
	note $20, NOTELEN_03
	note $1B, NOTELEN_06
	note $20
	note $1F, NOTELEN_09
	note $1F, NOTELEN_03
	note $1A, NOTELEN_0C
	note $1F, NOTELEN_09
	note $1F, NOTELEN_03
	note $1A, NOTELEN_06
	note $1F
	note $1D, NOTELEN_09
	note $1D, NOTELEN_03
	note $18, NOTELEN_0C
	note $1D, NOTELEN_09
	note $1D, NOTELEN_03
	note $18, NOTELEN_06
	note $1D
	note $16, NOTELEN_09
	note $16, NOTELEN_03
	note $1D, NOTELEN_0C
	note $16, NOTELEN_09
	note $16, NOTELEN_03
	note $1D, NOTELEN_06
	note $1C
	note $1B, NOTELEN_09
	note $1B, NOTELEN_03
	note $22, NOTELEN_0C
	note $1B, NOTELEN_09
	note $1B, NOTELEN_03
	note $22, NOTELEN_06
	note $1B
	note $1A, NOTELEN_09
	note $1A, NOTELEN_03
	note $24
	note $25, NOTELEN_06
	note $26, NOTELEN_09
	note $25, NOTELEN_0C
	note $19, NOTELEN_06
	note $18, NOTELEN_09
	note $18, NOTELEN_03
	note $1F, NOTELEN_0C
	note $18, NOTELEN_09
	note $18, NOTELEN_03
	note $1F, NOTELEN_0C
	note $16, NOTELEN_09
	note $16, NOTELEN_03
	note $1D, NOTELEN_0C
	note $16, NOTELEN_09
	note $16, NOTELEN_03
	note $20, NOTELEN_02
	note $21
	note $22, NOTELEN_08
	note $20, NOTELEN_09
	note $20, NOTELEN_03
	note $1B, NOTELEN_0C
	note $20, NOTELEN_09
	note $20, NOTELEN_03
	note $1B, NOTELEN_06
	note $20
	note $1F, NOTELEN_09
	note $1F, NOTELEN_03
	note $1A, NOTELEN_0C
	note $1F, NOTELEN_09
	note $1F, NOTELEN_03
	note $1A, NOTELEN_06
	note $1F
	note $1D, NOTELEN_09
	note $1D, NOTELEN_03
	note $18, NOTELEN_0C
	note $1D, NOTELEN_09
	note $1D, NOTELEN_03
	note $18, NOTELEN_06
	note $1D
	note $16, NOTELEN_09
	note $16, NOTELEN_03
	note $1D, NOTELEN_0C
	note $16, NOTELEN_09
	note $16, NOTELEN_03
	note $1D, NOTELEN_0C
	note $18, NOTELEN_09
	note $18, NOTELEN_03
	note $1F, NOTELEN_0C
	note $18, NOTELEN_09
	note $18, NOTELEN_03
	note $1F, NOTELEN_0C
	note $18, NOTELEN_09
	note $18, NOTELEN_03
	note $1D
	note $1E
	note $1F, NOTELEN_06
	note $26, NOTELEN_09
	note $24, NOTELEN_03
	note $24, NOTELEN_06
	note $23
	note $16, NOTELEN_09
	note $1D
	note $20, NOTELEN_06
	note $22, NOTELEN_09
	note $1D
	note $1D, NOTELEN_03
	note $1C
	note $1B, NOTELEN_09
	note $16
	note $19, NOTELEN_06
	note $1B, NOTELEN_09
	note $22
	note $1B, NOTELEN_06
	note $1D, NOTELEN_09
	note $18
	note $1B, NOTELEN_06
	note $1D, NOTELEN_09
	note $24
	note $27, NOTELEN_03
	note $28
	note $29, NOTELEN_09
	note $27
	note $24, NOTELEN_06
	note $1D, NOTELEN_09
	note $24
	note $23, NOTELEN_06
	note $22, NOTELEN_09
	note $1D
	note $20, NOTELEN_06
	note $22, NOTELEN_09
	note $1D
	note $1C, NOTELEN_06
	note $1B, NOTELEN_09
	note $16
	note $19, NOTELEN_06
	note $1B, NOTELEN_09
	note $22
	note $1B, NOTELEN_06
	note $20, NOTELEN_09
	note $1B
	note $16, NOTELEN_06
	note $14, NOTELEN_09
	note $1B
	note $22, NOTELEN_06
	note $20, NOTELEN_09
	note $1F
	note $1B, NOTELEN_06
	note $14, NOTELEN_09
	note $13
	note $1B, NOTELEN_06
	note $20, NOTELEN_09
	note $1B
	note $1E, NOTELEN_06
	note $20, NOTELEN_09
	note $27
	note $1B, NOTELEN_03
	note $1A
	note $19, NOTELEN_09
	note $14
	note $17, NOTELEN_06
	note $19, NOTELEN_09
	note $20
	note $19, NOTELEN_06
	note $1B, NOTELEN_09
	note $16
	note $19, NOTELEN_06
	note $1B, NOTELEN_09
	note $22
	note $25, NOTELEN_06
	note $27, NOTELEN_09
	note $25
	note $22, NOTELEN_06
	note $1B, NOTELEN_09
	note $25
	note $22, NOTELEN_06
	note $21, NOTELEN_09
	note $1B
	note $1F, NOTELEN_06
	note $21, NOTELEN_09
	note $27
	note $1F, NOTELEN_06
	note $21, NOTELEN_09
	note $1B
	note $1F, NOTELEN_06
	note $21, NOTELEN_09
	note $1B
	note $21, NOTELEN_06
	note $22, NOTELEN_09
	note $1D
	note $20, NOTELEN_06
	note $22, NOTELEN_09
	note $29
	note $22, NOTELEN_06
	note $1F
	note $1F, NOTELEN_09
	note $1F, NOTELEN_06
	note $1F, NOTELEN_0C
	note $1A, NOTELEN_03
	note $1F, NOTELEN_06
	note $13
	snd_loop SndData_0D_Ch2
SndData_0D_Ch1:
	instrument INSTR_30
	duty_cycle $40
	note $27, NOTELEN_09
	instrument INSTR_33
	duty_cycle $00
	note $33, NOTELEN_03
	note $27
	note $33
	note $27, NOTELEN_06
	note $33, NOTELEN_03
	note $27, NOTELEN_06
	note $33, NOTELEN_03
	note $27, NOTELEN_06
	note $33
	instrument INSTR_30
	duty_cycle $40
	note $25, NOTELEN_09
	instrument INSTR_33
	duty_cycle $00
	note $31, NOTELEN_03
	note $25
	note $31
	note $25, NOTELEN_06
	note $31, NOTELEN_03
	note $2B, NOTELEN_06
	note $31, NOTELEN_03
	note $2B, NOTELEN_06
	note $31
	instrument INSTR_30
	duty_cycle $40
	note $24, NOTELEN_09
	instrument INSTR_33
	duty_cycle $00
	note $33, NOTELEN_03
	note $24
	note $33
	note $24, NOTELEN_06
	note $33, NOTELEN_03
	note $24, NOTELEN_06
	note $33, NOTELEN_03
	note $24, NOTELEN_06
	note $33
	instrument INSTR_30
	duty_cycle $40
	note $22, NOTELEN_09
	instrument INSTR_33
	duty_cycle $00
	note $35, NOTELEN_03
	note $22
	note $32
	note $22, NOTELEN_06
	note $32, NOTELEN_03
	note $26, NOTELEN_06
	note $32, NOTELEN_03
	note $26, NOTELEN_06
	note $35
	instrument INSTR_30
	duty_cycle $40
	note $27, NOTELEN_09
	instrument INSTR_33
	duty_cycle $00
	note $33, NOTELEN_03
	note $27
	note $33
	note $27, NOTELEN_06
	note $33, NOTELEN_03
	note $27, NOTELEN_06
	note $33, NOTELEN_03
	note $27, NOTELEN_06
	note $33
	instrument INSTR_30
	duty_cycle $40
	note $27, NOTELEN_09
	instrument INSTR_33
	duty_cycle $00
	note $33, NOTELEN_03
	note $27
	note $33
	note $27, NOTELEN_06
	instrument INSTR_30
	duty_cycle $40
	note $2B, NOTELEN_09
	note $27
	note $22, NOTELEN_06
	note $22, NOTELEN_0C
	duty_cycle $00
	instrument INSTR_33
	note $3E, NOTELEN_03
	note $3E
	note $3C
	note $3E, NOTELEN_0C
	note $37, NOTELEN_06
	note $3A, NOTELEN_03
	note $37
	note $3A
	note $3C, NOTELEN_09
	note $35, NOTELEN_03
	note $39
	note $3C, NOTELEN_06
	note $3E, NOTELEN_09
	instrument INSTR_30
	volume_add -1
	note $2F, NOTELEN_0C
	note $2F, NOTELEN_06
	note $32, NOTELEN_CUSTOM, $2D
	volume_add -5
	fine_tune_value -1
	note $32, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $30, NOTELEN_18
	note $29
	note $2E, NOTELEN_CUSTOM, $15
	volume_add -5
	fine_tune_value -1
	note $2E, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $2E, NOTELEN_09
	note $30
	note $31, NOTELEN_06
	note $32, NOTELEN_CUSTOM, $15
	volume_add -5
	fine_tune_value -1
	note $32, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $2B, NOTELEN_09
	note $26
	note $32, NOTELEN_06
	note $33, NOTELEN_CUSTOM, $42
	volume_add -5
	instrument INSTR_NONE
	fine_tune_value -1
	note $33, NOTELEN_CUSTOM, $06
	volume_add 5
	instrument INSTR_30
	fine_tune_value 1
	note $30, NOTELEN_CUSTOM, $18
	volume_add -5
	instrument INSTR_NONE
	fine_tune_value -1
	note $30, NOTELEN_CUSTOM, $06
	volume_add 5
	instrument INSTR_NONE
	fine_tune_value 1
	duty_cycle $40
	instrument INSTR_33
	volume_add 1
	note $47, NOTELEN_03
	note $48
	note $47
	note $43, NOTELEN_06
	note $40, NOTELEN_0C
	note $3B, NOTELEN_03
	note $3C
	note $3E
	note $43, NOTELEN_06
	note $41, NOTELEN_09
	note $40, NOTELEN_06
	note $3C, NOTELEN_03
	instrument INSTR_30
	note $37, NOTELEN_CUSTOM, $18
	volume_add -5
	instrument INSTR_NONE
	fine_tune_value -1
	note $37, NOTELEN_CUSTOM, $06
	volume_add 5
	instrument INSTR_30
	fine_tune_value 1
	instrument INSTR_30
	fine_tune -12
	volume_add 2
	note $38, NOTELEN_0C
	instrument INSTR_33
	note $35, NOTELEN_03
	note $35, NOTELEN_06
	note $35, NOTELEN_09
	instrument INSTR_30
	note $30, NOTELEN_06
	note $35
	note $38
	note $37, NOTELEN_0C
	instrument INSTR_33
	note $35, NOTELEN_03
	note $35
	instrument INSTR_30
	note $31, NOTELEN_12
	note $30, NOTELEN_0C
	note $2E
	instrument INSTR_33
	note $33, NOTELEN_03
	note $33, NOTELEN_06
	note $33, NOTELEN_09
	instrument INSTR_30
	note $2E, NOTELEN_06
	note $2E
	note $2B, NOTELEN_CUSTOM, $1E
	note $30, NOTELEN_CUSTOM, $15
	volume_add -5
	fine_tune_value -1
	note $30, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $2C, NOTELEN_0C
	instrument INSTR_33
	note $30, NOTELEN_03
	note $30, NOTELEN_06
	note $30, NOTELEN_09
	instrument INSTR_30
	note $31, NOTELEN_06
	note $35
	note $38
	note $38, NOTELEN_12
	note $35, NOTELEN_18
	note $31, NOTELEN_06
	note $30, NOTELEN_CUSTOM, $0A
	note $35, NOTELEN_01
	note $36
	note $37, NOTELEN_CUSTOM, $0F
	volume_add -5
	fine_tune_value -1
	note $37, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $3A, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $3A, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $38, NOTELEN_06
	note $37, NOTELEN_0C
	note $33, NOTELEN_08
	note $32, NOTELEN_02
	note $31
	instrument INSTR_37
	note $30, NOTELEN_1E
	instrument INSTR_30
	note $2A, NOTELEN_0C
	instrument INSTR_33
	note $36, NOTELEN_03
	note $36, NOTELEN_06
	note $36, NOTELEN_09
	instrument INSTR_30
	note $2A, NOTELEN_06
	note $2A
	note $2A
	note $27, NOTELEN_12
	note $2A
	note $2F, NOTELEN_0C
	note $31
	instrument INSTR_33
	note $31, NOTELEN_03
	note $31, NOTELEN_06
	note $31, NOTELEN_09
	instrument INSTR_30
	note $29, NOTELEN_06
	note $25
	note $29, NOTELEN_CUSTOM, $1E
	note $2C, NOTELEN_CUSTOM, $15
	volume_add -5
	fine_tune_value -1
	note $2C, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $2B, NOTELEN_CUSTOM, $2A
	volume_add -5
	instrument INSTR_NONE
	fine_tune_value -1
	note $2B, NOTELEN_CUSTOM, $06
	volume_add 5
	instrument INSTR_30
	fine_tune_value 1
	note $27, NOTELEN_CUSTOM, $30
	volume_add -5
	instrument INSTR_NONE
	fine_tune_value -1
	note $27, NOTELEN_CUSTOM, $06
	volume_add 5
	instrument INSTR_30
	fine_tune_value 1
	instrument INSTR_33
	fine_tune 12
	note $37, NOTELEN_03
	note $38, NOTELEN_06
	note $33, NOTELEN_09
	note $33, NOTELEN_03
	note $30, NOTELEN_06
	note $30
	note $2C, NOTELEN_03
	note $30
	note $33
	instrument INSTR_NONE
	note $35, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $35, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $35, NOTELEN_CUSTOM, $03
	volume_add -5
	instrument INSTR_NONE
	fine_tune_value -1
	note $35, NOTELEN_CUSTOM, $06
	volume_add 5
	instrument INSTR_NONE
	fine_tune_value 1
	note $35, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $35, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $35, NOTELEN_CUSTOM, $0C
	volume_add -5
	instrument INSTR_NONE
	fine_tune_value -1
	note $35, NOTELEN_CUSTOM, $06
	volume_add 5
	instrument INSTR_NONE
	fine_tune_value 1
	note $00, NOTELEN_09
	volume_add -2
	snd_loop SndData_0D_Ch1
SndData_0D_Ch4:
	snd_call .sub0
	note_ex PRESET_01, NOTELEN_03
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_00
	note_ex PRESET_01
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_00, NOTELEN_06
	note_ex PRESET_02
	note_ex PRESET_00
	snd_call .sub0
	note_ex PRESET_01, NOTELEN_03
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_00
	note_ex PRESET_01
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_00, NOTELEN_06
	note_ex PRESET_02
	note_ex PRESET_00
	snd_call .sub0
	note_ex PRESET_01, NOTELEN_03
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_00
	note_ex PRESET_01
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_00, NOTELEN_06
	note_ex PRESET_02
	note_ex PRESET_00
	snd_call .sub0
	note_ex PRESET_01, NOTELEN_03
	note_ex PRESET_02
	note_ex PRESET_00, NOTELEN_06
	note_ex PRESET_01, NOTELEN_03
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_00, NOTELEN_0C
	note_ex PRESET_01, NOTELEN_03
	note_ex PRESET_02
	note_ex PRESET_00
	note_ex PRESET_00, NOTELEN_06
	snd_loop SndData_0D_Ch4
.sub0:
	set_var iSndChInfo_LoopTimer0, $07
	.sub0loop0:
		note_ex PRESET_01, NOTELEN_03
		note_ex PRESET_02
		note_ex PRESET_02
		note_ex PRESET_02
		note_ex PRESET_00
		note_ex PRESET_02
		note_ex PRESET_02
		note_ex PRESET_02
		note_ex PRESET_01
		note_ex PRESET_02
		note_ex PRESET_02
		note_ex PRESET_00
		note_ex PRESET_01
		note_ex PRESET_02
		note_ex PRESET_00, NOTELEN_06
		snd_loop .sub0loop0, iSndChInfo_LoopTimer0
	snd_ret
