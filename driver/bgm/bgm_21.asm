SndHeader_BGM_21:
	db 4 ; Number of slots
.slot0:
	db SNDSLOT0 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 13 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -12 ; iSndChInfo_NoteIdBase
	db 102 ; iSndChInfo_Speed
	db SNDCH_PULSE1 ; iSndChInfo_ChId
	dw SndData_21_Ch1 ; Data pointer
	db $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot1:
	db SNDSLOT1 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 8 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -12 ; iSndChInfo_NoteIdBase
	db 102 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_21_Ch2 ; Data pointer
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
	dw SndData_21_Ch3 ; Data pointer
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
	dw SndData_21_Ch4 ; Data pointer
	db $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_21_Ch1:
	duty_cycle $40
	volume_add -1
	vibrato VIBRATO_5F
	note $33, NOTELEN_30
	vibrato VIBRATO_NONE
	pitch_bend 30
	volume_add 2
	note $38, NOTELEN_03
	note $33
	note $00
	note $31
	note $00
	note $30
	note $00
	note $31
	note $00
	note $30
	note $31
	note $33
	pitch_bend 0
	volume_add -2
	vibrato VIBRATO_62
	note $2E, NOTELEN_0C
	vibrato VIBRATO_5F
	instrument INSTR_65
	note $2C, NOTELEN_30
	instrument INSTR_NONE
	vibrato VIBRATO_NONE
	pitch_bend 50
	volume_add 2
	note $38, NOTELEN_03
	note $2C
	note $00
	note $30
	note $00
	note $31
	note $00
	note $33
	note $00
	note $31
	note $00
	note $33
	pitch_bend 0
	volume_add -2
	vibrato VIBRATO_62
	note $31
	vibrato VIBRATO_NONE
	note $30
	note $2E, NOTELEN_06
	vibrato VIBRATO_5F
	instrument INSTR_65
	note $2C, NOTELEN_30
	instrument INSTR_NONE
	vibrato VIBRATO_NONE
	note $2C, NOTELEN_03
	note $31
	note $00
	note $33
	note $00
	note $33
	note $00
	note $35
	note $00
	note $36
	note $35
	note $36
	note $35, NOTELEN_06
	note $33
	note $38, NOTELEN_03
	note $2C
	note $00
	note $2C
	note $00
	note $2C
	note $00
	note $36
	note $35
	note $00
	note $33
	note $00
	note $31
	note $33, NOTELEN_09
	note $33, NOTELEN_03
	note $00, NOTELEN_06
	note $33, NOTELEN_03
	note $00
	note $33
	note $00
	vibrato VIBRATO_63
	note $33, NOTELEN_09
	vibrato VIBRATO_NONE
	note $00, NOTELEN_12
	vibrato VIBRATO_5F
	note $35, NOTELEN_30
	vibrato VIBRATO_62
	note $36, NOTELEN_12
	vibrato VIBRATO_NONE
	note $35
	note $31, NOTELEN_0C
	vibrato VIBRATO_62
	note $33, NOTELEN_12
	vibrato VIBRATO_NONE
	instrument INSTR_65
	note $2C, NOTELEN_CUSTOM, $4E
	instrument INSTR_NONE
	vibrato VIBRATO_5F
	note $35, NOTELEN_30
	vibrato VIBRATO_NONE
	note $36, NOTELEN_12
	note $35
	note $31, NOTELEN_0C
	vibrato VIBRATO_62
	note $33, NOTELEN_12
	vibrato VIBRATO_NONE
	instrument INSTR_65
	note $38, NOTELEN_CUSTOM, $4E
	instrument INSTR_NONE
	vibrato VIBRATO_62
	note $36, NOTELEN_06
	vibrato VIBRATO_NONE
	note $35, NOTELEN_03
	note $33
	note $00, NOTELEN_06
	note $36
	note $35, NOTELEN_03
	note $33
	note $00, NOTELEN_12
	vibrato VIBRATO_62
	note $36, NOTELEN_06
	vibrato VIBRATO_NONE
	note $35, NOTELEN_03
	note $33
	note $31
	note $33
	note $00
	note $33, NOTELEN_06
	note $38, NOTELEN_03
	note $00, NOTELEN_06
	note $38, NOTELEN_03
	note $00, NOTELEN_09
	vibrato VIBRATO_62
	note $36, NOTELEN_06
	vibrato VIBRATO_NONE
	note $35, NOTELEN_03
	note $33
	note $00, NOTELEN_06
	note $36
	note $35, NOTELEN_03
	note $33
	note $00, NOTELEN_12
	note $2C, NOTELEN_03
	note $38, NOTELEN_04
	note $00, NOTELEN_02
	note $38, NOTELEN_03
	note $00, NOTELEN_0C
	vibrato VIBRATO_NONE
	note $36, NOTELEN_09
	vibrato VIBRATO_NONE
	pitch_bend 30
	note $35
	note $31, NOTELEN_06
	pitch_bend 0
	volume_add 2
	snd_loop SndData_21_Ch1
