SndHeader_BGM_20:
	db 4 ; Number of slots
.slot0:
	db SNDSLOT0 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 14 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -12 ; iSndChInfo_NoteIdBase
	db 102 ; iSndChInfo_Speed
	db SNDCH_PULSE1 ; iSndChInfo_ChId
	dw SndData_20_Ch1 ; Data pointer
	db $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot1:
	db SNDSLOT1 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 12 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -12 ; iSndChInfo_NoteIdBase
	db 102 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_20_Ch2 ; Data pointer
	db $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot2:
	db SNDSLOT2 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db 0 ; iSndChInfo_NoteIdBase
	db 102 ; iSndChInfo_Speed
	db SNDCH_WAVE ; iSndChInfo_ChId
	dw SndData_20_Ch3 ; Data pointer
	db WAVE_00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot3:
	db SNDSLOT3 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db 0 ; iSndChInfo_NoteIdBase
	db 102 ; iSndChInfo_Speed
	db SNDCH_NOISE ; iSndChInfo_ChId
	dw SndData_20_Ch4 ; Data pointer
	db $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_20_Ch1:
	duty_cycle $80
	instrument INSTR_60
	snd_call .sub0
	snd_call .sub1
	snd_call .sub2
	snd_call .sub3
	snd_call .sub0
	snd_call .sub4
	snd_call .sub2
	snd_call .sub5
	snd_call .sub6
	snd_loop SndData_20_Ch1
.sub0:
	note $31, NOTELEN_03
	note $2C
	note $31, NOTELEN_06
	note $31
	note $2C, NOTELEN_03
	note $31, NOTELEN_06
	note $2C
	note $35
	note $31, NOTELEN_03
	note $2C
	note $29
	snd_ret
.sub1:
	note $38, NOTELEN_09
	note $29
	note $2C
	note $29, NOTELEN_CUSTOM, $15
	snd_ret
.sub2:
	note $31, NOTELEN_03
	note $2C
	note $31, NOTELEN_06
	note $31
	note $2C, NOTELEN_03
	note $2A, NOTELEN_06
	note $29
	note $2A
	note $29, NOTELEN_03
	note $2A
	note $2C
	snd_ret
.sub3:
	note $31
	note $00
	volume_add -9
	instrument INSTR_NONE
	note $29
	note $2A
	note $2C
	note $31
	volume_add 9
	instrument INSTR_60
	note $2C
	note $29
	note $31
	note $2E, NOTELEN_06
	note $2C
	note $2A, NOTELEN_03
	note $27
	note $20
	snd_ret
.sub4:
	note $38, NOTELEN_09
	note $29
	note $2C
	note $29, NOTELEN_06
	note $29, NOTELEN_03
	note $2A
	note $29
	note $2A
	note $2C
	snd_ret
.sub5:
	note $31, NOTELEN_03
	note $00
	volume_add -9
	instrument INSTR_NONE
	note $29
	note $2A
	note $2C
	note $31
	volume_add 9
	instrument INSTR_60
	note $2C
	note $29
	note $31
	note $33, NOTELEN_06
	note $35
	note $33, NOTELEN_03
	note $35
	note $36
	snd_ret
.sub6:
	note $38, NOTELEN_CUSTOM, $14
	volume_add -9
	note $2C, NOTELEN_01
	volume_add 2
	note $33
	volume_add 3
	note $35
	volume_add 4
	note $36
	note $38, NOTELEN_03
	note $36, NOTELEN_06
	note $35
	note $33
	note $2C, NOTELEN_03
	note $31
	note $30
	note $31
	note $33, NOTELEN_06
	note $35
	note $36
	note $35
	note $33
	note $35, NOTELEN_03
	note $2C, NOTELEN_06
	note $2E, NOTELEN_03
	note $30
	note $31
	note $2C, NOTELEN_09
	note $2E, NOTELEN_03
	note $30
	note $31
	note $2C, NOTELEN_09
	note $31, NOTELEN_06
	note $30
	note $31, NOTELEN_09
	note $33
	note $35
	note $36
	note $38, NOTELEN_0C
	snd_ret
SndData_20_Ch2:
	duty_cycle $00
	fine_tune_value -1
	instrument INSTR_61
	note $25, NOTELEN_30
	note $27, NOTELEN_18
	note $2C
	note $25, NOTELEN_24
	instrument INSTR_NONE
	note $27, NOTELEN_02
	note $29
	note $2A
	note $2C
	note $2E
	note $30
	instrument INSTR_5A
	note $31
	note $00, NOTELEN_CUSTOM, $07
	volume_add -3
	note $31, NOTELEN_02
	note $00, NOTELEN_CUSTOM, $07
	volume_add -2
	note $31, NOTELEN_02
	note $00, NOTELEN_CUSTOM, $07
	volume_add -3
	note $31, NOTELEN_02
	note $00, NOTELEN_CUSTOM, $07
	volume_add 3
	note $31, NOTELEN_02
	note $00, NOTELEN_04
	volume_add 3
	note $31, NOTELEN_02
	note $00, NOTELEN_01
	note $31, NOTELEN_03
	volume_add 2
	instrument INSTR_61
	note $25, NOTELEN_30
	note $2C, NOTELEN_18
	note $33
	note $31, NOTELEN_30
	note $00
	note $20
	note $25, NOTELEN_18
	note $29
	note $27, NOTELEN_30
	note $2C
	fine_tune_value 1
	snd_loop SndData_20_Ch2
