SndHeader_BGM_06:
	db 4 ; Number of slots
.slot0:
	db SNDSLOT0 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_40 ; iSndChInfo_Instrument
	db VIBRATO_33 ; iSndChInfo_Vibrato
	db 0 ; iSndChInfo_NoteIdBase
	db 116 ; iSndChInfo_Speed
	db SNDCH_WAVE ; iSndChInfo_ChId
	dw SndData_06_Ch3 ; Data pointer
	db $80 ; [PLACEHOLDER] ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot1:
	db SNDSLOT1 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 13 ; iSndChInfo_Vol
	db INSTR_3E ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -12 ; iSndChInfo_NoteIdBase
	db 116 ; iSndChInfo_Speed
	db SNDCH_PULSE1 ; iSndChInfo_ChId
	dw SndData_06_Ch1 ; Data pointer
	db $80 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot2:
	db SNDSLOT2 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 11 ; iSndChInfo_Vol
	db INSTR_3E ; iSndChInfo_Instrument
	db VIBRATO_33 ; iSndChInfo_Vibrato
	db -12 ; iSndChInfo_NoteIdBase
	db 116 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_06_Ch2 ; Data pointer
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
	dw SndData_06_Ch4 ; Data pointer
	db $80 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_06_Ch3:
	wave_id WAVE_08
	note $2F, NOTELEN_0C
	note $2C, NOTELEN_06
	note $31, NOTELEN_0C
	note $2F, NOTELEN_06
	note $2C
	note $2F
	note $2F
	note $2C, NOTELEN_0C
	note $31
	note $2F, NOTELEN_06
	note $2C
	note $2F
	note $2D, NOTELEN_0C
	note $28, NOTELEN_06
	note $2F, NOTELEN_0C
	note $2D, NOTELEN_06
	note $28
	note $2D
	note $2D
	note $2A, NOTELEN_0C
	note $2F
	note $2D, NOTELEN_06
	note $2A
	note $2D
	note $2F, NOTELEN_0C
	note $2C, NOTELEN_06
	note $31, NOTELEN_0C
	note $2F, NOTELEN_06
	note $2C
	note $2F
	note $2F
	note $2C, NOTELEN_0C
	note $31
	note $2F, NOTELEN_06
	note $2C
	note $2F
	note $2D, NOTELEN_0C
	note $28, NOTELEN_06
	note $2F, NOTELEN_0C
	note $2D, NOTELEN_06
	note $28
	note $2D
	note $2D
	note $2A, NOTELEN_0C
	note $2F
	note $2D, NOTELEN_06
	note $2A
	note $2D
	wave_id WAVE_09
	fine_tune -12
	note $00, NOTELEN_09
	note $28, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $28, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $00, NOTELEN_CUSTOM, $12
	note $28, NOTELEN_03
	note $2C, NOTELEN_06
	note $2F
	note $00, NOTELEN_09
	note $25, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $25, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $00, NOTELEN_CUSTOM, $12
	note $25, NOTELEN_03
	note $28, NOTELEN_06
	note $2C
	note $00, NOTELEN_09
	note $2A, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $2A, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $00, NOTELEN_CUSTOM, $12
	note $2A, NOTELEN_03
	note $2D, NOTELEN_06
	note $31
	note $00, NOTELEN_09
	note $23, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $23, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $00, NOTELEN_CUSTOM, $09
	note $2F, NOTELEN_09
	note $23, NOTELEN_03
	note $27, NOTELEN_06
	note $2A
	fine_tune 12
	snd_loop SndData_06_Ch3
