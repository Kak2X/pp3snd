SndHeader_BGM_0A:
	db 4 ; Number of slots
.slot0:
	db SNDSLOT0 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_08 ; iSndChInfo_Instrument
	db VIBRATO_0B ; iSndChInfo_Vibrato
	db -11 ; iSndChInfo_NoteIdBase
	db 115 ; iSndChInfo_Speed
	db SNDCH_WAVE ; iSndChInfo_ChId
	dw SndData_0A_Ch3 ; Data pointer
	db WAVE_00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot1:
	db SNDSLOT1 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_0B ; iSndChInfo_Vibrato
	db -23 ; iSndChInfo_NoteIdBase
	db 115 ; iSndChInfo_Speed
	db SNDCH_PULSE1 ; iSndChInfo_ChId
	dw SndData_0A_Ch1 ; Data pointer
	db $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot2:
	db SNDSLOT2 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 13 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_0B ; iSndChInfo_Vibrato
	db -23 ; iSndChInfo_NoteIdBase
	db 115 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_0A_Ch2 ; Data pointer
	db $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot3:
	db SNDSLOT3 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db 0 ; iSndChInfo_NoteIdBase
	db 115 ; iSndChInfo_Speed
	db SNDCH_NOISE ; iSndChInfo_ChId
	dw SndData_0A_Ch4 ; Data pointer
	db $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_0A_Ch3:
	wave_id WAVE_0D
	set_var iSndChInfo_LoopTimer0, $03
	.loop0:
		note $1D, NOTELEN_0C
		note $1D, NOTELEN_06
		note $00, NOTELEN_03
		note $21
		note $00
		note $21
		note $00, NOTELEN_06
		note $21, NOTELEN_0C
		note $22
		note $22, NOTELEN_06
		note $00, NOTELEN_03
		note $24
		note $00
		note $24
		note $00, NOTELEN_06
		note $24, NOTELEN_0C
		snd_loop .loop0, iSndChInfo_LoopTimer0
	note $1D
	note $1D, NOTELEN_06
	note $00, NOTELEN_03
	note $21
	note $00
	note $21
	note $00, NOTELEN_06
	note $21, NOTELEN_09
	note $22, NOTELEN_03
	note $00
	note $22
	note $00, NOTELEN_06
	note $22, NOTELEN_09
	note $24, NOTELEN_03
	note $00
	note $24
	note $00, NOTELEN_06
	note $24
	note $1F
	note $1D, NOTELEN_0C
	note $1D, NOTELEN_06
	note $00, NOTELEN_03
	note $21
	note $00
	note $21
	note $00, NOTELEN_06
	note $21, NOTELEN_0C
	note $22
	note $22, NOTELEN_06
	note $00, NOTELEN_03
	note $24
	note $00
	note $24
	note $00, NOTELEN_06
	note $24
	note $1F
	note $1D, NOTELEN_0C
	note $1D, NOTELEN_06
	note $00, NOTELEN_03
	note $21
	note $00
	note $21
	note $00, NOTELEN_06
	note $21, NOTELEN_09
	note $22, NOTELEN_03
	note $00
	note $22
	note $00, NOTELEN_06
	note $22
	note $00, NOTELEN_03
	note $24, NOTELEN_09
	note $24, NOTELEN_03
	note $2B
	note $30
	note $2B
	note $24, NOTELEN_06
	note $00
	note $22, NOTELEN_03
	note $1D, NOTELEN_09
	note $22, NOTELEN_03
	note $00, NOTELEN_09
	note $22, NOTELEN_03
	note $22
	note $29, NOTELEN_06
	note $22
	note $00
	note $1D, NOTELEN_03
	note $18, NOTELEN_09
	note $1D, NOTELEN_03
	note $00, NOTELEN_09
	note $1D, NOTELEN_03
	note $1D
	note $24, NOTELEN_06
	note $1D
	note $00
	note $24, NOTELEN_03
	note $1F, NOTELEN_09
	note $24, NOTELEN_03
	note $00, NOTELEN_09
	note $24, NOTELEN_03
	note $24
	note $2B, NOTELEN_06
	note $24
	note $00
	note $1D, NOTELEN_03
	note $18, NOTELEN_09
	note $1D, NOTELEN_03
	note $00, NOTELEN_09
	note $1D, NOTELEN_03
	note $1D
	note $24, NOTELEN_06
	note $29
	note $00
	note $22, NOTELEN_03
	note $1D, NOTELEN_09
	note $22, NOTELEN_03
	note $00, NOTELEN_09
	note $22, NOTELEN_03
	note $22
	note $29, NOTELEN_06
	note $22
	note $00
	note $1D, NOTELEN_03
	note $18, NOTELEN_09
	note $1D, NOTELEN_03
	note $00, NOTELEN_09
	note $1D, NOTELEN_03
	note $1D
	note $24, NOTELEN_06
	note $1D
	note $00
	note $24, NOTELEN_03
	note $1F, NOTELEN_09
	note $24, NOTELEN_03
	note $00, NOTELEN_09
	note $24, NOTELEN_03
	note $24
	note $2B, NOTELEN_06
	note $24
	note $24
	note $00
	note $24, NOTELEN_24
	set_var iSndChInfo_LoopTimer0, $02
	.loop1:
		note $1D, NOTELEN_0C
		note $1D, NOTELEN_06
		note $00, NOTELEN_03
		note $21
		note $00
		note $21
		note $00, NOTELEN_06
		note $21, NOTELEN_0C
		note $22
		note $22, NOTELEN_06
		note $00, NOTELEN_03
		note $24
		note $00
		note $24
		note $00, NOTELEN_06
		note $24, NOTELEN_0C
		snd_loop .loop1, iSndChInfo_LoopTimer0
	snd_loop SndData_0A_Ch3
