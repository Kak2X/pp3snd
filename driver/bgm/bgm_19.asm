SndHeader_BGM_19:
	db 4 ; Number of slots
.slot0:
	db SNDSLOT0 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_35 ; iSndChInfo_Vibrato
	db 0 ; iSndChInfo_NoteIdBase
	db 107 ; iSndChInfo_Speed
	db SNDCH_WAVE ; iSndChInfo_ChId
	dw SndData_19_Ch3 ; Data pointer
	db $80 ; [PLACEHOLDER] ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot1:
	db SNDSLOT1 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 13 ; iSndChInfo_Vol
	db INSTR_2E ; iSndChInfo_Instrument
	db VIBRATO_33 ; iSndChInfo_Vibrato
	db -12 ; iSndChInfo_NoteIdBase
	db 107 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_19_Ch2 ; Data pointer
	db $80 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot2:
	db SNDSLOT2 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 10 ; iSndChInfo_Vol
	db INSTR_33 ; iSndChInfo_Instrument
	db VIBRATO_33 ; iSndChInfo_Vibrato
	db -12 ; iSndChInfo_NoteIdBase
	db 107 ; iSndChInfo_Speed
	db SNDCH_PULSE1 ; iSndChInfo_ChId
	dw SndData_19_Ch1 ; Data pointer
	db $80 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot3:
	db SNDSLOT3 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db 0 ; iSndChInfo_NoteIdBase
	db 107 ; iSndChInfo_Speed
	db SNDCH_NOISE ; iSndChInfo_ChId
	dw SndData_19_Ch4 ; Data pointer
	db $80 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_19_Ch3:
	wave_id WAVE_06
	instrument INSTR_30
	volume_add -1
	note $36, NOTELEN_12
	note $38, NOTELEN_CUSTOM, $1E
	volume_add -5
	instrument INSTR_NONE
	fine_tune_value -1
	note $38, NOTELEN_CUSTOM, $06
	volume_add 5
	instrument INSTR_30
	fine_tune_value 1
	note $39, NOTELEN_06
	note $38
	note $34, NOTELEN_0C
	note $36
	note $34, NOTELEN_06
	note $36, NOTELEN_12
	note $38, NOTELEN_CUSTOM, $1B
	volume_add -5
	fine_tune_value -1
	note $38, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $2F, NOTELEN_12
	note $2D, NOTELEN_CUSTOM, $1E
	volume_add -5
	instrument INSTR_NONE
	fine_tune_value -1
	note $2D, NOTELEN_CUSTOM, $06
	volume_add 5
	instrument INSTR_NONE
	fine_tune_value 1
	wave_id WAVE_09
	instrument INSTR_NONE
	volume_add 1
	note $38, NOTELEN_03
	note $39
	note $38
	note $34
	note $31, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $31, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $38, NOTELEN_03
	note $39
	note $38
	note $34
	note $31, NOTELEN_CUSTOM, $03
	volume_add -5
	instrument INSTR_NONE
	fine_tune_value -1
	note $31, NOTELEN_CUSTOM, $06
	volume_add 5
	instrument INSTR_NONE
	fine_tune_value 1
	note $00, NOTELEN_09
	note $38, NOTELEN_03
	note $39
	note $38
	note $34
	note $31, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $31, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $38, NOTELEN_03
	note $39
	note $38
	note $34
	note $31, NOTELEN_CUSTOM, $03
	volume_add -5
	instrument INSTR_NONE
	fine_tune_value -1
	note $31, NOTELEN_CUSTOM, $06
	volume_add 5
	instrument INSTR_NONE
	fine_tune_value 1
	note $00, NOTELEN_09
	note $38, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $38, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $36, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $36, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $38, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $38, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $34, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $34, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $38, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $38, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $33, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $33, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $38, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $38, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $31, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $31, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $38, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $38, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $36, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $36, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $38, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $38, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $34, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $34, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $38, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $38, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $33, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $33, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $38, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $38, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	snd_loop SndData_19_Ch3
