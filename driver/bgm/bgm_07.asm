SndHeader_BGM_07:
	db 4 ; Number of slots
.slot0:
	db SNDSLOT0 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_08 ; iSndChInfo_Instrument
	db VIBRATO_0F ; iSndChInfo_Vibrato
	db -13 ; iSndChInfo_NoteIdBase
	db 68 ; iSndChInfo_Speed
	db SNDCH_WAVE ; iSndChInfo_ChId
	dw SndData_07_Ch3 ; Data pointer
	db WAVE_00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot1:
	db SNDSLOT1 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_07 ; iSndChInfo_Instrument
	db VIBRATO_0F ; iSndChInfo_Vibrato
	db -25 ; iSndChInfo_NoteIdBase
	db 68 ; iSndChInfo_Speed
	db SNDCH_PULSE1 ; iSndChInfo_ChId
	dw SndData_07_Ch1 ; Data pointer
	db $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot2:
	db SNDSLOT2 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 13 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_0C ; iSndChInfo_Vibrato
	db -25 ; iSndChInfo_NoteIdBase
	db 68 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_07_Ch2 ; Data pointer
	db $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot3:
	db SNDSLOT3 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db 0 ; iSndChInfo_NoteIdBase
	db 68 ; iSndChInfo_Speed
	db SNDCH_NOISE ; iSndChInfo_ChId
	dw SndData_07_Ch4 ; Data pointer
	db $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_07_Ch3:
	wave_id WAVE_0D
	note $1B, NOTELEN_03
	note $00, NOTELEN_06
	note $1F, NOTELEN_09
	note $22, NOTELEN_06
	note $14, NOTELEN_03
	note $00, NOTELEN_06
	note $18, NOTELEN_09
	note $1B, NOTELEN_06
	note $1B, NOTELEN_03
	note $00, NOTELEN_06
	note $1F, NOTELEN_09
	note $22, NOTELEN_06
	note $14, NOTELEN_03
	note $00, NOTELEN_06
	note $18, NOTELEN_09
	note $1B, NOTELEN_03
	note $1D
	note $1B
	note $00, NOTELEN_06
	note $1F, NOTELEN_09
	note $22, NOTELEN_06
	note $14, NOTELEN_03
	note $00, NOTELEN_06
	note $18, NOTELEN_09
	note $1B, NOTELEN_06
	note $19, NOTELEN_03
	note $00, NOTELEN_06
	note $20, NOTELEN_09
	note $19, NOTELEN_03
	note $18
	note $16
	note $1A
	note $1D
	note $22
	note $00, NOTELEN_06
	note $16
	note $1B, NOTELEN_03
	note $00, NOTELEN_06
	note $1F, NOTELEN_09
	note $22, NOTELEN_06
	note $14, NOTELEN_03
	note $00, NOTELEN_06
	note $18, NOTELEN_09
	note $1B, NOTELEN_06
	note $1B, NOTELEN_03
	note $00, NOTELEN_06
	note $1F, NOTELEN_09
	note $22, NOTELEN_06
	note $14, NOTELEN_03
	note $00, NOTELEN_06
	note $16
	note $16, NOTELEN_03
	note $1D
	note $16
	note $1B
	note $00, NOTELEN_06
	note $1F, NOTELEN_09
	note $22, NOTELEN_06
	note $14, NOTELEN_03
	note $00, NOTELEN_06
	note $18, NOTELEN_09
	note $1B, NOTELEN_06
	note $1B, NOTELEN_03
	note $00
	note $1B
	note $00
	note $19
	note $1A
	note $00
	note $1B
	note $00, NOTELEN_0C
	note $16
	snd_loop SndData_07_Ch3
