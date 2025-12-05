SndHeader_BGM_09:
	db 4 ; Number of slots
.slot0:
	db SNDSLOT0 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 13 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -12 ; iSndChInfo_NoteIdBase
	db 109 ; iSndChInfo_Speed
	db SNDCH_WAVE ; iSndChInfo_ChId
	dw SndData_09_Ch3 ; Data pointer
	db $80 ; [PLACEHOLDER] ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot1:
	db SNDSLOT1 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 13 ; iSndChInfo_Vol
	db INSTR_2E ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -24 ; iSndChInfo_NoteIdBase
	db 109 ; iSndChInfo_Speed
	db SNDCH_PULSE1 ; iSndChInfo_ChId
	dw SndData_09_Ch1 ; Data pointer
	db $80 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot2:
	db SNDSLOT2 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_2E ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -12 ; iSndChInfo_NoteIdBase
	db 109 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_09_Ch2 ; Data pointer
	db $40 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot3:
	db SNDSLOT3 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db 0 ; iSndChInfo_NoteIdBase
	db 109 ; iSndChInfo_Speed
	db SNDCH_NOISE ; iSndChInfo_ChId
	dw SndData_09_Ch4 ; Data pointer
	db $80 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_09_Ch3:
	wave_id WAVE_09
	instrument INSTR_01
	vibrato VIBRATO_3D
	fine_tune 0
	volume_add -4
	note $24, NOTELEN_01
	volume_add 2
	note $25
	volume_add 1
	note $26
	volume_add 1
	note $27, NOTELEN_09
	note $29, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $29, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $2A, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $2A, NOTELEN_03
	volume_add 5
	fine_tune_value 1
