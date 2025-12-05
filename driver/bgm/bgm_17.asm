SndHeader_BGM_17:
	db 4 ; Number of slots
.slot0:
	db SNDSLOT0 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 11 ; iSndChInfo_Vol
	db INSTR_3D ; iSndChInfo_Instrument
	db VIBRATO_35 ; iSndChInfo_Vibrato
	db -11 ; iSndChInfo_NoteIdBase
	db 107 ; iSndChInfo_Speed
	db SNDCH_PULSE1 ; iSndChInfo_ChId
	dw SndData_17_Ch1 ; Data pointer
	db $80 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot1:
	db SNDSLOT1 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 13 ; iSndChInfo_Vol
	db INSTR_3D ; iSndChInfo_Instrument
	db VIBRATO_35 ; iSndChInfo_Vibrato
	db -11 ; iSndChInfo_NoteIdBase
	db 107 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_17_Ch2 ; Data pointer
	db $80 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot2:
	db SNDSLOT2 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_33 ; iSndChInfo_Instrument
	db VIBRATO_35 ; iSndChInfo_Vibrato
	db 1 ; iSndChInfo_NoteIdBase
	db 107 ; iSndChInfo_Speed
	db SNDCH_WAVE ; iSndChInfo_ChId
	dw SndData_17_Ch3 ; Data pointer
	db $80 ; [PLACEHOLDER] ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot3:
	db SNDSLOT3 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db 1 ; iSndChInfo_NoteIdBase
	db 107 ; iSndChInfo_Speed
	db SNDCH_NOISE ; iSndChInfo_ChId
	dw SndData_17_Ch4 ; Data pointer
	db $80 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_17_Ch1:
	duty_cycle $80
	instrument INSTR_30
	note $00, NOTELEN_06
	note $3A, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $3A, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $39, NOTELEN_03
	note $37, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $37, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $35, NOTELEN_09
	note $33, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $33, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $32, NOTELEN_06
	note $33
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
	note $00, NOTELEN_03
	note $2E, NOTELEN_09
	note $2B, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $2B, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $2E, NOTELEN_06
	note $30
	note $32
	note $33, NOTELEN_03
	note $32, NOTELEN_06
	note $2E, NOTELEN_03
	note $2B
	note $2E, NOTELEN_09
	note $2B, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $2B, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $2E, NOTELEN_06
	note $30
	note $32
	note $33, NOTELEN_03
	note $35, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $35, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $37, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $37, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $2E, NOTELEN_CUSTOM, $1B
	volume_add -5
	fine_tune_value -1
	note $2E, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $00, NOTELEN_03
	note $3A, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $3A, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $39, NOTELEN_03
	note $37, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $37, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $35, NOTELEN_09
	note $33, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $33, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $32, NOTELEN_06
	note $33
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
	note $00, NOTELEN_03
	note $2E, NOTELEN_09
	note $2B, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $2B, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $2E, NOTELEN_06
	note $30
	note $32
	note $33, NOTELEN_03
	note $32, NOTELEN_06
	note $2E, NOTELEN_03
	note $2B
	note $2E, NOTELEN_09
	note $2B, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $2B, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $36, NOTELEN_01
	note $37, NOTELEN_CUSTOM, $05
	instrument INSTR_35
	note $35, NOTELEN_CUSTOM, $33
	volume_add -5
	fine_tune_value -1
	note $35, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	duty_cycle $40
	instrument INSTR_3D
	note $26, NOTELEN_09
	note $22
	note $1F, NOTELEN_06
	note $22, NOTELEN_18
	note $24, NOTELEN_09
	note $26
	note $27, NOTELEN_04
	note $26, NOTELEN_01
	note $25
	note $24, NOTELEN_18
	note $1B
	note $1F
	note $1D, NOTELEN_09
	note $1F
	note $21, NOTELEN_06
	note $22, NOTELEN_0C
	note $24
	note $26, NOTELEN_09
	note $27
	note $29, NOTELEN_06
	note $2B, NOTELEN_09
	note $2D
	note $2E, NOTELEN_06
	note $30, NOTELEN_12
	note $30, NOTELEN_02
	note $2F
	note $2E
	note $2D, NOTELEN_18
	note $2E, NOTELEN_CUSTOM, $4E
	note $30, NOTELEN_06
	note $32
	note $33
	snd_loop SndData_17_Ch1