SndData_20_Ch3:
	wave_id WAVE_0D
	instrument INSTR_62
	snd_call .sub0
	snd_call .sub0
	snd_call .sub1
	snd_loop SndData_20_Ch3
.sub0:
	note $0D, NOTELEN_09
	note $14
	note $0D, NOTELEN_06
	note $0D, NOTELEN_09
	note $0D, NOTELEN_03
	note $14
	note $0D
	note $0D, NOTELEN_0C
	note $14, NOTELEN_06
	note $0D
	note $0D, NOTELEN_03
	note $0D, NOTELEN_06
	note $14
	note $1B, NOTELEN_09
	note $0D, NOTELEN_06
	note $0D, NOTELEN_09
	note $14
	note $0D, NOTELEN_06
	note $0D, NOTELEN_09
	note $0D, NOTELEN_03
	note $14
	note $0D
	note $0D, NOTELEN_06
	note $19
	note $00, NOTELEN_0C
	note $14, NOTELEN_03
	note $16
	note $17
	note $16
	note $00
	note $14
	note $00
	note $12
	note $11, NOTELEN_06
	snd_ret
.sub1:
	note $14, NOTELEN_06
	note $00, NOTELEN_CUSTOM, $0F
	note $14, NOTELEN_03
	note $00, NOTELEN_06
	note $14, NOTELEN_03
	note $00, NOTELEN_06
	note $14, NOTELEN_09
	note $19, NOTELEN_06
	note $00, NOTELEN_CUSTOM, $0F
	note $14, NOTELEN_03
	note $00, NOTELEN_06
	note $19, NOTELEN_03
	note $00, NOTELEN_06
	note $14, NOTELEN_09
	note $1B, NOTELEN_03
	note $00, NOTELEN_06
	note $14, NOTELEN_09
	note $1B, NOTELEN_03
	note $00, NOTELEN_06
	note $14, NOTELEN_09
	note $00, NOTELEN_0C
	note $14, NOTELEN_03
	note $14
	note $14
	note $1B
	note $00, NOTELEN_06
	note $14, NOTELEN_03
	note $14
	note $00, NOTELEN_18
	snd_ret
SndData_20_Ch4:
	snd_call .sub0
	snd_call .sub1
	snd_call .sub2
	snd_call .sub1
	snd_call .sub3
	snd_loop SndData_20_Ch4
.sub0:
	note_ex PRESET_01, NOTELEN_03
	note $00
	note_ex PRESET_02
	note $00
	note_ex PRESET_00
	note $00
	note_ex PRESET_01
	note_ex PRESET_01
	note_ex PRESET_02
	note $00
	note_ex PRESET_01
	note $00
	note_ex PRESET_00
	note $00
	note_ex PRESET_02
	note $00
	snd_ret
.sub1:
	note_ex PRESET_02
	note $00
	note_ex PRESET_01
	note $00
	note_ex PRESET_00
	note $00
	note_ex PRESET_01
	note $00
	note_ex PRESET_02
	note $00
	note_ex PRESET_01
	note_ex PRESET_01
	note_ex PRESET_00
	note $00
	note_ex PRESET_03
	note $00
	note_ex PRESET_01
	note $00
	note_ex PRESET_01
	note $00
	note_ex PRESET_00
	note $00
	note_ex PRESET_01
	note_ex PRESET_01
	note_ex PRESET_02
	note $00
	note_ex PRESET_01
	note $00
	note_ex PRESET_00
	note $00
	note_ex PRESET_02
	note_ex PRESET_00
	note_ex PRESET_08
	note $00, NOTELEN_CUSTOM, $0F
	note_ex PRESET_01, NOTELEN_03
	note $00
	note_ex PRESET_02
	note $00
	note_ex PRESET_01
	note_ex PRESET_01
	note_ex PRESET_00
	note $00
	note_ex PRESET_03
	note $00
	snd_ret
.sub2:
	note_ex PRESET_01
	note $00
	note_ex PRESET_02
	note $00
	note_ex PRESET_00
	note $00
	note_ex PRESET_01
	note_ex PRESET_01
	note_ex PRESET_02
	note $00
	note_ex PRESET_01
	note $00
	note_ex PRESET_00
	note $00
	note_ex PRESET_02
	note $00
	snd_ret
.sub3:
	note_ex PRESET_01, NOTELEN_03
	note $00
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_00
	note $00
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_03
	note $00
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_00
	note $00
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_01
	note $00
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_00
	note $00
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_03
	note $00
	note_ex PRESET_01
	note $00
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_00
	note_ex PRESET_00
	note_ex PRESET_08
	note $00
	note_ex PRESET_02
	note_ex PRESET_00
	note $00, NOTELEN_06
	note_ex PRESET_00, NOTELEN_03
	note $00
	note_ex PRESET_02
	note_ex PRESET_00
	note $00, NOTELEN_06
	note_ex PRESET_00, NOTELEN_03
	note_ex PRESET_00
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_01
	note $00, NOTELEN_06
	note_ex PRESET_01, NOTELEN_03
	note $00
	note_ex PRESET_02
	note_ex PRESET_00
	note $00, NOTELEN_06
	note_ex PRESET_01, NOTELEN_03
	note $00
	note_ex PRESET_01
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_00
	note_ex PRESET_02
	snd_ret
