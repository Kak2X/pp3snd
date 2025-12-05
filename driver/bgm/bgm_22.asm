SndHeader_BGM_22:
	db 4 ; Number of slots
.slot0:
	db SNDSLOT0 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_11 ; iSndChInfo_Instrument
	db VIBRATO_0F ; iSndChInfo_Vibrato
	db -12 ; iSndChInfo_NoteIdBase
	db 107 ; iSndChInfo_Speed
	db SNDCH_PULSE1 ; iSndChInfo_ChId
	dw SndData_22_Ch1 ; Data pointer
	db $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot1:
	db SNDSLOT1 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_1B ; iSndChInfo_Instrument
	db VIBRATO_0F ; iSndChInfo_Vibrato
	db -12 ; iSndChInfo_NoteIdBase
	db 107 ; iSndChInfo_Speed
	db SNDCH_WAVE ; iSndChInfo_ChId
	dw SndData_22_Ch3 ; Data pointer
	db WAVE_00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot2:
	db SNDSLOT2 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 9 ; iSndChInfo_Vol
	db INSTR_18 ; iSndChInfo_Instrument
	db VIBRATO_0F ; iSndChInfo_Vibrato
	db -24 ; iSndChInfo_NoteIdBase
	db 107 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_22_Ch2 ; Data pointer
	db $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot3:
	db SNDSLOT3 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 13 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db 0 ; iSndChInfo_NoteIdBase
	db 107 ; iSndChInfo_Speed
	db SNDCH_NOISE ; iSndChInfo_ChId
	dw SndData_22_Ch4 ; Data pointer
	db $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_22_Ch1:
	duty_cycle $40
	note $19, NOTELEN_03
	note $00, NOTELEN_06
	note $19, NOTELEN_03
	note $00, NOTELEN_12
	note $14, NOTELEN_01
	note $00, NOTELEN_02
	note $1D, NOTELEN_03
	note $1B, NOTELEN_01
	note $00, NOTELEN_02
	note $19, NOTELEN_09
	note $1B, NOTELEN_03
	note $00, NOTELEN_06
	note $16, NOTELEN_03
	note $00, NOTELEN_06
	note $20, NOTELEN_03
	note $22
	note $00
	note $1E
	note $00
	note $1D, NOTELEN_01
	note $00, NOTELEN_02
	note $19, NOTELEN_03
	note $16, NOTELEN_09
	note $17, NOTELEN_03
	note $00, NOTELEN_06
	note $1E, NOTELEN_03
	note $00, NOTELEN_06
	note $1E, NOTELEN_03
	note $00, NOTELEN_09
	note $1E, NOTELEN_03
	note $20
	note $16, NOTELEN_06
	note $17, NOTELEN_03
	note $00
	note $17, NOTELEN_09
	note $23, NOTELEN_03
	note $00
	note $1C, NOTELEN_01
	note $00, NOTELEN_02
	note $1C, NOTELEN_06
	note $00, NOTELEN_03
	note $1B
	note $1C
	note $14
	note $14, NOTELEN_01
	note $00, NOTELEN_02
	note $14, NOTELEN_09
	note $19, NOTELEN_03
	note $00
	note $19, NOTELEN_01
	note $00, NOTELEN_02
	note $19, NOTELEN_03
	note $00, NOTELEN_12
	note $14, NOTELEN_01
	note $00, NOTELEN_02
	note $1D, NOTELEN_03
	note $1B, NOTELEN_01
	note $00, NOTELEN_02
	note $19, NOTELEN_09
	note $1B, NOTELEN_03
	note $00, NOTELEN_06
	note $16, NOTELEN_03
	note $00, NOTELEN_06
	note $20, NOTELEN_03
	note $22
	note $00
	note $1E
	note $00
	note $1D, NOTELEN_01
	note $00, NOTELEN_02
	note $19, NOTELEN_03
	note $16, NOTELEN_09
	note $17, NOTELEN_03
	note $00, NOTELEN_06
	note $1E, NOTELEN_03
	note $00
	note $17, NOTELEN_01
	note $00, NOTELEN_02
	note $17, NOTELEN_03
	note $00, NOTELEN_09
	note $1E, NOTELEN_03
	note $20
	note $16, NOTELEN_06
	note $17, NOTELEN_03
	note $00
	note $17, NOTELEN_09
	note $23, NOTELEN_03
	note $00
	note $1C, NOTELEN_01
	note $00, NOTELEN_02
	note $1C, NOTELEN_06
	note $00, NOTELEN_03
	note $1B
	note $1C, NOTELEN_02
	note $00, NOTELEN_01
	note $14, NOTELEN_03
	note $14, NOTELEN_01
	note $00, NOTELEN_02
	note $14, NOTELEN_06
	note $00, NOTELEN_03
	note $1A, NOTELEN_06
	note $1A, NOTELEN_01
	note $00, NOTELEN_02
	note $1A, NOTELEN_03
	note $00, NOTELEN_12
	note $14, NOTELEN_03
	note $16
	note $1A, NOTELEN_01
	note $00, NOTELEN_02
	note $1A, NOTELEN_09
	note $1A, NOTELEN_04
	note $00, NOTELEN_CUSTOM, $05
	note $1A, NOTELEN_03
	note $00, NOTELEN_0C
	note $18, NOTELEN_03
	note $1A, NOTELEN_01
	note $00, NOTELEN_02
	note $20, NOTELEN_03
	note $21
	note $19, NOTELEN_01
	note $00, NOTELEN_02
	note $19, NOTELEN_09
	note $1C, NOTELEN_04
	note $00, NOTELEN_02
	note $1C, NOTELEN_01
	note $00, NOTELEN_02
	note $17, NOTELEN_03
	note $00, NOTELEN_06
	note $1B, NOTELEN_03
	note $00, NOTELEN_CUSTOM, $15
	note $1B, NOTELEN_03
	note $1C
	note $1C, NOTELEN_04
	note $00, NOTELEN_CUSTOM, $05
	note $1C, NOTELEN_03
	note $00, NOTELEN_12
	note $22, NOTELEN_03
	note $23
	note $1B, NOTELEN_01
	note $00, NOTELEN_02
	note $1B, NOTELEN_09
	note $15, NOTELEN_06
	note $15, NOTELEN_01
	note $00, NOTELEN_02
	note $19, NOTELEN_03
	note $00, NOTELEN_06
	note $15, NOTELEN_01
	note $00, NOTELEN_02
	note $15, NOTELEN_01
	note $00, NOTELEN_08
	note $1B, NOTELEN_03
	note $1D
	note $15, NOTELEN_01
	note $00, NOTELEN_02
	note $15, NOTELEN_09
	note $15, NOTELEN_04
	note $00, NOTELEN_CUSTOM, $05
	note $19, NOTELEN_03
	note $00, NOTELEN_0C
	note $13, NOTELEN_01
	note $00, NOTELEN_02
	note $15, NOTELEN_01
	note $00, NOTELEN_02
	note $1B, NOTELEN_03
	note $1C
	note $15, NOTELEN_01
	note $00, NOTELEN_02
	note $15, NOTELEN_09
	note $14, NOTELEN_03
	note $00, NOTELEN_06
	note $14, NOTELEN_03
	note $00
	note $14, NOTELEN_01
	note $00, NOTELEN_02
	note $14, NOTELEN_03
	note $00, NOTELEN_06
	note $19, NOTELEN_03
	note $1B, NOTELEN_01
	note $00, NOTELEN_02
	note $22, NOTELEN_03
	note $20
	note $1B, NOTELEN_09
	note $14, NOTELEN_03
	note $00
	note $14, NOTELEN_01
	note $00, NOTELEN_02
	note $14, NOTELEN_03
	note $00
	note $14, NOTELEN_01
	note $00, NOTELEN_02
	note $16, NOTELEN_03
	note $00
	note $16, NOTELEN_01
	note $00, NOTELEN_02
	note $17, NOTELEN_03
	note $12
	note $12
	note $14, NOTELEN_01
	note $00, NOTELEN_02
	note $14, NOTELEN_09
	snd_loop SndData_22_Ch1
