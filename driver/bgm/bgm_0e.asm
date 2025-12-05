SndHeader_BGM_0E:
	db 4 ; Number of slots
.slot0:
	db SNDSLOT0 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db 12 ; iSndChInfo_NoteIdBase
	db 119 ; iSndChInfo_Speed
	db SNDCH_WAVE ; iSndChInfo_ChId
	dw SndData_0E_Ch3 ; Data pointer
	db WAVE_00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot1:
	db SNDSLOT1 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 8 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db 0 ; iSndChInfo_NoteIdBase
	db 119 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_0E_Ch2 ; Data pointer
	db $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot2:
	db SNDSLOT2 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 12 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -12 ; iSndChInfo_NoteIdBase
	db 119 ; iSndChInfo_Speed
	db SNDCH_PULSE1 ; iSndChInfo_ChId
	dw SndData_0E_Ch1 ; Data pointer
	db $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot3:
	db SNDSLOT3 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db 0 ; iSndChInfo_NoteIdBase
	db 119 ; iSndChInfo_Speed
	db SNDCH_NOISE ; iSndChInfo_ChId
	dw SndData_0E_Ch4 ; Data pointer
	db $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_0E_Ch3:
	wave_id WAVE_0D
	volume_add 5
	snd_call .sub0
	snd_call .sub0
	snd_call .sub0
	snd_call .sub0
	snd_call .sub0
	snd_call .sub0
	snd_call .sub0
	snd_call .sub0
	snd_call .sub1
	snd_call .sub0
	snd_call .sub0
	snd_call .sub0
	snd_call .sub0
	fine_tune -3
	snd_call .sub0
	snd_call .sub0
	snd_call .sub0
	fine_tune 3
	snd_call .sub2
	volume_add -5
	snd_loop SndData_0E_Ch3
.sub0:
	note $10, NOTELEN_CUSTOM, $05
	note $00, NOTELEN_01
	note $09, NOTELEN_CUSTOM, $05
	note $00, NOTELEN_01
	note $0B, NOTELEN_CUSTOM, $05
	note $00, NOTELEN_01
	note $0D, NOTELEN_CUSTOM, $05
	note $00, NOTELEN_01
	note $0E, NOTELEN_CUSTOM, $05
	note $00, NOTELEN_01
	note $10, NOTELEN_CUSTOM, $05
	note $00, NOTELEN_01
	pitch_bend 1
	note $12, NOTELEN_CUSTOM, $05
	note $00, NOTELEN_01
	volume_add 1
	note $10, NOTELEN_0C
	pitch_bend 0
	volume_add -1
	note $09, NOTELEN_CUSTOM, $05
	note $00, NOTELEN_01
	note $0B, NOTELEN_CUSTOM, $05
	note $00, NOTELEN_01
	note $0D, NOTELEN_CUSTOM, $05
	note $00, NOTELEN_01
	note $0E, NOTELEN_CUSTOM, $05
	note $00, NOTELEN_01
	note $10, NOTELEN_CUSTOM, $05
	note $00, NOTELEN_01
	note $12, NOTELEN_CUSTOM, $05
	note $00, NOTELEN_01
	note $0E, NOTELEN_CUSTOM, $05
	note $00, NOTELEN_01
	snd_ret
.sub1:
	note $0D, NOTELEN_09
	note $0D, NOTELEN_03
	note $14, NOTELEN_06
	note $19
	note $0D, NOTELEN_09
	note $0D, NOTELEN_03
	note $14, NOTELEN_06
	note $19
	note $0D, NOTELEN_09
	note $0D, NOTELEN_03
	note $14, NOTELEN_06
	note $19
	note $0D, NOTELEN_09
	note $0D, NOTELEN_03
	note $14, NOTELEN_06
	note $19
	note $0E, NOTELEN_09
	note $0E, NOTELEN_03
	note $15, NOTELEN_06
	note $1A
	note $0E, NOTELEN_09
	note $0E, NOTELEN_03
	note $15, NOTELEN_06
	note $1A
	note $0E, NOTELEN_09
	note $0E, NOTELEN_03
	note $15, NOTELEN_06
	note $1A
	note $0E, NOTELEN_09
	note $0E, NOTELEN_03
	note $15, NOTELEN_06
	note $1A
	note $0D, NOTELEN_09
	note $0D, NOTELEN_03
	note $14, NOTELEN_06
	note $19
	note $0D, NOTELEN_09
	note $0D, NOTELEN_03
	note $14, NOTELEN_06
	note $19
	note $0D, NOTELEN_09
	note $0D, NOTELEN_03
	note $14, NOTELEN_06
	note $19
	note $0D, NOTELEN_09
	note $0D, NOTELEN_03
	note $14, NOTELEN_06
	note $19
	note $0C, NOTELEN_09
	note $0C, NOTELEN_03
	note $13, NOTELEN_06
	note $18
	note $0C, NOTELEN_09
	note $0C, NOTELEN_03
	note $13, NOTELEN_06
	note $18
	note $0B, NOTELEN_09
	note $0B, NOTELEN_03
	note $12, NOTELEN_06
	note $17
	note $0B, NOTELEN_09
	note $0B, NOTELEN_03
	note $12, NOTELEN_06
	note $17
	snd_ret