.loop:
	wave_id WAVE_07
	instrument INSTR_2E
	vibrato VIBRATO_NONE
	fine_tune 12
	note $2B, NOTELEN_06
	note $24, NOTELEN_09
	note $2B, NOTELEN_06
	note $29, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $29, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	wave_id WAVE_09
	instrument INSTR_30
	vibrato VIBRATO_34
	fine_tune -12
	note $29, NOTELEN_09
	note $30, NOTELEN_06
	note $29
	wave_id WAVE_07
	instrument INSTR_2E
	vibrato VIBRATO_NONE
	fine_tune 12
	note $29
	note $22, NOTELEN_09
	note $29, NOTELEN_06
	note $27, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $27, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	wave_id WAVE_09
	instrument INSTR_30
	vibrato VIBRATO_34
	fine_tune -12
	note $27, NOTELEN_09
	note $2E, NOTELEN_06
	note $27
	wave_id WAVE_07
	instrument INSTR_2E
	vibrato VIBRATO_NONE
	fine_tune 12
	note $2B
	note $24, NOTELEN_09
	note $2B, NOTELEN_06
	note $29, NOTELEN_03
	wave_id WAVE_09
	instrument INSTR_30
	vibrato VIBRATO_34
	fine_tune -12
	note $2D, NOTELEN_01
	note $2E
	note $2F
	note $30, NOTELEN_09
	note $32, NOTELEN_06
	note $33
	note $35, NOTELEN_03
	vibrato VIBRATO_NONE
	note $34, NOTELEN_01
	volume_add -1
	note $33
	volume_add -1
	note $32
	volume_add -2
	note $31
	volume_add -2
	note $30
	note $2F, NOTELEN_02
	volume_add 6
	wave_id WAVE_07
	instrument INSTR_2E
	vibrato VIBRATO_NONE
	fine_tune 12
	note $30, NOTELEN_01
	note $31, NOTELEN_0C
	note $30, NOTELEN_04
	wave_id WAVE_09
	instrument INSTR_30
	vibrato VIBRATO_34
	fine_tune -12
	note $27, NOTELEN_09
	note $29, NOTELEN_06
	note $2A
	note $2B, NOTELEN_03
	note $2A, NOTELEN_01
	note $29
	note $28
	wave_id WAVE_07
	instrument INSTR_2E
	vibrato VIBRATO_NONE
	fine_tune 12
	note $24, NOTELEN_09
	note $2B, NOTELEN_06
	note $29, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $29, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	wave_id WAVE_09
	instrument INSTR_30
	vibrato VIBRATO_34
	fine_tune -12
	note $29, NOTELEN_09
	note $30, NOTELEN_06
	note $29
	wave_id WAVE_07
	instrument INSTR_2E
	vibrato VIBRATO_NONE
	fine_tune 12
	note $29
	note $22, NOTELEN_09
	note $29, NOTELEN_06
	note $27, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $27, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	wave_id WAVE_09
	instrument INSTR_30
	vibrato VIBRATO_34
	fine_tune -12
	note $27, NOTELEN_09
	note $2E, NOTELEN_06
	note $27
	wave_id WAVE_07
	instrument INSTR_2E
	vibrato VIBRATO_NONE
	fine_tune 12
	note $2B
	note $24, NOTELEN_09
	note $2B, NOTELEN_06
	note $29, NOTELEN_03
	wave_id WAVE_09
	instrument INSTR_30
	vibrato VIBRATO_34
	fine_tune -12
	note $2D, NOTELEN_01
	note $2E
	note $2F
	note $30, NOTELEN_09
	note $32, NOTELEN_06
	note $33
	note $35, NOTELEN_03
	vibrato VIBRATO_NONE
	note $34, NOTELEN_01
	note $33
	note $32
	note $31
	note $30
	note $2F, NOTELEN_02
	wave_id WAVE_07
	instrument INSTR_2E
	vibrato VIBRATO_NONE
	fine_tune 12
	note $30, NOTELEN_01
	note $31, NOTELEN_0C
	note $30, NOTELEN_04
	wave_id WAVE_09
	instrument INSTR_30
	vibrato VIBRATO_34
	fine_tune -12
	note $27, NOTELEN_09
	note $29, NOTELEN_06
	note $2A
	wave_id WAVE_01
	instrument INSTR_2E
	vibrato VIBRATO_33
	fine_tune 0
	note $3E
	note $37, NOTELEN_09
	note $3E, NOTELEN_06
	note $3C, NOTELEN_CUSTOM, $17
	volume_add -5
	fine_tune_value -1
	note $3C, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	wave_id WAVE_08
	instrument INSTR_33
	vibrato VIBRATO_33
	fine_tune 0
	note $3A, NOTELEN_01
	note $3C, NOTELEN_06
	note $35, NOTELEN_09
	note $3C, NOTELEN_06
	note $3A, NOTELEN_CUSTOM, $16
	volume_add -5
	fine_tune_value -1
	note $3A, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	wave_id WAVE_01
	instrument INSTR_2E
	vibrato VIBRATO_33
	fine_tune 0
	note $3C, NOTELEN_01
	note $3D
	note $3E, NOTELEN_06
	note $37, NOTELEN_09
	note $3E, NOTELEN_06
	note $3C, NOTELEN_CUSTOM, $23
	volume_add -5
	fine_tune_value -1
	note $3C, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $3C, NOTELEN_01
	note $3D, NOTELEN_0C
	note $3C
	note $3A
	wave_id WAVE_02
	instrument INSTR_33
	vibrato VIBRATO_33
	fine_tune 0
	note $2E, NOTELEN_06
	note $33, NOTELEN_09
	note $3A, NOTELEN_06
	note $39
	note $33
	note $2D, NOTELEN_03
	note $39, NOTELEN_06
	note $35
	note $38
	note $35, NOTELEN_09
	note $38, NOTELEN_06
	note $37
	note $33
	note $2B, NOTELEN_03
	note $37, NOTELEN_06
	note $33
	note $2E
	note $33, NOTELEN_09
	note $3A, NOTELEN_06
	note $39
	note $33
	note $2D, NOTELEN_03
	note $39, NOTELEN_06
	note $35
	note $38
	note $35, NOTELEN_09
	note $38, NOTELEN_06
	note $37, NOTELEN_03
	wave_id WAVE_09
	instrument INSTR_30
	vibrato VIBRATO_33
	fine_tune 0
	note $24, NOTELEN_01
	note $25
	note $26
	note $27, NOTELEN_09
	note $29, NOTELEN_06
	note $2A
	snd_loop .loop
SndData_09_Ch1:
	duty_cycle $40
	note $30, NOTELEN_01
	note $31
	note $32
	note $33, NOTELEN_09
	note $35, NOTELEN_06
	note $36
