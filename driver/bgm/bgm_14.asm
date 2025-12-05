SndHeader_BGM_14:
	db 4 ; Number of slots
.slot0:
	db SNDSLOT0 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_35 ; iSndChInfo_Vibrato
	db -2 ; iSndChInfo_NoteIdBase
	db 108 ; iSndChInfo_Speed
	db SNDCH_WAVE ; iSndChInfo_ChId
	dw SndData_14_Ch3 ; Data pointer
	db $80 ; [PLACEHOLDER] ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot1:
	db SNDSLOT1 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 12 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_35 ; iSndChInfo_Vibrato
	db -14 ; iSndChInfo_NoteIdBase
	db 108 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_14_Ch2 ; Data pointer
	db $80 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot2:
	db SNDSLOT2 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 8 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_35 ; iSndChInfo_Vibrato
	db -14 ; iSndChInfo_NoteIdBase
	db 108 ; iSndChInfo_Speed
	db SNDCH_PULSE1 ; iSndChInfo_ChId
	dw SndData_14_Ch1 ; Data pointer
	db $80 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot3:
	db SNDSLOT3 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db 0 ; iSndChInfo_NoteIdBase
	db 108 ; iSndChInfo_Speed
	db SNDCH_NOISE ; iSndChInfo_ChId
	dw SndData_14_Ch4 ; Data pointer
	db $80 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_14_Ch3:
	wave_id WAVE_00
	instrument INSTR_34
	volume_add -4
	note $36, NOTELEN_1E
	note $2B, NOTELEN_06
	note $36
	note $32, NOTELEN_CUSTOM, $1E
	note $34, NOTELEN_18
	note $32, NOTELEN_1E
	note $2F, NOTELEN_06
	note $32
	note $28, NOTELEN_0C
	instrument INSTR_33
	volume_add -2
	note $4A, NOTELEN_02
	note $49
	note $47
	note $45
	note $43
	note $42
	note $40
	note $3E
	note $3D
	note $3B
	note $39
	note $37
	note $36
	note $34
	note $32
	note $31
	note $2F
	note $2D
	note $2B
	note $2A
	note $28
	volume_add 2
	note $28, NOTELEN_0C
	wave_id WAVE_0E
	instrument INSTR_34
	volume_add 2
	note $39, NOTELEN_12
	note $37, NOTELEN_0C
	note $36, NOTELEN_CUSTOM, $24
	volume_add -5
	instrument INSTR_NONE
	fine_tune_value -1
	note $36, NOTELEN_CUSTOM, $06
	volume_add 5
	instrument INSTR_34
	fine_tune_value 1
	note $34, NOTELEN_06
	note $36, NOTELEN_CUSTOM, $21
	volume_add -5
	fine_tune_value -1
	note $36, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $30, NOTELEN_0C
	note $2F, NOTELEN_CUSTOM, $18
	volume_add -5
	instrument INSTR_NONE
	fine_tune_value -1
	note $2F, NOTELEN_CUSTOM, $06
	volume_add 5
	instrument INSTR_34
	fine_tune_value 1
	wave_id WAVE_05
	instrument INSTR_33
	note $3B, NOTELEN_0C
	note $39
	note $37
	wave_id WAVE_0E
	instrument INSTR_34
	note $3B, NOTELEN_12
	note $39, NOTELEN_0C
	note $37, NOTELEN_CUSTOM, $27
	volume_add -5
	fine_tune_value -1
	note $37, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $36, NOTELEN_06
	note $37, NOTELEN_CUSTOM, $1E
	volume_add -5
	instrument INSTR_NONE
	fine_tune_value -1
	note $37, NOTELEN_CUSTOM, $06
	volume_add 5
	instrument INSTR_34
	fine_tune_value 1
	note $32, NOTELEN_0C
	note $31, NOTELEN_CUSTOM, $33
	volume_add -5
	fine_tune_value -1
	note $31, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	wave_id WAVE_05
	instrument INSTR_33
	volume_add 2
	note $31, NOTELEN_06
	note $31
	note $31, NOTELEN_12
	wave_id WAVE_09
	instrument INSTR_NONE
	note $2D, NOTELEN_06
	note $39
	note $36, NOTELEN_CUSTOM, $18
	volume_add -5
	instrument INSTR_NONE
	fine_tune_value -1
	note $36, NOTELEN_CUSTOM, $06
	volume_add 5
	instrument INSTR_NONE
	fine_tune_value 1
	note $34, NOTELEN_0C
	note $32
	wave_id WAVE_05
	instrument INSTR_33
	note $31, NOTELEN_06
	note $31
	note $31, NOTELEN_12
	wave_id WAVE_09
	instrument INSTR_NONE
	note $32, NOTELEN_06
	note $2F
	note $32, NOTELEN_CUSTOM, $18
	volume_add -5
	instrument INSTR_NONE
	fine_tune_value -1
	note $32, NOTELEN_CUSTOM, $06
	volume_add 5
	instrument INSTR_NONE
	fine_tune_value 1
	note $34, NOTELEN_0C
	note $32
	wave_id WAVE_05
	instrument INSTR_33
	note $31, NOTELEN_06
	note $31
	note $31, NOTELEN_12
	wave_id WAVE_09
	instrument INSTR_NONE
	note $2D, NOTELEN_06
	note $39
	note $36, NOTELEN_CUSTOM, $18
	volume_add -5
	instrument INSTR_NONE
	fine_tune_value -1
	note $36, NOTELEN_CUSTOM, $06
	volume_add 5
	instrument INSTR_NONE
	fine_tune_value 1
	note $34, NOTELEN_0C
	note $32
	wave_id WAVE_05
	instrument INSTR_33
	note $31, NOTELEN_06
	note $31
	note $31, NOTELEN_12
	wave_id WAVE_09
	instrument INSTR_NONE
	note $32, NOTELEN_06
	note $2F
	note $32, NOTELEN_CUSTOM, $30
	volume_add -5
	instrument INSTR_NONE
	fine_tune_value -1
	note $32, NOTELEN_CUSTOM, $06
	volume_add 5
	instrument INSTR_NONE
	fine_tune_value 1
	wave_id WAVE_00
	instrument INSTR_33
	volume_add -2
	fade SSF_FADEOUT, 0, 12
	note $45, NOTELEN_02
	note $42
	note $3E
	note $3D
	note $39
	note $36
	note $32
	note $31
	note $2D
	note $2A
	note $26
	note $25
	note $26
	note $2A
	note $2D
	note $31
	note $32
	note $36
	note $32
	note $31
	note $2D
	note $2A
	note $26
	note $25
	note $21
	note $1E
	note $1A
	note $19
	note $1A
	note $1E
	note $21
	note $25
	note $26
	note $2A
	note $26
	note $25
	note $21
	note $1E
	note $1A
	note $19
	note $15
	note $12
	note $0E, NOTELEN_0C
	chan_stop ECH_SAVE