SndData_22_Ch3:
	wave_id WAVE_04
	note $00, NOTELEN_0C
	note $4E, NOTELEN_03
	volume_add -5
	note $4E
	volume_add 5
	note $4D, NOTELEN_0C
	note $48, NOTELEN_06
	note $49, NOTELEN_03
	volume_add -5
	note $49
	volume_add 5
	note $44, NOTELEN_0C
	note $44, NOTELEN_03
	volume_add -5
	note $44
	volume_add 5
	note $46, NOTELEN_06
	note $42
	volume_add -5
	note $42
	volume_add 5
	note $40, NOTELEN_0C
	note $44, NOTELEN_0C
	note $44, NOTELEN_03
	volume_add -5
	note $44
	volume_add 5
	note $46, NOTELEN_06
	note $47, NOTELEN_18
	volume_add -5
	note $47, NOTELEN_0C
	volume_add 5
	note $46, NOTELEN_06
	note $47, NOTELEN_03
	note $00
	note $46, NOTELEN_06
	volume_add -5
	note $46
	volume_add 5
	note $40
	note $46, NOTELEN_CUSTOM, $05
	note $45, NOTELEN_01
	note $44, NOTELEN_03
	note $00
	note $00, NOTELEN_06
	note $49, NOTELEN_03
	volume_add -5
	note $49
	volume_add 5
	note $4E
	volume_add -5
	note $4E
	volume_add 5
	note $4D, NOTELEN_0C
	note $4B, NOTELEN_06
	note $49, NOTELEN_03
	volume_add -5
	note $49
	volume_add 5
	note $48, NOTELEN_12
	note $49, NOTELEN_03
	volume_add -5
	note $49
	volume_add 5
	note $48, NOTELEN_01
	note $49, NOTELEN_CUSTOM, $0E
	volume_add -5
	note $49, NOTELEN_03
	volume_add 5
	note $47
	volume_add -5
	note $47
	volume_add 5
	note $44
	volume_add -5
	note $44
	volume_add 5
	note $47, NOTELEN_0C
	note $3F, NOTELEN_06
	note $47, NOTELEN_03
	note $44
	volume_add -5
	note $44
	volume_add 5
	note $44, NOTELEN_06
	volume_add -5
	note $44, NOTELEN_03
	volume_add 5
	note $46
	volume_add -5
	note $46
	volume_add 5
	note $47
	volume_add -5
	note $47
	volume_add 5
	note $49, NOTELEN_02
	note $4A, NOTELEN_06
	note $49, NOTELEN_02
	note $4A
	note $4A, NOTELEN_03
	note $00
	note $49, NOTELEN_18
	volume_add -5
	note $49, NOTELEN_06
	wave_id WAVE_06
	note $00, NOTELEN_0C
	volume_add 5
	note $4C, NOTELEN_06
	note $4E, NOTELEN_03
	volume_add -5
	note $4E
	volume_add 5
	note $4C, NOTELEN_06
	note $49, NOTELEN_CUSTOM, $05
	note $4A, NOTELEN_02
	note $49, NOTELEN_CUSTOM, $05
	note $45, NOTELEN_0C
	note $42, NOTELEN_03
	volume_add -5
	note $42
	note $00, NOTELEN_12
	volume_add 5
	note $42, NOTELEN_06
	note $43, NOTELEN_03
	volume_add -5
	note $43
	volume_add 5
	note $44, NOTELEN_09
	volume_add -5
	note $44, NOTELEN_03
	volume_add 5
	note $44
	volume_add -5
	note $44, NOTELEN_06
	note $00, NOTELEN_09
	wave_id WAVE_05
	volume_add 2
	note $47, NOTELEN_06
	note $44, NOTELEN_03
	volume_add -5
	note $44
	volume_add 5
	note $40, NOTELEN_06
	note $3F
	volume_add -5
	note $3F
	volume_add 5
	note $3B, NOTELEN_12
	volume_add -5
	note $3B, NOTELEN_06
	volume_add 3
	wave_id WAVE_01
	volume_add -1
	note $3B, NOTELEN_12
	note $3D, NOTELEN_18
	note $3D, NOTELEN_06
	wave_id WAVE_06
	volume_add 6
	note $40
	note $44
	note $45, NOTELEN_03
	volume_add -5
	note $45
	volume_add 5
	note $3D, NOTELEN_06
	note $40, NOTELEN_03
	volume_add -5
	note $40, NOTELEN_06
	note $00, NOTELEN_CUSTOM, $0F
	volume_add 5
	note $3D, NOTELEN_06
	note $44, NOTELEN_03
	volume_add -5
	note $44
	volume_add 5
	note $43, NOTELEN_CUSTOM, $36
	volume_add -5
	note $43, NOTELEN_06
	wave_id WAVE_01
	volume_add 3
	note $44, NOTELEN_03
	note $43
	note $3F
	note $3C, NOTELEN_06
	note $38
	note $37
	note $33
	note $30, NOTELEN_09
	volume_add 2
	snd_loop SndData_22_Ch3
