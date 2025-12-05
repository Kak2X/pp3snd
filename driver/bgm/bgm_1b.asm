SndHeader_BGM_1B:
	db 4 ; Number of slots
.slot0:
	db SNDSLOT0 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_08 ; iSndChInfo_Instrument
	db VIBRATO_0F ; iSndChInfo_Vibrato
	db -13 ; iSndChInfo_NoteIdBase
	db 90 ; iSndChInfo_Speed
	db SNDCH_WAVE ; iSndChInfo_ChId
	dw SndData_1B_Ch3 ; Data pointer
	db WAVE_00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot1:
	db SNDSLOT1 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_0F ; iSndChInfo_Vibrato
	db -25 ; iSndChInfo_NoteIdBase
	db 90 ; iSndChInfo_Speed
	db SNDCH_PULSE1 ; iSndChInfo_ChId
	dw SndData_1B_Ch1 ; Data pointer
	db $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot2:
	db SNDSLOT2 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_0F ; iSndChInfo_Vibrato
	db -25 ; iSndChInfo_NoteIdBase
	db 90 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_1B_Ch2 ; Data pointer
	db $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot3:
	db SNDSLOT3 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db 0 ; iSndChInfo_NoteIdBase
	db 90 ; iSndChInfo_Speed
	db SNDCH_NOISE ; iSndChInfo_ChId
	dw SndData_1B_Ch4 ; Data pointer
	db $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_1B_Ch3:
	wave_id WAVE_09
	note $00, NOTELEN_06
	note $20, NOTELEN_0C
	note $27, NOTELEN_03
	note $00, NOTELEN_CUSTOM, $0F
	note $2E, NOTELEN_CUSTOM, $0F
	note $27, NOTELEN_03
	note $00, NOTELEN_12
	note $20, NOTELEN_06
	note $00, NOTELEN_03
	note $20, NOTELEN_06
	note $00, NOTELEN_03
	note $27, NOTELEN_06
	note $00, NOTELEN_03
	note $27, NOTELEN_06
	note $00, NOTELEN_03
	note $22, NOTELEN_06
	note $24, NOTELEN_03
	note $26, NOTELEN_06
	note $27, NOTELEN_03
	note $00, NOTELEN_12
	note $00, NOTELEN_06
	note $20, NOTELEN_0C
	note $27, NOTELEN_03
	note $00, NOTELEN_CUSTOM, $0F
	note $2E, NOTELEN_CUSTOM, $0F
	note $27, NOTELEN_03
	note $00, NOTELEN_12
	note $20, NOTELEN_06
	note $00, NOTELEN_03
	note $20, NOTELEN_06
	note $00, NOTELEN_03
	note $27, NOTELEN_06
	note $00, NOTELEN_03
	note $27, NOTELEN_06
	note $00, NOTELEN_03
	volume_add -1
	note $2E, NOTELEN_06
	volume_add 1
	note $25, NOTELEN_03
	note $26, NOTELEN_06
	volume_add 2
	note $27, NOTELEN_03
	note $00, NOTELEN_06
	wave_id WAVE_04
	vibrato VIBRATO_12
	volume_add -1
	note $5B, NOTELEN_09
	chan_stop
SndData_1B_Ch1:
	duty_cycle $40
	instrument INSTR_07
	note $00, NOTELEN_06
	volume_add 4
	note $44, NOTELEN_0C
	note $43, NOTELEN_03
	volume_add -8
	note $43
	note $00, NOTELEN_09
	volume_add 8
	note $43, NOTELEN_03
	note $41, NOTELEN_06
	note $3F, NOTELEN_03
	note $41, NOTELEN_06
	note $43, NOTELEN_03
	volume_add -8
	note $43
	note $00, NOTELEN_06
	volume_add 8
	note $3A, NOTELEN_03
	note $3F
	note $43
	volume_add -8
	note $43
	note $00
	volume_add 8
	note $44
	volume_add -8
	note $44
	note $00, NOTELEN_06
	volume_add 8
	note $43, NOTELEN_03
	volume_add -8
	note $43
	note $00
	volume_add 8
	note $43
	volume_add -8
	note $43
	note $00
	volume_add 8
	note $41, NOTELEN_06
	note $3F, NOTELEN_03
	note $3E, NOTELEN_06
	note $3F, NOTELEN_03
	volume_add -8
	note $3F
	note $00
	duty_cycle $80
	instrument INSTR_11
	panning SNDOUT_CHL
	volume_add 8
	note $3F
	note $3E, NOTELEN_06
	note $3D, NOTELEN_03
	note $3C
	note $00
	duty_cycle $40
	instrument INSTR_07
	panning SNDOUT_CHALL
	note $44, NOTELEN_0C
	note $43, NOTELEN_03
	volume_add -8
	note $43
	note $00, NOTELEN_09
	volume_add 8
	note $43, NOTELEN_03
	note $41, NOTELEN_06
	note $3F, NOTELEN_03
	note $41, NOTELEN_06
	note $43, NOTELEN_03
	volume_add -8
	note $43
	note $00
	volume_add 8
	note $39
	note $3A
	note $3F
	note $43
	note $44
	volume_add -8
	note $44
	note $00
	volume_add 8
	note $44
	volume_add -8
	note $44
	note $00
	volume_add 8
	note $43
	volume_add -8
	note $43
	note $00
	volume_add 8
	note $43
	volume_add -8
	note $43
	note $00
	volume_add 8
	note $41, NOTELEN_CUSTOM, $0F
	note $3F, NOTELEN_03
	volume_add -8
	note $3F
	note $00, NOTELEN_CUSTOM, $0F
	chan_stop
