SndHeader_BGM_15:
	db 4 ; Number of slots
.slot0:
	db SNDSLOT0 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 14 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db 0 ; iSndChInfo_NoteIdBase
	db 99 ; iSndChInfo_Speed
	db SNDCH_PULSE1 ; iSndChInfo_ChId
	dw SndData_15_Ch1 ; Data pointer
	db $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot1:
	db SNDSLOT1 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db 0 ; iSndChInfo_NoteIdBase
	db 99 ; iSndChInfo_Speed
	db SNDCH_WAVE ; iSndChInfo_ChId
	dw SndData_15_Ch3 ; Data pointer
	db WAVE_00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot2:
	db SNDSLOT2 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 13 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -12 ; iSndChInfo_NoteIdBase
	db 99 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_15_Ch2 ; Data pointer
	db $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot3:
	db SNDSLOT3 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 14 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db 0 ; iSndChInfo_NoteIdBase
	db 99 ; iSndChInfo_Speed
	db SNDCH_NOISE ; iSndChInfo_ChId
	dw SndData_15_Ch4 ; Data pointer
	db $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_15_Ch1:
	volume_add -2
	duty_cycle $80
	volume_add 0
	instrument INSTR_68
	snd_call .sub0
	snd_call .sub0
	volume_add -1
	snd_call .sub0
	snd_call .sub0
	snd_call .sub0
	snd_call .sub0
	snd_call .sub0
	snd_call .sub0
	snd_call .sub0
	snd_call .sub0
	snd_call .sub0
	volume_add -1
	snd_call .sub0
	volume_add -1
	snd_call .sub0
	volume_add -1
	snd_call .sub1
	volume_add -1
	snd_call .sub1
	volume_add -1
	snd_call .sub1
	volume_add -1
	snd_call .sub1
	volume_add -1
	snd_call .sub1
	snd_call .sub1
	volume_add -1
	snd_call .sub1
	chan_stop ECH_SAVE
.sub0:
	instrument INSTR_68
	note $25, NOTELEN_02
	volume_add -7
	fine_tune_value -1
	instrument INSTR_NONE
	note $25, NOTELEN_01
	fine_tune_value 1
	volume_add 7
	instrument INSTR_68
	note $28, NOTELEN_02
	volume_add -7
	fine_tune_value -1
	instrument INSTR_NONE
	note $28, NOTELEN_01
	volume_add 7
	fine_tune_value 1
	instrument INSTR_68
	note $2C, NOTELEN_02
	volume_add -7
	fine_tune_value -1
	instrument INSTR_NONE
	note $2C, NOTELEN_01
	volume_add 7
	fine_tune_value 1
	instrument INSTR_68
	note $2A, NOTELEN_04
	volume_add -7
	fine_tune_value -1
	instrument INSTR_NONE
	note $2A, NOTELEN_02
	volume_add 7
	fine_tune_value 1
	instrument INSTR_68
	note $2C, NOTELEN_04
	volume_add -7
	fine_tune_value -1
	instrument INSTR_NONE
	note $2C, NOTELEN_02
	volume_add 7
	fine_tune_value 1
	instrument INSTR_68
	note $28, NOTELEN_04
	volume_add -7
	fine_tune_value -1
	instrument INSTR_NONE
	note $28, NOTELEN_02
	volume_add 7
	fine_tune_value 1
	instrument INSTR_68
	note $2A, NOTELEN_04
	volume_add -7
	fine_tune_value -1
	instrument INSTR_NONE
	note $2A, NOTELEN_02
	volume_add 7
	fine_tune_value 1
	instrument INSTR_68
	note $27, NOTELEN_02
	volume_add -7
	fine_tune_value -1
	instrument INSTR_NONE
	note $27, NOTELEN_01
	volume_add 7
	fine_tune_value 1
	instrument INSTR_68
	note $28, NOTELEN_04
	volume_add -7
	fine_tune_value -1
	instrument INSTR_NONE
	note $28, NOTELEN_02
	volume_add 7
	fine_tune_value 1
	instrument INSTR_68
	note $25, NOTELEN_04
	volume_add -7
	fine_tune_value -1
	instrument INSTR_NONE
	note $25, NOTELEN_02
	volume_add 7
	fine_tune_value 1
	snd_ret
.sub1:
	instrument INSTR_73
	note $25, NOTELEN_03
	note $28, NOTELEN_03
	note $2C, NOTELEN_03
	note $2A, NOTELEN_06
	note $2C, NOTELEN_06
	note $28, NOTELEN_06
	note $2A, NOTELEN_06
	note $27, NOTELEN_03
	note $28, NOTELEN_06
	note $25, NOTELEN_06
	snd_ret
