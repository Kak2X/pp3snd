SndHeader_BGM_08:
	db 4 ; Number of slots
.slot0:
	db SNDSLOT0 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 14 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -12 ; iSndChInfo_NoteIdBase
	db 65 ; iSndChInfo_Speed
	db SNDCH_PULSE1 ; iSndChInfo_ChId
	dw SndData_08_Ch1 ; Data pointer
	db $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot1:
	db SNDSLOT1 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 12 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -24 ; iSndChInfo_NoteIdBase
	db 65 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_08_Ch2 ; Data pointer
	db $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot2:
	db SNDSLOT2 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 14 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -12 ; iSndChInfo_NoteIdBase
	db 65 ; iSndChInfo_Speed
	db SNDCH_WAVE ; iSndChInfo_ChId
	dw SndData_08_Ch3 ; Data pointer
	db WAVE_00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot3:
	db SNDSLOT3 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 12 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db 0 ; iSndChInfo_NoteIdBase
	db 65 ; iSndChInfo_Speed
	db SNDCH_NOISE ; iSndChInfo_ChId
	dw SndData_08_Ch4 ; Data pointer
	db $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_08_Ch1:
	duty_cycle $80
	note $00, NOTELEN_09
.loop:
	pitch_bend 10
	volume_add 1
	snd_call .sub0
	fine_tune -2
	snd_call .sub0
	fine_tune 2
	snd_call .sub0
	pitch_bend 15
	instrument INSTR_71
	vibrato VIBRATO_68
	snd_call .sub1
	vibrato VIBRATO_66
	instrument INSTR_NONE
	fine_tune -2
	snd_call .sub1
	fine_tune -5
	snd_call .sub1
	fine_tune -3
	instrument INSTR_6F
	snd_call .sub1
	fine_tune 10
	instrument INSTR_NONE
	vibrato VIBRATO_NONE
	volume_add -1
	snd_loop .loop
.sub0:
	volume_add 1
	vibrato VIBRATO_65
	instrument INSTR_70
	note $30, NOTELEN_02
	note $00, NOTELEN_01
	vibrato VIBRATO_NONE
	volume_add -1
	instrument INSTR_6E
	vibrato VIBRATO_66
	note $30, NOTELEN_03
	vibrato VIBRATO_NONE
	volume_add 2
	instrument INSTR_70
	note $2E, NOTELEN_02
	note $00, NOTELEN_01
	volume_add -1
	instrument INSTR_6E
	vibrato VIBRATO_66
	note $30, NOTELEN_03
	vibrato VIBRATO_NONE
	instrument INSTR_NONE
	volume_add -12
	fine_tune_value -1
	note $2E, NOTELEN_03
	note $30
	volume_add -6
	fine_tune_value 1
	note $2E
	note $30
	fine_tune_value 1
	note $2E, NOTELEN_CUSTOM, $16
	volume_add 1
	fine_tune_value -2
	note $2E, NOTELEN_02
	fine_tune_value 1
	volume_add 17
	snd_ret
.sub1:
	volume_add -7
	note $33, NOTELEN_CUSTOM, $0A
	volume_add -5
	fine_tune_value -1
	note $33, NOTELEN_02
	volume_add 5
	volume_add 7
	fine_tune_value 1
	snd_ret
SndData_08_Ch2:
	duty_cycle $80
	fine_tune_value -1
	vibrato VIBRATO_11
	instrument INSTR_13
	panning SNDOUT_CHALL
	note $25, NOTELEN_03
	volume_add 3
	volume_add -3
	panning SNDOUT_CHALL
	note $25, NOTELEN_01
	note $00, NOTELEN_02
	volume_add 3
	panning SNDOUT_CHALL
	note $1E, NOTELEN_03
	vibrato VIBRATO_NONE
	instrument INSTR_NONE
