SndHeader_BGM_10:
	db 4 ; Number of slots
.slot0:
	db SNDSLOT0 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_08 ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -12 ; iSndChInfo_NoteIdBase
	db 111 ; iSndChInfo_Speed
	db SNDCH_WAVE ; iSndChInfo_ChId
	dw SndData_10_Ch3 ; Data pointer
	db $40 ; [PLACEHOLDER] ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot1:
	db SNDSLOT1 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_0B ; iSndChInfo_Vibrato
	db -24 ; iSndChInfo_NoteIdBase
	db 111 ; iSndChInfo_Speed
	db SNDCH_PULSE1 ; iSndChInfo_ChId
	dw SndData_10_Ch1 ; Data pointer
	db $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot2:
	db SNDSLOT2 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 12 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_0B ; iSndChInfo_Vibrato
	db -24 ; iSndChInfo_NoteIdBase
	db 111 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_10_Ch2 ; Data pointer
	db $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot3:
	db SNDSLOT3 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db 0 ; iSndChInfo_NoteIdBase
	db 111 ; iSndChInfo_Speed
	db SNDCH_NOISE ; iSndChInfo_ChId
	dw SndData_10_Ch4 ; Data pointer
	db $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_10_Ch3:
	wave_id WAVE_0D
	note $1D, NOTELEN_09
	note $1D, NOTELEN_03
	note $00, NOTELEN_06
	note $18, NOTELEN_03
	note $1A
	note $00
	note $1D
	note $00
	note $1F
	note $21
	note $1D
	note $18
	note $1A
	note $1B, NOTELEN_09
	note $1B, NOTELEN_02
	note $00, NOTELEN_CUSTOM, $07
	note $1A, NOTELEN_0C
	note $1A, NOTELEN_03
	note $00
	note $18
	note $1A
	note $1D
	note $1A
	note $1D, NOTELEN_09
	note $1D, NOTELEN_03
	note $00, NOTELEN_06
	note $18, NOTELEN_03
	note $1A
	note $00
	note $1D
	note $00
	note $1F
	note $21
	note $1D
	note $18
	note $1A
	note $1B, NOTELEN_09
	note $1B, NOTELEN_03
	note $00, NOTELEN_06
	note $1A, NOTELEN_12
	note $18, NOTELEN_03
	note $1A
	note $1D
	note $1F
	note $1D, NOTELEN_09
	note $1D, NOTELEN_03
	note $00, NOTELEN_06
	note $18, NOTELEN_03
	note $1A
	note $00
	note $1D
	note $00
	note $1F
	note $21
	note $1D
	note $18
	note $1A
	note $1B, NOTELEN_09
	note $1B, NOTELEN_02
	note $00, NOTELEN_CUSTOM, $07
	note $1A, NOTELEN_0C
	note $1A, NOTELEN_03
	note $00
	note $18
	note $1A
	note $1D
	note $1A
	note $1D, NOTELEN_09
	note $1D, NOTELEN_03
	note $00, NOTELEN_06
	note $18, NOTELEN_03
	note $1A
	note $00
	note $1D
	note $00
	note $1F
	note $21
	note $1D
	note $18
	note $1A
	note $1B, NOTELEN_09
	note $1B, NOTELEN_03
	note $00, NOTELEN_06
	note $1A, NOTELEN_12
	note $18, NOTELEN_03
	note $1A
	note $1D
	note $1F
	note $1D
	note $00, NOTELEN_09
	note $1D, NOTELEN_03
	note $00, NOTELEN_06
	note $1D, NOTELEN_03
	note $00
	note $1D
	note $00
	note $18
	note $1D, NOTELEN_06
	note $18
	note $1B, NOTELEN_03
	note $00, NOTELEN_09
	note $1B, NOTELEN_03
	note $00, NOTELEN_06
	note $16, NOTELEN_03
	note $00
	note $16
	note $1A, NOTELEN_06
	note $1B
	note $1C
	note $1D, NOTELEN_03
	note $00, NOTELEN_09
	note $1D, NOTELEN_03
	note $00, NOTELEN_06
	note $1D, NOTELEN_03
	note $00
	note $1D
	note $00
	note $18
	note $1D, NOTELEN_06
	note $18
	note $1B, NOTELEN_03
	note $00, NOTELEN_09
	note $1B, NOTELEN_03
	note $00, NOTELEN_06
	note $16, NOTELEN_03
	note $00
	note $16
	note $1A, NOTELEN_06
	note $1B
	note $1C
	note $1D, NOTELEN_03
	note $00, NOTELEN_09
	note $1D, NOTELEN_03
	note $00, NOTELEN_06
	note $1D, NOTELEN_03
	note $00
	note $1D
	note $00
	note $18
	note $1D, NOTELEN_06
	note $18
	note $1B, NOTELEN_03
	note $00, NOTELEN_09
	note $1B, NOTELEN_03
	note $00, NOTELEN_06
	note $16, NOTELEN_03
	note $00
	note $16
	note $1A, NOTELEN_06
	note $1B
	note $1C
	note $1D, NOTELEN_03
	note $00, NOTELEN_09
	note $1D, NOTELEN_03
	note $00, NOTELEN_06
	note $1D, NOTELEN_03
	note $00
	note $1D, NOTELEN_06
	note $1F, NOTELEN_03
	note $21
	note $1D
	note $18
	note $1A
	note $1B
	note $00, NOTELEN_CUSTOM, $2D
	note $1D, NOTELEN_09
	note $1D, NOTELEN_03
	note $00, NOTELEN_06
	note $18, NOTELEN_03
	note $1A
	note $00
	note $1D
	note $00
	note $1F
	note $21
	note $1D
	note $18
	note $1A
	note $1B, NOTELEN_09
	note $1B, NOTELEN_02
	note $00, NOTELEN_CUSTOM, $07
	note $1A, NOTELEN_12
	note $18, NOTELEN_03
	note $1A
	note $1D
	note $1A
	note $1D, NOTELEN_09
	note $1D, NOTELEN_03
	note $00, NOTELEN_06
	note $18, NOTELEN_03
	note $1A
	note $00
	note $1D
	note $00
	note $1F
	note $21
	note $1D
	note $18
	note $1A
	note $1B, NOTELEN_09
	note $1B, NOTELEN_03
	note $00, NOTELEN_06
	note $1A, NOTELEN_12
	note $18, NOTELEN_03
	note $1A
	note $1D
	note $1F
	note $1D, NOTELEN_09
	note $1D, NOTELEN_03
	note $00, NOTELEN_06
	note $18, NOTELEN_03
	note $1A
	note $00
	note $1D
	note $00
	note $1F
	note $21
	note $1D
	note $18
	note $1A
	note $1B, NOTELEN_09
	note $1B, NOTELEN_02
	note $00, NOTELEN_CUSTOM, $07
	note $1A, NOTELEN_12
	note $18, NOTELEN_03
	note $1A
	note $1D
	note $1A
	note $1D, NOTELEN_09
	note $1D, NOTELEN_03
	note $00, NOTELEN_06
	note $18, NOTELEN_03
	note $1A
	note $00
	note $1D
	note $00
	note $1F
	note $21
	note $1D
	note $18
	note $1A
	note $1B, NOTELEN_09
	note $1B, NOTELEN_03
	note $00, NOTELEN_06
	note $1A, NOTELEN_12
	note $18, NOTELEN_03
	note $1A
	note $1D
	note $1F
	note $18
	note $00, NOTELEN_12
	note $18, NOTELEN_02
	note $00, NOTELEN_04
	note $18, NOTELEN_03
	note $1C, NOTELEN_06
	note $1D
	note $1F
	note $16, NOTELEN_03
	note $00, NOTELEN_CUSTOM, $0F
	note $16, NOTELEN_02
	note $00, NOTELEN_CUSTOM, $07
	note $16, NOTELEN_03
	note $1A, NOTELEN_06
	note $1B
	note $1D
	note $1D, NOTELEN_03
	note $00, NOTELEN_12
	note $1D, NOTELEN_03
	note $00, NOTELEN_18
	note $1D, NOTELEN_03
	note $00, NOTELEN_CUSTOM, $0F
	note $1D, NOTELEN_03
	note $00, NOTELEN_06
	note $1D, NOTELEN_02
	note $00, NOTELEN_01
	note $15, NOTELEN_06
	note $16
	note $17
	note $18, NOTELEN_03
	note $00, NOTELEN_12
	note $18, NOTELEN_02
	note $00, NOTELEN_04
	note $18, NOTELEN_03
	note $1C, NOTELEN_06
	note $1D
	note $1F
	note $16, NOTELEN_03
	note $00, NOTELEN_CUSTOM, $0F
	note $16, NOTELEN_02
	note $00, NOTELEN_CUSTOM, $07
	note $16, NOTELEN_03
	note $1A, NOTELEN_06
	note $1B
	note $1D
	note $1D, NOTELEN_03
	note $00, NOTELEN_12
	note $1D, NOTELEN_03
	note $00, NOTELEN_18
	note $1D, NOTELEN_03
	note $00, NOTELEN_CUSTOM, $0F
	note $1D, NOTELEN_03
	note $00, NOTELEN_06
	note $1D, NOTELEN_02
	note $00, NOTELEN_01
	note $15, NOTELEN_06
	note $16
	note $17
	note $18, NOTELEN_03
	note $00, NOTELEN_12
	note $18, NOTELEN_02
	note $00, NOTELEN_04
	note $18, NOTELEN_03
	note $1C, NOTELEN_06
	note $1D
	note $1F
	note $16, NOTELEN_03
	note $00, NOTELEN_CUSTOM, $0F
	note $16, NOTELEN_02
	note $00, NOTELEN_CUSTOM, $07
	note $16, NOTELEN_03
	note $1A, NOTELEN_06
	note $1B
	note $1D
	note $1D, NOTELEN_03
	note $00, NOTELEN_12
	note $1D, NOTELEN_03
	note $00, NOTELEN_18
	note $1D, NOTELEN_03
	note $00, NOTELEN_CUSTOM, $0F
	note $1D, NOTELEN_03
	note $00, NOTELEN_06
	note $1D, NOTELEN_02
	note $00, NOTELEN_01
	note $15, NOTELEN_06
	note $16
	note $17
	note $18, NOTELEN_0C
	note $24, NOTELEN_09
	note $18, NOTELEN_04
	note $00, NOTELEN_02
	note $18, NOTELEN_03
	note $1C, NOTELEN_06
	note $1D
	note $1F, NOTELEN_04
	note $00, NOTELEN_02
	note $16, NOTELEN_0C
	note $22, NOTELEN_09
	note $16, NOTELEN_03
	note $00
	note $16
	note $1A, NOTELEN_06
	note $1B
	note $1C, NOTELEN_04
	note $00, NOTELEN_02
	note $1D, NOTELEN_03
	note $00
	note $21, NOTELEN_04
	note $00, NOTELEN_08
	note $22, NOTELEN_04
	note $00, NOTELEN_08
	note $23, NOTELEN_04
	note $00, NOTELEN_08
	note $24, NOTELEN_06
	note $24
	note $18
	note $1A, NOTELEN_03
	note $00
	note $1A
	note $00
	note $1B
	note $00
	note $1B
	note $00
	note $1C
	note $00
	note $1C
	note $00
	snd_loop SndData_10_Ch3
