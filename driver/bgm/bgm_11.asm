SndHeader_BGM_11:
	db 4 ; Number of slots
.slot0:
	db SNDSLOT0 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 9 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -36 ; iSndChInfo_NoteIdBase
	db 136 ; iSndChInfo_Speed
	db SNDCH_PULSE1 ; iSndChInfo_ChId
	dw SndData_11_Ch1 ; Data pointer
	db $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot1:
	db SNDSLOT1 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 9 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -36 ; iSndChInfo_NoteIdBase
	db 136 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_11_Ch2 ; Data pointer
	db $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot2:
	db SNDSLOT2 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -12 ; iSndChInfo_NoteIdBase
	db 136 ; iSndChInfo_Speed
	db SNDCH_WAVE ; iSndChInfo_ChId
	dw SndData_11_Ch3 ; Data pointer
	db WAVE_00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot3:
	db SNDSLOT3 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db 0 ; iSndChInfo_NoteIdBase
	db 136 ; iSndChInfo_Speed
	db SNDCH_NOISE ; iSndChInfo_ChId
	dw SndData_11_Ch4 ; Data pointer
	db $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_11_Ch1:
	duty_cycle $40
	pitch_bend 20
	vibrato VIBRATO_61
	set_var iSndChInfo_LoopTimer0, $0F
	.loop:
		note $47, NOTELEN_0C
		instrument INSTR_69
		note $44, NOTELEN_09
		note $44, NOTELEN_03
		note $00
		note $47
		note $00
		note $47
		note $44
		note $00
		note $44
		note $00
		instrument INSTR_NONE
		fine_tune 1
		snd_loop .loop, iSndChInfo_LoopTimer0
	fine_tune -15
	instrument INSTR_69
	note $56, NOTELEN_03
	note $55
	note $54
	note $53
	note $52
	note $51
	note $50
	note $4F
	note $4E
	note $4D
	note $4C
	note $4B
	note $4A
	note $49
	note $48
	note $47
	snd_loop SndData_11_Ch1
SndData_11_Ch2:
	duty_cycle $40
	pitch_bend 20
	vibrato VIBRATO_0D
	set_var iSndChInfo_LoopTimer0, $0F
	.loop:
		fine_tune_value -2
		instrument INSTR_6D
		note $44, NOTELEN_0C
		note $40, NOTELEN_09
		note $40, NOTELEN_03
		note $00
		note $44
		note $00
		note $44
		note $40
		note $00
		note $40
		note $00
		fine_tune_value 2
		fine_tune 1
		snd_loop .loop, iSndChInfo_LoopTimer0
	fine_tune_value -2
	fine_tune -15
	note $53, NOTELEN_03
	note $52
	note $51
	note $50
	note $4F
	note $4E
	note $4D
	note $4C
	note $4B
	note $4A
	note $49
	note $48
	note $47
	note $46
	note $45
	note $44
	fine_tune_value 2
	snd_loop SndData_11_Ch2
SndData_11_Ch3:
	wave_id WAVE_0D
	instrument INSTR_62
	set_var iSndChInfo_LoopTimer0, $0F
	.loop:
		note $1C, NOTELEN_09
		note $23, NOTELEN_03
		note $23, NOTELEN_06
		note $17
		note $1C, NOTELEN_09
		note $23, NOTELEN_03
		note $23, NOTELEN_06
		note $17
		fine_tune 1
		snd_loop .loop, iSndChInfo_LoopTimer0
	fine_tune -15
	note $2B, NOTELEN_09
	note $32, NOTELEN_03
	note $32, NOTELEN_06
	note $26
	note $2B, NOTELEN_09
	note $32, NOTELEN_03
	note $32, NOTELEN_06
	note $26
	snd_loop SndData_11_Ch3
SndData_11_Ch4:
	set_var iSndChInfo_LoopTimer0, $10
	.loop:
		note_ex PRESET_01, NOTELEN_03
		note $00
		note_ex PRESET_02
		volume_add -3
		note_ex PRESET_01
		volume_add 3
		note_ex PRESET_01
		note_ex PRESET_02
		volume_add -3
		note_ex PRESET_01
		volume_add 3
		note_ex PRESET_02
		note_ex PRESET_01
		note $00
		note_ex PRESET_02
		volume_add -3
		note_ex PRESET_01
		volume_add 3
		note_ex PRESET_01
		note_ex PRESET_02
		volume_add -3
		note_ex PRESET_01
		note_ex PRESET_01
		volume_add 3
		snd_loop .loop, iSndChInfo_LoopTimer0
	snd_loop SndData_11_Ch4
