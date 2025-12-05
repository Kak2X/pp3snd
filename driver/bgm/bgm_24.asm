SndHeader_BGM_24:
	db 4 ; Number of slots
.slot0:
	db SNDSLOT0 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 11 ; iSndChInfo_Vol
	db INSTR_08 ; iSndChInfo_Instrument
	db VIBRATO_0F ; iSndChInfo_Vibrato
	db -22 ; iSndChInfo_NoteIdBase
	db 119 ; iSndChInfo_Speed
	db SNDCH_PULSE1 ; iSndChInfo_ChId
	dw SndData_24_Ch1 ; Data pointer
	db $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot1:
	db SNDSLOT1 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_0F ; iSndChInfo_Vibrato
	db -10 ; iSndChInfo_NoteIdBase
	db 119 ; iSndChInfo_Speed
	db SNDCH_WAVE ; iSndChInfo_ChId
	dw SndData_24_Ch3 ; Data pointer
	db WAVE_00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot2:
	db SNDSLOT2 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 10 ; iSndChInfo_Vol
	db INSTR_09 ; iSndChInfo_Instrument
	db VIBRATO_0F ; iSndChInfo_Vibrato
	db -22 ; iSndChInfo_NoteIdBase
	db 119 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_24_Ch2 ; Data pointer
	db $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot3:
	db SNDSLOT3 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db 2 ; iSndChInfo_NoteIdBase
	db 119 ; iSndChInfo_Speed
	db SNDCH_NOISE ; iSndChInfo_ChId
	dw SndData_24_Ch4 ; Data pointer
	db $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_24_Ch1:
	duty_cycle $40
	note $25, NOTELEN_03
	note $00
	note $25
	note $00
	note $20, NOTELEN_01
	note $00, NOTELEN_CUSTOM, $05
	note $20, NOTELEN_03
	note $22
	note $25, NOTELEN_06
	note $31, NOTELEN_03
	note $00, NOTELEN_09
	note $27, NOTELEN_03
	note $00
	note $27
	note $00
	note $27
	note $00
	note $22, NOTELEN_06
	note $00, NOTELEN_03
	note $1E
	note $00
	note $1D
	note $2A
	note $00, NOTELEN_06
	note $1E, NOTELEN_01
	note $00, NOTELEN_02
	note $22, NOTELEN_09
	note $00, NOTELEN_03
	note $22
	note $00, NOTELEN_09
	note $22, NOTELEN_03
	note $23
	note $24
	note $00
	note $25
	note $00
	note $25
	note $31
	note $00
	note $27
	note $27
	note $00
	note $25
	note $27
	note $00, NOTELEN_06
	note $22, NOTELEN_03
	note $24
	note $20
	note $2A
	note $29
	note $27
	note $00
	note $20, NOTELEN_09
	note $25, NOTELEN_03
	note $00
	note $25
	note $00, NOTELEN_09
	note $20, NOTELEN_03
	note $22
	note $25, NOTELEN_06
	note $31, NOTELEN_03
	note $00, NOTELEN_09
	note $27, NOTELEN_03
	note $00
	note $27
	note $00
	note $27
	note $00
	note $22, NOTELEN_06
	note $00, NOTELEN_03
	note $1E
	note $00
	note $1D
	note $2A
	note $00, NOTELEN_09
	note $1D, NOTELEN_09
	note $00, NOTELEN_03
	note $29
	note $00
	note $22, NOTELEN_06
	note $22, NOTELEN_01
	note $00, NOTELEN_CUSTOM, $05
	note $24, NOTELEN_03
	note $00
	note $1F, NOTELEN_06
	note $00
	note $1F, NOTELEN_03
	note $00
	note $20
	note $00
	note $2C
	note $00
	note $22
	note $24
	note $00
	note $20, NOTELEN_06
	note $00, NOTELEN_03
	note $2C
	note $20
	note $20, NOTELEN_01
	note $00, NOTELEN_02
	note $20, NOTELEN_09
	note $25, NOTELEN_03
	note $00
	note $25
	note $00, NOTELEN_09
	note $20, NOTELEN_03
	note $22
	note $25, NOTELEN_06
	note $31, NOTELEN_03
	note $00, NOTELEN_09
	note $27, NOTELEN_03
	note $00
	note $27
	note $00
	note $27
	note $00
	note $22, NOTELEN_06
	note $00, NOTELEN_03
	note $1E
	note $00
	note $1D
	note $2A
	note $00, NOTELEN_06
	note $1E, NOTELEN_01
	note $00, NOTELEN_02
	note $22, NOTELEN_09
	note $00, NOTELEN_03
	note $22
	note $00, NOTELEN_09
	note $22, NOTELEN_03
	note $23
	note $24
	note $00
	note $25
	note $00
	note $25
	note $31
	note $00
	note $27
	note $27
	note $00
	note $25
	note $27
	note $00, NOTELEN_06
	note $22, NOTELEN_03
	note $24
	note $20
	note $2A
	note $29
	note $27
	note $00
	note $2C
	note $20
	note $20
	note $25
	note $00
	note $25
	note $00, NOTELEN_09
	note $20, NOTELEN_03
	note $22
	note $25, NOTELEN_06
	note $31, NOTELEN_03
	note $00, NOTELEN_09
	note $27, NOTELEN_03
	note $00
	note $27
	note $00
	note $27
	note $00
	note $22, NOTELEN_06
	note $00, NOTELEN_03
	note $1E
	note $00
	note $1D
	note $2A
	note $00, NOTELEN_09
	note $1D, NOTELEN_09
	note $00, NOTELEN_03
	note $29
	note $00
	note $22, NOTELEN_06
	note $22, NOTELEN_01
	note $00, NOTELEN_CUSTOM, $05
	note $24, NOTELEN_03
	note $00
	note $1F, NOTELEN_06
	note $00
	note $1F, NOTELEN_03
	note $00
	note $20
	note $00
	note $2C
	note $00
	note $1F
	note $20
	note $00
	note $20, NOTELEN_06
	note $00, NOTELEN_03
	note $20
	note $2A
	note $2C, NOTELEN_01
	note $00, NOTELEN_02
	note $20, NOTELEN_06
	note $22, NOTELEN_03
	note $23, NOTELEN_09
	note $2A
	note $2F, NOTELEN_0C
	note $23, NOTELEN_06
	note $00, NOTELEN_03
	note $23, NOTELEN_09
	note $23
	note $2A
	note $2F, NOTELEN_0C
	note $2A, NOTELEN_06
	note $00, NOTELEN_03
	note $27, NOTELEN_09
	note $22
	note $29
	note $2E, NOTELEN_0C
	note $22, NOTELEN_06
	note $00, NOTELEN_03
	note $22, NOTELEN_09
	note $22
	note $29
	note $2E, NOTELEN_0C
	note $29, NOTELEN_06
	note $00, NOTELEN_03
	note $25, NOTELEN_09
	note $27
	note $27
	note $2E, NOTELEN_0C
	note $2A, NOTELEN_06
	note $00, NOTELEN_03
	note $27, NOTELEN_09
	note $20
	note $27
	note $2C, NOTELEN_0C
	note $27, NOTELEN_06
	note $00, NOTELEN_03
	note $24, NOTELEN_09
	note $27
	note $2E
	note $33, NOTELEN_0C
	note $2E, NOTELEN_06
	note $00, NOTELEN_03
	note $2A, NOTELEN_09
	note $20
	note $27
	note $2D, NOTELEN_0C
	note $28, NOTELEN_06
	note $00, NOTELEN_03
	note $21, NOTELEN_09
	note $23
	note $2A
	note $2F, NOTELEN_0C
	note $23, NOTELEN_06
	note $00, NOTELEN_03
	note $23, NOTELEN_09
	note $23
	note $2A
	note $2F, NOTELEN_0C
	note $2A, NOTELEN_06
	note $00, NOTELEN_03
	note $27, NOTELEN_09
	note $22
	note $29
	note $2E, NOTELEN_0C
	note $22, NOTELEN_06
	note $00, NOTELEN_03
	note $22, NOTELEN_09
	note $22
	note $29
	note $2E, NOTELEN_0C
	note $29, NOTELEN_06
	note $00, NOTELEN_03
	note $25, NOTELEN_09
	note $27
	note $27
	note $2E, NOTELEN_0C
	note $27, NOTELEN_06
	note $00, NOTELEN_03
	note $27, NOTELEN_09
	note $20
	note $27
	note $2C, NOTELEN_0C
	note $29, NOTELEN_06
	note $00, NOTELEN_03
	note $27, NOTELEN_09
	note $27
	note $2E
	note $31, NOTELEN_0C
	note $2E, NOTELEN_06
	note $00, NOTELEN_03
	note $2A, NOTELEN_09
	note $20
	note $27
	note $2C, NOTELEN_0C
	note $27, NOTELEN_06
	note $00, NOTELEN_03
	note $20, NOTELEN_09
	note $25, NOTELEN_03
	note $00
	note $25
	note $00
	note $20, NOTELEN_01
	note $00, NOTELEN_CUSTOM, $05
	note $20, NOTELEN_03
	note $22
	note $25, NOTELEN_06
	note $00, NOTELEN_03
	note $25
	note $00, NOTELEN_06
	note $27, NOTELEN_03
	note $00
	note $27
	note $00
	note $27
	note $00
	note $20, NOTELEN_06
	note $00, NOTELEN_03
	note $20
	note $00
	note $20
	note $2C
	note $00, NOTELEN_06
	note $20, NOTELEN_01
	note $00, NOTELEN_02
	note $20, NOTELEN_06
	note $25, NOTELEN_03
	note $00
	note $25
	note $00
	note $20, NOTELEN_01
	note $00, NOTELEN_CUSTOM, $05
	note $20, NOTELEN_03
	note $22
	note $25, NOTELEN_06
	note $00, NOTELEN_03
	note $25
	note $00, NOTELEN_06
	note $27, NOTELEN_03
	note $00
	note $27
	note $00
	note $27
	note $00
	note $20, NOTELEN_06
	note $00, NOTELEN_03
	note $20
	note $00
	note $20
	note $2C
	note $00
	note $20
	note $2C, NOTELEN_01
	note $00, NOTELEN_02
	note $20, NOTELEN_06
	note $25, NOTELEN_03
	note $00
	note $25
	note $00
	note $20, NOTELEN_01
	note $00, NOTELEN_CUSTOM, $05
	note $20, NOTELEN_03
	note $22
	note $25, NOTELEN_06
	note $00, NOTELEN_03
	note $25
	note $00, NOTELEN_06
	note $27, NOTELEN_03
	note $00
	note $27
	note $00
	note $27
	note $00
	note $20, NOTELEN_06
	note $00, NOTELEN_03
	note $20
	note $00
	note $20
	note $2C
	note $00, NOTELEN_06
	note $20, NOTELEN_01
	note $00, NOTELEN_02
	note $20, NOTELEN_06
	note $25, NOTELEN_03
	note $00
	note $25
	note $00
	note $20, NOTELEN_01
	note $00, NOTELEN_CUSTOM, $05
	note $20, NOTELEN_03
	note $22
	note $25, NOTELEN_06
	note $00, NOTELEN_03
	note $25
	note $00, NOTELEN_06
	note $27, NOTELEN_03
	note $00
	note $27
	note $00
	note $27
	note $00
	note $20, NOTELEN_06
	note $00, NOTELEN_03
	note $20
	note $00
	note $20
	note $2C
	note $00
	note $20
	note $2C, NOTELEN_01
	note $00, NOTELEN_02
	note $20, NOTELEN_06
	snd_loop SndData_24_Ch1
