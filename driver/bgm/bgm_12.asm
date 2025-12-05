SndHeader_BGM_12:
	db 4 ; Number of slots
.slot0:
	db SNDSLOT0 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 12 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -24 ; iSndChInfo_NoteIdBase
	db 75 ; iSndChInfo_Speed
	db SNDCH_PULSE1 ; iSndChInfo_ChId
	dw SndData_12_Ch1 ; Data pointer
	db $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot1:
	db SNDSLOT1 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 11 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -24 ; iSndChInfo_NoteIdBase
	db 75 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_12_Ch2 ; Data pointer
	db $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot2:
	db SNDSLOT2 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -24 ; iSndChInfo_NoteIdBase
	db 75 ; iSndChInfo_Speed
	db SNDCH_WAVE ; iSndChInfo_ChId
	dw SndData_12_Ch3 ; Data pointer
	db WAVE_00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot3:
	db SNDSLOT3 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db 0 ; iSndChInfo_NoteIdBase
	db 75 ; iSndChInfo_Speed
	db SNDCH_NOISE ; iSndChInfo_ChId
	dw SndData_12_Ch4 ; Data pointer
	db $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_12_Ch1:
	duty_cycle $40
	fine_tune_value -1
	snd_call .sub0
	fine_tune 1
	snd_call .sub0
	fine_tune -3
	snd_call .sub0
	fine_tune 2
	snd_call .sub1
	chan_stop
.sub0:
	instrument INSTR_6E
	volume_add 3
	note $38, NOTELEN_02
	note $00
	instrument INSTR_NONE
	volume_add -10
	note $38
	note $00
	instrument INSTR_6A
	volume_add 5
	note $38
	note $00
	instrument INSTR_NONE
	vibrato VIBRATO_NONE
	volume_add 2
	note $38, NOTELEN_CUSTOM, $0C
	instrument INSTR_6E
	volume_add 3
	note $2C, NOTELEN_02
	note $00
	instrument INSTR_NONE
	volume_add -10
	note $2C
	note $00
	instrument INSTR_6A
	volume_add 5
	note $2C
	note $00
	instrument INSTR_NONE
	vibrato VIBRATO_NONE
	volume_add 2
	note $2C, NOTELEN_CUSTOM, $0C
	instrument INSTR_NONE
	snd_ret
.sub1:
	instrument INSTR_6E
	volume_add 3
	note $33, NOTELEN_02
	note $00
	instrument INSTR_NONE
	volume_add -10
	note $33
	note $00
	volume_add 5
	instrument INSTR_70
	note $33
	note $00
	instrument INSTR_NONE
	volume_add 2
	note $33, NOTELEN_CUSTOM, $1E
	instrument INSTR_69
	note $33, NOTELEN_CUSTOM, $0C
	instrument INSTR_NONE
	note $00, NOTELEN_2A
	snd_ret
SndData_12_Ch2:
	snd_call .sub0
	snd_call .sub1
	snd_call .sub0
	fine_tune -2
	snd_call .sub1
	fine_tune 1
	snd_call .sub0
	fine_tune -2
	snd_call .sub1
	fine_tune 3
	snd_call .sub2
	chan_stop
.sub0:
	duty_cycle $40
	instrument INSTR_6D
	volume_add 3
	note $34, NOTELEN_02
	note $00
	volume_add -3
	volume_add -2
	note $34
	note $00
	instrument INSTR_6A
	note $34
	note $00
	volume_add 2
	instrument INSTR_67
	note $34, NOTELEN_0C
	volume_add -7
	snd_ret
.sub1:
	duty_cycle $80
	instrument INSTR_6D
	volume_add 3
	note $33, NOTELEN_02
	note $00
	volume_add -3
	volume_add 2
	note $33
	note $00
	volume_add 2
	instrument INSTR_6A
	note $33
	note $00
	volume_add 3
	instrument INSTR_67
	note $33, NOTELEN_0C
	snd_ret
.sub2:
	duty_cycle $40
	instrument INSTR_6D
	note $30, NOTELEN_02
	note $00
	volume_add -2
	note $30
	note $00
	note $30
	note $00
	volume_add 2
	note $30, NOTELEN_CUSTOM, $2A
	instrument INSTR_NONE
	note $00, NOTELEN_2A
	snd_ret
SndData_12_Ch3:
	wave_id WAVE_01
	volume_add -3
	note $25, NOTELEN_30
	note $25
	note $24
	note $20, NOTELEN_24
	note $20, NOTELEN_0C
	instrument INSTR_6B
	note $20, NOTELEN_06
	note $00, NOTELEN_2A
	chan_stop
SndData_12_Ch4:
	snd_call .sub0
	snd_call .sub0
	snd_call .sub0
	snd_call .sub1
	chan_stop
.sub0:
	note_ex PRESET_08, NOTELEN_04
	volume_add -7
	note_ex PRESET_00
	volume_add -1
	note_ex PRESET_00
	volume_add 8
	note_ex PRESET_00, NOTELEN_06
	note $00
	volume_add -5
	note_ex PRESET_00, NOTELEN_04
	volume_add -2
	note_ex PRESET_00
	volume_add -1
	note_ex PRESET_00
	volume_add 8
	note_ex PRESET_00, NOTELEN_06
	note $00
	snd_ret
.sub1:
	note_ex PRESET_08, NOTELEN_04
	volume_add -3
	note_ex PRESET_00
	volume_add -2
	note_ex PRESET_00
	volume_add 5
	note_ex PRESET_00, NOTELEN_06
	note $00, NOTELEN_1E
	snd_ret