SndData_17_Ch2:
	duty_cycle $01
	note $18, NOTELEN_03
	note $18, NOTELEN_02
	note $00, NOTELEN_04
	note $13, NOTELEN_09
	note $18, NOTELEN_03
	note $00, NOTELEN_09
	note $18, NOTELEN_03
	note $18
	note $00
	note $13
	note $18, NOTELEN_06
	note $1A, NOTELEN_09
	note $15, NOTELEN_06
	note $1A, NOTELEN_02
	note $00, NOTELEN_04
	note $13, NOTELEN_0C
	note $1A, NOTELEN_01
	note $00, NOTELEN_02
	note $1F, NOTELEN_01
	note $00, NOTELEN_02
	note $1A, NOTELEN_01
	note $00, NOTELEN_02
	note $13, NOTELEN_06
	note $18, NOTELEN_03
	note $18, NOTELEN_02
	note $00, NOTELEN_01
	note $18
	note $00, NOTELEN_02
	note $13, NOTELEN_06
	note $13, NOTELEN_03
	note $18
	note $00, NOTELEN_09
	note $18, NOTELEN_01
	note $00, NOTELEN_02
	note $18, NOTELEN_06
	note $13, NOTELEN_03
	note $18, NOTELEN_06
	note $1A, NOTELEN_03
	note $00
	note $1A, NOTELEN_06
	note $1D, NOTELEN_03
	note $1E
	note $00
	note $1F
	note $00
	note $1A
	note $13, NOTELEN_06
	note $1F
	note $19
	note $18, NOTELEN_03
	note $18, NOTELEN_02
	note $00, NOTELEN_01
	note $16
	note $00, NOTELEN_02
	note $13, NOTELEN_06
	note $00, NOTELEN_03
	note $18
	note $00, NOTELEN_09
	note $18, NOTELEN_03
	note $18
	note $00
	note $13, NOTELEN_06
	note $18, NOTELEN_03
	note $1A, NOTELEN_06
	note $00, NOTELEN_03
	note $15, NOTELEN_06
	note $1A, NOTELEN_02
	note $00, NOTELEN_04
	note $13, NOTELEN_0C
	note $1A, NOTELEN_01
	note $00, NOTELEN_02
	note $1F, NOTELEN_01
	note $00, NOTELEN_02
	note $1A, NOTELEN_01
	note $00, NOTELEN_02
	note $13, NOTELEN_06
	note $18, NOTELEN_03
	note $18, NOTELEN_02
	note $00, NOTELEN_01
	note $18
	note $00, NOTELEN_02
	note $13, NOTELEN_06
	note $13, NOTELEN_03
	note $18
	note $00, NOTELEN_09
	note $18, NOTELEN_01
	note $00, NOTELEN_02
	note $18, NOTELEN_06
	note $13, NOTELEN_03
	note $18, NOTELEN_06
	note $18, NOTELEN_03
	note $00
	note $18, NOTELEN_06
	note $1B, NOTELEN_03
	note $1C
	note $00
	note $1D
	note $00
	note $18
	note $11, NOTELEN_06
	note $1D, NOTELEN_0C
	note $1B, NOTELEN_09
	note $22, NOTELEN_06
	note $27
	note $22, NOTELEN_03
	note $29, NOTELEN_0C
	note $27
	note $1A, NOTELEN_09
	note $21, NOTELEN_06
	note $26
	note $21, NOTELEN_03
	note $29, NOTELEN_0C
	note $26
	note $18, NOTELEN_09
	note $1A, NOTELEN_06
	note $1B
	note $1D, NOTELEN_03
	note $00
	note $18
	note $11, NOTELEN_06
	note $1D
	note $18
	note $16, NOTELEN_02
	note $00, NOTELEN_04
	note $16, NOTELEN_06
	note $18, NOTELEN_02
	note $00, NOTELEN_04
	note $18, NOTELEN_06
	note $19, NOTELEN_02
	note $00, NOTELEN_04
	note $19, NOTELEN_06
	note $1A, NOTELEN_02
	note $00, NOTELEN_04
	note $1A, NOTELEN_06
	note $1B, NOTELEN_09
	note $22, NOTELEN_06
	note $27
	note $22, NOTELEN_03
	note $29, NOTELEN_0C
	note $27
	note $1A, NOTELEN_09
	note $21, NOTELEN_06
	note $26
	note $21, NOTELEN_03
	note $29, NOTELEN_0C
	note $26
	note $18, NOTELEN_30
	note $18, NOTELEN_03
	note $00
	note $18, NOTELEN_06
	note $18, NOTELEN_03
	note $1B
	note $1C
	note $1D
	note $00
	note $18
	note $11, NOTELEN_06
	note $1D
	note $11
	snd_loop SndData_17_Ch2