SndData_24_Ch3:
	wave_id WAVE_06
	note $00, NOTELEN_CUSTOM, $05
	note $43, NOTELEN_01
	note $44, NOTELEN_03
	note $00
	note $41
	note $00
	note $3D
	note $00
	note $40
	note $41
	note $00
	note $46
	volume_add -5
	note $46, NOTELEN_06
	volume_add 5
	note $44
	volume_add -5
	note $44
	note $00
	volume_add 5
	note $42
	volume_add -5
	note $42
	volume_add 5
	note $41
	note $3F, NOTELEN_03
	volume_add -5
	note $3F, NOTELEN_09
	volume_add 5
	note $41, NOTELEN_30
	volume_add -5
	note $41, NOTELEN_06
	note $00, NOTELEN_0C
	wave_id WAVE_08
	volume_add 5
	note $42, NOTELEN_03
	volume_add -5
	note $42
	volume_add 5
	note $44
	volume_add -5
	note $44
	volume_add 5
	note $41
	note $3F
	volume_add -5
	note $3F
	volume_add 5
	note $3C
	volume_add -5
	note $3C
	volume_add 5
	note $3D
	note $3F
	volume_add -5
	note $3F, NOTELEN_CUSTOM, $08
	wave_id WAVE_06
	volume_add 1
	note $43, NOTELEN_01
	volume_add 4
	note $44, NOTELEN_03
	volume_add -5
	note $44, NOTELEN_06
	volume_add 5
	note $42, NOTELEN_03
	note $00
	note $41
	note $42
	note $00
	note $44
	note $49
	volume_add -5
	note $49, NOTELEN_06
	volume_add 5
	note $48
	volume_add -5
	note $48
	volume_add 5
	note $46, NOTELEN_03
	note $00
	note $44
	note $00
	note $42
	note $00
	note $41, NOTELEN_09
	volume_add -5
	note $41, NOTELEN_03
	volume_add 5
	note $42
	note $00
	note $44, NOTELEN_30
	volume_add -5
	note $44, NOTELEN_06
	wave_id WAVE_08
	volume_add 5
	note $3F, NOTELEN_03
	note $00, NOTELEN_06
	note $3F, NOTELEN_03
	note $00
	note $41
	note $42
	note $44
	volume_add -5
	note $44, NOTELEN_06
	volume_add 5
	note $3F, NOTELEN_03
	volume_add -5
	note $3F, NOTELEN_06
	volume_add 5
	note $3F, NOTELEN_03
	volume_add -5
	note $3F, NOTELEN_06
	wave_id WAVE_06
	note $00, NOTELEN_CUSTOM, $05
	volume_add 1
	note $43, NOTELEN_01
	volume_add 4
	note $44, NOTELEN_03
	note $00
	note $41
	note $00
	note $3D
	note $00
	note $40
	note $41
	note $00
	note $46
	volume_add -5
	note $46, NOTELEN_06
	volume_add 5
	note $44
	volume_add -5
	note $44
	note $00
	volume_add 5
	note $42
	volume_add -5
	note $42
	volume_add 5
	note $41
	note $3F, NOTELEN_03
	volume_add -5
	note $3F, NOTELEN_09
	volume_add 5
	note $41, NOTELEN_30
	volume_add -5
	note $41, NOTELEN_06
	note $00, NOTELEN_0C
	wave_id WAVE_08
	volume_add 5
	note $42, NOTELEN_03
	note $44
	volume_add -5
	note $44
	volume_add 5
	note $41
	volume_add -5
	note $41
	volume_add 5
	note $3F
	volume_add -5
	note $3F
	volume_add 5
	note $3C
	volume_add -5
	note $3C
	volume_add 5
	note $3D
	note $3F
	volume_add -5
	note $3F, NOTELEN_CUSTOM, $08
	wave_id WAVE_06
	volume_add 1
	note $43, NOTELEN_01
	volume_add 4
	note $44, NOTELEN_03
	volume_add -5
	note $44, NOTELEN_06
	volume_add 5
	note $42, NOTELEN_03
	note $00
	note $41
	note $42
	note $00
	note $44
	note $48
	volume_add -5
	note $49, NOTELEN_06
	volume_add 5
	note $48
	volume_add -5
	note $48
	volume_add 5
	note $46, NOTELEN_03
	note $00
	note $44
	note $00
	note $42
	note $00
	note $41, NOTELEN_09
	volume_add -5
	note $41, NOTELEN_03
	volume_add 5
	note $42
	note $00
	note $44, NOTELEN_30
	volume_add -5
	note $44, NOTELEN_CUSTOM, $0E
	wave_id WAVE_09
	volume_add 3
	note $3F, NOTELEN_01
	note $41
	note $42
	note $44
	volume_add 2
	note $44, NOTELEN_03
	note $44
	note $00
	note $44
	note $00
	note $46
	note $48
	volume_add -5
	note $48, NOTELEN_06
	volume_add 5
	note $48, NOTELEN_04
	volume_add -5
	note $46, NOTELEN_01
	note $44
	note $42
	note $41
	note $3F
	wave_id WAVE_09
	volume_add 5
	note $3F
	note $41, NOTELEN_CUSTOM, $0B
	note $42, NOTELEN_03
	note $00
	note $44, NOTELEN_24
	volume_add -5
	note $44, NOTELEN_06
	volume_add 5
	note $41, NOTELEN_0C
	note $42
	note $44, NOTELEN_06
	volume_add -5
	note $44
	volume_add 5
	note $41, NOTELEN_09
	note $3D, NOTELEN_03
	volume_add -5
	note $3D, NOTELEN_06
	volume_add 5
	note $38, NOTELEN_18
	volume_add -5
	note $38, NOTELEN_06
	volume_add 5
	note $3A, NOTELEN_12
	note $3C
	note $3D, NOTELEN_06
	note $00
	note $3C, NOTELEN_01
	note $3D, NOTELEN_CUSTOM, $0B
	note $3C, NOTELEN_03
	note $00
	note $3D, NOTELEN_18
	volume_add -5
	note $3D, NOTELEN_06
	volume_add 5
	note $3F, NOTELEN_0C
	note $41, NOTELEN_04
	note $00, NOTELEN_02
	note $42
	note $00, NOTELEN_04
	note $41, NOTELEN_06
	volume_add -2
	note $3F, NOTELEN_03
	volume_add 2
	note $3D
	volume_add -5
	note $3D, NOTELEN_06
	volume_add 5
	note $3C, NOTELEN_03
	volume_add -5
	note $3C
	volume_add 5
	note $3D, NOTELEN_2A
	volume_add -5
	note $3D, NOTELEN_06
	volume_add 5
	note $3F, NOTELEN_12
	volume_add -5
	note $3F, NOTELEN_06
	volume_add 5
	note $41, NOTELEN_12
	volume_add -5
	note $41, NOTELEN_06
	volume_add 5
	note $3F, NOTELEN_01
	note $41, NOTELEN_CUSTOM, $0B
	note $42, NOTELEN_03
	note $00
	note $44, NOTELEN_24
	volume_add -5
	note $44, NOTELEN_06
	volume_add 5
	note $41, NOTELEN_0C
	note $42
	note $44, NOTELEN_06
	volume_add -5
	note $44
	volume_add 5
	note $41, NOTELEN_09
	note $3D, NOTELEN_03
	volume_add -5
	note $3D, NOTELEN_06
	volume_add 5
	note $38, NOTELEN_18
	volume_add -5
	note $38, NOTELEN_06
	volume_add 5
	note $3A, NOTELEN_12
	note $3C
	note $3D, NOTELEN_06
	note $00
	note $3C, NOTELEN_01
	note $3D, NOTELEN_CUSTOM, $0B
	note $3C, NOTELEN_03
	note $00
	note $3D, NOTELEN_18
	volume_add -5
	note $3D, NOTELEN_06
	volume_add 5
	note $3F, NOTELEN_0C
	note $41, NOTELEN_04
	note $00, NOTELEN_02
	note $42
	note $00, NOTELEN_04
	note $41, NOTELEN_06
	volume_add -2
	note $41, NOTELEN_03
	volume_add 2
	note $3D
	volume_add -5
	note $3D, NOTELEN_06
	volume_add 5
	note $3C, NOTELEN_03
	volume_add -5
	note $3C
	volume_add 5
	note $3D, NOTELEN_18
	volume_add -5
	note $3D, NOTELEN_06
	volume_add 5
	note $44
	note $49
	note $48
	note $49, NOTELEN_03
	note $00, NOTELEN_06
	note $49, NOTELEN_03
	note $00, NOTELEN_06
	note $49, NOTELEN_03
	note $49
	note $00, NOTELEN_18
	wave_id WAVE_08
	note $31, NOTELEN_01
	note $00, NOTELEN_02
	note $31, NOTELEN_01
	note $00, NOTELEN_02
	note $30, NOTELEN_01
	note $00, NOTELEN_02
	note $31, NOTELEN_01
	note $00, NOTELEN_02
	note $33, NOTELEN_06
	note $00, NOTELEN_03
	note $35, NOTELEN_01
	note $00, NOTELEN_CUSTOM, $08
	note $33, NOTELEN_03
	note $35
	note $33
	note $31, NOTELEN_06
	note $00, NOTELEN_03
	note $33, NOTELEN_02
	note $00, NOTELEN_CUSTOM, $04
	note $33, NOTELEN_02
	note $00, NOTELEN_CUSTOM, $07
	note $35, NOTELEN_06
	note $36
	note $00, NOTELEN_03
	wave_id WAVE_05
	note $37
	note $00
	note $37, NOTELEN_06
	volume_add -5
	note $37
	wave_id WAVE_08
	volume_add 5
	note $31, NOTELEN_01
	note $00, NOTELEN_02
	note $31, NOTELEN_01
	note $00, NOTELEN_02
	note $30, NOTELEN_01
	note $00, NOTELEN_02
	note $31, NOTELEN_01
	note $00, NOTELEN_02
	note $33, NOTELEN_06
	note $35, NOTELEN_02
	note $00, NOTELEN_01
	note $35, NOTELEN_01
	note $00, NOTELEN_08
	note $33, NOTELEN_03
	note $35
	note $33
	note $38, NOTELEN_09
	note $3C, NOTELEN_03
	volume_add -5
	note $3C
	volume_add 5
	note $3C
	volume_add -5
	note $3C, NOTELEN_06
	volume_add 5
	note $3A, NOTELEN_03
	volume_add -5
	note $3A
	volume_add 5
	note $3C, NOTELEN_06
	note $00, NOTELEN_03
	note $38
	note $00
	note $36
	note $33, NOTELEN_06
	volume_add -5
	note $33, NOTELEN_03
	wave_id WAVE_08
	volume_add 5
	note $31, NOTELEN_01
	note $00, NOTELEN_02
	note $31, NOTELEN_01
	note $00, NOTELEN_02
	note $30, NOTELEN_01
	note $00, NOTELEN_02
	note $31, NOTELEN_01
	note $00, NOTELEN_02
	note $33, NOTELEN_06
	note $00, NOTELEN_03
	note $35, NOTELEN_01
	note $00, NOTELEN_CUSTOM, $08
	note $33, NOTELEN_03
	note $35
	note $33
	note $31, NOTELEN_06
	note $00, NOTELEN_03
	note $33, NOTELEN_02
	note $00, NOTELEN_CUSTOM, $04
	note $33, NOTELEN_02
	note $00, NOTELEN_CUSTOM, $07
	note $35, NOTELEN_06
	note $36
	note $00, NOTELEN_03
	wave_id WAVE_05
	note $37
	volume_add -5
	note $37, NOTELEN_06
	volume_add 5
	note $37
	volume_add -5
	note $37, NOTELEN_03
	wave_id WAVE_08
	volume_add 5
	note $31, NOTELEN_01
	note $00, NOTELEN_02
	note $31, NOTELEN_01
	note $00, NOTELEN_02
	note $30, NOTELEN_01
	note $00, NOTELEN_02
	note $31, NOTELEN_01
	note $00, NOTELEN_02
	note $33, NOTELEN_06
	note $35, NOTELEN_01
	note $00, NOTELEN_02
	note $35, NOTELEN_01
	note $00, NOTELEN_08
	note $33, NOTELEN_03
	note $35
	note $33
	note $36
	note $38
	note $3A
	note $3C
	volume_add -5
	note $3C
	volume_add 5
	note $3C
	volume_add -5
	note $3C, NOTELEN_06
	volume_add 5
	note $3D, NOTELEN_03
	volume_add -5
	note $3D
	volume_add 5
	note $3F, NOTELEN_09
	wave_id WAVE_06
	note $43, NOTELEN_03
	volume_add -5
	note $43, NOTELEN_06
	volume_add 5
	note $44, NOTELEN_09
	snd_loop SndData_24_Ch3