SndData_06_Ch1:
	duty_cycle $05
	note $1C, NOTELEN_09
	note $1C, NOTELEN_03
	note $20, NOTELEN_06
	note $23
	note $1C, NOTELEN_09
	note $1C, NOTELEN_03
	note $20, NOTELEN_06
	note $23
	note $19, NOTELEN_09
	note $19, NOTELEN_03
	note $1C, NOTELEN_06
	note $20
	note $19, NOTELEN_09
	note $19, NOTELEN_03
	note $1C, NOTELEN_06
	note $20
	note $1E, NOTELEN_09
	note $1E, NOTELEN_03
	note $21, NOTELEN_06
	note $25
	note $1E, NOTELEN_09
	note $1E, NOTELEN_03
	note $21, NOTELEN_06
	note $25
	note $17, NOTELEN_09
	note $17, NOTELEN_03
	note $1B, NOTELEN_06
	note $1E
	note $17, NOTELEN_09
	note $17, NOTELEN_03
	note $1B, NOTELEN_06
	note $1E
	note $1C, NOTELEN_09
	note $1C, NOTELEN_03
	note $20, NOTELEN_06
	note $23
	note $1C, NOTELEN_09
	note $1C, NOTELEN_03
	note $20, NOTELEN_06
	note $23
	note $19, NOTELEN_09
	note $19, NOTELEN_03
	note $1C, NOTELEN_06
	note $20
	note $19, NOTELEN_09
	note $19, NOTELEN_03
	note $1C, NOTELEN_06
	note $20
	note $1E, NOTELEN_09
	note $1E, NOTELEN_03
	note $21, NOTELEN_06
	note $25
	note $1E, NOTELEN_09
	note $1E, NOTELEN_03
	note $21, NOTELEN_06
	note $25
	note $17, NOTELEN_09
	note $17, NOTELEN_03
	note $1B, NOTELEN_06
	note $1E
	note $17, NOTELEN_09
	note $17, NOTELEN_03
	note $1B, NOTELEN_06
	note $1E
	duty_cycle $09
	fine_tune 12
	note $00, NOTELEN_09
	note $1C, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $1C, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $00, NOTELEN_CUSTOM, $12
	note $1C, NOTELEN_03
	note $20, NOTELEN_06
	note $23
	note $00, NOTELEN_09
	note $19, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $19, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $00, NOTELEN_CUSTOM, $12
	note $19, NOTELEN_03
	note $1C, NOTELEN_06
	note $20
	note $00, NOTELEN_09
	note $1E, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $1E, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $00, NOTELEN_CUSTOM, $12
	note $1E, NOTELEN_03
	note $21, NOTELEN_06
	note $25
	note $00, NOTELEN_09
	note $17, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $17, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $00, NOTELEN_CUSTOM, $09
	note $23, NOTELEN_09
	note $17, NOTELEN_03
	note $1B, NOTELEN_06
	note $1E
	fine_tune -12
	snd_loop SndData_06_Ch1