SndData_21_Ch2:
	duty_cycle $40
	volume_add -5
	fine_tune_value -2
	note $00, NOTELEN_09
	vibrato VIBRATO_5F
	note $33, NOTELEN_30
	vibrato VIBRATO_NONE
	pitch_bend 30
	volume_add 2
	note $38, NOTELEN_03
	note $33
	note $00
	note $31
	note $00
	note $30
	note $00
	note $31
	note $00
	note $30
	note $31
	note $33
	pitch_bend 0
	volume_add -2
	vibrato VIBRATO_62
	note $2E, NOTELEN_0C
	vibrato VIBRATO_5F
	instrument INSTR_65
	note $2C, NOTELEN_30
	instrument INSTR_NONE
	vibrato VIBRATO_NONE
	pitch_bend 50
	volume_add 2
	note $38, NOTELEN_03
	note $2C
	note $00
	note $30
	note $00
	note $31
	note $00
	note $33
	note $00
	note $31
	note $00
	note $33
	pitch_bend 0
	volume_add -2
	vibrato VIBRATO_62
	note $31
	vibrato VIBRATO_NONE
	note $30
	note $2E, NOTELEN_06
	vibrato VIBRATO_5F
	instrument INSTR_65
	note $2C, NOTELEN_30
	instrument INSTR_NONE
	vibrato VIBRATO_NONE
	note $2C, NOTELEN_03
	note $31
	note $00
	note $33
	note $00
	note $33
	note $00
	note $35
	note $00
	note $36
	note $35
	note $36
	note $35, NOTELEN_06
	note $33
	note $38, NOTELEN_03
	note $2C
	note $00
	note $2C
	note $00
	note $2C
	note $00
	note $36
	note $35
	note $00
	note $33
	note $00
	note $31
	note $33, NOTELEN_03
	note $00, NOTELEN_06
	note $33, NOTELEN_03
	note $00
	note $33
	note $00
	vibrato VIBRATO_63
	note $33, NOTELEN_09
	vibrato VIBRATO_NONE
	note $00, NOTELEN_CUSTOM, $1B
	vibrato VIBRATO_5F
	note $35, NOTELEN_30
	vibrato VIBRATO_62
	note $36, NOTELEN_12
	vibrato VIBRATO_NONE
	note $35
	note $31, NOTELEN_0C
	vibrato VIBRATO_62
	note $33, NOTELEN_12
	vibrato VIBRATO_NONE
	instrument INSTR_65
	volume_add -1
	note $2C, NOTELEN_CUSTOM, $4E
	volume_add 1
	instrument INSTR_NONE
	vibrato VIBRATO_5F
	note $35, NOTELEN_30
	vibrato VIBRATO_NONE
	note $36, NOTELEN_12
	note $35
	note $31, NOTELEN_0C
	vibrato VIBRATO_62
	note $33, NOTELEN_12
	vibrato VIBRATO_NONE
	instrument INSTR_65
	volume_add -1
	note $38, NOTELEN_CUSTOM, $4E
	volume_add 1
	instrument INSTR_NONE
	vibrato VIBRATO_62
	note $36, NOTELEN_06
	vibrato VIBRATO_NONE
	note $35, NOTELEN_03
	note $33
	note $00, NOTELEN_06
	note $36
	note $35, NOTELEN_03
	note $33
	note $00, NOTELEN_12
	vibrato VIBRATO_62
	note $36, NOTELEN_06
	vibrato VIBRATO_NONE
	note $35, NOTELEN_03
	note $33
	note $31
	note $33
	note $00
	note $33, NOTELEN_06
	note $38, NOTELEN_03
	note $00, NOTELEN_06
	note $38, NOTELEN_03
	note $00, NOTELEN_09
	vibrato VIBRATO_62
	note $36, NOTELEN_06
	vibrato VIBRATO_NONE
	note $35, NOTELEN_03
	note $33
	note $00, NOTELEN_06
	note $36
	note $35, NOTELEN_03
	note $33
	note $00, NOTELEN_12
	note $2C, NOTELEN_03
	note $38, NOTELEN_04
	note $00, NOTELEN_02
	note $38, NOTELEN_03
	note $00, NOTELEN_0C
	vibrato VIBRATO_NONE
	note $36, NOTELEN_09
	vibrato VIBRATO_NONE
	pitch_bend 30
	note $00, NOTELEN_06
	pitch_bend 0
	fine_tune_value 2
	volume_add 5
	snd_loop SndData_21_Ch2