SndData_07_Ch1:
	duty_cycle $40
	note $43, NOTELEN_03
	volume_add -12
	instrument INSTR_NONE
	note $43
	note $00, NOTELEN_06
	volume_add 12
	instrument INSTR_07
	note $43, NOTELEN_03
	note $42, NOTELEN_01
	note $00, NOTELEN_02
	note $43, NOTELEN_01
	note $00, NOTELEN_02
	note $44
	note $00, NOTELEN_CUSTOM, $0A
	note $48, NOTELEN_03
	volume_add -12
	instrument INSTR_NONE
	note $48
	volume_add 12
	instrument INSTR_07
	note $46, NOTELEN_06
	note $44, NOTELEN_02
	note $00, NOTELEN_01
	note $43, NOTELEN_03
	volume_add -12
	instrument INSTR_NONE
	note $43
	note $00, NOTELEN_06
	volume_add 12
	instrument INSTR_07
	note $43, NOTELEN_03
	note $42, NOTELEN_01
	note $00, NOTELEN_02
	note $43, NOTELEN_01
	note $00, NOTELEN_02
	note $44
	note $00, NOTELEN_CUSTOM, $19
	note $43, NOTELEN_03
	volume_add -12
	instrument INSTR_NONE
	note $43
	note $00, NOTELEN_06
	volume_add 12
	instrument INSTR_07
	note $43, NOTELEN_03
	note $42, NOTELEN_01
	note $00, NOTELEN_02
	note $43, NOTELEN_01
	note $00, NOTELEN_02
	note $44
	note $00, NOTELEN_CUSTOM, $0A
	note $48, NOTELEN_03
	volume_add -12
	instrument INSTR_NONE
	note $48
	volume_add 12
	instrument INSTR_07
	note $46, NOTELEN_06
	note $44, NOTELEN_02
	note $00, NOTELEN_01
	instrument INSTR_17
	note $41, NOTELEN_CUSTOM, $15
	volume_add -12
	instrument INSTR_NONE
	note $41, NOTELEN_03
	volume_add 12
	instrument INSTR_07
	note $44
	note $43, NOTELEN_01
	note $00, NOTELEN_02
	note $44, NOTELEN_01
	note $00, NOTELEN_02
	note $46
	note $00, NOTELEN_CUSTOM, $07
	note $46, NOTELEN_06
	note $43, NOTELEN_03
	volume_add -12
	instrument INSTR_NONE
	note $43
	note $00, NOTELEN_06
	volume_add 12
	instrument INSTR_07
	note $43, NOTELEN_03
	note $42, NOTELEN_01
	note $00, NOTELEN_02
	note $43, NOTELEN_01
	note $00, NOTELEN_02
	note $44
	note $00, NOTELEN_CUSTOM, $0A
	note $48, NOTELEN_03
	volume_add -12
	instrument INSTR_NONE
	note $48
	volume_add 12
	instrument INSTR_07
	note $46, NOTELEN_06
	note $44, NOTELEN_02
	note $00, NOTELEN_01
	note $43, NOTELEN_03
	volume_add -12
	instrument INSTR_NONE
	note $43
	note $00, NOTELEN_06
	volume_add 12
	instrument INSTR_07
	note $43, NOTELEN_03
	note $42, NOTELEN_01
	note $00, NOTELEN_02
	note $43, NOTELEN_01
	note $00, NOTELEN_02
	note $44
	note $00, NOTELEN_CUSTOM, $0A
	note $46, NOTELEN_04
	volume_add -12
	instrument INSTR_NONE
	note $46, NOTELEN_CUSTOM, $05
	instrument INSTR_07
	volume_add 12
	note $46, NOTELEN_06
	note $43, NOTELEN_03
	volume_add -12
	instrument INSTR_NONE
	note $43
	note $00, NOTELEN_06
	volume_add 12
	instrument INSTR_07
	note $43, NOTELEN_03
	note $42, NOTELEN_01
	note $00, NOTELEN_02
	note $43, NOTELEN_01
	note $00, NOTELEN_02
	note $44
	note $00, NOTELEN_CUSTOM, $0A
	note $48, NOTELEN_03
	volume_add -12
	instrument INSTR_NONE
	note $48
	volume_add 12
	instrument INSTR_07
	note $46, NOTELEN_06
	note $44, NOTELEN_02
	note $00, NOTELEN_01
	note $00, NOTELEN_06
	note $3F, NOTELEN_03
	volume_add -12
	instrument INSTR_NONE
	note $3F
	volume_add 12
	instrument INSTR_07
	note $3D, NOTELEN_02
	note $00, NOTELEN_01
	note $3E, NOTELEN_03
	volume_add -12
	instrument INSTR_NONE
	note $3E
	volume_add 12
	instrument INSTR_07
	note $3F
	volume_add -12
	instrument INSTR_NONE
	note $3F, NOTELEN_06
	note $00, NOTELEN_12
	volume_add 12
	instrument INSTR_07
	snd_loop SndData_07_Ch1