SndData_19_Ch2:
	duty_cycle $00
	note $1C, NOTELEN_0C
	note $19, NOTELEN_09
	note $17, NOTELEN_06
	note $17, NOTELEN_03
	note $19, NOTELEN_06
	note $12
	note $14
	note $15
	note $15
	note $19
	note $15, NOTELEN_03
	note $1C, NOTELEN_06
	note $19, NOTELEN_03
	note $1E, NOTELEN_06
	note $1C
	note $19
	note $1C, NOTELEN_0C
	note $19, NOTELEN_09
	note $17, NOTELEN_06
	note $17, NOTELEN_03
	note $19, NOTELEN_06
	note $12
	note $14
	note $15
	note $15
	note $19
	note $15, NOTELEN_03
	note $1C, NOTELEN_06
	note $19, NOTELEN_03
	note $1E, NOTELEN_06
	note $21
	note $20
	note $1E, NOTELEN_0C
	note $1E, NOTELEN_09
	note $19, NOTELEN_06
	note $19, NOTELEN_03
	note $1C, NOTELEN_06
	note $14
	note $15
	note $17
	note $17
	note $19
	note $1C, NOTELEN_03
	note $1E, NOTELEN_06
	note $1E, NOTELEN_03
	note $1C, NOTELEN_06
	note $20
	note $1E
	note $1C, NOTELEN_0C
	note $19, NOTELEN_09
	note $17, NOTELEN_06
	note $17, NOTELEN_03
	note $19, NOTELEN_06
	note $12
	note $14
	note $15
	note $15
	note $19
	note $15, NOTELEN_03
	note $1C, NOTELEN_06
	note $15, NOTELEN_03
	note $1E, NOTELEN_06
	note $1C
	note $19
	snd_loop SndData_19_Ch2
SndData_19_Ch1:
	instrument INSTR_39
	set_var iSndChInfo_LoopTimer0, $18
	.loop0:
		note $40, NOTELEN_03
		note $40
		note $34
		note $34
		snd_loop .loop0, iSndChInfo_LoopTimer0
	note $40
	note $40
	instrument INSTR_30
	duty_cycle $40
	note $2F
	instrument INSTR_39
	duty_cycle $80
	note $34
	instrument INSTR_30
	duty_cycle $40
	note $2F
	instrument INSTR_39
	duty_cycle $80
	note $40
	instrument INSTR_30
	duty_cycle $40
	note $2F
	instrument INSTR_39
	duty_cycle $80
	note $34
	instrument INSTR_30
	duty_cycle $40
	note $2F
	instrument INSTR_39
	duty_cycle $80
	note $40
	instrument INSTR_30
	duty_cycle $40
	note $2F
	instrument INSTR_39
	duty_cycle $80
	note $34
	instrument INSTR_30
	duty_cycle $40
	note $2F
	instrument INSTR_39
	duty_cycle $80
	note $40
	instrument INSTR_30
	duty_cycle $40
	note $2F
	instrument INSTR_39
	duty_cycle $80
	note $34
	instrument INSTR_30
	duty_cycle $40
	note $2C
	instrument INSTR_39
	duty_cycle $80
	note $40
	instrument INSTR_30
	duty_cycle $40
	note $31
	instrument INSTR_39
	duty_cycle $80
	note $34
	instrument INSTR_30
	duty_cycle $40
	note $31
	instrument INSTR_39
	duty_cycle $80
	note $40
	instrument INSTR_30
	duty_cycle $40
	note $31
	instrument INSTR_39
	duty_cycle $80
	note $34
	instrument INSTR_30
	duty_cycle $40
	note $31
	instrument INSTR_39
	duty_cycle $80
	note $40
	instrument INSTR_30
	duty_cycle $40
	note $31
	instrument INSTR_39
	duty_cycle $80
	note $34
	instrument INSTR_30
	duty_cycle $40
	note $31
	instrument INSTR_39
	duty_cycle $80
	note $40
	instrument INSTR_30
	duty_cycle $40
	note $31
	instrument INSTR_39
	duty_cycle $80
	note $34
	snd_loop SndData_19_Ch1
SndData_19_Ch4:
	duty_cycle $00
	note_ex PRESET_01, NOTELEN_03
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_02
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
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_02
	snd_loop SndData_19_Ch4