SndData_14_Ch2:
	duty_cycle $40
	instrument INSTR_34
	note $15, NOTELEN_12
	note $15, NOTELEN_06
	note $1C, NOTELEN_12
	note $15, NOTELEN_0C
	note $15, NOTELEN_0C
	note $15, NOTELEN_06
	note $1C, NOTELEN_0C
	note $1C
	note $15, NOTELEN_12
	note $15, NOTELEN_06
	note $1C, NOTELEN_12
	note $15, NOTELEN_0C
	note $15, NOTELEN_0C
	note $15, NOTELEN_06
	note $1C, NOTELEN_0C
	note $1C
	note $1A, NOTELEN_12
	note $1A, NOTELEN_06
	note $21, NOTELEN_12
	note $1A, NOTELEN_0C
	note $1A, NOTELEN_0C
	note $1A, NOTELEN_06
	note $21, NOTELEN_0C
	note $21
	note $1E, NOTELEN_12
	note $1E, NOTELEN_06
	note $24, NOTELEN_12
	note $23, NOTELEN_0C
	note $23, NOTELEN_0C
	note $23, NOTELEN_06
	note $1E, NOTELEN_0C
	note $1E
	note $1C, NOTELEN_12
	note $1C, NOTELEN_06
	note $23, NOTELEN_12
	note $1C, NOTELEN_0C
	note $1C, NOTELEN_0C
	note $1C, NOTELEN_06
	note $23, NOTELEN_0C
	note $23
	note $1C, NOTELEN_12
	note $1C, NOTELEN_06
	note $23, NOTELEN_12
	note $21, NOTELEN_0C
	note $21, NOTELEN_0C
	note $15, NOTELEN_06
	note $15, NOTELEN_03
	note $21
	note $17, NOTELEN_06
	note $18
	note $19
	set_var iSndChInfo_LoopTimer0, $02
	.loop:
		note $1A, NOTELEN_0C
		note $1A, NOTELEN_09
		note $1A, NOTELEN_03
		note $1E, NOTELEN_06
		note $1F
		note $20
		note $21
		note $00
		note $21
		note $21, NOTELEN_09
		note $21, NOTELEN_03
		note $21, NOTELEN_06
		note $1C
		note $1E
		note $21
		snd_loop .loop, iSndChInfo_LoopTimer0
	note $1A, NOTELEN_0C
	note $1A, NOTELEN_09
	note $1A, NOTELEN_03
	note $1E, NOTELEN_06
	note $1F
	note $20
	note $21
	note $00
	note $21
	note $21, NOTELEN_09
	note $21, NOTELEN_03
	note $21
	note $2D
	note $1C, NOTELEN_06
	note $1E
	note $21
	note $1A, NOTELEN_0C
	note $1A, NOTELEN_09
	note $1A, NOTELEN_03
	note $1E, NOTELEN_06
	note $1F
	note $20
	note $21
	note $00
	note $21
	note $21, NOTELEN_09
	note $21, NOTELEN_03
	note $26
	note $23, NOTELEN_06
	note $21
	note $1E
	note $1C, NOTELEN_03
	instrument INSTR_36
	note $1A, NOTELEN_CUSTOM, $60
	chan_stop