.sub2:
	note $0D, NOTELEN_03
	note $00, NOTELEN_06
	volume_add -2
	note $0D, NOTELEN_03
	note $00, NOTELEN_06
	volume_add -1
	note $0D, NOTELEN_03
	note $00, NOTELEN_06
	volume_add -1
	note $0D, NOTELEN_03
	note $00, NOTELEN_06
	volume_add -1
	note $0D, NOTELEN_03
	volume_add 1
	note $00, NOTELEN_06
	note $0D, NOTELEN_03
	note $00, NOTELEN_06
	volume_add 1
	note $0D, NOTELEN_03
	note $00, NOTELEN_06
	volume_add 1
	note $0D, NOTELEN_03
	note $00, NOTELEN_06
	volume_add 2
	note $0D, NOTELEN_03
	note $00, NOTELEN_06
	volume_add 1
	note $0D, NOTELEN_03
	note $00, NOTELEN_06
	volume_add 1
	note $0D, NOTELEN_03
	note $00, NOTELEN_03
	volume_add -2
	snd_ret
SndData_0E_Ch2:
	duty_cycle $40
	fine_tune_value -1
	instrument INSTR_5A
	vibrato VIBRATO_60
	volume_add -2
	snd_call .sub0
	snd_call .sub1
	snd_call .sub0
	snd_call .sub2
	snd_call .sub3
	snd_call .sub3
	fine_tune -12
	volume_add 2
	snd_call .sub4
	fine_tune 12
	volume_add -2
	snd_call .sub0
	snd_call .sub1
	snd_call .sub0
	snd_call .sub1
	fine_tune -3
	snd_call .sub0
	snd_call .sub1
	fine_tune 3
	snd_call .sub5
	volume_add 2
	fine_tune_value 1
	snd_loop SndData_0E_Ch2
.sub0:
	note $2D, NOTELEN_03
	note $00, NOTELEN_06
	note $2C, NOTELEN_03
	note $00, NOTELEN_03
	note $2C, NOTELEN_03
	note $00, NOTELEN_06
	note $2C, NOTELEN_03
	note $00, NOTELEN_03
	note $2C, NOTELEN_03
	note $2C
	note $00, NOTELEN_03
	note $2C, NOTELEN_03
	note $00, NOTELEN_06
	note $2D, NOTELEN_03
	note $00, NOTELEN_06
	note $2C, NOTELEN_03
	note $00, NOTELEN_03
	note $2C, NOTELEN_03
	note $00, NOTELEN_06
	note $2C, NOTELEN_03
	note $00, NOTELEN_03
	note $2C, NOTELEN_03
	note $2C
	note $00, NOTELEN_03
	note $2C, NOTELEN_03
	note $00, NOTELEN_03
	note $2C, NOTELEN_03
	snd_ret
.sub1:
	note $28, NOTELEN_03
	note $00, NOTELEN_06
	note $26, NOTELEN_03
	note $00, NOTELEN_03
	note $26, NOTELEN_03
	note $00, NOTELEN_06
	note $26, NOTELEN_03
	note $00, NOTELEN_03
	note $26, NOTELEN_03
	note $26
	note $00, NOTELEN_03
	note $26, NOTELEN_03
	note $00, NOTELEN_06
	note $28, NOTELEN_03
	note $00, NOTELEN_06
	note $26, NOTELEN_03
	note $00, NOTELEN_03
	note $26, NOTELEN_03
	note $00, NOTELEN_06
	note $26, NOTELEN_03
	note $00, NOTELEN_03
	note $26, NOTELEN_03
	note $26
	note $00, NOTELEN_03
	note $26, NOTELEN_03
	note $00, NOTELEN_03
	note $26, NOTELEN_03
	snd_ret