SndData_24_Ch2:
	fine_tune_value -2
.loop0:
	duty_cycle $40
	note $00, NOTELEN_06
	volume_add 3
	note $3D, NOTELEN_03
	note $00
	note $3C
	note $00
	note $38
	note $00
	note $37
	note $38
	note $00
	note $3D
	volume_add -5
	note $3D, NOTELEN_06
	volume_add 5
	note $3D
	volume_add -5
	note $3D
	note $00
	volume_add 5
	note $3D
	volume_add -5
	note $3D
	volume_add 5
	note $3C
	note $3A, NOTELEN_03
	volume_add -5
	note $3A, NOTELEN_09
	volume_add 5
	note $3A, NOTELEN_12
	volume_add -5
	note $3A, NOTELEN_06
	volume_add 5
	note $39, NOTELEN_03
	note $3A
	note $39
	note $00
	note $35
	note $00
	note $36
	note $00
	note $38
	note $00
	note $33
	note $00
	note $33
	note $00, NOTELEN_09
	volume_add -5
	note $35, NOTELEN_01
	note $36
	note $37
	volume_add 5
	note $38, NOTELEN_04
	note $00, NOTELEN_02
	note $38, NOTELEN_03
	note $00
	note $38
	note $00
	note $38
	note $38
	note $00
	note $33, NOTELEN_01
	note $00, NOTELEN_CUSTOM, $05
	note $31, NOTELEN_03
	note $33
	note $00
	note $35
	note $00
	note $36
	note $38, NOTELEN_06
	note $00, NOTELEN_03
	note $3C
	volume_add -5
	note $3C, NOTELEN_06
	volume_add 5
	note $3C
	note $00
	note $3A, NOTELEN_03
	note $00
	note $36
	note $00
	note $33
	note $00
	note $38
	note $39
	note $00
	note $3B
	volume_add -5
	note $3B, NOTELEN_06
	volume_add 5
	note $3C, NOTELEN_12
	volume_add -5
	note $3C, NOTELEN_06
	volume_add 5
	note $3D, NOTELEN_03
	note $00
	note $3C
	note $3A
	volume_add -5
	note $3A, NOTELEN_06
	volume_add 5
	note $38, NOTELEN_03
	volume_add -5
	note $38
	volume_add 5
	note $37
	volume_add -5
	note $37
	volume_add 5
	note $38
	note $00, NOTELEN_06
	note $38, NOTELEN_03
	note $00
	note $39
	note $3A
	note $3C
	volume_add -5
	note $3C, NOTELEN_06
	volume_add 5
	note $38, NOTELEN_03
	volume_add -5
	note $38, NOTELEN_06
	volume_add 5
	note $38, NOTELEN_03
	volume_add -5
	note $38, NOTELEN_06
	note $00
	volume_add 5
	note $3D, NOTELEN_03
	note $00
	note $3C
	note $00
	note $38
	note $00
	note $37
	note $38
	note $00
	note $3D
	volume_add -5
	note $3D, NOTELEN_06
	volume_add 5
	note $3D
	volume_add -5
	note $3D
	note $00
	volume_add 5
	note $3D
	volume_add -5
	note $3D
	volume_add 5
	note $3C
	note $3A, NOTELEN_03
	volume_add -5
	note $3A, NOTELEN_09
	volume_add 5
	note $3A, NOTELEN_12
	volume_add -5
	note $3A, NOTELEN_06
	volume_add 5
	note $39, NOTELEN_03
	note $3A
	note $39
	note $00
	note $35
	note $00
	note $36
	note $00
	note $38
	note $00
	note $33
	note $00
	note $33
	note $00, NOTELEN_09
	volume_add -5
	note $35, NOTELEN_01
	note $36
	note $37
	volume_add 5
	note $38, NOTELEN_04
	note $00, NOTELEN_02
	note $38, NOTELEN_03
	note $00
	note $38
	note $00
	note $38
	note $38
	note $00
	note $33, NOTELEN_01
	note $00, NOTELEN_CUSTOM, $05
	note $31, NOTELEN_03
	note $33
	note $00
	note $35
	note $00
	note $36
	note $38, NOTELEN_06
	note $00, NOTELEN_03
	note $3C
	volume_add -5
	note $3C, NOTELEN_06
	volume_add 5
	note $3C
	note $00
	note $3A, NOTELEN_03
	note $00
	note $36
	note $00
	note $33
	note $00
	note $38
	note $39
	note $00
	note $3B
	volume_add -5
	note $3B, NOTELEN_06
	volume_add 5
	note $3C, NOTELEN_12
	note $3A, NOTELEN_03
	volume_add -5
	note $3A, NOTELEN_06
	note $00, NOTELEN_03
	volume_add 5
	note $38, NOTELEN_06
	note $00, NOTELEN_03
	note $3A, NOTELEN_09
	note $3C, NOTELEN_03
	volume_add -5
	note $3C
	note $00, NOTELEN_08
	volume_add 3
	note $3C, NOTELEN_01
	note $3D
	note $3F
	note $41
	volume_add 2
	note $41, NOTELEN_03
	note $41
	note $00
	note $41
	note $00
	note $42
	note $44
	volume_add -5
	note $44, NOTELEN_06
	volume_add 5
	note $44, NOTELEN_04
	volume_add -5
	note $42, NOTELEN_01
	note $41
	note $3F
	note $3D
	note $3C
	volume_add 5
	duty_cycle $80
	note $3B, NOTELEN_0C
	note $3D, NOTELEN_06
	note $3F, NOTELEN_12
	note $3E, NOTELEN_06
	note $3F, NOTELEN_18
	volume_add -5
	note $3F, NOTELEN_06
	volume_add 5
	note $42, NOTELEN_0C
	note $41, NOTELEN_06
	volume_add -5
	note $41
	volume_add 5
	note $41, NOTELEN_18
	volume_add -5
	note $41, NOTELEN_06
	volume_add 5
	note $3D
	note $38
	note $3A, NOTELEN_18
	note $3C, NOTELEN_12
	note $3D, NOTELEN_06
	volume_add -5
	note $3D
	volume_add 5
	note $3D, NOTELEN_12
	note $3D, NOTELEN_06
	volume_add -5
	note $3D
	volume_add 5
	note $3D, NOTELEN_03
	note $00, NOTELEN_06
	note $3D, NOTELEN_03
	note $00, NOTELEN_06
	note $3C, NOTELEN_12
	note $3D, NOTELEN_0C
	volume_add -5
	note $3D, NOTELEN_06
	volume_add 5
	note $3F
	volume_add -2
	note $3D, NOTELEN_02
	note $3C
	note $3B
	volume_add 2
	note $3A, NOTELEN_18
	volume_add -5
	note $3A, NOTELEN_06
	volume_add 5
	note $39
	note $3A
	note $3C
	note $3C, NOTELEN_09
	note $38
	note $35, NOTELEN_06
	note $33, NOTELEN_03
	note $35
	note $39
	note $35
	note $35
	note $39
	note $3C
	note $3F
	note $3B, NOTELEN_0C
	note $3D, NOTELEN_06
	note $3F, NOTELEN_12
	note $3E, NOTELEN_06
	note $3F, NOTELEN_18
	volume_add -5
	note $3F, NOTELEN_06
	volume_add 5
	note $42, NOTELEN_0C
	note $41, NOTELEN_06
	volume_add -5
	note $41
	volume_add 5
	note $41, NOTELEN_18
	volume_add -5
	note $41, NOTELEN_06
	volume_add 5
	note $3D
	note $38
	note $3A, NOTELEN_18
	note $3C, NOTELEN_12
	note $3D, NOTELEN_06
	volume_add -5
	note $3D
	volume_add 5
	note $3D, NOTELEN_12
	note $3C, NOTELEN_06
	volume_add -5
	note $3C
	volume_add 5
	note $3A, NOTELEN_0C
	volume_add -5
	note $3A, NOTELEN_06
	volume_add 5
	note $38, NOTELEN_12
	note $3A, NOTELEN_0C
	volume_add -5
	note $3A, NOTELEN_06
	volume_add 5
	note $3C
	volume_add -5
	note $3C
	volume_add 5
	note $3C, NOTELEN_12
	note $3D, NOTELEN_06
	volume_add -5
	note $3D
	volume_add 5
	duty_cycle $40
	note $3F
	note $44
	note $43
	note $3F, NOTELEN_03
	note $00, NOTELEN_06
	note $42, NOTELEN_03
	note $00, NOTELEN_06
	note $44, NOTELEN_03
	note $44
	note $00, NOTELEN_06
	duty_cycle $80
	volume_add -2
	note $55, NOTELEN_01
	note $54
	note $52
	note $50
	note $4E
	note $4D
	note $4B
	note $49
	note $48
	note $46
	note $44
	note $42
	note $41
	note $3F
	note $3D
	note $3C
	note $3A
	note $38
	duty_cycle $00
	volume_add 2
	note $2C, NOTELEN_01
	note $00, NOTELEN_02
	note $2C, NOTELEN_01
	note $00, NOTELEN_02
	note $2A, NOTELEN_01
	note $00, NOTELEN_02
	note $2C, NOTELEN_01
	note $00, NOTELEN_02
	note $30, NOTELEN_06
	note $00, NOTELEN_03
	note $31, NOTELEN_01
	note $00, NOTELEN_CUSTOM, $08
	note $30, NOTELEN_03
	note $31
	note $30
	note $2C, NOTELEN_06
	note $00, NOTELEN_03
	note $2E, NOTELEN_02
	note $00, NOTELEN_CUSTOM, $04
	note $2E, NOTELEN_02
	note $00, NOTELEN_CUSTOM, $07
	note $2F, NOTELEN_06
	note $30
	note $00, NOTELEN_03
	duty_cycle $80
	note $4B
	note $00
	note $4B, NOTELEN_06
	volume_add -5
	note $4B
	duty_cycle $00
	volume_add 5
	note $2C, NOTELEN_01
	note $00, NOTELEN_02
	note $2C, NOTELEN_01
	note $00, NOTELEN_02
	note $2A, NOTELEN_01
	note $00, NOTELEN_02
	note $2C, NOTELEN_01
	note $00, NOTELEN_02
	note $30, NOTELEN_06
	note $31, NOTELEN_01
	note $00, NOTELEN_02
	note $31, NOTELEN_01
	note $00, NOTELEN_08
	note $30, NOTELEN_03
	note $31
	note $30
	note $35, NOTELEN_09
	note $44, NOTELEN_03
	volume_add -5
	note $44
	volume_add 5
	note $44
	volume_add -5
	note $44, NOTELEN_06
	volume_add 5
	note $42, NOTELEN_03
	volume_add -5
	note $42
	volume_add 5
	note $44, NOTELEN_06
	note $00, NOTELEN_03
	note $42
	note $00
	note $3F
	note $3C, NOTELEN_06
	volume_add -5
	note $3C, NOTELEN_03
	duty_cycle $00
	volume_add 5
	note $2C, NOTELEN_01
	note $00, NOTELEN_02
	note $2C, NOTELEN_01
	note $00, NOTELEN_02
	note $2A, NOTELEN_01
	note $00, NOTELEN_02
	note $2C, NOTELEN_01
	note $00, NOTELEN_02
	note $30, NOTELEN_06
	note $00, NOTELEN_03
	note $31, NOTELEN_01
	note $00, NOTELEN_CUSTOM, $08
	note $30, NOTELEN_03
	note $31
	note $30
	note $2C, NOTELEN_06
	note $00, NOTELEN_03
	note $2E, NOTELEN_02
	note $00, NOTELEN_CUSTOM, $04
	note $2E, NOTELEN_02
	note $00, NOTELEN_CUSTOM, $07
	note $2F, NOTELEN_06
	note $30
	note $00, NOTELEN_03
	duty_cycle $80
	note $4B
	volume_add -5
	note $4B, NOTELEN_06
	volume_add 5
	note $4B
	volume_add -5
	note $4B, NOTELEN_03
	duty_cycle $00
	volume_add 5
	note $2C, NOTELEN_01
	note $00, NOTELEN_02
	note $2C, NOTELEN_01
	note $00, NOTELEN_02
	note $2A, NOTELEN_01
	note $00, NOTELEN_02
	note $2C, NOTELEN_01
	note $00, NOTELEN_02
	note $30, NOTELEN_06
	note $31, NOTELEN_01
	note $00, NOTELEN_02
	note $31, NOTELEN_01
	note $00, NOTELEN_08
	note $30, NOTELEN_03
	note $31
	note $30
	note $33
	note $35
	note $36
	note $38
	volume_add -5
	note $38
	volume_add 5
	note $38
	volume_add -5
	note $38, NOTELEN_06
	volume_add 5
	note $3A, NOTELEN_03
	volume_add -5
	note $3A
	volume_add 5
	note $3C, NOTELEN_09
	duty_cycle $80
	note $3D, NOTELEN_03
	volume_add -5
	note $3D, NOTELEN_06
	volume_add 5
	note $3F, NOTELEN_09
	snd_loop .loop0