SndData_1B_Ch2:
	duty_cycle $80
	instrument INSTR_07
	fine_tune_value -1
	note $00, NOTELEN_06
	volume_add 3
	note $3F, NOTELEN_0C
	note $3F, NOTELEN_03
	volume_add -8
	note $3F
	note $00, NOTELEN_0C
	volume_add 8
	note $3E, NOTELEN_CUSTOM, $0F
	note $3F, NOTELEN_03
	volume_add -8
	note $3F
	note $00, NOTELEN_06
	volume_add 8
	note $3A, NOTELEN_03
	note $3F
	note $43
	volume_add -8
	note $43
	note $00
	volume_add 8
	note $3F
	volume_add -8
	note $3F
	note $00, NOTELEN_06
	volume_add 8
	note $3F, NOTELEN_03
	volume_add -8
	note $3F
	note $00
	volume_add 8
	note $3F
	volume_add -8
	note $3F
	note $00
	volume_add 8
	note $3A, NOTELEN_CUSTOM, $0F
	note $3A, NOTELEN_03
	volume_add -8
	note $3A
	note $00
	volume_add 7
	instrument INSTR_11
	note $3C
	note $3B, NOTELEN_06
	note $3A, NOTELEN_03
	note $38
	note $00
	volume_add 1
	instrument INSTR_07
	note $3F, NOTELEN_0C
	note $3F, NOTELEN_03
	volume_add -8
	note $3F
	note $00, NOTELEN_0C
	volume_add 8
	note $3E, NOTELEN_CUSTOM, $0F
	note $3F, NOTELEN_03
	volume_add -8
	note $3F
	note $00
	volume_add 8
	note $39
	note $3A
	note $3F
	note $43
	note $3F
	volume_add -8
	note $3F
	note $00
	volume_add 8
	note $3F
	volume_add -8
	note $3F
	note $00
	volume_add 8
	note $3F
	volume_add -8
	note $3F
	note $00
	volume_add 8
	note $3F
	volume_add -8
	note $3F
	note $00
	volume_add 8
	note $3E, NOTELEN_CUSTOM, $0F
	note $3A, NOTELEN_03
	volume_add -8
	note $3A
	note $00, NOTELEN_CUSTOM, $0F
	chan_stop
SndData_1B_Ch4:
	snd_call .sub0
	snd_call .sub1
	snd_call .sub0
	snd_call .sub0
	snd_call .sub0
	snd_call .sub1
	snd_call .sub0
	note_ex PRESET_01, NOTELEN_06
	note_ex PRESET_00, NOTELEN_03
	note_ex PRESET_03
	note_ex PRESET_02
	note_ex PRESET_01
	chan_stop
.sub0:
	note_ex PRESET_01, NOTELEN_06
	note_ex PRESET_00, NOTELEN_03
	note_ex PRESET_03, NOTELEN_06
	note_ex PRESET_02, NOTELEN_03
	note_ex PRESET_01
	note $00
	note_ex PRESET_02
	note_ex PRESET_00, NOTELEN_06
	note_ex PRESET_01, NOTELEN_03
	snd_ret
.sub1:
	note_ex PRESET_01, NOTELEN_06
	note_ex PRESET_00, NOTELEN_03
	note_ex PRESET_03, NOTELEN_06
	note_ex PRESET_02, NOTELEN_03
	note_ex PRESET_01
	note $00
	note_ex PRESET_02
	note_ex PRESET_00, NOTELEN_09
	snd_ret
	chan_stop