.sub2:
	note $28, NOTELEN_03
	note $00, NOTELEN_06
	note $26, NOTELEN_03
	note $00, NOTELEN_03
	note $26, NOTELEN_03
	note $00, NOTELEN_06
	note $26, NOTELEN_03
	note $00, NOTELEN_03
	note $26, NOTELEN_03
	note $26
	note $00, NOTELEN_03
	note $26, NOTELEN_03
	note $00, NOTELEN_06
	note $28, NOTELEN_03
	note $00, NOTELEN_06
	note $26, NOTELEN_03
	note $00, NOTELEN_03
	note $26, NOTELEN_03
	note $26
	note $00
	note $26
	note $00
	note $26
	note $26
	volume_add -3
	note $25
	note $26
	note $25
	note $21
	volume_add 3
	snd_ret
.sub3:
	note $2D, NOTELEN_03
	volume_add -2
	note $28
	note $00
	volume_add 2
	note $2C, NOTELEN_03
	note $00
	note $2C
	note $00
	volume_add -2
	note $28, NOTELEN_03
	volume_add 2
	note $2C
	note $00
	note $2C
	note $2C
	volume_add -2
	note $28
	volume_add 2
	note $2C
	volume_add -2
	note $28
	note $00
	volume_add 2
	note $2D, NOTELEN_03
	volume_add -2
	note $28
	note $00
	volume_add 2
	note $2C, NOTELEN_03
	note $00
	note $2C
	note $00
	volume_add -2
	note $28, NOTELEN_03
	volume_add 2
	note $2C
	note $00
	note $2C
	note $2C
	volume_add -2
	note $28
	volume_add 2
	note $2C
	volume_add -2
	note $28
	note $00
	volume_add 2
	note $28, NOTELEN_03
	volume_add -2
	note $21
	note $00
	volume_add 2
	note $26, NOTELEN_03
	note $00
	note $26
	note $00
	volume_add -2
	note $21, NOTELEN_03
	volume_add 2
	note $26
	note $00
	note $26, NOTELEN_03
	note $26
	volume_add -2
	note $21
	volume_add 2
	note $26
	volume_add -2
	note $21
	note $00
	volume_add 2
	note $28, NOTELEN_03
	volume_add -2
	note $21
	note $00
	volume_add 2
	note $26, NOTELEN_03
	note $00
	note $26
	note $00
	volume_add -2
	note $21, NOTELEN_03
	volume_add 2
	note $26
	note $00
	note $26
	note $26
	volume_add -2
	note $21
	volume_add 2
	note $26
	volume_add -2
	note $21
	note $00
	volume_add 2
	snd_ret
.sub4:
	volume_add 2
	note $27, NOTELEN_03
	note $2F
	note $2A
	note $27
	note $2F
	note $2A
	note $27
	note $2F
	note $2A
	note $27
	note $2F
	note $2A
	note $27
	note $2F
	note $2A
	note $27
	note $2F
	note $2A
	note $27
	note $2F
	note $2A
	note $27
	note $2F
	note $2A
	note $27
	note $2F
	note $2A
	note $27
	note $2F
	note $2A
	note $27
	note $2F
	note $25
	note $2D
	note $2A
	note $25
	note $2D
	note $2A
	note $25
	note $2D
	note $2A
	note $25
	note $2D
	note $2A
	note $25
	note $2D
	note $2A
	note $25
	note $2D
	note $2A
	note $25
	note $2D
	note $2A
	note $25
	note $2D
	note $2A
	note $25
	note $2D
	note $2A
	note $25
	note $2D
	note $2A
	note $25
	note $2D
	note $27
	note $2F
	note $2A
	note $27
	note $2F
	note $2A
	note $27
	note $2F
	note $2A
	note $27
	note $2F
	note $2A
	note $27
	note $2F
	note $2A
	note $27
	note $2F
	note $2A
	note $27
	note $2F
	note $2A
	note $27
	note $2F
	note $2A
	note $27
	note $2F
	note $2A
	note $27
	note $2F
	note $2A
	note $27
	note $2F
	note $28
	note $2F
	note $2B
	note $28
	note $2F
	note $2B
	note $28
	note $2F
	note $2B
	note $28
	note $2F
	note $2B
	note $28
	note $2F
	note $2B
	note $28
	note $28
	note $31
	note $2D
	note $28
	note $31
	note $2D
	note $28
	note $31
	note $2D
	note $28
	note $31
	note $2D
	volume_add -3
	note $3D
	note $3E
	note $3D
	note $2D
	volume_add 1
	snd_ret