SndData_24_Ch4:
	set_var iSndChInfo_LoopTimer0, $03
	.loop0:
		note_ex PRESET_01, NOTELEN_03
		note_ex PRESET_02
		note_ex PRESET_03
		note_ex PRESET_02
		note_ex PRESET_00, NOTELEN_06
		note_ex PRESET_03, NOTELEN_03
		note_ex PRESET_02
		note_ex PRESET_01
		note_ex PRESET_03
		note_ex PRESET_01
		note_ex PRESET_02
		note_ex PRESET_00, NOTELEN_06
		note_ex PRESET_01, NOTELEN_03
		note_ex PRESET_02
		note_ex PRESET_03
		note_ex PRESET_02
		note_ex PRESET_01
		note_ex PRESET_02
		note_ex PRESET_00, NOTELEN_06
		note_ex PRESET_03, NOTELEN_03
		note_ex PRESET_01
		note_ex PRESET_02
		note_ex PRESET_03
		note_ex PRESET_01
		note_ex PRESET_02
		note_ex PRESET_00, NOTELEN_06
		note_ex PRESET_01, NOTELEN_03
		note_ex PRESET_02
		note_ex PRESET_03
		note_ex PRESET_02
		note_ex PRESET_02
		note_ex PRESET_01
		note_ex PRESET_00, NOTELEN_06
		note_ex PRESET_03, NOTELEN_03
		note_ex PRESET_02
		note_ex PRESET_01
		note_ex PRESET_03
		note_ex PRESET_01
		note_ex PRESET_02
		note_ex PRESET_00, NOTELEN_06
		note_ex PRESET_02, NOTELEN_03
		note_ex PRESET_03
		note_ex PRESET_01
		note_ex PRESET_04
		note_ex PRESET_04, NOTELEN_06
		note_ex PRESET_00
		note_ex PRESET_02, NOTELEN_03
		note_ex PRESET_01
		note_ex PRESET_02
		note_ex PRESET_04
		note_ex PRESET_01
		note_ex PRESET_02
		note_ex PRESET_00, NOTELEN_06
		note_ex PRESET_02, NOTELEN_03
		note_ex PRESET_03
		snd_loop .loop0, iSndChInfo_LoopTimer0
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_03
	note_ex PRESET_02
	note_ex PRESET_00, NOTELEN_06
	note_ex PRESET_03, NOTELEN_03
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_03
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_00, NOTELEN_06
	note_ex PRESET_01, NOTELEN_03
	note_ex PRESET_02
	note_ex PRESET_03
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_00, NOTELEN_06
	note_ex PRESET_03, NOTELEN_03
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_03
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_00, NOTELEN_06
	note_ex PRESET_01, NOTELEN_03
	note_ex PRESET_02
	note_ex PRESET_03
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_00, NOTELEN_06
	note_ex PRESET_03, NOTELEN_03
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_03
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_00, NOTELEN_06
	note_ex PRESET_02, NOTELEN_03
	note_ex PRESET_03
	note_ex PRESET_01
	note_ex PRESET_04
	note_ex PRESET_00, NOTELEN_06
	note_ex PRESET_00, NOTELEN_03
	note_ex PRESET_00, NOTELEN_06
	note_ex PRESET_00, NOTELEN_03
	note_ex PRESET_00, NOTELEN_06
	note_ex PRESET_01, NOTELEN_03
	note_ex PRESET_04
	note_ex PRESET_00, NOTELEN_06
	note_ex PRESET_02, NOTELEN_03
	note $00
	set_var iSndChInfo_LoopTimer0, $02
	.loop1:
		note_ex PRESET_01, NOTELEN_03
		note_ex PRESET_02
		note_ex PRESET_02
		note_ex PRESET_02
		note_ex PRESET_00, NOTELEN_06
		note_ex PRESET_03, NOTELEN_03
		note_ex PRESET_02
		note_ex PRESET_01
		note_ex PRESET_02
		note_ex PRESET_01
		note_ex PRESET_02
		note_ex PRESET_00, NOTELEN_06
		note_ex PRESET_02, NOTELEN_03
		note_ex PRESET_03
		note_ex PRESET_01
		note_ex PRESET_02
		note_ex PRESET_03
		note_ex PRESET_02
		note_ex PRESET_00, NOTELEN_06
		note_ex PRESET_02, NOTELEN_03
		note_ex PRESET_01
		note_ex PRESET_02
		note_ex PRESET_02
		note_ex PRESET_01
		note_ex PRESET_02
		note_ex PRESET_00, NOTELEN_06
		note_ex PRESET_02, NOTELEN_03
		note_ex PRESET_03
		note_ex PRESET_01
		note_ex PRESET_02
		note_ex PRESET_02
		note_ex PRESET_02
		note_ex PRESET_00, NOTELEN_06
		note_ex PRESET_02, NOTELEN_03
		note_ex PRESET_02
		note_ex PRESET_01
		note_ex PRESET_02
		note_ex PRESET_01
		note_ex PRESET_02
		note_ex PRESET_00, NOTELEN_06
		note_ex PRESET_02, NOTELEN_03
		note_ex PRESET_03
		note_ex PRESET_01
		note_ex PRESET_02
		note_ex PRESET_02
		note_ex PRESET_02
		note_ex PRESET_00, NOTELEN_06
		note_ex PRESET_02, NOTELEN_03
		note_ex PRESET_01
		note_ex PRESET_02
		note_ex PRESET_04
		note_ex PRESET_01
		note_ex PRESET_02
		note_ex PRESET_00, NOTELEN_06
		note_ex PRESET_02, NOTELEN_03
		note_ex PRESET_03
		note_ex PRESET_01
		note_ex PRESET_02
		note_ex PRESET_02
		note_ex PRESET_02
		note_ex PRESET_00, NOTELEN_06
		note_ex PRESET_03, NOTELEN_03
		note_ex PRESET_02
		note_ex PRESET_01
		note_ex PRESET_02
		note_ex PRESET_01
		note_ex PRESET_02
		note_ex PRESET_00, NOTELEN_06
		note_ex PRESET_02, NOTELEN_03
		note_ex PRESET_03
		note_ex PRESET_01
		note_ex PRESET_02
		note_ex PRESET_03
		note_ex PRESET_02
		note_ex PRESET_00, NOTELEN_06
		note_ex PRESET_02, NOTELEN_03
		note_ex PRESET_01
		note_ex PRESET_02
		note_ex PRESET_02
		note_ex PRESET_01
		note_ex PRESET_02
		note_ex PRESET_00, NOTELEN_06
		note_ex PRESET_02, NOTELEN_03
		note_ex PRESET_03
		note_ex PRESET_01
		note_ex PRESET_02
		note_ex PRESET_02
		note_ex PRESET_02
		note_ex PRESET_00, NOTELEN_06
		note_ex PRESET_02, NOTELEN_03
		note_ex PRESET_02
		note_ex PRESET_01
		note_ex PRESET_02
		note_ex PRESET_01
		note_ex PRESET_02
		note_ex PRESET_00, NOTELEN_06
		note_ex PRESET_02, NOTELEN_03
		note_ex PRESET_03
		note_ex PRESET_01
		note_ex PRESET_02
		note_ex PRESET_02
		note_ex PRESET_02
		note_ex PRESET_00, NOTELEN_06
		note_ex PRESET_04, NOTELEN_03
		note_ex PRESET_01
		note_ex PRESET_04
		note_ex PRESET_04
		note_ex PRESET_01
		note_ex PRESET_02
		note_ex PRESET_00, NOTELEN_06
		note_ex PRESET_02, NOTELEN_03
		note_ex PRESET_04
		snd_loop .loop1, iSndChInfo_LoopTimer0
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_03
	note_ex PRESET_02
	note_ex PRESET_00, NOTELEN_06
	note_ex PRESET_03, NOTELEN_03
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_03
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_00, NOTELEN_06
	note_ex PRESET_02, NOTELEN_03
	note_ex PRESET_03
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_03
	note_ex PRESET_02
	note_ex PRESET_00, NOTELEN_06
	note_ex PRESET_03, NOTELEN_03
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_03
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_00, NOTELEN_06
	note_ex PRESET_02, NOTELEN_03
	note_ex PRESET_03
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_03
	note_ex PRESET_02
	note_ex PRESET_00, NOTELEN_06
	note_ex PRESET_03, NOTELEN_03
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_03
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_00, NOTELEN_06
	note_ex PRESET_02, NOTELEN_03
	note_ex PRESET_03
	note_ex PRESET_01
	note_ex PRESET_04
	note_ex PRESET_04, NOTELEN_06
	note_ex PRESET_00, NOTELEN_03
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_04
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_00
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_03
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_03
	note_ex PRESET_02
	note_ex PRESET_00, NOTELEN_06
	note_ex PRESET_03, NOTELEN_03
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_03
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_00, NOTELEN_06
	note_ex PRESET_02, NOTELEN_03
	note_ex PRESET_03
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_03
	note_ex PRESET_02
	note_ex PRESET_00, NOTELEN_06
	note_ex PRESET_03, NOTELEN_03
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_03
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_00, NOTELEN_06
	note_ex PRESET_02, NOTELEN_03
	note_ex PRESET_03
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_03
	note_ex PRESET_02
	note_ex PRESET_00, NOTELEN_06
	note_ex PRESET_03, NOTELEN_03
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_03
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_00, NOTELEN_06
	note_ex PRESET_02, NOTELEN_03
	note_ex PRESET_03
	note_ex PRESET_00, NOTELEN_06
	note_ex PRESET_00
	note_ex PRESET_01, NOTELEN_03
	note_ex PRESET_00
	note_ex PRESET_04, NOTELEN_02
	note_ex PRESET_04
	note_ex PRESET_04
	note_ex PRESET_00, NOTELEN_03
	note_ex PRESET_04
	note_ex PRESET_01
	note_ex PRESET_04
	note_ex PRESET_00, NOTELEN_06
	note_ex PRESET_04, NOTELEN_03
	note_ex PRESET_00
	snd_loop SndData_24_Ch4