SndData_10_Ch1:
	duty_cycle $40
	instrument INSTR_07
	note $35, NOTELEN_18
	volume_add -11
	instrument INSTR_NONE
	note $35, NOTELEN_06
	volume_add 11
	instrument INSTR_07
	note $38, NOTELEN_02
	note $00, NOTELEN_04
	note $39, NOTELEN_03
	note $3C
	note $41
	note $00
	note $3F, NOTELEN_06
	volume_add -11
	instrument INSTR_NONE
	note $3F
	volume_add 11
	instrument INSTR_07
	note $3E
	volume_add -11
	instrument INSTR_NONE
	note $3E
	volume_add 11
	instrument INSTR_07
	note $3A
	volume_add -11
	instrument INSTR_NONE
	note $3A
	volume_add 11
	instrument INSTR_07
	note $3C
	volume_add -11
	instrument INSTR_NONE
	note $3C
	volume_add 11
	instrument INSTR_07
	note $39, NOTELEN_09
	note $3A, NOTELEN_02
	volume_add -11
	instrument INSTR_NONE
	note $3A, NOTELEN_04
	note $00, NOTELEN_03
	volume_add 11
	instrument INSTR_07
	note $3C
	note $00, NOTELEN_09
	note $35, NOTELEN_0C
	note $37, NOTELEN_02
	note $00, NOTELEN_04
	note $38, NOTELEN_06
	note $37, NOTELEN_02
	note $00, NOTELEN_04
	note $35, NOTELEN_03
	note $32, NOTELEN_09
	note $35, NOTELEN_06
	volume_add -11
	instrument INSTR_NONE
	note $35
	volume_add 11
	instrument INSTR_07
	note $37
	volume_add -11
	instrument INSTR_NONE
	note $37
	volume_add 11
	instrument INSTR_07
	note $35, NOTELEN_18
	volume_add -11
	instrument INSTR_NONE
	note $35, NOTELEN_06
	volume_add 11
	instrument INSTR_07
	note $38, NOTELEN_02
	note $00, NOTELEN_04
	note $39, NOTELEN_03
	note $3C
	note $41
	note $00
	note $3F, NOTELEN_06
	volume_add -11
	instrument INSTR_NONE
	note $3F
	volume_add 11
	instrument INSTR_07
	note $3E
	volume_add -11
	instrument INSTR_NONE
	note $3E
	volume_add 11
	instrument INSTR_07
	note $3A
	volume_add -11
	instrument INSTR_NONE
	note $3A
	volume_add 11
	instrument INSTR_07
	note $3C
	volume_add -11
	instrument INSTR_NONE
	note $3C
	volume_add 11
	instrument INSTR_07
	note $39, NOTELEN_09
	note $3A, NOTELEN_02
	volume_add -11
	instrument INSTR_NONE
	note $3A, NOTELEN_04
	note $00, NOTELEN_03
	volume_add 11
	instrument INSTR_07
	note $3C
	note $00, NOTELEN_09
	note $35, NOTELEN_0C
	note $37, NOTELEN_02
	note $00, NOTELEN_04
	note $38, NOTELEN_06
	note $37, NOTELEN_02
	note $00, NOTELEN_04
	note $35, NOTELEN_03
	note $32, NOTELEN_09
	note $35, NOTELEN_06
	volume_add -11
	instrument INSTR_NONE
	note $35
	volume_add 11
	instrument INSTR_07
	note $32
	volume_add -11
	instrument INSTR_NONE
	note $32
	volume_add 11
	set_var iSndChInfo_LoopTimer0, $03
	.loop0:
		duty_cycle $80
		instrument INSTR_0B
		note $3C, NOTELEN_03
		note $00
		note $44
		note $45
		note $00
		note $41
		note $00
		note $45
		note $00
		note $43
		note $46
		note $44
		note $47
		note $45
		note $48
		note $45
		duty_cycle $40
		note $3A
		note $41
		note $44
		note $3A
		note $3F
		note $43
		note $3A
		note $3E
		note $41
		note $3A
		note $3E
		note $41
		note $3A
		note $3E
		note $41
		note $3A
		snd_loop .loop0, iSndChInfo_LoopTimer0
	duty_cycle $80
	note $3C
	note $00
	note $44
	note $45
	note $00
	note $41
	note $00
	note $45
	note $00
	note $43
	note $46
	note $44
	note $47
	note $45
	note $48
	note $45
	duty_cycle $40
	note $3A
	note $41
	note $44
	note $3A
	note $3F
	note $43
	note $3A
	note $3E
	note $41
	note $3A
	note $3E
	note $41
	note $43
	note $46
	note $4A
	note $4D
	duty_cycle $40
	instrument INSTR_07
	note $35, NOTELEN_18
	volume_add -11
	instrument INSTR_NONE
	note $35, NOTELEN_06
	volume_add 11
	instrument INSTR_07
	note $38, NOTELEN_02
	note $00, NOTELEN_04
	note $39, NOTELEN_03
	note $3C
	note $41
	note $00
	note $3F, NOTELEN_06
	volume_add -11
	instrument INSTR_NONE
	note $3F
	volume_add 11
	instrument INSTR_07
	note $3E
	volume_add -11
	instrument INSTR_NONE
	note $3E
	volume_add 11
	instrument INSTR_07
	note $3A
	volume_add -11
	instrument INSTR_NONE
	note $3A
	volume_add 11
	instrument INSTR_07
	note $3C
	volume_add -11
	instrument INSTR_NONE
	note $3C
	volume_add 11
	instrument INSTR_07
	note $39, NOTELEN_09
	note $3A, NOTELEN_02
	volume_add -11
	instrument INSTR_NONE
	note $3A, NOTELEN_04
	note $00, NOTELEN_03
	volume_add 11
	instrument INSTR_07
	note $3C
	note $00, NOTELEN_09
	note $35, NOTELEN_0C
	note $37, NOTELEN_02
	note $00, NOTELEN_04
	note $38, NOTELEN_06
	note $37, NOTELEN_02
	note $00, NOTELEN_04
	note $35, NOTELEN_03
	note $32, NOTELEN_09
	note $35, NOTELEN_06
	volume_add -11
	instrument INSTR_NONE
	note $35
	volume_add 11
	instrument INSTR_07
	note $37
	volume_add -11
	instrument INSTR_NONE
	note $37
	volume_add 11
	instrument INSTR_07
	note $35, NOTELEN_18
	volume_add -11
	instrument INSTR_NONE
	note $35, NOTELEN_06
	volume_add 11
	instrument INSTR_07
	note $38, NOTELEN_02
	note $00, NOTELEN_04
	note $39, NOTELEN_03
	note $3C
	note $41
	note $00
	note $3F, NOTELEN_06
	volume_add -11
	instrument INSTR_NONE
	note $3F
	volume_add 11
	instrument INSTR_07
	note $3E
	volume_add -11
	instrument INSTR_NONE
	note $3E
	volume_add 11
	instrument INSTR_07
	note $3A
	volume_add -11
	instrument INSTR_NONE
	note $3A
	volume_add 11
	instrument INSTR_07
	note $3C
	volume_add -11
	instrument INSTR_NONE
	note $3C
	volume_add 11
	instrument INSTR_07
	note $39, NOTELEN_09
	note $3A, NOTELEN_02
	volume_add -11
	instrument INSTR_NONE
	note $3A, NOTELEN_04
	note $00, NOTELEN_03
	volume_add 11
	instrument INSTR_07
	note $3C
	note $00, NOTELEN_09
	note $35, NOTELEN_0C
	note $37, NOTELEN_02
	note $00, NOTELEN_04
	note $38, NOTELEN_06
	note $37, NOTELEN_02
	note $00, NOTELEN_04
	note $35, NOTELEN_03
	note $32, NOTELEN_09
	note $35, NOTELEN_06
	volume_add -11
	instrument INSTR_NONE
	note $35
	volume_add 11
	instrument INSTR_07
	note $32
	volume_add -11
	instrument INSTR_NONE
	note $32
	instrument INSTR_09
	volume_add 11
	note $43, NOTELEN_03
	note $43
	note $41
	note $40
	volume_add -11
	instrument INSTR_NONE
	note $40
	note $00
	note $00, NOTELEN_18
	volume_add 11
	instrument INSTR_09
	note $40, NOTELEN_03
	note $40
	note $3E
	note $40
	note $00
	note $41
	volume_add -11
	instrument INSTR_NONE
	note $41
	note $00
	note $00, NOTELEN_18
	volume_add 11
	instrument INSTR_09
	note $3A, NOTELEN_03
	note $00
	note $3C
	note $3C
	note $3A
	note $39
	volume_add -11
	instrument INSTR_NONE
	note $39
	note $00
	note $00, NOTELEN_18
	volume_add 11
	instrument INSTR_09
	note $3C, NOTELEN_03
	note $00
	note $3F, NOTELEN_03
	note $3F
	note $3E
	note $3C
	volume_add -11
	instrument INSTR_NONE
	note $3C
	note $00
	note $00, NOTELEN_18
	volume_add 11
	instrument INSTR_09
	note $41, NOTELEN_03
	note $00
	note $43
	note $43
	note $41
	note $40
	volume_add -11
	instrument INSTR_NONE
	note $40
	note $00
	note $00, NOTELEN_18
	volume_add 11
	instrument INSTR_09
	note $40, NOTELEN_03
	note $40
	note $3E
	note $40
	note $00
	note $41
	volume_add -11
	instrument INSTR_NONE
	note $41
	note $00
	note $00, NOTELEN_18
	volume_add 11
	instrument INSTR_09
	note $3A, NOTELEN_03
	note $00
	note $3C, NOTELEN_03
	note $3C
	note $3A
	note $39
	volume_add -11
	instrument INSTR_NONE
	note $39
	note $00
	note $00, NOTELEN_18
	volume_add 11
	instrument INSTR_09
	note $3C, NOTELEN_03
	note $00
	note $3F
	note $3F
	note $3E
	note $3C
	volume_add -11
	instrument INSTR_NONE
	note $3C
	note $00
	note $00, NOTELEN_18
	volume_add 11
	instrument INSTR_09
	note $41, NOTELEN_03
	note $00
	note $40
	note $40
	note $3E
	note $3C
	volume_add -11
	instrument INSTR_NONE
	note $3C
	note $00
	note $00, NOTELEN_18
	volume_add 11
	instrument INSTR_09
	note $3C, NOTELEN_03
	note $3C
	note $3A
	note $3C
	note $00
	note $3E
	volume_add -11
	instrument INSTR_NONE
	note $3E
	note $00
	note $00, NOTELEN_18
	volume_add 11
	instrument INSTR_09
	note $37, NOTELEN_03
	note $00
	note $39, NOTELEN_03
	note $39
	note $37
	note $35
	volume_add -11
	instrument INSTR_NONE
	note $35
	note $00
	note $00, NOTELEN_18
	volume_add 11
	instrument INSTR_09
	note $39, NOTELEN_03
	note $00
	note $3C, NOTELEN_03
	note $3C
	note $3A
	note $39
	volume_add -11
	instrument INSTR_NONE
	note $39
	note $00
	note $00, NOTELEN_18
	volume_add 11
	instrument INSTR_09
	note $3C, NOTELEN_03
	note $00
	note $48
	note $48
	note $48
	note $43
	note $00, NOTELEN_06
	duty_cycle $80
	instrument INSTR_0A
	volume_add -2
	note $43, NOTELEN_03
	note $43
	note $48
	note $48
	note $48
	note $43
	note $00
	note $00
	duty_cycle $40
	instrument INSTR_09
	volume_add 2
	note $43, NOTELEN_03
	note $43
	note $41
	note $46
	note $00
	note $46
	duty_cycle $80
	instrument INSTR_0A
	volume_add -2
	note $41, NOTELEN_03
	note $46
	note $00
	note $46
	note $41
	note $46
	note $00
	note $46
	note $41
	note $46
	note $00
	note $46
	duty_cycle $40
	instrument INSTR_09
	volume_add 2
	note $41, NOTELEN_06
	note $3F
	volume_add -11
	instrument INSTR_NONE
	note $3F
	volume_add 11
	instrument INSTR_09
	note $3E, NOTELEN_04
	volume_add -11
	instrument INSTR_NONE
	note $3E, NOTELEN_08
	volume_add 11
	instrument INSTR_09
	note $3D, NOTELEN_04
	volume_add -11
	instrument INSTR_NONE
	note $3D, NOTELEN_08
	volume_add 11
	instrument INSTR_09
	note $3C, NOTELEN_06
	volume_add -11
	instrument INSTR_NONE
	note $3C
	volume_add 11
	instrument INSTR_09
	note $3C, NOTELEN_02
	note $00, NOTELEN_04
	note $3F, NOTELEN_0C
	note $3C, NOTELEN_02
	note $00, NOTELEN_04
	note $3F, NOTELEN_12
	snd_loop SndData_10_Ch1