SndData_21_Ch3:
	wave_id WAVE_0D
	volume_add 5
	note $14, NOTELEN_03
	note $00
	note $19
	note $1B, NOTELEN_06
	note $00, NOTELEN_03
	note $14
	note $00
	note $19
	note $1B, NOTELEN_06
	note $00, NOTELEN_03
	note $1B, NOTELEN_06
	note $20
	note $14, NOTELEN_03
	note $00
	note $19
	note $1B, NOTELEN_06
	note $00, NOTELEN_03
	note $14
	note $00
	note $19
	note $1B, NOTELEN_06
	note $1E
	note $00, NOTELEN_09
	note $14, NOTELEN_03
	note $00
	note $19
	note $1B, NOTELEN_06
	note $00, NOTELEN_03
	note $14
	note $00
	note $20
	note $14
	note $20, NOTELEN_06
	note $1E
	note $1D
	note $0F, NOTELEN_03
	note $1B
	note $00
	note $0F
	note $1B
	note $00
	note $0F
	note $1B
	note $00, NOTELEN_18
	note $14, NOTELEN_03
	note $00
	note $19
	note $1B, NOTELEN_06
	note $00, NOTELEN_03
	note $14
	note $00
	note $19
	note $1B, NOTELEN_06
	note $00, NOTELEN_03
	note $1B, NOTELEN_06
	note $20
	note $14, NOTELEN_03
	note $00
	note $19
	note $1B, NOTELEN_06
	note $00, NOTELEN_03
	note $14
	note $00
	note $19
	note $1B, NOTELEN_06
	note $00, NOTELEN_03
	note $1B, NOTELEN_06
	note $20
	note $20, NOTELEN_03
	note $14
	note $14
	note $18
	note $00
	note $19
	note $00
	note $1B
	note $00
	note $1E
	note $00
	note $1E
	note $1D
	note $1D
	note $1B, NOTELEN_06
	note $38, NOTELEN_03
	note $00, NOTELEN_06
	note $38, NOTELEN_03
	note $00
	note $38
	note $00
	note $38, NOTELEN_09
	note $00, NOTELEN_12
	note $0D, NOTELEN_06
	note $00, NOTELEN_0C
	note $19, NOTELEN_02
	note $00, NOTELEN_01
	note $19, NOTELEN_09
	note $0D, NOTELEN_03
	note $00, NOTELEN_06
	note $0D
	note $00, NOTELEN_03
	note $0D, NOTELEN_09
	note $19, NOTELEN_03
	note $00, NOTELEN_06
	note $14
	note $0F
	note $00, NOTELEN_03
	note $11, NOTELEN_06
	note $00, NOTELEN_03
	note $12, NOTELEN_06
	note $0C, NOTELEN_09
	note $08, NOTELEN_03
	note $00, NOTELEN_06
	note $08
	note $00, NOTELEN_0C
	note $08, NOTELEN_03
	note $12
	note $11
	note $12
	note $14, NOTELEN_06
	note $12, NOTELEN_02
	note $00, NOTELEN_01
	note $11, NOTELEN_03
	note $00
	note $0F, NOTELEN_02
	note $00, NOTELEN_04
	note $14, NOTELEN_0C
	note $00, NOTELEN_CUSTOM, $0F
	note $0D, NOTELEN_06
	note $00, NOTELEN_0C
	note $19, NOTELEN_02
	note $00, NOTELEN_01
	note $19, NOTELEN_09
	note $0D, NOTELEN_03
	note $00, NOTELEN_06
	note $0D
	note $00, NOTELEN_03
	note $0D, NOTELEN_06
	note $00, NOTELEN_0C
	note $19, NOTELEN_02
	note $00, NOTELEN_01
	note $19, NOTELEN_09
	note $0D, NOTELEN_03
	note $00, NOTELEN_06
	note $0D
	note $00, NOTELEN_03
	note $18
	note $08, NOTELEN_06
	note $08
	note $00, NOTELEN_0C
	note $0F, NOTELEN_03
	note $08
	note $00
	note $08
	note $00, NOTELEN_09
	note $08, NOTELEN_03
	note $00
	note $14
	note $08
	note $00
	note $14
	note $08
	note $00
	note $14, NOTELEN_09
	note $0F
	note $08, NOTELEN_06
	note $14, NOTELEN_03
	note $00, NOTELEN_06
	note $0F, NOTELEN_03
	note $00, NOTELEN_06
	note $08, NOTELEN_03
	note $00, NOTELEN_06
	note $0F, NOTELEN_03
	note $00, NOTELEN_06
	note $1B, NOTELEN_03
	vibrato VIBRATO_63
	note $0F, NOTELEN_09
	vibrato VIBRATO_62
	note $18, NOTELEN_06
	vibrato VIBRATO_NONE
	note $19, NOTELEN_03
	note $1B
	note $18
	note $14
	note $00
	note $14
	note $00
	note $2C
	note $00, NOTELEN_06
	note $2C, NOTELEN_03
	note $00, NOTELEN_09
	note $14, NOTELEN_06
	note $20, NOTELEN_03
	note $0F
	note $00, NOTELEN_06
	note $14, NOTELEN_03
	note $00
	note $1B
	note $20
	note $00, NOTELEN_12
	note $08, NOTELEN_03
	note $08
	note $00
	note $08, NOTELEN_02
	note $00, NOTELEN_CUSTOM, $0D
	note $12, NOTELEN_09
	note $11
	note $0D, NOTELEN_06
	volume_add -5
	snd_loop SndData_21_Ch3