.loop:
	volume_add -11
	vibrato VIBRATO_0C
	snd_call .sub0
	snd_call .sub0
	fine_tune -5
	snd_call .sub0
	snd_call .sub0
	fine_tune 3
	snd_call .sub0
	snd_call .sub0
	fine_tune -5
	snd_call .sub0
	snd_call .sub0
	fine_tune 7
	snd_call .sub0
	snd_call .sub0
	fine_tune -5
	snd_call .sub0
	snd_call .sub0
	fine_tune 3
	snd_call .sub0
	snd_call .sub0
	fine_tune 2
	duty_cycle $80
	vibrato VIBRATO_11
	instrument INSTR_13
	volume_add 11
	panning SNDOUT_CHR
	note $30, NOTELEN_03
	panning SNDOUT_CHL
	note $2A, NOTELEN_01
	volume_add -4
	panning SNDOUT_CHALL
	note $1E
	note $1E
	volume_add 2
	panning SNDOUT_CHL
	note $1E, NOTELEN_03
	volume_add 2
	panning SNDOUT_CHR
	note $24
	panning SNDOUT_CHL
	note $1E
	note $1E
	volume_add 1
	panning SNDOUT_CHALL
	note $24
	volume_add 6
	note $00
	vibrato VIBRATO_NONE
	instrument INSTR_NONE
	volume_add -18
	snd_loop .loop
.sub0:
	duty_cycle $00
	instrument INSTR_69
	volume_add -10
	note $3F, NOTELEN_06
	instrument INSTR_NONE
	volume_add 15
	note $3C, NOTELEN_02
	volume_add -11
	fine_tune_value -1
	duty_cycle $80
	note $3C
	fine_tune_value 2
	volume_add -3
	duty_cycle $00
	note $3C
	volume_add 14
	fine_tune_value -1
	snd_ret
SndData_08_Ch3:
	wave_id WAVE_09
	note $00, NOTELEN_09
.loop:
	volume_add -2
	snd_call .sub0
	fine_tune -5
	snd_call .sub0
	fine_tune 3
	snd_call .sub0
	fine_tune 2
	snd_call .sub1
	snd_call .sub0
	fine_tune -5
	snd_call .sub0
	fine_tune 3
	snd_call .sub0
	fine_tune 2
	snd_call .sub1
	volume_add 2
	snd_loop .loop
.sub0:
	note $00, NOTELEN_09
	note $14, NOTELEN_01
	note $00, NOTELEN_02
	note $1B, NOTELEN_06
	pitch_bend 60
	note $20
	pitch_bend 0
	snd_ret
.sub1:
	note $00, NOTELEN_06
	note $0D, NOTELEN_01
	note $00, NOTELEN_02
	note $0D, NOTELEN_01
	note $00, NOTELEN_02
	note $14, NOTELEN_06
	note $19
	snd_ret
.unused_sub2:
	note $00, NOTELEN_06
	note $14, NOTELEN_01 ;X
	note $00, NOTELEN_02 ;X
	note $14, NOTELEN_01 ;X
	note $00, NOTELEN_02 ;X
	note $0D, NOTELEN_06 ;X
	note $14 ;X
	snd_ret ;X
SndData_08_Ch4:
	snd_call .sub0
.loop:
	snd_call .sub1
	snd_call .sub1
	snd_call .sub1
	snd_call .sub1
	snd_call .sub1
	snd_call .sub1
	snd_call .sub1
	snd_call .sub2
	snd_loop .loop
.sub0:
	note_ex PRESET_06, NOTELEN_01
	volume_add 3
	note $00
	volume_add -3
	note $00
	note_ex PRESET_06
	note $00, NOTELEN_02
	volume_add 3
	note_ex PRESET_06, NOTELEN_03
	snd_ret
.sub1:
	note_ex PRESET_01, NOTELEN_03
	note_ex PRESET_02
	note_ex PRESET_03
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_02
	snd_ret
.sub2:
	note_ex PRESET_07, NOTELEN_03
	note_ex PRESET_05, NOTELEN_01
	volume_add -4
	note_ex PRESET_06
	note_ex PRESET_06
	volume_add 2
	note_ex PRESET_05, NOTELEN_03
	volume_add 2
	note_ex PRESET_07
	note_ex PRESET_05
	note_ex PRESET_05
	note_ex PRESET_06
	note_ex PRESET_02
	snd_ret