SndData_06_Ch2:
	instrument INSTR_2E
	duty_cycle $80
	note $28, NOTELEN_03
	note $28
	note $23, NOTELEN_06
	instrument INSTR_33
	duty_cycle $40
	note $34
	instrument INSTR_2E
	duty_cycle $80
	note $28, NOTELEN_09
	note $28, NOTELEN_03
	note $23, NOTELEN_06
	instrument INSTR_33
	duty_cycle $40
	note $34
	instrument INSTR_2E
	duty_cycle $80
	note $28
	note $25, NOTELEN_03
	note $25
	instrument INSTR_33
	duty_cycle $40
	note $2F, NOTELEN_0C
	instrument INSTR_2E
	duty_cycle $80
	note $25, NOTELEN_09
	note $25, NOTELEN_03
	note $20, NOTELEN_06
	instrument INSTR_33
	duty_cycle $40
	note $34
	instrument INSTR_2E
	duty_cycle $80
	note $25
	note $2A, NOTELEN_03
	note $2A
	note $25, NOTELEN_06
	instrument INSTR_33
	duty_cycle $40
	note $31
	instrument INSTR_2E
	duty_cycle $80
	note $2A, NOTELEN_09
	note $2A, NOTELEN_03
	note $25, NOTELEN_06
	instrument INSTR_33
	duty_cycle $40
	note $31
	instrument INSTR_2E
	duty_cycle $80
	note $2A
	note $23, NOTELEN_03
	note $23
	instrument INSTR_33
	duty_cycle $40
	note $33, NOTELEN_0C
	instrument INSTR_2E
	duty_cycle $80
	note $23, NOTELEN_09
	note $23, NOTELEN_03
	note $1E, NOTELEN_06
	instrument INSTR_33
	duty_cycle $40
	note $33
	instrument INSTR_2E
	duty_cycle $80
	note $23
	note $28, NOTELEN_03
	note $28
	note $23, NOTELEN_06
	instrument INSTR_33
	duty_cycle $40
	note $34
	instrument INSTR_2E
	duty_cycle $80
	note $28, NOTELEN_09
	note $28, NOTELEN_03
	note $23, NOTELEN_06
	instrument INSTR_33
	duty_cycle $40
	note $34
	instrument INSTR_2E
	duty_cycle $80
	note $28
	note $25, NOTELEN_03
	note $25
	instrument INSTR_33
	duty_cycle $40
	note $2F, NOTELEN_0C
	instrument INSTR_2E
	duty_cycle $80
	note $25, NOTELEN_09
	note $25, NOTELEN_03
	note $20, NOTELEN_06
	instrument INSTR_33
	duty_cycle $40
	note $34
	instrument INSTR_2E
	duty_cycle $80
	note $25
	note $2A, NOTELEN_03
	note $2A
	note $25, NOTELEN_06
	instrument INSTR_33
	duty_cycle $40
	note $31
	instrument INSTR_2E
	duty_cycle $80
	note $2A, NOTELEN_09
	note $2A, NOTELEN_03
	note $25, NOTELEN_06
	instrument INSTR_33
	duty_cycle $40
	note $31
	instrument INSTR_2E
	duty_cycle $80
	note $2A
	note $23, NOTELEN_03
	note $23
	instrument INSTR_33
	duty_cycle $40
	note $33, NOTELEN_0C
	instrument INSTR_2E
	duty_cycle $80
	note $23, NOTELEN_09
	note $23, NOTELEN_03
	note $1E, NOTELEN_06
	instrument INSTR_33
	duty_cycle $40
	note $33
	instrument INSTR_2E
	duty_cycle $80
	note $23
	note $28, NOTELEN_03
	note $28
	note $23, NOTELEN_06
	note $25
	note $28, NOTELEN_09
	note $28, NOTELEN_03
	note $23, NOTELEN_06
	note $25
	note $28
	note $25, NOTELEN_03
	note $25
	note $20, NOTELEN_06
	note $23
	note $25, NOTELEN_09
	note $25, NOTELEN_03
	note $20, NOTELEN_06
	note $23
	note $25
	note $2A, NOTELEN_03
	note $2A
	note $25, NOTELEN_06
	note $28
	note $2A, NOTELEN_09
	note $2A, NOTELEN_03
	note $25, NOTELEN_06
	note $28
	note $2A
	note $23, NOTELEN_03
	note $23
	note $1E, NOTELEN_06
	note $21
	note $23
	instrument INSTR_3E
	volume_add -2
	note $1E, NOTELEN_01
	note $20
	note $21
	note $23
	note $25
	note $27
	note $28
	note $2A
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
	note $3F
	note $40
	note $42
	note $44
	note $45
	volume_add 2
	snd_loop SndData_06_Ch2
SndData_06_Ch4:
	snd_call .sub0
	note_ex PRESET_01
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
	note_ex PRESET_01
	note_ex PRESET_00
	note_ex PRESET_00
	note_ex PRESET_07
	note_ex PRESET_02
	snd_call .sub0
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_00
	note_ex PRESET_00
	note_ex PRESET_07
	note_ex PRESET_00
	set_var iSndChInfo_LoopTimer0, $03
	.loop:
		note_ex PRESET_01, NOTELEN_09
		note_ex PRESET_02, NOTELEN_03
		note_ex PRESET_01, NOTELEN_0C
		note_ex PRESET_00, NOTELEN_09
		note_ex PRESET_00, NOTELEN_03
		note_ex PRESET_02, NOTELEN_0C
		snd_loop .loop, iSndChInfo_LoopTimer0
	note_ex PRESET_01, NOTELEN_09
	note_ex PRESET_02, NOTELEN_03
	note_ex PRESET_01, NOTELEN_09
	note_ex PRESET_02, NOTELEN_03
	note_ex PRESET_00
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_00
	note_ex PRESET_00, NOTELEN_06
	note_ex PRESET_00, NOTELEN_03
	note_ex PRESET_00
	snd_loop SndData_06_Ch4
.sub0:
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
	note_ex PRESET_01
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_05
	note_ex PRESET_02
	note_ex PRESET_01
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
	note_ex PRESET_01
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_07
	note_ex PRESET_02
	note_ex PRESET_01
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
	note_ex PRESET_01
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_05
	note_ex PRESET_02
	snd_ret