SndData_0A_Ch1:
	duty_cycle $40
	instrument INSTR_09
	set_var iSndChInfo_LoopTimer0, $02
	.loop0:
		note $41, NOTELEN_09
		volume_add -12
		instrument INSTR_NONE
		note $41, NOTELEN_03
		volume_add 12
		instrument INSTR_09
		note $3C
		volume_add -12
		instrument INSTR_NONE
		note $3C
		volume_add 12
		instrument INSTR_09
		note $3E
		volume_add -12
		instrument INSTR_NONE
		note $3E
		volume_add 12
		instrument INSTR_09
		note $41
		note $43
		volume_add -12
		instrument INSTR_NONE
		note $43
		volume_add 12
		instrument INSTR_09
		note $45
		volume_add -12
		instrument INSTR_NONE
		note $45, NOTELEN_06
		volume_add 12
		instrument INSTR_09
		note $41, NOTELEN_03
		volume_add -12
		instrument INSTR_NONE
		note $41, NOTELEN_06
		volume_add 12
		instrument INSTR_09
		note $41, NOTELEN_03
		volume_add -12
		instrument INSTR_NONE
		note $41
		volume_add 12
		instrument INSTR_09
		note $41
		note $3C
		volume_add -12
		instrument INSTR_NONE
		note $3C
		volume_add 12
		instrument INSTR_09
		note $3E
		volume_add -12
		instrument INSTR_NONE
		note $3E
		volume_add 12
		instrument INSTR_09
		note $41
		note $43
		volume_add -12
		instrument INSTR_NONE
		note $43
		volume_add 12
		instrument INSTR_09
		note $45
		volume_add -12
		instrument INSTR_NONE
		note $45, NOTELEN_0C
		volume_add 12
		instrument INSTR_09
		snd_loop .loop0, iSndChInfo_LoopTimer0
	duty_cycle $80
	instrument INSTR_12
	note $39, NOTELEN_06
	note $3A
	note $3C
	note $41
	note $40, NOTELEN_09
	note $41
	note $3E, NOTELEN_06
	volume_add -12
	instrument INSTR_NONE
	note $3E
	volume_add 12
	instrument INSTR_12
	note $3C
	note $3A
	note $39
	note $37
	note $35
	note $34
	note $37
	note $35
	note $37, NOTELEN_03
	note $39
	duty_cycle $40
	instrument INSTR_09
	note $3C
	volume_add -12
	instrument INSTR_NONE
	note $3C
	volume_add 12
	instrument INSTR_09
	note $3E
	volume_add -12
	instrument INSTR_NONE
	note $3E
	volume_add 12
	instrument INSTR_09
	note $41
	note $43
	volume_add -12
	instrument INSTR_NONE
	note $43
	volume_add 12
	instrument INSTR_09
	note $45
	volume_add -12
	instrument INSTR_NONE
	note $45, NOTELEN_18
	volume_add 12
	instrument INSTR_09
	note $3C, NOTELEN_03
	volume_add -12
	instrument INSTR_NONE
	note $3C
	volume_add 12
	instrument INSTR_09
	note $3E
	volume_add -12
	instrument INSTR_NONE
	note $3E
	volume_add 12
	instrument INSTR_09
	note $41
	note $43
	volume_add -12
	instrument INSTR_NONE
	note $43
	volume_add 12
	instrument INSTR_09
	note $45
	volume_add -12
	instrument INSTR_NONE
	note $45, NOTELEN_06
	volume_add 12
	instrument INSTR_09
	note $41, NOTELEN_03
	volume_add -12
	instrument INSTR_NONE
	note $41
	duty_cycle $80
	instrument INSTR_12
	volume_add 12
	note $39, NOTELEN_06
	note $3A
	note $3C
	note $41
	note $40, NOTELEN_09
	note $41
	note $3C, NOTELEN_06
	note $3E, NOTELEN_09
	note $3A
	note $39, NOTELEN_06
	note $37
	note $35
	note $34
	note $37
	note $35
	note $37, NOTELEN_03
	note $39
	duty_cycle $40
	instrument INSTR_09
	note $3C
	volume_add -12
	instrument INSTR_NONE
	note $3C
	volume_add 12
	instrument INSTR_09
	note $3E
	volume_add -12
	instrument INSTR_NONE
	note $3E
	volume_add 12
	instrument INSTR_09
	note $41
	note $43
	volume_add -12
	instrument INSTR_NONE
	note $43
	volume_add 12
	instrument INSTR_09
	note $45
	volume_add -12
	instrument INSTR_NONE
	note $45, NOTELEN_18
	volume_add 12
	instrument INSTR_09
	note $3C, NOTELEN_03
	volume_add -12
	instrument INSTR_NONE
	note $3C
	volume_add 12
	instrument INSTR_09
	note $3E
	volume_add -12
	instrument INSTR_NONE
	note $3E
	volume_add 12
	instrument INSTR_09
	note $41
	note $43
	volume_add -12
	instrument INSTR_NONE
	note $43
	volume_add 12
	instrument INSTR_09
	note $45
	volume_add -12
	instrument INSTR_NONE
	note $45, NOTELEN_0C
	duty_cycle $80
	instrument INSTR_11
	volume_add 12
	note $00, NOTELEN_06
	note $32
	note $35
	note $3A
	note $3E, NOTELEN_09
	note $3C
	note $3A, NOTELEN_06
	note $3C, NOTELEN_09
	note $3C
	note $3C, NOTELEN_06
	note $3C, NOTELEN_09
	note $39
	note $35, NOTELEN_06
	note $3A, NOTELEN_09
	note $3A
	note $3A, NOTELEN_06
	note $3A, NOTELEN_09
	note $39
	note $37, NOTELEN_06
	note $39, NOTELEN_09
	note $3C
	note $35, NOTELEN_01
	volume_add -7
	instrument INSTR_12
	set_var iSndChInfo_LoopTimer0, $0E
	.loop1:
		note $35, NOTELEN_02
		snd_loop .loop1, iSndChInfo_LoopTimer0
	note $00, NOTELEN_01
	note $00, NOTELEN_06
	volume_add 7
	instrument INSTR_11
	note $32
	note $35
	note $3A
	note $3E, NOTELEN_09
	note $3C
	note $3A, NOTELEN_06
	note $3C, NOTELEN_09
	note $39
	note $3A, NOTELEN_06
	note $39, NOTELEN_09
	note $3C
	note $39, NOTELEN_06
	note $3A, NOTELEN_09
	note $34
	note $37, NOTELEN_06
	note $3A, NOTELEN_09
	note $39
	note $37, NOTELEN_06
	duty_cycle $40
	instrument INSTR_09
	note $3A, NOTELEN_09
	note $34
	note $37, NOTELEN_06
	note $3A, NOTELEN_09
	note $39
	note $37, NOTELEN_06
	note $39
	duty_cycle $00
	instrument INSTR_NONE
	volume_add -3
	note $39, NOTELEN_02
	note $00, NOTELEN_01
	volume_add -4
	note $30
	note $00, NOTELEN_02
	note $29, NOTELEN_01
	note $00, NOTELEN_CUSTOM, $05
	volume_add 4
	note $39, NOTELEN_02
	volume_add -10
	panning SNDOUT_CHR
	note $39, NOTELEN_CUSTOM, $0A
	volume_add 10
	panning SNDOUT_CHALL
	note $39, NOTELEN_02
	note $00, NOTELEN_01
	volume_add -4
	note $30
	note $00, NOTELEN_02
	note $29, NOTELEN_01
	note $00, NOTELEN_CUSTOM, $05
	volume_add 4
	note $39, NOTELEN_02
	volume_add -10
	panning SNDOUT_CHL
	note $39, NOTELEN_04
	volume_add 6
	panning SNDOUT_CHALL
	note $2B, NOTELEN_01
	note $00, NOTELEN_CUSTOM, $05
	volume_add 4
	note $3A, NOTELEN_02
	note $00, NOTELEN_01
	volume_add -4
	note $32
	note $00, NOTELEN_02
	note $2B, NOTELEN_01
	note $00, NOTELEN_CUSTOM, $05
	volume_add 4
	note $3A, NOTELEN_02
	volume_add -10
	panning SNDOUT_CHR
	note $3A, NOTELEN_CUSTOM, $0A
	volume_add 10
	panning SNDOUT_CHALL
	note $3C, NOTELEN_02
	volume_add -10
	panning SNDOUT_CHL
	note $3C, NOTELEN_CUSTOM, $0A
	volume_add 10
	panning SNDOUT_CHALL
	note $3C, NOTELEN_02
	volume_add -10
	panning SNDOUT_CHR
	note $3C, NOTELEN_04
	volume_add 6
	panning SNDOUT_CHALL
	note $29, NOTELEN_01
	note $00, NOTELEN_CUSTOM, $05
	volume_add 4
	note $39, NOTELEN_02
	note $00, NOTELEN_01
	volume_add -4
	note $30
	note $00, NOTELEN_02
	note $29, NOTELEN_01
	note $00, NOTELEN_CUSTOM, $05
	volume_add 4
	note $39, NOTELEN_02
	volume_add -10
	panning SNDOUT_CHL
	note $39, NOTELEN_CUSTOM, $0A
	volume_add 10
	panning SNDOUT_CHALL
	note $39, NOTELEN_02
	note $00, NOTELEN_01
	volume_add -4
	note $30
	note $00, NOTELEN_02
	note $29, NOTELEN_01
	note $00, NOTELEN_CUSTOM, $05
	volume_add 4
	note $39, NOTELEN_02
	volume_add -10
	panning SNDOUT_CHR
	note $39, NOTELEN_04
	volume_add 6
	panning SNDOUT_CHALL
	note $2B, NOTELEN_01
	note $00, NOTELEN_CUSTOM, $05
	volume_add 4
	note $3A, NOTELEN_02
	note $00, NOTELEN_01
	volume_add -4
	note $32
	note $00, NOTELEN_02
	note $2B, NOTELEN_01
	note $00, NOTELEN_CUSTOM, $05
	volume_add 4
	note $3A, NOTELEN_02
	volume_add -10
	panning SNDOUT_CHL
	note $3A, NOTELEN_CUSTOM, $0A
	volume_add 10
	panning SNDOUT_CHALL
	note $3C, NOTELEN_02
	volume_add -10
	panning SNDOUT_CHR
	note $3C, NOTELEN_CUSTOM, $0A
	volume_add 10
	panning SNDOUT_CHALL
	note $3C, NOTELEN_02
	volume_add -10
	panning SNDOUT_CHL
	note $3C, NOTELEN_04
	panning SNDOUT_CHALL
	volume_add 13
	snd_loop SndData_0A_Ch1