SndData_10_Ch2:
	fine_tune_value -1
.loop0:
	duty_cycle $40
	instrument INSTR_07
	set_var iSndChInfo_LoopTimer0, $03
	.loop1:
		note $39, NOTELEN_2A
		volume_add -6
		instrument INSTR_NONE
		note $39, NOTELEN_06
		volume_add 6
		instrument INSTR_07
		note $3A
		note $00, NOTELEN_03
		note $3A
		volume_add -6
		instrument INSTR_NONE
		note $3A, NOTELEN_06
		volume_add 6
		instrument INSTR_07
		note $3A, NOTELEN_18
		volume_add -6
		instrument INSTR_NONE
		note $3A, NOTELEN_06
		volume_add 6
		instrument INSTR_07
		snd_loop .loop1, iSndChInfo_LoopTimer0
	note $39, NOTELEN_2A
	volume_add -6
	instrument INSTR_NONE
	note $39, NOTELEN_06
	volume_add 6
	instrument INSTR_07
	note $3A
	note $00, NOTELEN_03
	note $3A
	volume_add -6
	instrument INSTR_NONE
	note $3A, NOTELEN_06
	volume_add 6
	instrument INSTR_07
	note $3A, NOTELEN_0C
	volume_add -6
	instrument INSTR_NONE
	note $3A, NOTELEN_06
	duty_cycle $80
	note $4D, NOTELEN_01
	note $4C
	note $4A
	note $48
	note $46
	note $45
	note $43
	note $41
	note $40
	note $3E
	note $3D
	note $3C
	duty_cycle $40
	instrument INSTR_0B
	note $00, NOTELEN_06
	volume_add 6
	note $41, NOTELEN_03
	note $00, NOTELEN_06
	note $41, NOTELEN_03
	note $00
	note $41
	note $00
	note $43
	note $00, NOTELEN_06
	note $44, NOTELEN_03
	note $00
	note $45
	note $00
	note $00, NOTELEN_06
	volume_add -2
	note $4D, NOTELEN_03
	note $00, NOTELEN_06
	note $4B, NOTELEN_03
	note $00
	note $4A
	note $00
	note $4A
	note $46
	note $00
	note $45
	note $46
	note $00, NOTELEN_06
	note $00
	volume_add 2
	note $41, NOTELEN_03
	note $00, NOTELEN_06
	note $41, NOTELEN_03
	note $00
	note $41
	note $00
	note $43
	note $00, NOTELEN_06
	note $44, NOTELEN_03
	note $00
	note $45
	note $00
	note $00, NOTELEN_06
	volume_add -2
	note $4D, NOTELEN_03
	note $00, NOTELEN_06
	note $4B, NOTELEN_03
	note $00
	note $4A
	note $00
	note $45
	note $46
	note $45
	note $4A
	note $4A
	note $00, NOTELEN_06
	note $00
	volume_add 2
	note $41, NOTELEN_03
	note $00, NOTELEN_06
	note $41, NOTELEN_03
	note $00
	note $41
	note $00
	note $43
	note $00, NOTELEN_06
	note $44, NOTELEN_03
	note $00
	note $45
	note $00
	note $00, NOTELEN_06
	volume_add -2
	note $4D, NOTELEN_03
	note $00, NOTELEN_06
	note $4B, NOTELEN_03
	note $00
	note $4A
	note $00
	note $4A
	note $46
	note $00
	note $45
	note $46
	note $00, NOTELEN_06
	note $00
	volume_add 2
	note $41, NOTELEN_03
	note $00, NOTELEN_06
	note $41, NOTELEN_03
	note $00
	note $41
	note $00
	note $43
	note $00, NOTELEN_06
	note $44, NOTELEN_03
	note $00
	note $45
	note $00
	note $00, NOTELEN_06
	volume_add -2
	note $4D, NOTELEN_03
	note $00, NOTELEN_06
	note $4B, NOTELEN_03
	note $00
	note $4A
	note $00
	note $45
	note $46
	note $45
	note $4A
	note $4A
	note $00, NOTELEN_06
	volume_add 2
	instrument INSTR_07
	set_var iSndChInfo_LoopTimer0, $03
	.loop2:
		note $39, NOTELEN_2A
		volume_add -6
		instrument INSTR_NONE
		note $39, NOTELEN_06
		volume_add 6
		instrument INSTR_07
		note $3A
		note $00, NOTELEN_03
		note $3A
		volume_add -6
		instrument INSTR_NONE
		note $3A, NOTELEN_06
		volume_add 6
		instrument INSTR_07
		note $3A, NOTELEN_18
		volume_add -6
		instrument INSTR_NONE
		note $3A, NOTELEN_06
		volume_add 6
		instrument INSTR_07
		snd_loop .loop2, iSndChInfo_LoopTimer0
	note $39, NOTELEN_2A
	volume_add -6
	instrument INSTR_NONE
	note $39, NOTELEN_06
	volume_add 6
	instrument INSTR_07
	note $3A
	note $00, NOTELEN_03
	note $3A
	volume_add -6
	instrument INSTR_NONE
	note $3A, NOTELEN_06
	volume_add 6
	instrument INSTR_07
	note $3A, NOTELEN_0C
	note $46, NOTELEN_03
	volume_add -6
	instrument INSTR_NONE
	note $46, NOTELEN_06
	volume_add 6
	instrument INSTR_07
	note $46, NOTELEN_09
	duty_cycle $40
	instrument INSTR_09
	note $40, NOTELEN_03
	note $40
	note $3E
	note $3C
	volume_add -6
	instrument INSTR_NONE
	note $3C
	note $00
	note $00, NOTELEN_18
	volume_add 6
	instrument INSTR_09
	note $3C, NOTELEN_03
	note $3C
	note $3A
	note $3C
	note $00
	note $3E
	volume_add -6
	instrument INSTR_NONE
	note $3E
	note $00
	note $00, NOTELEN_18
	volume_add 6
	instrument INSTR_09
	note $37, NOTELEN_03
	note $00
	note $39
	note $39
	note $37
	note $35
	volume_add -6
	instrument INSTR_NONE
	note $35
	note $00
	note $00, NOTELEN_18
	volume_add 6
	instrument INSTR_09
	note $39, NOTELEN_03
	note $00
	note $3C
	note $3C
	note $3A
	note $39
	volume_add -6
	instrument INSTR_NONE
	note $39
	note $00
	note $00, NOTELEN_18
	volume_add 6
	instrument INSTR_09
	note $3C, NOTELEN_03
	note $00
	note $40
	note $40
	note $3E
	note $3C
	volume_add -6
	instrument INSTR_NONE
	note $3C
	note $00
	note $00, NOTELEN_18
	volume_add 6
	instrument INSTR_09
	note $3C, NOTELEN_03
	note $3C
	note $3A
	note $3C
	note $00
	note $3E
	volume_add -6
	instrument INSTR_NONE
	note $3E
	note $00
	note $00, NOTELEN_18
	volume_add 6
	instrument INSTR_09
	note $37, NOTELEN_03
	note $00
	note $39
	note $39
	note $37
	note $35
	volume_add -6
	instrument INSTR_NONE
	note $35
	note $00
	note $00, NOTELEN_18
	volume_add 6
	instrument INSTR_09
	note $39, NOTELEN_03
	note $00
	note $3C
	note $3C
	note $3A
	note $39
	volume_add -6
	instrument INSTR_NONE
	note $39
	note $00
	note $00, NOTELEN_18
	volume_add 6
	instrument INSTR_09
	note $3C, NOTELEN_03
	note $00
	note $3C
	note $3C
	note $3C
	note $37, NOTELEN_03
	volume_add -6
	instrument INSTR_NONE
	note $37
	note $00
	note $00, NOTELEN_18
	volume_add 6
	instrument INSTR_09
	note $37, NOTELEN_03
	note $37
	note $35
	note $3A
	note $00
	note $3A
	volume_add -6
	instrument INSTR_NONE
	note $3A
	note $00
	note $00, NOTELEN_18
	volume_add 6
	instrument INSTR_09
	note $32, NOTELEN_03
	note $00
	note $35
	note $35
	note $35
	note $30
	volume_add -6
	instrument INSTR_NONE
	note $30
	note $00
	note $00, NOTELEN_18
	volume_add 6
	instrument INSTR_09
	note $35, NOTELEN_03
	note $00
	note $39
	note $39
	note $37
	note $35
	volume_add -6
	instrument INSTR_NONE
	note $35
	note $00
	note $00, NOTELEN_18
	volume_add 6
	instrument INSTR_09
	note $39, NOTELEN_03
	note $00
	note $40
	note $40
	note $40
	note $3E
	volume_add -6
	instrument INSTR_NONE
	note $3E
	note $00
	volume_add 6
	duty_cycle $80
	instrument INSTR_0A
	volume_add -2
	note $5B, NOTELEN_03
	note $5B
	note $60
	note $60
	note $60
	note $5B
	note $00
	note $00
	duty_cycle $40
	instrument INSTR_09
	volume_add 2
	note $3C, NOTELEN_03
	note $3C
	note $3A
	note $3C
	note $00
	note $3E
	duty_cycle $80
	instrument INSTR_0A
	volume_add -2
	note $59
	note $5E
	note $00
	note $5E
	note $59
	note $5E
	note $00
	note $5E
	note $59
	note $5E
	note $00
	note $5E
	duty_cycle $40
	instrument INSTR_09
	volume_add 2
	note $39, NOTELEN_06
	note $35
	volume_add -6
	instrument INSTR_NONE
	note $35
	volume_add 6
	instrument INSTR_09
	note $35, NOTELEN_04
	volume_add -6
	instrument INSTR_NONE
	note $35, NOTELEN_08
	volume_add 6
	instrument INSTR_09
	note $38, NOTELEN_04
	volume_add -6
	instrument INSTR_NONE
	note $38, NOTELEN_08
	volume_add 6
	instrument INSTR_09
	note $34, NOTELEN_06
	volume_add -6
	instrument INSTR_NONE
	note $34
	volume_add 6
	instrument INSTR_09
	note $34, NOTELEN_02
	note $00, NOTELEN_04
	note $37, NOTELEN_0C
	note $34, NOTELEN_02
	note $00, NOTELEN_04
	note $37, NOTELEN_12
	snd_loop .loop0