.loop:
	duty_cycle $80
	instrument INSTR_2F
	vibrato VIBRATO_3D
	fine_tune 12
	note $3E
	note $37, NOTELEN_09
	note $3E, NOTELEN_06
	note $3C
	duty_cycle $40
	instrument INSTR_30
	vibrato VIBRATO_34
	fine_tune -12
	note $35, NOTELEN_09
	note $3C, NOTELEN_06
	note $35, NOTELEN_CUSTOM, $05
	duty_cycle $80
	instrument INSTR_2F
	vibrato VIBRATO_3D
	fine_tune 12
	note $3A, NOTELEN_01
	note $3C, NOTELEN_06
	note $35, NOTELEN_09
	note $3C, NOTELEN_06
	note $3A
	duty_cycle $40
	instrument INSTR_30
	vibrato VIBRATO_34
	fine_tune -12
	note $33, NOTELEN_09
	note $3A, NOTELEN_06
	note $33, NOTELEN_CUSTOM, $05
	duty_cycle $80
	instrument INSTR_2F
	vibrato VIBRATO_3D
	fine_tune 12
	note $3C, NOTELEN_01
	note $3E, NOTELEN_06
	note $37, NOTELEN_09
	note $3E, NOTELEN_06
	note $3C
	duty_cycle $40
	instrument INSTR_30
	vibrato VIBRATO_34
	fine_tune -12
	note $3C, NOTELEN_09
	note $3E, NOTELEN_06
	note $3F
	note $41, NOTELEN_03
	vibrato VIBRATO_NONE
	note $40, NOTELEN_01
	note $3F
	note $3E
	note $3D
	note $3C
	note $3B, NOTELEN_03
	duty_cycle $80
	instrument INSTR_2F
	vibrato VIBRATO_3D
	fine_tune 12
	note $3C, NOTELEN_01
	note $3D, NOTELEN_0C
	note $3C
	note $3A, NOTELEN_CUSTOM, $0B
	note $3C, NOTELEN_01
	note $3E, NOTELEN_06
	note $37, NOTELEN_09
	note $3E, NOTELEN_06
	note $3C
	duty_cycle $40
	instrument INSTR_30
	vibrato VIBRATO_34
	fine_tune -12
	note $35, NOTELEN_09
	note $3C, NOTELEN_06
	note $35, NOTELEN_CUSTOM, $05
	duty_cycle $80
	instrument INSTR_2F
	vibrato VIBRATO_3D
	fine_tune 12
	note $3A, NOTELEN_01
	note $3C, NOTELEN_06
	note $35, NOTELEN_09
	note $3C, NOTELEN_06
	note $3A
	duty_cycle $40
	instrument INSTR_30
	vibrato VIBRATO_34
	fine_tune -12
	note $33, NOTELEN_09
	note $3A, NOTELEN_06
	note $33, NOTELEN_CUSTOM, $05
	duty_cycle $80
	instrument INSTR_2F
	vibrato VIBRATO_3D
	fine_tune 12
	note $3C, NOTELEN_01
	note $3E, NOTELEN_06
	note $37, NOTELEN_09
	note $3E, NOTELEN_06
	note $3C
	duty_cycle $40
	instrument INSTR_30
	vibrato VIBRATO_34
	fine_tune -12
	note $3C, NOTELEN_09
	note $3E, NOTELEN_06
	note $3F
	note $41, NOTELEN_03
	vibrato VIBRATO_NONE
	note $40, NOTELEN_01
	note $3F
	note $3E
	note $3D
	note $3C
	note $3B, NOTELEN_03
	duty_cycle $80
	instrument INSTR_2F
	vibrato VIBRATO_3D
	fine_tune 12
	note $3C, NOTELEN_01
	note $3D, NOTELEN_0C
	note $3C
	note $3A
	duty_cycle $80
	instrument INSTR_38
	vibrato VIBRATO_3D
	fine_tune -12
	volume_add -8
	note $32, NOTELEN_CUSTOM, $15
	note $2D, NOTELEN_CUSTOM, $1B
	note $2C, NOTELEN_CUSTOM, $15
	note $2B, NOTELEN_CUSTOM, $1B
	note $32, NOTELEN_CUSTOM, $15
	note $2D, NOTELEN_CUSTOM, $1B
	note $2C, NOTELEN_CUSTOM, $15
	note $2B, NOTELEN_CUSTOM, $1B
	volume_add 8
	duty_cycle $00
	instrument INSTR_2F
	vibrato VIBRATO_3D
	fine_tune 0
	note $3A, NOTELEN_06
	note $37, NOTELEN_09
	note $2E, NOTELEN_06
	note $2D
	note $35
	note $39, NOTELEN_03
	note $2D, NOTELEN_06
	note $33
	note $2C
	note $31, NOTELEN_09
	note $2C, NOTELEN_06
	note $2B
	note $31
	note $37, NOTELEN_03
	note $2B, NOTELEN_06
	note $31
	note $3A
	note $37, NOTELEN_09
	note $2E, NOTELEN_06
	note $2D
	note $35
	note $39, NOTELEN_03
	note $2D, NOTELEN_06
	note $33
	note $2C
	note $31, NOTELEN_09
	note $2C, NOTELEN_06
	note $2B, NOTELEN_03
	duty_cycle $40
	instrument INSTR_30
	vibrato VIBRATO_3D
	fine_tune 0
	note $30, NOTELEN_01
	note $31
	note $32
	note $33, NOTELEN_09
	note $35, NOTELEN_06
	note $36
	snd_loop .loop