.sub5:
	volume_add 3
	note $2A, NOTELEN_03
	note $00, NOTELEN_06
	note $29, NOTELEN_03
	note $00, NOTELEN_03
	note $29, NOTELEN_03
	note $00, NOTELEN_06
	note $29, NOTELEN_03
	note $00
	note $29, NOTELEN_03
	note $29
	note $00, NOTELEN_03
	note $29, NOTELEN_03
	note $00, NOTELEN_06
	note $2A, NOTELEN_03
	note $00, NOTELEN_06
	note $29, NOTELEN_03
	note $00
	note $29, NOTELEN_03
	note $00, NOTELEN_06
	note $29, NOTELEN_03
	note $00
	note $29, NOTELEN_03
	note $29
	note $00
	note $29, NOTELEN_03
	note $00, NOTELEN_06
	volume_add -3
	note $31, NOTELEN_02
	note $00, NOTELEN_CUSTOM, $07
	instrument INSTR_63
	vibrato VIBRATO_0F
	volume_add -2
	note $2F, NOTELEN_CUSTOM, $57
	volume_add 2
	instrument INSTR_NONE
	vibrato VIBRATO_NONE
	snd_ret
SndData_0E_Ch1:
	duty_cycle $00
	vibrato VIBRATO_5D
	pitch_bend 40
	note $2A, NOTELEN_03
	note $00, NOTELEN_CUSTOM, $06
	volume_add -2
	instrument INSTR_5E
	vibrato VIBRATO_5B
	note $28, NOTELEN_CUSTOM, $57
	vibrato VIBRATO_NONE
	instrument INSTR_NONE
	volume_add 2
	note $25, NOTELEN_03
	note $00, NOTELEN_CUSTOM, $06
	volume_add -2
	instrument INSTR_5E
	vibrato VIBRATO_5B
	note $23, NOTELEN_CUSTOM, $57
	vibrato VIBRATO_NONE
	instrument INSTR_NONE
	volume_add 2
	note $2A, NOTELEN_03
	note $00, NOTELEN_CUSTOM, $06
	volume_add -2
	instrument INSTR_5E
	vibrato VIBRATO_5B
	note $28, NOTELEN_CUSTOM, $57
	vibrato VIBRATO_NONE
	instrument INSTR_NONE
	volume_add 2
	note $25, NOTELEN_03
	note $00, NOTELEN_CUSTOM, $06
	volume_add -2
	instrument INSTR_5E
	vibrato VIBRATO_5B
	note $23, NOTELEN_CUSTOM, $4B
	vibrato VIBRATO_NONE
	volume_add 2
	instrument INSTR_NONE
	duty_cycle $00
	vibrato VIBRATO_5D
	pitch_bend 20
	duty_cycle $40
	note $31, NOTELEN_03
	note $32
	note $31
	note $2D
	note $31, NOTELEN_03
	note $00, NOTELEN_06
	instrument INSTR_5E
	vibrato VIBRATO_5B
	note $2F, NOTELEN_CUSTOM, $4B
	vibrato VIBRATO_NONE
	instrument INSTR_NONE
	note $2C, NOTELEN_03
	note $2D
	note $2C
	note $28
	note $2C, NOTELEN_03
	note $00, NOTELEN_06
	instrument INSTR_5E
	vibrato VIBRATO_5B
	note $2A, NOTELEN_CUSTOM, $4B
	vibrato VIBRATO_NONE
	instrument INSTR_NONE
	note $31, NOTELEN_03
	note $32
	note $31
	note $2D
	note $31, NOTELEN_03
	note $00, NOTELEN_06
	instrument INSTR_5E
	vibrato VIBRATO_5B
	note $2F, NOTELEN_CUSTOM, $4B
	vibrato VIBRATO_NONE
	instrument INSTR_NONE
	note $2C, NOTELEN_03
	note $2D
	note $2C
	note $28
	note $2C, NOTELEN_02
	note $00, NOTELEN_CUSTOM, $07
	instrument INSTR_5E
	vibrato VIBRATO_5B
	note $2A, NOTELEN_CUSTOM, $57
	vibrato VIBRATO_NONE
	instrument INSTR_NONE
	volume_add -4
	pitch_bend 0
	vibrato VIBRATO_5C
	instrument INSTR_5B
	note $36, NOTELEN_CUSTOM, $60
	instrument INSTR_NONE
	vibrato VIBRATO_5B
	note $36, NOTELEN_CUSTOM, $90
	vibrato VIBRATO_NONE
	instrument INSTR_5C
	note $36, NOTELEN_30
	volume_add 5
	instrument INSTR_58
	note $37, NOTELEN_30
	vibrato VIBRATO_61
	instrument INSTR_5F
	note $39, NOTELEN_24
	vibrato VIBRATO_NONE
	instrument INSTR_NONE
	volume_add -1
	pitch_bend 20
	note $31, NOTELEN_03
	note $32
	note $31
	note $2D
	note $31, NOTELEN_03
	note $00, NOTELEN_06
	instrument INSTR_5E
	vibrato VIBRATO_5B
	note $2F, NOTELEN_CUSTOM, $4B
	vibrato VIBRATO_NONE
	instrument INSTR_NONE
	note $2C, NOTELEN_03
	note $2D
	note $2C
	note $28
	note $2C, NOTELEN_03
	note $00, NOTELEN_06
	instrument INSTR_5E
	vibrato VIBRATO_5B
	note $2A, NOTELEN_CUSTOM, $4B
	vibrato VIBRATO_NONE
	instrument INSTR_NONE
	note $31, NOTELEN_03
	note $32
	note $31
	note $2D
	note $31, NOTELEN_02
	note $00, NOTELEN_CUSTOM, $07
	instrument INSTR_5E
	vibrato VIBRATO_5B
	note $2F, NOTELEN_CUSTOM, $4B
	vibrato VIBRATO_NONE
	instrument INSTR_NONE
	note $2C, NOTELEN_03
	note $2D
	note $2C
	note $28
	note $2C, NOTELEN_02
	note $00, NOTELEN_CUSTOM, $07
	instrument INSTR_5E
	vibrato VIBRATO_5B
	note $2A, NOTELEN_CUSTOM, $57
	vibrato VIBRATO_NONE
	instrument INSTR_NONE
	pitch_bend 30
	note $27, NOTELEN_02
	note $00, NOTELEN_CUSTOM, $07
	instrument INSTR_5E
	vibrato VIBRATO_5B
	note $25, NOTELEN_CUSTOM, $57
	vibrato VIBRATO_NONE
	instrument INSTR_NONE
	note $22, NOTELEN_02
	note $00, NOTELEN_CUSTOM, $07
	instrument INSTR_5E
	vibrato VIBRATO_5B
	note $20, NOTELEN_CUSTOM, $57
	vibrato VIBRATO_NONE
	instrument INSTR_NONE
	note $27, NOTELEN_02
	note $00, NOTELEN_CUSTOM, $07
	instrument INSTR_5E
	vibrato VIBRATO_5B
	note $25, NOTELEN_CUSTOM, $57
	vibrato VIBRATO_NONE
	instrument INSTR_NONE
	note $22, NOTELEN_02
	note $00, NOTELEN_CUSTOM, $07
	vibrato VIBRATO_60
	volume_add -5
	instrument INSTR_5B
	note $20, NOTELEN_CUSTOM, $57
	volume_add 5
	vibrato VIBRATO_NONE
	pitch_bend 0
	snd_loop SndData_0E_Ch1