SndData_17_Ch3:
	wave_id WAVE_09
	instrument INSTR_42
	volume_add -2
	note $00, NOTELEN_0C
	note $27, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $27, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $22, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $22, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $29, NOTELEN_09
	note $27, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $27, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $00, NOTELEN_09
	note $00, NOTELEN_0C
	note $29, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $29, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $24, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $24, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $2B, NOTELEN_09
	note $29, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $29, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $00, NOTELEN_09
	note $00, NOTELEN_0C
	note $27, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $27, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $22, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $22, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $29, NOTELEN_09
	note $27, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $27, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $00, NOTELEN_09
	note $24, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $24, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $00, NOTELEN_06
	note $24, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $24, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $00, NOTELEN_03
	note $26, NOTELEN_CUSTOM, $18
	volume_add -5
	fine_tune_value -1
	note $26, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $00, NOTELEN_0C
	note $27, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $27, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $22, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $22, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $29, NOTELEN_09
	note $27, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $27, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $00, NOTELEN_09
	note $00, NOTELEN_0C
	note $29, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $29, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $24, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $24, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $2B, NOTELEN_09
	note $29, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $29, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $00, NOTELEN_09
	note $00, NOTELEN_0C
	note $27, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $27, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $22, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $22, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $29, NOTELEN_09
	note $27, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $27, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $00, NOTELEN_09
	note $27, NOTELEN_18
	wave_id WAVE_08
	instrument INSTR_30
	volume_add 2
	note $30, NOTELEN_09
	note $32
	note $33, NOTELEN_06
	note $35, NOTELEN_CUSTOM, $21
	volume_add -5
	fine_tune_value -1
	note $35, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $37, NOTELEN_0C
	note $35, NOTELEN_1E
	note $33, NOTELEN_06
	note $32
	note $33
	note $32, NOTELEN_09
	note $2E
	note $2B, NOTELEN_06
	note $2E, NOTELEN_0C
	note $30
	note $32, NOTELEN_CUSTOM, $1E
	volume_add -5
	instrument INSTR_NONE
	fine_tune_value -1
	note $32, NOTELEN_CUSTOM, $06
	volume_add 5
	instrument INSTR_30
	fine_tune_value 1
	note $32, NOTELEN_06
	note $33
	note $35, NOTELEN_1E
	note $37, NOTELEN_06
	note $32
	note $37
	note $35, NOTELEN_CUSTOM, $1B
	volume_add -5
	fine_tune_value -1
	note $35, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $33, NOTELEN_06
	note $32
	note $33
	note $35, NOTELEN_CUSTOM, $5A
	volume_add -5
	instrument INSTR_NONE
	fine_tune_value -1
	note $35, NOTELEN_CUSTOM, $06
	volume_add 5
	instrument INSTR_NONE
	fine_tune_value 1
	snd_loop SndData_17_Ch3
SndData_17_Ch4:
	duty_cycle $00
	note_ex PRESET_01, NOTELEN_03
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_01, NOTELEN_02
	note_ex PRESET_00, NOTELEN_CUSTOM, $07
	note_ex PRESET_00, NOTELEN_03
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_01, NOTELEN_06
	note_ex PRESET_01
	note_ex PRESET_00
	note_ex PRESET_02, NOTELEN_03
	note_ex PRESET_01
	note_ex PRESET_02, NOTELEN_06
	note_ex PRESET_01
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_01
	note_ex PRESET_00
	note_ex PRESET_02, NOTELEN_03
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_01, NOTELEN_06
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_01
	note_ex PRESET_00
	note_ex PRESET_02, NOTELEN_03
	note_ex PRESET_01
	note_ex PRESET_02, NOTELEN_06
	note_ex PRESET_01
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_01
	note_ex PRESET_00
	note_ex PRESET_02, NOTELEN_03
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_01, NOTELEN_06
	note_ex PRESET_01
	note_ex PRESET_00
	note_ex PRESET_02, NOTELEN_03
	note_ex PRESET_01
	note_ex PRESET_02, NOTELEN_06
	note_ex PRESET_01
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_01
	note_ex PRESET_00
	note_ex PRESET_02, NOTELEN_03
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_01, NOTELEN_06
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_01
	note_ex PRESET_00
	note_ex PRESET_02, NOTELEN_03
	note_ex PRESET_01
	note_ex PRESET_02, NOTELEN_06
	note_ex PRESET_01
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_01, NOTELEN_03
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_01, NOTELEN_02
	note_ex PRESET_00, NOTELEN_CUSTOM, $07
	note_ex PRESET_00, NOTELEN_03
	note_ex PRESET_00
	note_ex PRESET_00
	snd_loop SndData_17_Ch4