SndData_09_Ch2:
	note $00, NOTELEN_18
.loop:
	note $18, NOTELEN_09
	note $1A, NOTELEN_0C
	note $2B, NOTELEN_03
	note $1D, NOTELEN_09
	note $1F
	note $23, NOTELEN_06
	note $22, NOTELEN_09
	note $1D
	note $29, NOTELEN_03
	note $1D
	note $1B, NOTELEN_09
	note $2E, NOTELEN_03
	note $25, NOTELEN_06
	note $19
	note $18, NOTELEN_09
	note $1A, NOTELEN_0C
	note $2B, NOTELEN_03
	note $1D, NOTELEN_09
	note $1F
	note $23, NOTELEN_06
	note $22, NOTELEN_09
	note $24
	note $28, NOTELEN_06
	note $27, NOTELEN_03
	note $2E
	note $22
	note $1B
	note $16, NOTELEN_06
	note $17
	note $18, NOTELEN_09
	note $1A, NOTELEN_0C
	note $2B, NOTELEN_03
	note $1D, NOTELEN_09
	note $1F
	note $23, NOTELEN_06
	note $22, NOTELEN_09
	note $1D
	note $29, NOTELEN_03
	note $1D
	note $1B, NOTELEN_09
	note $2E, NOTELEN_03
	note $25, NOTELEN_06
	note $19
	note $18, NOTELEN_09
	note $1A, NOTELEN_0C
	note $2B, NOTELEN_03
	note $1D, NOTELEN_09
	note $1F
	note $23, NOTELEN_06
	note $22, NOTELEN_09
	note $24
	note $28, NOTELEN_06
	note $27, NOTELEN_03
	note $2E
	note $22
	note $1B, NOTELEN_CUSTOM, $0F
	duty_cycle $00
	volume_add -8
	instrument INSTR_38
	note $22, NOTELEN_CUSTOM, $15
	note $24, NOTELEN_CUSTOM, $1B
	note $24, NOTELEN_CUSTOM, $15
	note $22, NOTELEN_CUSTOM, $1B
	note $22, NOTELEN_CUSTOM, $15
	note $24, NOTELEN_CUSTOM, $1B
	note $24, NOTELEN_CUSTOM, $15
	note $22, NOTELEN_CUSTOM, $1B
	volume_add 8
	duty_cycle $40
	instrument INSTR_2E
	note $22, NOTELEN_06
	note $27, NOTELEN_09
	note $2E, NOTELEN_06
	note $2D
	note $27
	note $21, NOTELEN_03
	note $2D, NOTELEN_06
	note $29
	note $2C
	note $29, NOTELEN_09
	note $2C, NOTELEN_06
	note $2B
	note $27
	note $1F, NOTELEN_03
	note $2B, NOTELEN_06
	note $27
	note $22
	note $27, NOTELEN_09
	note $2E, NOTELEN_06
	note $2D
	note $27
	note $21, NOTELEN_03
	note $2D, NOTELEN_06
	note $29
	note $2C
	note $29, NOTELEN_09
	note $2C, NOTELEN_06
	note $2B, NOTELEN_CUSTOM, $0F
	duty_cycle $40
	instrument INSTR_2E
	note $16, NOTELEN_06
	note $17
	snd_loop .loop
SndData_09_Ch4:
	duty_cycle $00
	note $00, NOTELEN_0C
	note_ex PRESET_00, NOTELEN_06
	note_ex PRESET_00, NOTELEN_03
	note_ex PRESET_00