SndData_07_Ch2:
	duty_cycle $40
	instrument INSTR_07
	note $3F, NOTELEN_03
	volume_add -12
	instrument INSTR_NONE
	note $3F
	duty_cycle $00
	instrument INSTR_16
	volume_add 12
	note $33
	note $2E
	note $37
	note $33
	note $2E
	note $37
	note $00
	note $38
	note $33
	note $30
	note $38
	note $33
	note $30
	note $38
	duty_cycle $40
	instrument INSTR_07
	note $3F
	volume_add -12
	instrument INSTR_NONE
	note $3F
	duty_cycle $00
	instrument INSTR_16
	volume_add 12
	note $37
	note $33
	note $3A
	note $37
	note $33
	note $3A
	note $00
	note $3C
	note $38
	note $33
	note $3C
	note $38
	note $33
	note $3C
	duty_cycle $40
	instrument INSTR_07
	note $3F
	volume_add -12
	instrument INSTR_NONE
	note $3F
	duty_cycle $00
	instrument INSTR_16
	volume_add 12
	note $33
	note $2E
	note $37
	note $33
	note $2E
	note $37
	note $00
	note $38
	note $33
	note $30
	note $38
	note $33
	note $30
	note $38
	duty_cycle $40
	instrument INSTR_17
	note $3D, NOTELEN_09
	duty_cycle $00
	instrument INSTR_16
	note $31, NOTELEN_03
	note $38
	note $35
	note $31
	note $38
	note $00
	note $3A
	note $35
	note $32
	note $3A
	note $35
	note $32
	note $3A
	duty_cycle $40
	instrument INSTR_07
	note $3F
	volume_add -12
	instrument INSTR_NONE
	note $3F
	duty_cycle $00
	instrument INSTR_16
	volume_add 12
	note $33
	note $2E
	note $37
	note $33
	note $2E
	note $37
	note $00
	note $38
	note $33
	note $30
	note $38
	note $33
	note $30
	note $38
	duty_cycle $40
	instrument INSTR_07
	note $3F
	volume_add -12
	instrument INSTR_NONE
	note $3F
	duty_cycle $00
	instrument INSTR_16
	volume_add 12
	note $37
	note $33
	note $3A
	note $37
	note $33
	note $3A
	note $00
	note $3C
	note $38
	note $33
	note $3C
	note $38
	note $33
	note $3C
	duty_cycle $40
	instrument INSTR_07
	note $3F
	volume_add -12
	instrument INSTR_NONE
	note $3F
	duty_cycle $00
	instrument INSTR_16
	volume_add 12
	note $33
	note $2E
	note $37
	note $33
	note $2E
	note $37
	note $00
	note $38
	note $33
	note $30
	note $38
	note $33
	note $30
	note $38
	instrument INSTR_07
	note $37
	volume_add -12
	instrument INSTR_NONE
	note $37
	volume_add 12
	instrument INSTR_07
	note $37
	volume_add -12
	instrument INSTR_NONE
	note $37
	volume_add 12
	instrument INSTR_07
	note $35, NOTELEN_02
	note $00, NOTELEN_01
	note $36, NOTELEN_03
	volume_add -12
	instrument INSTR_NONE
	note $36
	volume_add 12
	instrument INSTR_07
	note $37
	volume_add -12
	instrument INSTR_NONE
	note $37, NOTELEN_06
	note $00, NOTELEN_12
	volume_add 12
	snd_loop SndData_07_Ch2
SndData_07_Ch4:
	set_var iSndChInfo_LoopTimer0, $03
	.loop0:
		note_ex PRESET_01, NOTELEN_03
		note_ex PRESET_02
		note_ex PRESET_02
		note_ex PRESET_00, NOTELEN_06
		note_ex PRESET_03, NOTELEN_03
		note_ex PRESET_02
		note_ex PRESET_01
		note_ex PRESET_01
		note_ex PRESET_02
		note_ex PRESET_02
		note_ex PRESET_00, NOTELEN_06
		note_ex PRESET_03, NOTELEN_03
		note_ex PRESET_02
		note_ex PRESET_01
		snd_loop .loop0, iSndChInfo_LoopTimer0
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_00, NOTELEN_06
	note_ex PRESET_03, NOTELEN_03
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_00
	note_ex PRESET_03
	note_ex PRESET_00
	note_ex PRESET_00, NOTELEN_01
	note_ex PRESET_00
	note_ex PRESET_04
	note_ex PRESET_01, NOTELEN_03
	set_var iSndChInfo_LoopTimer0, $03
	.loop1:
		note_ex PRESET_01, NOTELEN_03
		note_ex PRESET_02
		note_ex PRESET_02
		note_ex PRESET_00, NOTELEN_06
		note_ex PRESET_03, NOTELEN_03
		note_ex PRESET_02
		note_ex PRESET_01
		note_ex PRESET_01
		note_ex PRESET_02
		note_ex PRESET_02
		note_ex PRESET_00, NOTELEN_06
		note_ex PRESET_03, NOTELEN_03
		note_ex PRESET_02
		note_ex PRESET_01
		snd_loop .loop1, iSndChInfo_LoopTimer0
	note_ex PRESET_01, NOTELEN_06
	note_ex PRESET_00, NOTELEN_03
	note_ex PRESET_04
	note_ex PRESET_00
	note_ex PRESET_01
	note_ex PRESET_04, NOTELEN_01
	note_ex PRESET_04
	note_ex PRESET_04
	note_ex PRESET_00, NOTELEN_06
	note_ex PRESET_02, NOTELEN_03
	note_ex PRESET_03
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_04
	note_ex PRESET_00
	note_ex PRESET_01
	snd_loop SndData_07_Ch4