SndData_14_Ch1:
	duty_cycle $80
	instrument INSTR_34
	fine_tune_value -2
	volume_add -2
	vibrato VIBRATO_33
	note $00, NOTELEN_04
	note $36, NOTELEN_1E
	note $2B, NOTELEN_06
	note $36
	note $32, NOTELEN_CUSTOM, $1E
	note $34, NOTELEN_18
	note $32, NOTELEN_1E
	note $2F, NOTELEN_06
	note $32
	note $28, NOTELEN_0C
	duty_cycle $80
	instrument INSTR_33
	volume_add -2
	note $4A, NOTELEN_02
	note $49
	note $47
	note $45
	note $43
	note $42
	note $40
	note $3E
	note $3D
	note $3B
	note $39
	note $37
	note $36
	note $34
	note $32
	note $31
	note $2F
	note $2D
	note $2B
	note $2A, NOTELEN_01
	duty_cycle $40
	instrument INSTR_30
	fine_tune_value 2
	volume_add 4
	vibrato VIBRATO_33
	note $2D, NOTELEN_2A
	note $2D, NOTELEN_CUSTOM, $33
	volume_add -5
	fine_tune_value -1
	note $2D, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $2D, NOTELEN_2A
	note $2B, NOTELEN_CUSTOM, $33
	volume_add -5
	fine_tune_value -1
	note $2B, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $2B, NOTELEN_2A
	note $2B, NOTELEN_CUSTOM, $33
	volume_add -5
	fine_tune_value -1
	note $2B, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $2B, NOTELEN_2A
	note $2B, NOTELEN_CUSTOM, $33
	volume_add -5
	fine_tune_value -1
	note $2B, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	duty_cycle $00
	volume_add -2
	note $2A, NOTELEN_2A
	note $2B, NOTELEN_CUSTOM, $36
	note $2D, NOTELEN_2A
	note $2F, NOTELEN_CUSTOM, $36
	note $31, NOTELEN_2A
	note $32, NOTELEN_CUSTOM, $36
	note $36, NOTELEN_2A
	note $37, NOTELEN_CUSTOM, $36
	instrument INSTR_36
	volume_add 2
	note $31, NOTELEN_CUSTOM, $60
	chan_stop
SndData_14_Ch4:
	duty_cycle $00
	set_var iSndChInfo_LoopTimer0, $03
	.loop0:
		note_ex PRESET_01, NOTELEN_06
		note_ex PRESET_02
		note_ex PRESET_02
		note_ex PRESET_01
		note_ex PRESET_01
		note_ex PRESET_02
		note_ex PRESET_02
		note_ex PRESET_01
		snd_loop .loop0, iSndChInfo_LoopTimer0
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_00
	note_ex PRESET_01
	set_var iSndChInfo_LoopTimer0, $07
	.loop1:
		note_ex PRESET_01
		note_ex PRESET_02
		note_ex PRESET_02
		note_ex PRESET_01
		note_ex PRESET_01
		note_ex PRESET_02
		note_ex PRESET_02
		note_ex PRESET_01
		snd_loop .loop1, iSndChInfo_LoopTimer0
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_01
	note_ex PRESET_00
	note_ex PRESET_00, NOTELEN_03
	note_ex PRESET_00, NOTELEN_06
	note_ex PRESET_00, NOTELEN_03
	note_ex PRESET_00, NOTELEN_06
	note_ex PRESET_02
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_01
	note_ex PRESET_00
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_01
	note_ex PRESET_00
	note_ex PRESET_02, NOTELEN_03
	note_ex PRESET_00
	note_ex PRESET_00, NOTELEN_06
	note_ex PRESET_02
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_01
	note_ex PRESET_00
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_01
	note_ex PRESET_00
	note_ex PRESET_02, NOTELEN_03
	note_ex PRESET_00
	note_ex PRESET_00, NOTELEN_06
	note_ex PRESET_02
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_01
	note_ex PRESET_00
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_01
	note_ex PRESET_00
	note_ex PRESET_02, NOTELEN_03
	note_ex PRESET_00
	note_ex PRESET_00, NOTELEN_06
	note_ex PRESET_02
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_01
	note_ex PRESET_00
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_00, NOTELEN_03
	note_ex PRESET_01, NOTELEN_06
	note_ex PRESET_00
	note_ex PRESET_00, NOTELEN_03
	note_ex PRESET_00, NOTELEN_06
	note_ex PRESET_00, NOTELEN_30
	chan_stop