SndData_0E_Ch4:
	snd_call .sub0
	snd_call .sub1
	snd_call .sub2
	snd_call .sub1
	snd_call .sub1
	snd_call .sub1
	snd_call .sub1
	snd_call .sub1
	snd_call .sub1
	snd_call .sub1
	snd_call .sub3
	snd_call .sub4
	snd_call .sub4
	snd_call .sub4
	snd_call .sub4
	snd_call .sub4
	snd_call .sub4
	snd_call .sub4
	snd_call .sub4
	snd_call .sub1
	snd_call .sub1
	snd_call .sub1
	snd_loop SndData_0E_Ch4
.sub0:
	note_ex PRESET_01, NOTELEN_0C
	note_ex PRESET_01
	note_ex PRESET_01, NOTELEN_09
	note_ex PRESET_00, NOTELEN_03
	note_ex PRESET_00, NOTELEN_0C
	note_ex PRESET_01
	note_ex PRESET_01
	note_ex PRESET_01, NOTELEN_09
	note_ex PRESET_00, NOTELEN_03
	note_ex PRESET_00, NOTELEN_0C
	note_ex PRESET_01
	note_ex PRESET_01
	note_ex PRESET_01, NOTELEN_09
	note_ex PRESET_00, NOTELEN_03
	note_ex PRESET_00, NOTELEN_0C
	note_ex PRESET_01, NOTELEN_09
	note_ex PRESET_00, NOTELEN_03
	note_ex PRESET_01, NOTELEN_06
	note_ex PRESET_00
	note_ex PRESET_01, NOTELEN_09
	note_ex PRESET_00, NOTELEN_03
	note_ex PRESET_00, NOTELEN_06
	note_ex PRESET_02
	snd_ret