SndData_21_Ch4:
	snd_call .sub0
	snd_call .sub1
	snd_call .sub0
	snd_call .sub2
	snd_call .sub3
	snd_call .sub3
	snd_call .sub3
	snd_call .sub3
	snd_call .sub3
	snd_call .sub3
	snd_call .sub3
	snd_call .sub4
	snd_call .sub5
	snd_loop SndData_21_Ch4
.sub0:
	note_ex PRESET_01, NOTELEN_03
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_01
	note_ex PRESET_01
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_01
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_01
	note_ex PRESET_01
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_00
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_01
	snd_ret
.sub1:
	note_ex PRESET_01, NOTELEN_03
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_01
	note_ex PRESET_01
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_01
	note_ex PRESET_01
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_00
	note_ex PRESET_04
	note_ex PRESET_01
	note_ex PRESET_02
	snd_ret
.sub2:
	note_ex PRESET_01, NOTELEN_03
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_01
	note_ex PRESET_01
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_00
	note_ex PRESET_01
	note_ex PRESET_01
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_04
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_01
	note_ex PRESET_02
	snd_ret
.sub3:
	note_ex PRESET_01, NOTELEN_03
	note_ex PRESET_02
	note_ex PRESET_03
	note_ex PRESET_01
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_03
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_03
	note_ex PRESET_01
	snd_ret
.sub4:
	note_ex PRESET_01, NOTELEN_03
	note_ex PRESET_04
	note_ex PRESET_00
	note_ex PRESET_01
	note_ex PRESET_04
	note_ex PRESET_00
	note_ex PRESET_03
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_00
	note_ex PRESET_04
	note_ex PRESET_01
	note_ex PRESET_01
	snd_ret
.sub5:
	note_ex PRESET_00
	note $00
	note_ex PRESET_01
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_04
	note_ex PRESET_01
	note_ex PRESET_04
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_00
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_00
	note_ex PRESET_04
	note_ex PRESET_01
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_00
	note_ex PRESET_03
	note_ex PRESET_02
	note_ex PRESET_04
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_00
	note_ex PRESET_04
	note_ex PRESET_02
	note_ex PRESET_04
	note_ex PRESET_00
	snd_ret