SndData_10_Ch4:
	set_var iSndChInfo_LoopTimer0, $03
	.loop0:
		note_ex PRESET_01, NOTELEN_03
		note $00
		note_ex PRESET_02
		note_ex PRESET_01
		note_ex PRESET_00
		note_ex PRESET_02
		note_ex PRESET_01
		note $00
		note_ex PRESET_02
		note_ex PRESET_02
		note_ex PRESET_01
		note $00
		note_ex PRESET_00
		note_ex PRESET_03
		note_ex PRESET_02
		note_ex PRESET_02
		note_ex PRESET_01
		note $00
		note_ex PRESET_02
		note_ex PRESET_01
		note_ex PRESET_00, NOTELEN_06
		note_ex PRESET_01, NOTELEN_03
		note_ex PRESET_02
		note $00
		note_ex PRESET_02
		note_ex PRESET_01
		note $00
		note_ex PRESET_00
		note_ex PRESET_02
		note_ex PRESET_02
		note_ex PRESET_03
		snd_loop .loop0, iSndChInfo_LoopTimer0
	note_ex PRESET_01, NOTELEN_03
	note $00
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_01
	note $00
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_01
	note $00
	note_ex PRESET_00
	note_ex PRESET_03
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_01
	note $00
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_02
	note $00
	note_ex PRESET_02
	note_ex PRESET_01
	note $00
	note_ex PRESET_00
	note_ex PRESET_04, NOTELEN_06
	note_ex PRESET_00, NOTELEN_03
	set_var iSndChInfo_LoopTimer0, $03
	.loop1:
		note_ex PRESET_01
		note_ex PRESET_02
		note_ex PRESET_01
		note $00
		note_ex PRESET_00
		note_ex PRESET_02
		note_ex PRESET_03
		note_ex PRESET_01
		note $00
		note_ex PRESET_01
		note_ex PRESET_01
		note $00
		note_ex PRESET_00, NOTELEN_06
		note_ex PRESET_02, NOTELEN_03
		note_ex PRESET_03
		note_ex PRESET_01
		note_ex PRESET_02
		note_ex PRESET_01
		note $00
		note_ex PRESET_00
		note_ex PRESET_03
		note_ex PRESET_02
		note_ex PRESET_01
		note_ex PRESET_02
		note_ex PRESET_00
		note_ex PRESET_01
		note $00
		note_ex PRESET_00
		note_ex PRESET_02
		note_ex PRESET_03
		note_ex PRESET_02
		snd_loop .loop1, iSndChInfo_LoopTimer0
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_01
	note $00
	note_ex PRESET_00, NOTELEN_06
	note_ex PRESET_02, NOTELEN_03
	note_ex PRESET_01
	note $00
	note_ex PRESET_01
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_00, NOTELEN_06
	note_ex PRESET_00
	note_ex PRESET_04, NOTELEN_01
	note_ex PRESET_00, NOTELEN_CUSTOM, $05
	note_ex PRESET_02, NOTELEN_0C
	note_ex PRESET_02
	note_ex PRESET_01, NOTELEN_03
	note_ex PRESET_04, NOTELEN_01
	note_ex PRESET_04
	note_ex PRESET_04
	note_ex PRESET_00, NOTELEN_03
	note_ex PRESET_00
	note_ex PRESET_01
	note $00
	set_var iSndChInfo_LoopTimer0, $03
	.loop2:
		note_ex PRESET_01, NOTELEN_03
		note $00
		note_ex PRESET_02
		note_ex PRESET_01
		note_ex PRESET_00
		note_ex PRESET_02
		note_ex PRESET_01
		note $00
		note_ex PRESET_02
		note_ex PRESET_02
		note_ex PRESET_01
		note $00
		note_ex PRESET_00
		note_ex PRESET_03
		note_ex PRESET_02
		note_ex PRESET_02
		note_ex PRESET_01
		note $00
		note_ex PRESET_02
		note_ex PRESET_01
		note_ex PRESET_00, NOTELEN_06
		note_ex PRESET_01, NOTELEN_03
		note_ex PRESET_02
		note $00
		note_ex PRESET_02
		note_ex PRESET_01
		note $00
		note_ex PRESET_00
		note_ex PRESET_02
		note_ex PRESET_02
		note_ex PRESET_03
		snd_loop .loop2, iSndChInfo_LoopTimer0
	note_ex PRESET_01, NOTELEN_03
	note $00
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_01
	note $00
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_01
	note $00
	note_ex PRESET_00
	note_ex PRESET_03
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_01
	note $00
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_02
	note $00
	note_ex PRESET_02
	note_ex PRESET_01
	note $00
	note_ex PRESET_00
	note_ex PRESET_04, NOTELEN_06
	note_ex PRESET_00, NOTELEN_03
	note_ex PRESET_01
	note $00
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_03
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_00, NOTELEN_06
	note_ex PRESET_02, NOTELEN_03
	note_ex PRESET_03
	note_ex PRESET_01
	note $00
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_02
	note $00
	note_ex PRESET_02
	note_ex PRESET_01
	note $00
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_03
	note_ex PRESET_02
	note_ex PRESET_01
	note $00
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_03
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_00, NOTELEN_06
	note_ex PRESET_02, NOTELEN_03
	note_ex PRESET_03
	note_ex PRESET_01
	note $00
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_02
	note $00
	note_ex PRESET_02
	note_ex PRESET_01
	note $00
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_03
	note_ex PRESET_00
	note_ex PRESET_01
	note $00
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_03
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_00, NOTELEN_06
	note_ex PRESET_02, NOTELEN_03
	note_ex PRESET_03
	note_ex PRESET_01
	note $00
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_02
	note $00
	note_ex PRESET_02
	note_ex PRESET_01
	note $00
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_03
	note_ex PRESET_02
	note_ex PRESET_01
	note $00
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_03
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_00, NOTELEN_06
	note_ex PRESET_02, NOTELEN_03
	note_ex PRESET_03
	note_ex PRESET_01
	note $00
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_02
	note $00
	note_ex PRESET_02
	note_ex PRESET_01
	note $00
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_00
	note_ex PRESET_00
	set_var iSndChInfo_LoopTimer0, $02
	.loop3:
		note_ex PRESET_01
		note $00
		note_ex PRESET_02
		note_ex PRESET_01
		note_ex PRESET_00
		note_ex PRESET_02
		note_ex PRESET_01
		note_ex PRESET_03
		note_ex PRESET_02
		note_ex PRESET_02
		note_ex PRESET_01
		note_ex PRESET_02
		note_ex PRESET_00, NOTELEN_06
		note_ex PRESET_02, NOTELEN_03
		note_ex PRESET_03
		note_ex PRESET_01
		note $00
		note_ex PRESET_02
		note_ex PRESET_01
		note_ex PRESET_00
		note_ex PRESET_02
		note_ex PRESET_01
		note_ex PRESET_02
		note $00
		note_ex PRESET_02
		note_ex PRESET_01
		note $00
		note_ex PRESET_00
		note_ex PRESET_02
		note_ex PRESET_03
		note_ex PRESET_02
		snd_loop .loop3, iSndChInfo_LoopTimer0
	note_ex PRESET_01
	note $00
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_03
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_00, NOTELEN_06
	note_ex PRESET_02, NOTELEN_03
	note_ex PRESET_03
	note_ex PRESET_01
	note $00
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_02
	note $00
	note_ex PRESET_01
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_03
	note_ex PRESET_00, NOTELEN_06
	note_ex PRESET_02, NOTELEN_03
	note_ex PRESET_02
	note_ex PRESET_00, NOTELEN_06
	note_ex PRESET_01
	note_ex PRESET_00, NOTELEN_03
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_03
	note_ex PRESET_00, NOTELEN_06
	note_ex PRESET_01, NOTELEN_03
	note_ex PRESET_02
	volume_add -12
	set_var iSndChInfo_LoopTimer0, $06
	.loop4:
		note_ex PRESET_00, NOTELEN_06
		volume_add 2
		snd_loop .loop4, iSndChInfo_LoopTimer0
	note_ex PRESET_00, NOTELEN_03
	note_ex PRESET_04
	note_ex PRESET_01
	note $00
	snd_loop SndData_10_Ch4