.sub1:
	note_ex PRESET_01, NOTELEN_09
	note_ex PRESET_00, NOTELEN_03
	note_ex PRESET_01, NOTELEN_0C
	note_ex PRESET_01, NOTELEN_09
	note_ex PRESET_00, NOTELEN_03
	note_ex PRESET_00, NOTELEN_06
	note_ex PRESET_02
	note_ex PRESET_01, NOTELEN_09
	note_ex PRESET_00, NOTELEN_03
	note_ex PRESET_01, NOTELEN_0C
	note_ex PRESET_01, NOTELEN_09
	note_ex PRESET_00, NOTELEN_03
	note_ex PRESET_00, NOTELEN_06
	note_ex PRESET_02
	snd_ret
.sub2:
	note_ex PRESET_01, NOTELEN_09
	note_ex PRESET_00, NOTELEN_03
	note_ex PRESET_01, NOTELEN_0C
	note_ex PRESET_01, NOTELEN_09
	note_ex PRESET_00, NOTELEN_03
	note_ex PRESET_00, NOTELEN_06
	note_ex PRESET_02
	note_ex PRESET_01, NOTELEN_09
	note_ex PRESET_00, NOTELEN_03
	note_ex PRESET_01, NOTELEN_06
	note_ex PRESET_00
	note_ex PRESET_01, NOTELEN_09
	note_ex PRESET_00, NOTELEN_03
	note_ex PRESET_00, NOTELEN_06
	note_ex PRESET_02, NOTELEN_03
	note_ex PRESET_00
	snd_ret
.sub3:
	note_ex PRESET_01, NOTELEN_03
	note $00, NOTELEN_06
	note_ex PRESET_00, NOTELEN_03
	note_ex PRESET_01
	note $00, NOTELEN_09
	note_ex PRESET_01, NOTELEN_03
	note $00, NOTELEN_06
	note_ex PRESET_00, NOTELEN_03
	note_ex PRESET_00
	note $00
	note_ex PRESET_02
	note $00
	note_ex PRESET_01
	note $00, NOTELEN_06
	note_ex PRESET_00, NOTELEN_03
	note_ex PRESET_01
	note $00
	note_ex PRESET_00
	note_ex PRESET_00
	note_ex PRESET_01
	note $00, NOTELEN_06
	note_ex PRESET_00, NOTELEN_03
	note_ex PRESET_00
	note $00
	note_ex PRESET_02
	note_ex PRESET_00
	snd_ret
.sub4:
	note_ex PRESET_01
	note $00, NOTELEN_06
	note_ex PRESET_00, NOTELEN_03
	note_ex PRESET_01
	note $00
	note_ex PRESET_00
	note $00
	note_ex PRESET_01
	note $00, NOTELEN_06
	note_ex PRESET_00, NOTELEN_03
	note_ex PRESET_00
	note $00
	note_ex PRESET_02
	note $00
	snd_ret