SndData_0A_Ch2:
	duty_cycle $40
	instrument INSTR_09
	set_var iSndChInfo_LoopTimer0, $02
	.loop0:
		note $3C, NOTELEN_09
		volume_add -12
		instrument INSTR_NONE
		note $3C, NOTELEN_03
		volume_add 12
		instrument INSTR_09
		note $39
		volume_add -12
		instrument INSTR_NONE
		note $39
		volume_add 12
		instrument INSTR_09
		note $3A
		volume_add -12
		instrument INSTR_NONE
		note $3A
		volume_add 12
		instrument INSTR_09
		note $3C
		note $3E
		volume_add -12
		instrument INSTR_NONE
		note $3E
		volume_add 12
		instrument INSTR_09
		note $41
		volume_add -12
		instrument INSTR_NONE
		note $41, NOTELEN_06
		volume_add 12
		instrument INSTR_09
		note $3C, NOTELEN_03
		volume_add -12
		instrument INSTR_NONE
		note $3C, NOTELEN_06
		volume_add 12
		instrument INSTR_09
		note $3C, NOTELEN_03
		volume_add -12
		instrument INSTR_NONE
		note $3C
		volume_add 12
		instrument INSTR_09
		note $3C
		note $39
		volume_add -12
		instrument INSTR_NONE
		note $39
		volume_add 12
		instrument INSTR_09
		note $3A
		volume_add -12
		instrument INSTR_NONE
		note $3A
		volume_add 12
		instrument INSTR_09
		note $3C
		note $3E
		volume_add -12
		instrument INSTR_NONE
		note $3E
		volume_add 12
		instrument INSTR_09
		note $41
		volume_add -12
		instrument INSTR_NONE
		note $41, NOTELEN_0C
		volume_add 12
		instrument INSTR_09
		snd_loop .loop0, iSndChInfo_LoopTimer0
	duty_cycle $80
	instrument INSTR_12
	note $35, NOTELEN_06
	note $37
	note $39
	note $3C
	note $3C, NOTELEN_09
	note $3C
	note $3A, NOTELEN_06
	volume_add -12
	instrument INSTR_NONE
	note $3A
	volume_add 12
	instrument INSTR_12
	note $39
	note $37
	note $35
	note $34
	note $32
	note $30
	note $34
	note $30
	note $34, NOTELEN_03
	note $35
	duty_cycle $40
	instrument INSTR_09
	note $39
	volume_add -12
	instrument INSTR_NONE
	note $39
	volume_add 12
	instrument INSTR_09
	note $3A
	volume_add -12
	instrument INSTR_NONE
	note $3A
	volume_add 12
	instrument INSTR_09
	note $3C
	note $3E
	volume_add -12
	instrument INSTR_NONE
	note $3E
	volume_add 12
	instrument INSTR_09
	note $41
	volume_add -12
	instrument INSTR_NONE
	note $41, NOTELEN_18
	volume_add 12
	instrument INSTR_09
	note $39, NOTELEN_03
	volume_add -12
	instrument INSTR_NONE
	note $39
	volume_add 12
	instrument INSTR_09
	note $3A
	volume_add -12
	instrument INSTR_NONE
	note $3A
	volume_add 12
	instrument INSTR_09
	note $3C
	note $3E
	volume_add -12
	instrument INSTR_NONE
	note $3E
	volume_add 12
	instrument INSTR_09
	note $41
	volume_add -12
	instrument INSTR_NONE
	note $41, NOTELEN_06
	volume_add 12
	instrument INSTR_09
	note $3C, NOTELEN_03
	volume_add -12
	instrument INSTR_NONE
	note $3C
	duty_cycle $80
	instrument INSTR_12
	volume_add 12
	note $35, NOTELEN_06
	note $37
	note $39
	note $3C
	note $3C, NOTELEN_09
	note $3C
	note $39, NOTELEN_06
	note $3A, NOTELEN_09
	note $37
	note $35, NOTELEN_06
	note $34
	note $32
	note $30
	note $34
	note $30
	note $34, NOTELEN_03
	note $35
	duty_cycle $40
	instrument INSTR_09
	note $39
	volume_add -12
	instrument INSTR_NONE
	note $39
	volume_add 12
	instrument INSTR_09
	note $3A
	volume_add -12
	instrument INSTR_NONE
	note $3A
	volume_add 12
	instrument INSTR_09
	note $3C
	note $3E
	volume_add -12
	instrument INSTR_NONE
	note $3E
	volume_add 12
	instrument INSTR_09
	note $41
	volume_add -12
	instrument INSTR_NONE
	note $41, NOTELEN_18
	volume_add 12
	instrument INSTR_09
	note $39, NOTELEN_03
	volume_add -12
	instrument INSTR_NONE
	note $39
	volume_add 12
	instrument INSTR_09
	note $3A
	volume_add -12
	instrument INSTR_NONE
	note $3A
	volume_add 12
	instrument INSTR_09
	note $3C
	note $3E
	volume_add -12
	instrument INSTR_NONE
	note $3E
	volume_add 12
	instrument INSTR_09
	note $41
	volume_add -12
	instrument INSTR_NONE
	note $41, NOTELEN_0C
	duty_cycle $80
	instrument INSTR_11
	volume_add 12
	note $00, NOTELEN_06
	note $2E
	note $32
	note $35
	note $3A, NOTELEN_09
	note $39
	note $37, NOTELEN_06
	note $39, NOTELEN_09
	note $39
	note $39, NOTELEN_06
	note $39, NOTELEN_09
	note $35
	note $30, NOTELEN_06
	note $37, NOTELEN_09
	note $37
	note $37, NOTELEN_06
	note $37, NOTELEN_09
	note $35
	note $34, NOTELEN_06
	note $35, NOTELEN_09
	note $39
	note $30, NOTELEN_01
	volume_add -7
	instrument INSTR_12
	note $00
	set_var iSndChInfo_LoopTimer0, $0E
	.loop1:
		note $30, NOTELEN_02
		snd_loop .loop1, iSndChInfo_LoopTimer0
	note $00, NOTELEN_06
	volume_add 7
	instrument INSTR_11
	note $2E
	note $32
	note $35
	note $3A, NOTELEN_09
	note $39
	note $37, NOTELEN_06
	note $39, NOTELEN_09
	note $35
	note $32, NOTELEN_06
	note $30, NOTELEN_09
	note $39
	note $35, NOTELEN_06
	note $37, NOTELEN_09
	note $30
	note $34, NOTELEN_06
	note $37, NOTELEN_09
	note $35
	note $34, NOTELEN_06
	duty_cycle $40
	instrument INSTR_09
	note $37, NOTELEN_09
	note $30
	note $34, NOTELEN_06
	note $37, NOTELEN_09
	note $35
	note $34, NOTELEN_06
	note $35
	duty_cycle $00
	instrument INSTR_NONE
	volume_add -3
	note $35, NOTELEN_02
	volume_add -10
	panning SNDOUT_CHR
	note $35, NOTELEN_CUSTOM, $0A
	volume_add 10
	note $35, NOTELEN_02
	volume_add -10
	panning SNDOUT_CHL
	note $35, NOTELEN_CUSTOM, $0A
	volume_add 10
	note $35, NOTELEN_02
	volume_add -10
	panning SNDOUT_CHR
	note $35, NOTELEN_CUSTOM, $0A
	volume_add 10
	note $35, NOTELEN_02
	volume_add -10
	panning SNDOUT_CHL
	note $35, NOTELEN_CUSTOM, $0A
	volume_add 10
	note $35, NOTELEN_02
	volume_add -10
	panning SNDOUT_CHR
	note $35, NOTELEN_CUSTOM, $0A
	volume_add 10
	note $35, NOTELEN_02
	volume_add -10
	panning SNDOUT_CHL
	note $35, NOTELEN_CUSTOM, $0A
	volume_add 10
	note $37, NOTELEN_02
	volume_add -10
	panning SNDOUT_CHR
	note $37, NOTELEN_CUSTOM, $0A
	volume_add 10
	note $37, NOTELEN_02
	volume_add -10
	panning SNDOUT_CHL
	note $37, NOTELEN_04
	note $00, NOTELEN_06
	volume_add 10
	note $35, NOTELEN_02
	volume_add -10
	panning SNDOUT_CHR
	note $35, NOTELEN_CUSTOM, $0A
	volume_add 10
	note $35, NOTELEN_02
	volume_add -10
	panning SNDOUT_CHL
	note $35, NOTELEN_CUSTOM, $0A
	volume_add 10
	note $35, NOTELEN_02
	volume_add -10
	panning SNDOUT_CHR
	note $35, NOTELEN_CUSTOM, $0A
	volume_add 10
	note $35, NOTELEN_02
	volume_add -10
	panning SNDOUT_CHL
	note $35, NOTELEN_CUSTOM, $0A
	volume_add 10
	note $35, NOTELEN_02
	volume_add -10
	panning SNDOUT_CHR
	note $35, NOTELEN_CUSTOM, $0A
	volume_add 10
	note $35, NOTELEN_02
	volume_add -10
	panning SNDOUT_CHL
	note $35, NOTELEN_CUSTOM, $0A
	volume_add 10
	note $37, NOTELEN_02
	volume_add -10
	panning SNDOUT_CHR
	note $37, NOTELEN_CUSTOM, $0A
	volume_add 10
	note $37, NOTELEN_02
	volume_add -10
	panning SNDOUT_CHL
	note $37, NOTELEN_04
	panning SNDOUT_CHALL
	volume_add 13
	snd_loop SndData_0A_Ch2