SndData_15_Ch3:
	volume_add -4
	wave_id WAVE_01
	fine_tune_value -1
	pitch_bend 180
	note $00, NOTELEN_30
	note $00, NOTELEN_CUSTOM, $31
	note $19, NOTELEN_CUSTOM, $5F
	note $17, NOTELEN_CUSTOM, $60
	note $1E, NOTELEN_CUSTOM, $60
	note $1C, NOTELEN_CUSTOM, $30
	note $1B, NOTELEN_CUSTOM, $3C
	instrument INSTR_6B
	note $1B, NOTELEN_24
	chan_stop
SndData_15_Ch2:
	duty_cycle $80
	fine_tune 12
	instrument INSTR_68
	fine_tune_value -2
	volume_add -8
	note $00, NOTELEN_09
	snd_call SndData_15_Ch1.sub1
	snd_call SndData_15_Ch1.sub1
	note $00, NOTELEN_CUSTOM, $27
	fine_tune -12
	volume_add 8
	duty_cycle $40
	fine_tune_value 1
	instrument INSTR_67
	vibrato VIBRATO_5D
	note $2C, NOTELEN_CUSTOM, $6C
	instrument INSTR_69
	note $2C, NOTELEN_CUSTOM, $54
	note $00, NOTELEN_30
	instrument INSTR_67
	note $2F, NOTELEN_CUSTOM, $6C
	instrument INSTR_69
	note $2F, NOTELEN_CUSTOM, $3C
	note $00, NOTELEN_18
	vibrato VIBRATO_NONE
	fine_tune_value -1
	instrument INSTR_6A
	volume_add -6
	fine_tune -12
	duty_cycle $00
	snd_call .sub0
	snd_call .sub0
	volume_add 1
	snd_call .sub0
	snd_call .sub0
	volume_add 1
	snd_call .sub0
	volume_add 1
	snd_call .sub0
	volume_add 1
	snd_call .sub0
	volume_add 1
	snd_call .sub0
	volume_add 1
	snd_call .sub0
	volume_add 1
	snd_call .sub0
	volume_add 1
	snd_call .sub0
	volume_add 1
	snd_call .sub0
	volume_add 1
	snd_call .sub0
	snd_call .sub0
	snd_call .sub0
	snd_call .sub0
	snd_call .sub0
	snd_call .sub0
	snd_call .sub0
	snd_call .sub0
	note $40, NOTELEN_03
	note $42
	note $44
	note $47
	note $46
	note $42
	volume_add -4
	note $47
	note $46
	note $42
	volume_add -3
	note $47
	note $46
	note $42
	volume_add -2
	note $47
	note $46
	note $42
	volume_add -3
	note $47
	note $46
	note $42
	volume_add -2
	note $47
	note $46
	note $42
	chan_stop
.sub0:
	note $40, NOTELEN_03
	note $42
	note $44
	note $47
	note $46
	note $42
	note $44
	note $40
	note $42
	note $3F
	snd_ret
SndData_15_Ch4:
	note $00, NOTELEN_30
	note $00
	note $00, NOTELEN_18
	volume_add -5
	snd_call .sub0
	snd_call .sub0
	snd_call .sub0
	snd_call .sub0
	volume_add 2
	snd_call .sub0
	snd_call .sub0
	snd_call .sub0
	volume_add 1
	snd_call .sub0
	volume_add 1
	snd_call .sub0
	snd_call .sub0
	snd_call .sub0
	snd_call .sub0
	snd_call .sub0
	snd_call .sub0
	snd_call .sub0
	snd_call .sub0
	snd_call .sub0
	snd_call .sub0
	snd_call .sub0
	snd_call .sub0
	snd_call .sub0
	snd_call .sub0
	snd_call .sub0
	chan_stop
	volume_add -8
	note $00, NOTELEN_18 ;X
	note_ex PRESET_03, NOTELEN_03 ;X
	note_ex PRESET_02 ;X
	note_ex PRESET_02 ;X
	note_ex PRESET_03 ;X
	note_ex PRESET_02 ;X
	note_ex PRESET_03 ;X
	note_ex PRESET_02 ;X
	note $00 ;X
.sub0:
	note_ex PRESET_03, NOTELEN_03
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_03
	note_ex PRESET_02
	note_ex PRESET_03
	note_ex PRESET_02
	note_ex PRESET_03
	note_ex PRESET_03
	note_ex PRESET_02
	note_ex PRESET_03
	note_ex PRESET_03
	note_ex PRESET_08
	note_ex PRESET_03
	note_ex PRESET_02
	note_ex PRESET_03
	snd_ret