SndData_22_Ch2:
	fine_tune_value -1
.loop0:
	duty_cycle $40
	note $00, NOTELEN_0C
	note $31, NOTELEN_01
	note $00, NOTELEN_02
	note $31, NOTELEN_01
	note $00, NOTELEN_02
	note $30, NOTELEN_01
	note $00, NOTELEN_02
	note $31, NOTELEN_01
	note $00, NOTELEN_CUSTOM, $05
	note $31, NOTELEN_06
	note $31, NOTELEN_01
	note $00, NOTELEN_08
	note $31, NOTELEN_06
	note $33, NOTELEN_09
	note $35, NOTELEN_03
	note $00, NOTELEN_06
	note $36, NOTELEN_09
	note $36, NOTELEN_03
	note $00, NOTELEN_06
	note $34, NOTELEN_0C
	note $00
	note $34, NOTELEN_01
	note $00, NOTELEN_02
	note $34, NOTELEN_01
	note $00, NOTELEN_02
	note $33, NOTELEN_01
	note $00, NOTELEN_02
	note $34, NOTELEN_01
	note $00, NOTELEN_CUSTOM, $05
	note $36, NOTELEN_03
	note $00
	note $36
	note $00, NOTELEN_06
	note $34, NOTELEN_03
	note $00
	note $39, NOTELEN_09
	note $39, NOTELEN_03
	note $00, NOTELEN_06
	note $38, NOTELEN_09
	note $38, NOTELEN_03
	note $00, NOTELEN_06
	note $38, NOTELEN_0C
	note $31, NOTELEN_06
	volume_add -5
	note $31
	volume_add 5
	note $31, NOTELEN_01
	note $00, NOTELEN_02
	note $31, NOTELEN_01
	note $00, NOTELEN_02
	note $30, NOTELEN_01
	note $00, NOTELEN_02
	note $31, NOTELEN_01
	note $00, NOTELEN_CUSTOM, $05
	note $31, NOTELEN_06
	note $31, NOTELEN_01
	note $00, NOTELEN_08
	note $31, NOTELEN_06
	note $33, NOTELEN_09
	note $35, NOTELEN_03
	note $00, NOTELEN_06
	note $36, NOTELEN_09
	note $36, NOTELEN_03
	note $00, NOTELEN_06
	note $34, NOTELEN_0C
	note $34, NOTELEN_06
	volume_add -5
	note $34
	volume_add 5
	note $34, NOTELEN_01
	note $00, NOTELEN_02
	note $34, NOTELEN_01
	note $00, NOTELEN_02
	note $33, NOTELEN_01
	note $00, NOTELEN_02
	note $34, NOTELEN_01
	note $00, NOTELEN_CUSTOM, $05
	note $36, NOTELEN_03
	note $00
	note $36
	note $00, NOTELEN_06
	note $34, NOTELEN_03
	note $00
	note $39, NOTELEN_09
	note $39, NOTELEN_03
	note $00, NOTELEN_06
	note $38, NOTELEN_CUSTOM, $14
	volume_add -5
	note $38, NOTELEN_06
	volume_add 3
	note $3D, NOTELEN_03
	note $39, NOTELEN_01
	volume_add 2
	note $36, NOTELEN_CUSTOM, $36
	volume_add -5
	note $36, NOTELEN_06
	volume_add 5
	note $36
	note $36, NOTELEN_03
	volume_add -5
	note $36, NOTELEN_09
	volume_add 5
	note $36, NOTELEN_06
	volume_add -5
	note $36
	volume_add 5
	note $34, NOTELEN_0C
	note $34, NOTELEN_03
	volume_add -5
	note $34, NOTELEN_09
	note $00, NOTELEN_06
	volume_add 5
	note $47
	note $44, NOTELEN_03
	volume_add -5
	note $44
	volume_add 5
	note $40, NOTELEN_06
	note $3F
	volume_add -5
	note $3F
	volume_add 5
	note $3B, NOTELEN_12
	volume_add -5
	note $3B, NOTELEN_06
	volume_add 5
	note $34, NOTELEN_12
	note $39, NOTELEN_18
	volume_add -5
	note $39, NOTELEN_06
	volume_add 5
	note $39, NOTELEN_09
	volume_add -5
	note $39
	volume_add 5
	note $39, NOTELEN_18
	volume_add -5
	note $39, NOTELEN_06
	volume_add 5
	note $3B
	note $3D, NOTELEN_03
	volume_add -5
	note $3D
	volume_add 5
	note $3F, NOTELEN_CUSTOM, $36
	volume_add -5
	note $3F, NOTELEN_06
	note $00
	volume_add 5
	note $44, NOTELEN_03
	note $43
	note $3F
	note $3C, NOTELEN_06
	note $38
	note $37
	note $33
	note $30, NOTELEN_03
	snd_loop .loop0