SndData_0A_Ch4:
	snd_call .sub0
	snd_call .sub1
	snd_call .sub0
	note_ex PRESET_01, NOTELEN_03
	note_ex PRESET_02
	note_ex PRESET_01
	note $00
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_03
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_00
	note_ex PRESET_01
	note_ex PRESET_04
	note_ex PRESET_00
	note_ex PRESET_01
	volume_add -5
	note_ex PRESET_04, NOTELEN_01
	note_ex PRESET_04
	note_ex PRESET_04
	volume_add 5
	snd_call .sub0
	snd_call .sub2
	snd_call .sub3
	note $00
	note $00
	note_ex PRESET_01, NOTELEN_06
	note_ex PRESET_00, NOTELEN_03
	note_ex PRESET_02
	note_ex PRESET_03
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_04
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_00, NOTELEN_06
	snd_call .sub0
	snd_call .sub2
	snd_call .sub3
	note_ex PRESET_02, NOTELEN_06
	note_ex PRESET_00
	note_ex PRESET_00, NOTELEN_03
	note_ex PRESET_02
	note_ex PRESET_03
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_00
	note_ex PRESET_01
	note $00
	note_ex PRESET_00
	note_ex PRESET_04
	note_ex PRESET_01
	note $00
	set_var iSndChInfo_LoopTimer0, $06
	.loop0:
		note_ex PRESET_01, NOTELEN_06
		note_ex PRESET_03, NOTELEN_03
		note_ex PRESET_01
		note_ex PRESET_00
		note_ex PRESET_02
		note_ex PRESET_01, NOTELEN_06
		note_ex PRESET_02
		note_ex PRESET_01
		note_ex PRESET_00, NOTELEN_03
		note_ex PRESET_02
		note_ex PRESET_03, NOTELEN_06
		snd_loop .loop0, iSndChInfo_LoopTimer0
	note_ex PRESET_01, NOTELEN_06
	note_ex PRESET_01
	note_ex PRESET_00, NOTELEN_03
	note_ex PRESET_02
	note_ex PRESET_03, NOTELEN_06
	note_ex PRESET_01
	note_ex PRESET_01
	note_ex PRESET_00, NOTELEN_03
	note_ex PRESET_02
	note_ex PRESET_03, NOTELEN_06
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_02, NOTELEN_09
	volume_add -5
	note_ex PRESET_04, NOTELEN_01
	note_ex PRESET_04
	note_ex PRESET_04
	volume_add 5
	note_ex PRESET_00, NOTELEN_06
	note_ex PRESET_04, NOTELEN_03
	note_ex PRESET_00, NOTELEN_06
	note_ex PRESET_04, NOTELEN_03
	snd_call .sub0
	snd_call .sub1
	snd_call .sub0
	note_ex PRESET_00, NOTELEN_06
	note_ex PRESET_04, NOTELEN_03
	note_ex PRESET_00, NOTELEN_06
	volume_add -5
	note_ex PRESET_04, NOTELEN_01
	note_ex PRESET_04
	note_ex PRESET_04
	volume_add 5
	note_ex PRESET_00, NOTELEN_06
	note_ex PRESET_00, NOTELEN_03
	note_ex PRESET_01
	note_ex PRESET_00
	volume_add -5
	note_ex PRESET_04, NOTELEN_01
	note_ex PRESET_04
	note_ex PRESET_04
	volume_add 5
	note_ex PRESET_00, NOTELEN_03
	note_ex PRESET_00
	note_ex PRESET_01
	note $00
	snd_loop SndData_0A_Ch4