.loop0:
	set_var iSndChInfo_LoopTimer0, $03
	.loop1:
		note_ex PRESET_01, NOTELEN_06
		note_ex PRESET_00, NOTELEN_03
		note_ex PRESET_01
		note_ex PRESET_00, NOTELEN_09
		note_ex PRESET_00, NOTELEN_03
		note_ex PRESET_01
		note_ex PRESET_00, NOTELEN_06
		note_ex PRESET_00, NOTELEN_03
		note_ex PRESET_00, NOTELEN_06
		note_ex PRESET_00, NOTELEN_03
		note_ex PRESET_00
		note_ex PRESET_01, NOTELEN_06
		note_ex PRESET_00, NOTELEN_03
		note_ex PRESET_01
		note_ex PRESET_01
		note_ex PRESET_00, NOTELEN_06
		note_ex PRESET_00, NOTELEN_03
		note_ex PRESET_01
		note_ex PRESET_00, NOTELEN_06
		note_ex PRESET_00, NOTELEN_03
		note_ex PRESET_00, NOTELEN_06
		note_ex PRESET_00, NOTELEN_03
		note_ex PRESET_00
		snd_loop .loop1, iSndChInfo_LoopTimer0
	note_ex PRESET_01, NOTELEN_06
	note_ex PRESET_00, NOTELEN_03
	note_ex PRESET_01
	note_ex PRESET_00, NOTELEN_09
	note_ex PRESET_00, NOTELEN_03
	note_ex PRESET_01
	note_ex PRESET_00, NOTELEN_06
	note_ex PRESET_00, NOTELEN_03
	note_ex PRESET_00, NOTELEN_06
	note_ex PRESET_00, NOTELEN_03
	note_ex PRESET_00
	note_ex PRESET_01, NOTELEN_06
	note_ex PRESET_00, NOTELEN_03
	note_ex PRESET_01
	note_ex PRESET_01
	note_ex PRESET_00, NOTELEN_06
	note_ex PRESET_00, NOTELEN_03
	note_ex PRESET_01
	note_ex PRESET_00, NOTELEN_06
	note_ex PRESET_00, NOTELEN_03
	note_ex PRESET_00, NOTELEN_06
	note_ex PRESET_00, NOTELEN_03
	note_ex PRESET_00
	snd_call .sub0
	note_ex PRESET_01, NOTELEN_06
	note_ex PRESET_00, NOTELEN_03
	note_ex PRESET_01
	note_ex PRESET_00, NOTELEN_09
	note_ex PRESET_00, NOTELEN_03
	note_ex PRESET_01
	note_ex PRESET_00, NOTELEN_06
	note_ex PRESET_00, NOTELEN_03
	note_ex PRESET_00, NOTELEN_06
	note_ex PRESET_00, NOTELEN_03
	note_ex PRESET_00
	note_ex PRESET_01, NOTELEN_06
	note_ex PRESET_00, NOTELEN_03
	note_ex PRESET_01
	note_ex PRESET_01
	note_ex PRESET_00, NOTELEN_06
	note_ex PRESET_00, NOTELEN_03
	note_ex PRESET_01
	note_ex PRESET_00, NOTELEN_06
	note_ex PRESET_00, NOTELEN_03
	note_ex PRESET_00, NOTELEN_06
	note_ex PRESET_00, NOTELEN_03
	note_ex PRESET_00
	note_ex PRESET_01, NOTELEN_06
	note_ex PRESET_00, NOTELEN_03
	note_ex PRESET_01
	note_ex PRESET_00, NOTELEN_09
	note_ex PRESET_00, NOTELEN_03
	note_ex PRESET_01
	note_ex PRESET_00, NOTELEN_06
	note_ex PRESET_00, NOTELEN_03
	note_ex PRESET_00, NOTELEN_06
	note_ex PRESET_00, NOTELEN_03
	note_ex PRESET_00
	note_ex PRESET_01, NOTELEN_06
	note_ex PRESET_00, NOTELEN_03
	note_ex PRESET_01
	note_ex PRESET_01
	note_ex PRESET_00, NOTELEN_06
	note_ex PRESET_00, NOTELEN_03
	note_ex PRESET_01, NOTELEN_09
	note_ex PRESET_01, NOTELEN_03
	note_ex PRESET_00, NOTELEN_06
	note_ex PRESET_00, NOTELEN_03
	note_ex PRESET_00
	snd_loop .loop0
.sub0:
	set_var iSndChInfo_LoopTimer0, $04
	.sub0loop0:
		note_ex PRESET_02
		volume_add -3
		note_ex PRESET_02
		note_ex PRESET_02
		note_ex PRESET_02
		note_ex PRESET_02
		note_ex PRESET_02
		note_ex PRESET_02
		volume_add 3
		note_ex PRESET_02
		volume_add -3
		note_ex PRESET_02
		note_ex PRESET_02
		note_ex PRESET_02
		note_ex PRESET_02
		note_ex PRESET_02
		note_ex PRESET_02
		note_ex PRESET_02
		note_ex PRESET_02
		volume_add 3
		snd_loop .sub0loop0, iSndChInfo_LoopTimer0
	snd_ret