SndData_22_Ch4:
	note_ex PRESET_01, NOTELEN_06
	volume_add -3
	note_ex PRESET_02, NOTELEN_03
	volume_add 1
	note_ex PRESET_02
	volume_add 2
	note_ex PRESET_00
	volume_add -2
	note_ex PRESET_02
	volume_add 1
	note_ex PRESET_02
	volume_add -1
	note_ex PRESET_02
	volume_add 2
	note_ex PRESET_01
	volume_add -3
	note_ex PRESET_02
	volume_add 3
	note_ex PRESET_01
	volume_add -3
	note_ex PRESET_02
	volume_add 3
	note_ex PRESET_00, NOTELEN_03
	volume_add -3
	note_ex PRESET_02, NOTELEN_03
	volume_add 1
	note_ex PRESET_02
	volume_add -1
	note_ex PRESET_02, NOTELEN_01
	note_ex PRESET_02
	note_ex PRESET_02
	volume_add 3
	note_ex PRESET_01, NOTELEN_03
	volume_add -2
	note_ex PRESET_02
	volume_add 2
	note_ex PRESET_01
	volume_add -2
	note_ex PRESET_02
	volume_add 2
	note_ex PRESET_00
	volume_add -2
	note_ex PRESET_02
	volume_add 1
	note_ex PRESET_02
	volume_add 1
	note_ex PRESET_03
	note_ex PRESET_02, NOTELEN_01
	volume_add -1
	note_ex PRESET_02
	note_ex PRESET_02
	volume_add -1
	note_ex PRESET_02, NOTELEN_03
	volume_add 2
	note_ex PRESET_01
	volume_add -3
	note_ex PRESET_02
	volume_add 3
	note_ex PRESET_00, NOTELEN_03
	volume_add -3
	note_ex PRESET_02, NOTELEN_03
	volume_add 1
	note_ex PRESET_02
	volume_add -1
	note_ex PRESET_02, NOTELEN_01
	note_ex PRESET_02
	note_ex PRESET_02
	volume_add 3
	note_ex PRESET_01, NOTELEN_03
	volume_add -2
	note_ex PRESET_02
	volume_add -1
	note_ex PRESET_02
	volume_add 1
	note_ex PRESET_02
	volume_add 2
	note_ex PRESET_00
	volume_add -2
	note_ex PRESET_02
	volume_add 2
	note_ex PRESET_04
	note_ex PRESET_04
	note_ex PRESET_01
	note_ex PRESET_04
	note_ex PRESET_01
	volume_add -3
	note_ex PRESET_02
	volume_add 3
	note_ex PRESET_00, NOTELEN_03
	volume_add -3
	note_ex PRESET_02, NOTELEN_03
	volume_add 1
	note_ex PRESET_02
	volume_add -1
	note_ex PRESET_02, NOTELEN_01
	note_ex PRESET_02
	note_ex PRESET_02
	volume_add 3
	note_ex PRESET_01, NOTELEN_03
	volume_add -2
	note_ex PRESET_02
	volume_add 2
	note_ex PRESET_01
	volume_add -2
	note_ex PRESET_02
	volume_add 2
	note_ex PRESET_00
	volume_add -2
	note_ex PRESET_02
	volume_add 2
	note_ex PRESET_04
	note_ex PRESET_04, NOTELEN_01
	volume_add -1
	note_ex PRESET_02
	note_ex PRESET_02
	volume_add -1
	note_ex PRESET_02, NOTELEN_03
	volume_add 2
	note_ex PRESET_04
	note_ex PRESET_01
	volume_add -3
	note_ex PRESET_02
	volume_add 3
	note_ex PRESET_02, NOTELEN_01
	volume_add -3
	note_ex PRESET_02
	note_ex PRESET_02
	volume_add 3
	note_ex PRESET_01, NOTELEN_03
	note_ex PRESET_00
	volume_add -1
	note_ex PRESET_02, NOTELEN_01
	volume_add -2
	note_ex PRESET_02
	note_ex PRESET_02
	volume_add 3
	note_ex PRESET_01, NOTELEN_06
	volume_add -3
	note_ex PRESET_02, NOTELEN_03
	volume_add 1
	note_ex PRESET_02
	volume_add 2
	note_ex PRESET_00
	volume_add -2
	note_ex PRESET_02
	volume_add 2
	note_ex PRESET_04
	note_ex PRESET_04
	note_ex PRESET_01
	note_ex PRESET_04
	note_ex PRESET_01
	volume_add -3
	note_ex PRESET_02
	volume_add 3
	note_ex PRESET_00, NOTELEN_03
	volume_add -3
	note_ex PRESET_02, NOTELEN_03
	volume_add 1
	note_ex PRESET_02
	volume_add -1
	note_ex PRESET_02, NOTELEN_01
	note_ex PRESET_02
	note_ex PRESET_02
	volume_add 3
	note_ex PRESET_01, NOTELEN_03
	volume_add -2
	note_ex PRESET_02
	volume_add 2
	note_ex PRESET_01
	volume_add -2
	note_ex PRESET_02
	volume_add 2
	note_ex PRESET_00
	volume_add -2
	note_ex PRESET_02
	volume_add 2
	note_ex PRESET_04
	note_ex PRESET_04
	note_ex PRESET_02, NOTELEN_01
	volume_add -1
	note_ex PRESET_02
	note_ex PRESET_02
	volume_add 1
	note_ex PRESET_04, NOTELEN_03
	note_ex PRESET_01
	volume_add -3
	note_ex PRESET_02
	volume_add 3
	note_ex PRESET_00, NOTELEN_03
	volume_add -3
	note_ex PRESET_02, NOTELEN_03
	volume_add 1
	note_ex PRESET_02
	volume_add -1
	note_ex PRESET_02, NOTELEN_01
	note_ex PRESET_02
	note_ex PRESET_02
	volume_add 3
	note_ex PRESET_01, NOTELEN_03
	volume_add -2
	note_ex PRESET_02
	volume_add -1
	note_ex PRESET_02
	volume_add 1
	note_ex PRESET_02
	volume_add 2
	note_ex PRESET_00
	volume_add -2
	note_ex PRESET_02
	volume_add 1
	note_ex PRESET_02
	volume_add -1
	note_ex PRESET_02
	volume_add 2
	note_ex PRESET_01
	note_ex PRESET_04
	note_ex PRESET_01
	volume_add -3
	note_ex PRESET_02
	volume_add 3
	note_ex PRESET_00, NOTELEN_03
	volume_add -3
	note_ex PRESET_02, NOTELEN_03
	volume_add 1
	note_ex PRESET_02
	volume_add -1
	note_ex PRESET_02, NOTELEN_01
	note_ex PRESET_02
	note_ex PRESET_02
	volume_add 3
	note_ex PRESET_01, NOTELEN_03
	volume_add -2
	note_ex PRESET_02
	volume_add 2
	note_ex PRESET_01
	volume_add -2
	note_ex PRESET_02
	volume_add 2
	note_ex PRESET_00
	volume_add -2
	note_ex PRESET_02
	volume_add 2
	note_ex PRESET_04
	note $00, NOTELEN_01
	volume_add -1
	note_ex PRESET_02
	note_ex PRESET_02
	volume_add -1
	note_ex PRESET_02, NOTELEN_03
	volume_add 2
	note_ex PRESET_04
	note_ex PRESET_01
	volume_add -3
	note_ex PRESET_02
	volume_add 3
	note_ex PRESET_04, NOTELEN_01
	note_ex PRESET_04
	note_ex PRESET_04
	note_ex PRESET_01, NOTELEN_03
	note_ex PRESET_00
	volume_add -1
	note_ex PRESET_02, NOTELEN_01
	volume_add -2
	note_ex PRESET_02
	note_ex PRESET_02
	volume_add 3
	note_ex PRESET_01, NOTELEN_06
	volume_add -3
	note_ex PRESET_02, NOTELEN_03
	volume_add 1
	note_ex PRESET_02
	volume_add 2
	note_ex PRESET_00
	volume_add -2
	note_ex PRESET_02
	volume_add 2
	note_ex PRESET_04
	note_ex PRESET_04
	note_ex PRESET_01
	note_ex PRESET_04
	note_ex PRESET_01
	volume_add -3
	note_ex PRESET_02
	volume_add 3
	note_ex PRESET_00, NOTELEN_03
	volume_add -3
	note_ex PRESET_02, NOTELEN_03
	volume_add 1
	note_ex PRESET_02
	volume_add -1
	note_ex PRESET_02, NOTELEN_01
	note_ex PRESET_02
	note_ex PRESET_02
	volume_add 3
	note_ex PRESET_01, NOTELEN_03
	volume_add -2
	note_ex PRESET_02
	volume_add 2
	note_ex PRESET_01
	volume_add -2
	note_ex PRESET_02
	volume_add 2
	note_ex PRESET_00
	volume_add -2
	note_ex PRESET_02
	volume_add 2
	note_ex PRESET_04
	note_ex PRESET_04
	note_ex PRESET_02, NOTELEN_01
	volume_add -1
	note_ex PRESET_02
	note_ex PRESET_02
	volume_add 1
	note_ex PRESET_04, NOTELEN_03
	note_ex PRESET_01
	volume_add -3
	note_ex PRESET_02
	volume_add 3
	note_ex PRESET_00, NOTELEN_03
	volume_add -3
	note_ex PRESET_02, NOTELEN_03
	volume_add 1
	note_ex PRESET_02
	volume_add -1
	note_ex PRESET_02, NOTELEN_01
	note_ex PRESET_02
	note_ex PRESET_02
	volume_add 3
	note_ex PRESET_01, NOTELEN_03
	volume_add -2
	note_ex PRESET_02
	volume_add 2
	note_ex PRESET_04
	volume_add -2
	note_ex PRESET_02
	volume_add 2
	note_ex PRESET_00
	volume_add -2
	note_ex PRESET_02
	volume_add 2
	note_ex PRESET_04
	note_ex PRESET_04
	note_ex PRESET_01
	note_ex PRESET_04
	note_ex PRESET_01
	volume_add -3
	note_ex PRESET_02
	volume_add 3
	note_ex PRESET_00, NOTELEN_03
	volume_add -3
	note_ex PRESET_02, NOTELEN_03
	volume_add 1
	note_ex PRESET_02
	volume_add -1
	note_ex PRESET_02, NOTELEN_01
	note_ex PRESET_02
	note_ex PRESET_02
	volume_add 3
	note_ex PRESET_01, NOTELEN_03
	volume_add -2
	note_ex PRESET_02
	volume_add 2
	note_ex PRESET_01
	volume_add -2
	note_ex PRESET_02
	volume_add 2
	note_ex PRESET_00
	volume_add -2
	note_ex PRESET_02
	volume_add 2
	note_ex PRESET_04
	note_ex PRESET_04, NOTELEN_01
	volume_add -1
	note_ex PRESET_02
	note_ex PRESET_02
	volume_add -1
	note_ex PRESET_02, NOTELEN_03
	volume_add 2
	note_ex PRESET_04
	note_ex PRESET_01
	volume_add -3
	note_ex PRESET_02
	volume_add 3
	note_ex PRESET_02, NOTELEN_01
	volume_add -3
	note_ex PRESET_02
	note_ex PRESET_02
	volume_add 3
	note_ex PRESET_01, NOTELEN_03
	note_ex PRESET_00
	volume_add -1
	note_ex PRESET_02, NOTELEN_01
	volume_add -2
	note_ex PRESET_02
	note_ex PRESET_02
	volume_add 3
	note_ex PRESET_01, NOTELEN_06
	note_ex PRESET_04, NOTELEN_03
	volume_add -2
	note_ex PRESET_02
	volume_add 2
	note_ex PRESET_00
	volume_add -2
	note_ex PRESET_02
	volume_add 2
	note_ex PRESET_04
	note_ex PRESET_04
	note_ex PRESET_01
	note_ex PRESET_04
	note_ex PRESET_01
	volume_add -3
	note_ex PRESET_02
	volume_add 3
	note_ex PRESET_00, NOTELEN_03
	volume_add -3
	note_ex PRESET_02, NOTELEN_03
	volume_add 1
	note_ex PRESET_02
	volume_add -1
	note_ex PRESET_02, NOTELEN_01
	note_ex PRESET_02
	note_ex PRESET_02
	volume_add 3
	note_ex PRESET_01, NOTELEN_03
	note_ex PRESET_04
	note_ex PRESET_01
	volume_add -2
	note_ex PRESET_02
	volume_add 2
	note_ex PRESET_00
	volume_add -2
	note_ex PRESET_02
	volume_add 2
	note_ex PRESET_04
	note_ex PRESET_04
	note_ex PRESET_02, NOTELEN_01
	volume_add -1
	note_ex PRESET_02
	note_ex PRESET_02
	volume_add 1
	note_ex PRESET_04, NOTELEN_03
	note_ex PRESET_01
	volume_add -3
	note_ex PRESET_02
	volume_add 3
	note_ex PRESET_00, NOTELEN_03
	volume_add -3
	note_ex PRESET_02, NOTELEN_03
	volume_add 1
	note_ex PRESET_02
	volume_add -1
	note_ex PRESET_02, NOTELEN_01
	note_ex PRESET_02
	note_ex PRESET_02
	volume_add 3
	note_ex PRESET_01, NOTELEN_03
	volume_add -2
	note_ex PRESET_02
	volume_add 2
	note_ex PRESET_04
	volume_add -2
	note_ex PRESET_02
	volume_add 2
	note_ex PRESET_00
	volume_add -2
	note_ex PRESET_02
	volume_add 2
	note_ex PRESET_04
	note_ex PRESET_04
	note_ex PRESET_01
	note_ex PRESET_04
	note_ex PRESET_01
	volume_add -3
	note_ex PRESET_02
	volume_add 3
	note_ex PRESET_00, NOTELEN_03
	volume_add -3
	note_ex PRESET_02, NOTELEN_03
	volume_add 1
	note_ex PRESET_02
	volume_add -1
	note_ex PRESET_02, NOTELEN_01
	note_ex PRESET_02
	note_ex PRESET_02
	volume_add 3
	note_ex PRESET_01, NOTELEN_03
	note_ex PRESET_04
	note_ex PRESET_01
	note_ex PRESET_04
	note_ex PRESET_00
	volume_add -2
	note_ex PRESET_02
	volume_add 2
	note_ex PRESET_00
	note_ex PRESET_04, NOTELEN_01
	volume_add -1
	note_ex PRESET_02
	note_ex PRESET_02
	volume_add -1
	note_ex PRESET_02, NOTELEN_03
	volume_add 2
	note_ex PRESET_04
	note_ex PRESET_01
	note_ex PRESET_04
	note_ex PRESET_04
	note_ex PRESET_04
	note_ex PRESET_00
	note_ex PRESET_04, NOTELEN_01
	note_ex PRESET_04
	note_ex PRESET_04
	snd_loop SndData_22_Ch4