.sub0:
	note_ex PRESET_01, NOTELEN_03
	note_ex PRESET_02
	note_ex PRESET_03, NOTELEN_06
	note_ex PRESET_00, NOTELEN_03
	note_ex PRESET_02
	note_ex PRESET_03
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_01
	note $00
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_03, NOTELEN_06
	snd_ret
.sub1:
	note_ex PRESET_01, NOTELEN_03
	note_ex PRESET_02
	note_ex PRESET_03, NOTELEN_06
	note_ex PRESET_00, NOTELEN_03
	note_ex PRESET_02
	note_ex PRESET_03
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_04
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_03, NOTELEN_06
	snd_ret
.sub2:
	note_ex PRESET_01, NOTELEN_03
	note_ex PRESET_02
	note_ex PRESET_01, NOTELEN_06
	note_ex PRESET_00, NOTELEN_03
	note_ex PRESET_02
	note_ex PRESET_03
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_04
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_03, NOTELEN_06
	snd_ret
.sub3:
	note_ex PRESET_01, NOTELEN_03
	note_ex PRESET_02
	note_ex PRESET_03, NOTELEN_06
	note_ex PRESET_00, NOTELEN_03
	note_ex PRESET_02
	note_ex PRESET_03
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_01
	note $00
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_03
	note_ex PRESET_01
	snd_ret
