SndHeader_0A:
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
	nrx1 SNDDUTY_12, $00 ; iSndChInfo_DutyOrWave
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
	nrx1 SNDDUTY_12, $00 ; iSndChInfo_DutyOrWave
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
	nrx1 SNDDUTY_12, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_0A_Ch3:
	snd_wave WAVE_0D
	snd_var iSndChInfo_LoopTimer0, $03
	.loop0:
		snd_note $1D, NOTELEN_0C
		snd_note $1D, NOTELEN_06
		snd_note $00, NOTELEN_03
		snd_note $21
		snd_note $00
		snd_note $21
		snd_note $00, NOTELEN_06
		snd_note $21, NOTELEN_0C
		snd_note $22
		snd_note $22, NOTELEN_06
		snd_note $00, NOTELEN_03
		snd_note $24
		snd_note $00
		snd_note $24
		snd_note $00, NOTELEN_06
		snd_note $24, NOTELEN_0C
		snd_djnz iSndChInfo_LoopTimer0, .loop0
	snd_note $1D
	snd_note $1D, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_note $21
	snd_note $00
	snd_note $21
	snd_note $00, NOTELEN_06
	snd_note $21, NOTELEN_09
	snd_note $22, NOTELEN_03
	snd_note $00
	snd_note $22
	snd_note $00, NOTELEN_06
	snd_note $22, NOTELEN_09
	snd_note $24, NOTELEN_03
	snd_note $00
	snd_note $24
	snd_note $00, NOTELEN_06
	snd_note $24
	snd_note $1F
	snd_note $1D, NOTELEN_0C
	snd_note $1D, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_note $21
	snd_note $00
	snd_note $21
	snd_note $00, NOTELEN_06
	snd_note $21, NOTELEN_0C
	snd_note $22
	snd_note $22, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_note $24
	snd_note $00
	snd_note $24
	snd_note $00, NOTELEN_06
	snd_note $24
	snd_note $1F
	snd_note $1D, NOTELEN_0C
	snd_note $1D, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_note $21
	snd_note $00
	snd_note $21
	snd_note $00, NOTELEN_06
	snd_note $21, NOTELEN_09
	snd_note $22, NOTELEN_03
	snd_note $00
	snd_note $22
	snd_note $00, NOTELEN_06
	snd_note $22
	snd_note $00, NOTELEN_03
	snd_note $24, NOTELEN_09
	snd_note $24, NOTELEN_03
	snd_note $2B
	snd_note $30
	snd_note $2B
	snd_note $24, NOTELEN_06
	snd_note $00
	snd_note $22, NOTELEN_03
	snd_note $1D, NOTELEN_09
	snd_note $22, NOTELEN_03
	snd_note $00, NOTELEN_09
	snd_note $22, NOTELEN_03
	snd_note $22
	snd_note $29, NOTELEN_06
	snd_note $22
	snd_note $00
	snd_note $1D, NOTELEN_03
	snd_note $18, NOTELEN_09
	snd_note $1D, NOTELEN_03
	snd_note $00, NOTELEN_09
	snd_note $1D, NOTELEN_03
	snd_note $1D
	snd_note $24, NOTELEN_06
	snd_note $1D
	snd_note $00
	snd_note $24, NOTELEN_03
	snd_note $1F, NOTELEN_09
	snd_note $24, NOTELEN_03
	snd_note $00, NOTELEN_09
	snd_note $24, NOTELEN_03
	snd_note $24
	snd_note $2B, NOTELEN_06
	snd_note $24
	snd_note $00
	snd_note $1D, NOTELEN_03
	snd_note $18, NOTELEN_09
	snd_note $1D, NOTELEN_03
	snd_note $00, NOTELEN_09
	snd_note $1D, NOTELEN_03
	snd_note $1D
	snd_note $24, NOTELEN_06
	snd_note $29
	snd_note $00
	snd_note $22, NOTELEN_03
	snd_note $1D, NOTELEN_09
	snd_note $22, NOTELEN_03
	snd_note $00, NOTELEN_09
	snd_note $22, NOTELEN_03
	snd_note $22
	snd_note $29, NOTELEN_06
	snd_note $22
	snd_note $00
	snd_note $1D, NOTELEN_03
	snd_note $18, NOTELEN_09
	snd_note $1D, NOTELEN_03
	snd_note $00, NOTELEN_09
	snd_note $1D, NOTELEN_03
	snd_note $1D
	snd_note $24, NOTELEN_06
	snd_note $1D
	snd_note $00
	snd_note $24, NOTELEN_03
	snd_note $1F, NOTELEN_09
	snd_note $24, NOTELEN_03
	snd_note $00, NOTELEN_09
	snd_note $24, NOTELEN_03
	snd_note $24
	snd_note $2B, NOTELEN_06
	snd_note $24
	snd_note $24
	snd_note $00
	snd_note $24, NOTELEN_24
	snd_var iSndChInfo_LoopTimer0, $02
	.loop1:
		snd_note $1D, NOTELEN_0C
		snd_note $1D, NOTELEN_06
		snd_note $00, NOTELEN_03
		snd_note $21
		snd_note $00
		snd_note $21
		snd_note $00, NOTELEN_06
		snd_note $21, NOTELEN_0C
		snd_note $22
		snd_note $22, NOTELEN_06
		snd_note $00, NOTELEN_03
		snd_note $24
		snd_note $00
		snd_note $24
		snd_note $00, NOTELEN_06
		snd_note $24, NOTELEN_0C
		snd_djnz iSndChInfo_LoopTimer0, .loop1
	snd_jp SndData_0A_Ch3
SndData_0A_Ch1:
	snd_duty SNDDUTY_25, $00
	snd_instrument INSTR_09
	snd_var iSndChInfo_LoopTimer0, $02
	.loop0:
		snd_note $41, NOTELEN_09
		snd_inc_vol -12
		snd_instrument INSTR_NONE
		snd_note $41, NOTELEN_03
		snd_inc_vol 12
		snd_instrument INSTR_09
		snd_note $3C
		snd_inc_vol -12
		snd_instrument INSTR_NONE
		snd_note $3C
		snd_inc_vol 12
		snd_instrument INSTR_09
		snd_note $3E
		snd_inc_vol -12
		snd_instrument INSTR_NONE
		snd_note $3E
		snd_inc_vol 12
		snd_instrument INSTR_09
		snd_note $41
		snd_note $43
		snd_inc_vol -12
		snd_instrument INSTR_NONE
		snd_note $43
		snd_inc_vol 12
		snd_instrument INSTR_09
		snd_note $45
		snd_inc_vol -12
		snd_instrument INSTR_NONE
		snd_note $45, NOTELEN_06
		snd_inc_vol 12
		snd_instrument INSTR_09
		snd_note $41, NOTELEN_03
		snd_inc_vol -12
		snd_instrument INSTR_NONE
		snd_note $41, NOTELEN_06
		snd_inc_vol 12
		snd_instrument INSTR_09
		snd_note $41, NOTELEN_03
		snd_inc_vol -12
		snd_instrument INSTR_NONE
		snd_note $41
		snd_inc_vol 12
		snd_instrument INSTR_09
		snd_note $41
		snd_note $3C
		snd_inc_vol -12
		snd_instrument INSTR_NONE
		snd_note $3C
		snd_inc_vol 12
		snd_instrument INSTR_09
		snd_note $3E
		snd_inc_vol -12
		snd_instrument INSTR_NONE
		snd_note $3E
		snd_inc_vol 12
		snd_instrument INSTR_09
		snd_note $41
		snd_note $43
		snd_inc_vol -12
		snd_instrument INSTR_NONE
		snd_note $43
		snd_inc_vol 12
		snd_instrument INSTR_09
		snd_note $45
		snd_inc_vol -12
		snd_instrument INSTR_NONE
		snd_note $45, NOTELEN_0C
		snd_inc_vol 12
		snd_instrument INSTR_09
		snd_djnz iSndChInfo_LoopTimer0, .loop0
	snd_duty SNDDUTY_50, $00
	snd_instrument INSTR_12
	snd_note $39, NOTELEN_06
	snd_note $3A
	snd_note $3C
	snd_note $41
	snd_note $40, NOTELEN_09
	snd_note $41
	snd_note $3E, NOTELEN_06
	snd_inc_vol -12
	snd_instrument INSTR_NONE
	snd_note $3E
	snd_inc_vol 12
	snd_instrument INSTR_12
	snd_note $3C
	snd_note $3A
	snd_note $39
	snd_note $37
	snd_note $35
	snd_note $34
	snd_note $37
	snd_note $35
	snd_note $37, NOTELEN_03
	snd_note $39
	snd_duty SNDDUTY_25, $00
	snd_instrument INSTR_09
	snd_note $3C
	snd_inc_vol -12
	snd_instrument INSTR_NONE
	snd_note $3C
	snd_inc_vol 12
	snd_instrument INSTR_09
	snd_note $3E
	snd_inc_vol -12
	snd_instrument INSTR_NONE
	snd_note $3E
	snd_inc_vol 12
	snd_instrument INSTR_09
	snd_note $41
	snd_note $43
	snd_inc_vol -12
	snd_instrument INSTR_NONE
	snd_note $43
	snd_inc_vol 12
	snd_instrument INSTR_09
	snd_note $45
	snd_inc_vol -12
	snd_instrument INSTR_NONE
	snd_note $45, NOTELEN_18
	snd_inc_vol 12
	snd_instrument INSTR_09
	snd_note $3C, NOTELEN_03
	snd_inc_vol -12
	snd_instrument INSTR_NONE
	snd_note $3C
	snd_inc_vol 12
	snd_instrument INSTR_09
	snd_note $3E
	snd_inc_vol -12
	snd_instrument INSTR_NONE
	snd_note $3E
	snd_inc_vol 12
	snd_instrument INSTR_09
	snd_note $41
	snd_note $43
	snd_inc_vol -12
	snd_instrument INSTR_NONE
	snd_note $43
	snd_inc_vol 12
	snd_instrument INSTR_09
	snd_note $45
	snd_inc_vol -12
	snd_instrument INSTR_NONE
	snd_note $45, NOTELEN_06
	snd_inc_vol 12
	snd_instrument INSTR_09
	snd_note $41, NOTELEN_03
	snd_inc_vol -12
	snd_instrument INSTR_NONE
	snd_note $41
	snd_duty SNDDUTY_50, $00
	snd_instrument INSTR_12
	snd_inc_vol 12
	snd_note $39, NOTELEN_06
	snd_note $3A
	snd_note $3C
	snd_note $41
	snd_note $40, NOTELEN_09
	snd_note $41
	snd_note $3C, NOTELEN_06
	snd_note $3E, NOTELEN_09
	snd_note $3A
	snd_note $39, NOTELEN_06
	snd_note $37
	snd_note $35
	snd_note $34
	snd_note $37
	snd_note $35
	snd_note $37, NOTELEN_03
	snd_note $39
	snd_duty SNDDUTY_25, $00
	snd_instrument INSTR_09
	snd_note $3C
	snd_inc_vol -12
	snd_instrument INSTR_NONE
	snd_note $3C
	snd_inc_vol 12
	snd_instrument INSTR_09
	snd_note $3E
	snd_inc_vol -12
	snd_instrument INSTR_NONE
	snd_note $3E
	snd_inc_vol 12
	snd_instrument INSTR_09
	snd_note $41
	snd_note $43
	snd_inc_vol -12
	snd_instrument INSTR_NONE
	snd_note $43
	snd_inc_vol 12
	snd_instrument INSTR_09
	snd_note $45
	snd_inc_vol -12
	snd_instrument INSTR_NONE
	snd_note $45, NOTELEN_18
	snd_inc_vol 12
	snd_instrument INSTR_09
	snd_note $3C, NOTELEN_03
	snd_inc_vol -12
	snd_instrument INSTR_NONE
	snd_note $3C
	snd_inc_vol 12
	snd_instrument INSTR_09
	snd_note $3E
	snd_inc_vol -12
	snd_instrument INSTR_NONE
	snd_note $3E
	snd_inc_vol 12
	snd_instrument INSTR_09
	snd_note $41
	snd_note $43
	snd_inc_vol -12
	snd_instrument INSTR_NONE
	snd_note $43
	snd_inc_vol 12
	snd_instrument INSTR_09
	snd_note $45
	snd_inc_vol -12
	snd_instrument INSTR_NONE
	snd_note $45, NOTELEN_0C
	snd_duty SNDDUTY_50, $00
	snd_instrument INSTR_11
	snd_inc_vol 12
	snd_note $00, NOTELEN_06
	snd_note $32
	snd_note $35
	snd_note $3A
	snd_note $3E, NOTELEN_09
	snd_note $3C
	snd_note $3A, NOTELEN_06
	snd_note $3C, NOTELEN_09
	snd_note $3C
	snd_note $3C, NOTELEN_06
	snd_note $3C, NOTELEN_09
	snd_note $39
	snd_note $35, NOTELEN_06
	snd_note $3A, NOTELEN_09
	snd_note $3A
	snd_note $3A, NOTELEN_06
	snd_note $3A, NOTELEN_09
	snd_note $39
	snd_note $37, NOTELEN_06
	snd_note $39, NOTELEN_09
	snd_note $3C
	snd_note $35, NOTELEN_01
	snd_inc_vol -7
	snd_instrument INSTR_12
	snd_var iSndChInfo_LoopTimer0, $0E
	.loop1:
		snd_note $35, NOTELEN_02
		snd_djnz iSndChInfo_LoopTimer0, .loop1
	snd_note $00, NOTELEN_01
	snd_note $00, NOTELEN_06
	snd_inc_vol 7
	snd_instrument INSTR_11
	snd_note $32
	snd_note $35
	snd_note $3A
	snd_note $3E, NOTELEN_09
	snd_note $3C
	snd_note $3A, NOTELEN_06
	snd_note $3C, NOTELEN_09
	snd_note $39
	snd_note $3A, NOTELEN_06
	snd_note $39, NOTELEN_09
	snd_note $3C
	snd_note $39, NOTELEN_06
	snd_note $3A, NOTELEN_09
	snd_note $34
	snd_note $37, NOTELEN_06
	snd_note $3A, NOTELEN_09
	snd_note $39
	snd_note $37, NOTELEN_06
	snd_duty SNDDUTY_25, $00
	snd_instrument INSTR_09
	snd_note $3A, NOTELEN_09
	snd_note $34
	snd_note $37, NOTELEN_06
	snd_note $3A, NOTELEN_09
	snd_note $39
	snd_note $37, NOTELEN_06
	snd_note $39
	snd_duty SNDDUTY_12, $00
	snd_instrument INSTR_NONE
	snd_inc_vol -3
	snd_note $39, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol -4
	snd_note $30
	snd_note $00, NOTELEN_02
	snd_note $29, NOTELEN_01
	snd_note $00, NOTELEN_CUSTOM, $05
	snd_inc_vol 4
	snd_note $39, NOTELEN_02
	snd_inc_vol -10
	snd_pan SNDOUT_CHR
	snd_note $39, NOTELEN_CUSTOM, $0A
	snd_inc_vol 10
	snd_pan SNDOUT_CHALL
	snd_note $39, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol -4
	snd_note $30
	snd_note $00, NOTELEN_02
	snd_note $29, NOTELEN_01
	snd_note $00, NOTELEN_CUSTOM, $05
	snd_inc_vol 4
	snd_note $39, NOTELEN_02
	snd_inc_vol -10
	snd_pan SNDOUT_CHL
	snd_note $39, NOTELEN_04
	snd_inc_vol 6
	snd_pan SNDOUT_CHALL
	snd_note $2B, NOTELEN_01
	snd_note $00, NOTELEN_CUSTOM, $05
	snd_inc_vol 4
	snd_note $3A, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol -4
	snd_note $32
	snd_note $00, NOTELEN_02
	snd_note $2B, NOTELEN_01
	snd_note $00, NOTELEN_CUSTOM, $05
	snd_inc_vol 4
	snd_note $3A, NOTELEN_02
	snd_inc_vol -10
	snd_pan SNDOUT_CHR
	snd_note $3A, NOTELEN_CUSTOM, $0A
	snd_inc_vol 10
	snd_pan SNDOUT_CHALL
	snd_note $3C, NOTELEN_02
	snd_inc_vol -10
	snd_pan SNDOUT_CHL
	snd_note $3C, NOTELEN_CUSTOM, $0A
	snd_inc_vol 10
	snd_pan SNDOUT_CHALL
	snd_note $3C, NOTELEN_02
	snd_inc_vol -10
	snd_pan SNDOUT_CHR
	snd_note $3C, NOTELEN_04
	snd_inc_vol 6
	snd_pan SNDOUT_CHALL
	snd_note $29, NOTELEN_01
	snd_note $00, NOTELEN_CUSTOM, $05
	snd_inc_vol 4
	snd_note $39, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol -4
	snd_note $30
	snd_note $00, NOTELEN_02
	snd_note $29, NOTELEN_01
	snd_note $00, NOTELEN_CUSTOM, $05
	snd_inc_vol 4
	snd_note $39, NOTELEN_02
	snd_inc_vol -10
	snd_pan SNDOUT_CHL
	snd_note $39, NOTELEN_CUSTOM, $0A
	snd_inc_vol 10
	snd_pan SNDOUT_CHALL
	snd_note $39, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol -4
	snd_note $30
	snd_note $00, NOTELEN_02
	snd_note $29, NOTELEN_01
	snd_note $00, NOTELEN_CUSTOM, $05
	snd_inc_vol 4
	snd_note $39, NOTELEN_02
	snd_inc_vol -10
	snd_pan SNDOUT_CHR
	snd_note $39, NOTELEN_04
	snd_inc_vol 6
	snd_pan SNDOUT_CHALL
	snd_note $2B, NOTELEN_01
	snd_note $00, NOTELEN_CUSTOM, $05
	snd_inc_vol 4
	snd_note $3A, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol -4
	snd_note $32
	snd_note $00, NOTELEN_02
	snd_note $2B, NOTELEN_01
	snd_note $00, NOTELEN_CUSTOM, $05
	snd_inc_vol 4
	snd_note $3A, NOTELEN_02
	snd_inc_vol -10
	snd_pan SNDOUT_CHL
	snd_note $3A, NOTELEN_CUSTOM, $0A
	snd_inc_vol 10
	snd_pan SNDOUT_CHALL
	snd_note $3C, NOTELEN_02
	snd_inc_vol -10
	snd_pan SNDOUT_CHR
	snd_note $3C, NOTELEN_CUSTOM, $0A
	snd_inc_vol 10
	snd_pan SNDOUT_CHALL
	snd_note $3C, NOTELEN_02
	snd_inc_vol -10
	snd_pan SNDOUT_CHL
	snd_note $3C, NOTELEN_04
	snd_pan SNDOUT_CHALL
	snd_inc_vol 13
	snd_jp SndData_0A_Ch1
SndData_0A_Ch2:
	snd_duty SNDDUTY_25, $00
	snd_instrument INSTR_09
	snd_var iSndChInfo_LoopTimer0, $02
	.loop0:
		snd_note $3C, NOTELEN_09
		snd_inc_vol -12
		snd_instrument INSTR_NONE
		snd_note $3C, NOTELEN_03
		snd_inc_vol 12
		snd_instrument INSTR_09
		snd_note $39
		snd_inc_vol -12
		snd_instrument INSTR_NONE
		snd_note $39
		snd_inc_vol 12
		snd_instrument INSTR_09
		snd_note $3A
		snd_inc_vol -12
		snd_instrument INSTR_NONE
		snd_note $3A
		snd_inc_vol 12
		snd_instrument INSTR_09
		snd_note $3C
		snd_note $3E
		snd_inc_vol -12
		snd_instrument INSTR_NONE
		snd_note $3E
		snd_inc_vol 12
		snd_instrument INSTR_09
		snd_note $41
		snd_inc_vol -12
		snd_instrument INSTR_NONE
		snd_note $41, NOTELEN_06
		snd_inc_vol 12
		snd_instrument INSTR_09
		snd_note $3C, NOTELEN_03
		snd_inc_vol -12
		snd_instrument INSTR_NONE
		snd_note $3C, NOTELEN_06
		snd_inc_vol 12
		snd_instrument INSTR_09
		snd_note $3C, NOTELEN_03
		snd_inc_vol -12
		snd_instrument INSTR_NONE
		snd_note $3C
		snd_inc_vol 12
		snd_instrument INSTR_09
		snd_note $3C
		snd_note $39
		snd_inc_vol -12
		snd_instrument INSTR_NONE
		snd_note $39
		snd_inc_vol 12
		snd_instrument INSTR_09
		snd_note $3A
		snd_inc_vol -12
		snd_instrument INSTR_NONE
		snd_note $3A
		snd_inc_vol 12
		snd_instrument INSTR_09
		snd_note $3C
		snd_note $3E
		snd_inc_vol -12
		snd_instrument INSTR_NONE
		snd_note $3E
		snd_inc_vol 12
		snd_instrument INSTR_09
		snd_note $41
		snd_inc_vol -12
		snd_instrument INSTR_NONE
		snd_note $41, NOTELEN_0C
		snd_inc_vol 12
		snd_instrument INSTR_09
		snd_djnz iSndChInfo_LoopTimer0, .loop0
	snd_duty SNDDUTY_50, $00
	snd_instrument INSTR_12
	snd_note $35, NOTELEN_06
	snd_note $37
	snd_note $39
	snd_note $3C
	snd_note $3C, NOTELEN_09
	snd_note $3C
	snd_note $3A, NOTELEN_06
	snd_inc_vol -12
	snd_instrument INSTR_NONE
	snd_note $3A
	snd_inc_vol 12
	snd_instrument INSTR_12
	snd_note $39
	snd_note $37
	snd_note $35
	snd_note $34
	snd_note $32
	snd_note $30
	snd_note $34
	snd_note $30
	snd_note $34, NOTELEN_03
	snd_note $35
	snd_duty SNDDUTY_25, $00
	snd_instrument INSTR_09
	snd_note $39
	snd_inc_vol -12
	snd_instrument INSTR_NONE
	snd_note $39
	snd_inc_vol 12
	snd_instrument INSTR_09
	snd_note $3A
	snd_inc_vol -12
	snd_instrument INSTR_NONE
	snd_note $3A
	snd_inc_vol 12
	snd_instrument INSTR_09
	snd_note $3C
	snd_note $3E
	snd_inc_vol -12
	snd_instrument INSTR_NONE
	snd_note $3E
	snd_inc_vol 12
	snd_instrument INSTR_09
	snd_note $41
	snd_inc_vol -12
	snd_instrument INSTR_NONE
	snd_note $41, NOTELEN_18
	snd_inc_vol 12
	snd_instrument INSTR_09
	snd_note $39, NOTELEN_03
	snd_inc_vol -12
	snd_instrument INSTR_NONE
	snd_note $39
	snd_inc_vol 12
	snd_instrument INSTR_09
	snd_note $3A
	snd_inc_vol -12
	snd_instrument INSTR_NONE
	snd_note $3A
	snd_inc_vol 12
	snd_instrument INSTR_09
	snd_note $3C
	snd_note $3E
	snd_inc_vol -12
	snd_instrument INSTR_NONE
	snd_note $3E
	snd_inc_vol 12
	snd_instrument INSTR_09
	snd_note $41
	snd_inc_vol -12
	snd_instrument INSTR_NONE
	snd_note $41, NOTELEN_06
	snd_inc_vol 12
	snd_instrument INSTR_09
	snd_note $3C, NOTELEN_03
	snd_inc_vol -12
	snd_instrument INSTR_NONE
	snd_note $3C
	snd_duty SNDDUTY_50, $00
	snd_instrument INSTR_12
	snd_inc_vol 12
	snd_note $35, NOTELEN_06
	snd_note $37
	snd_note $39
	snd_note $3C
	snd_note $3C, NOTELEN_09
	snd_note $3C
	snd_note $39, NOTELEN_06
	snd_note $3A, NOTELEN_09
	snd_note $37
	snd_note $35, NOTELEN_06
	snd_note $34
	snd_note $32
	snd_note $30
	snd_note $34
	snd_note $30
	snd_note $34, NOTELEN_03
	snd_note $35
	snd_duty SNDDUTY_25, $00
	snd_instrument INSTR_09
	snd_note $39
	snd_inc_vol -12
	snd_instrument INSTR_NONE
	snd_note $39
	snd_inc_vol 12
	snd_instrument INSTR_09
	snd_note $3A
	snd_inc_vol -12
	snd_instrument INSTR_NONE
	snd_note $3A
	snd_inc_vol 12
	snd_instrument INSTR_09
	snd_note $3C
	snd_note $3E
	snd_inc_vol -12
	snd_instrument INSTR_NONE
	snd_note $3E
	snd_inc_vol 12
	snd_instrument INSTR_09
	snd_note $41
	snd_inc_vol -12
	snd_instrument INSTR_NONE
	snd_note $41, NOTELEN_18
	snd_inc_vol 12
	snd_instrument INSTR_09
	snd_note $39, NOTELEN_03
	snd_inc_vol -12
	snd_instrument INSTR_NONE
	snd_note $39
	snd_inc_vol 12
	snd_instrument INSTR_09
	snd_note $3A
	snd_inc_vol -12
	snd_instrument INSTR_NONE
	snd_note $3A
	snd_inc_vol 12
	snd_instrument INSTR_09
	snd_note $3C
	snd_note $3E
	snd_inc_vol -12
	snd_instrument INSTR_NONE
	snd_note $3E
	snd_inc_vol 12
	snd_instrument INSTR_09
	snd_note $41
	snd_inc_vol -12
	snd_instrument INSTR_NONE
	snd_note $41, NOTELEN_0C
	snd_duty SNDDUTY_50, $00
	snd_instrument INSTR_11
	snd_inc_vol 12
	snd_note $00, NOTELEN_06
	snd_note $2E
	snd_note $32
	snd_note $35
	snd_note $3A, NOTELEN_09
	snd_note $39
	snd_note $37, NOTELEN_06
	snd_note $39, NOTELEN_09
	snd_note $39
	snd_note $39, NOTELEN_06
	snd_note $39, NOTELEN_09
	snd_note $35
	snd_note $30, NOTELEN_06
	snd_note $37, NOTELEN_09
	snd_note $37
	snd_note $37, NOTELEN_06
	snd_note $37, NOTELEN_09
	snd_note $35
	snd_note $34, NOTELEN_06
	snd_note $35, NOTELEN_09
	snd_note $39
	snd_note $30, NOTELEN_01
	snd_inc_vol -7
	snd_instrument INSTR_12
	snd_note $00
	snd_var iSndChInfo_LoopTimer0, $0E
	.loop1:
		snd_note $30, NOTELEN_02
		snd_djnz iSndChInfo_LoopTimer0, .loop1
	snd_note $00, NOTELEN_06
	snd_inc_vol 7
	snd_instrument INSTR_11
	snd_note $2E
	snd_note $32
	snd_note $35
	snd_note $3A, NOTELEN_09
	snd_note $39
	snd_note $37, NOTELEN_06
	snd_note $39, NOTELEN_09
	snd_note $35
	snd_note $32, NOTELEN_06
	snd_note $30, NOTELEN_09
	snd_note $39
	snd_note $35, NOTELEN_06
	snd_note $37, NOTELEN_09
	snd_note $30
	snd_note $34, NOTELEN_06
	snd_note $37, NOTELEN_09
	snd_note $35
	snd_note $34, NOTELEN_06
	snd_duty SNDDUTY_25, $00
	snd_instrument INSTR_09
	snd_note $37, NOTELEN_09
	snd_note $30
	snd_note $34, NOTELEN_06
	snd_note $37, NOTELEN_09
	snd_note $35
	snd_note $34, NOTELEN_06
	snd_note $35
	snd_duty SNDDUTY_12, $00
	snd_instrument INSTR_NONE
	snd_inc_vol -3
	snd_note $35, NOTELEN_02
	snd_inc_vol -10
	snd_pan SNDOUT_CHR
	snd_note $35, NOTELEN_CUSTOM, $0A
	snd_inc_vol 10
	snd_note $35, NOTELEN_02
	snd_inc_vol -10
	snd_pan SNDOUT_CHL
	snd_note $35, NOTELEN_CUSTOM, $0A
	snd_inc_vol 10
	snd_note $35, NOTELEN_02
	snd_inc_vol -10
	snd_pan SNDOUT_CHR
	snd_note $35, NOTELEN_CUSTOM, $0A
	snd_inc_vol 10
	snd_note $35, NOTELEN_02
	snd_inc_vol -10
	snd_pan SNDOUT_CHL
	snd_note $35, NOTELEN_CUSTOM, $0A
	snd_inc_vol 10
	snd_note $35, NOTELEN_02
	snd_inc_vol -10
	snd_pan SNDOUT_CHR
	snd_note $35, NOTELEN_CUSTOM, $0A
	snd_inc_vol 10
	snd_note $35, NOTELEN_02
	snd_inc_vol -10
	snd_pan SNDOUT_CHL
	snd_note $35, NOTELEN_CUSTOM, $0A
	snd_inc_vol 10
	snd_note $37, NOTELEN_02
	snd_inc_vol -10
	snd_pan SNDOUT_CHR
	snd_note $37, NOTELEN_CUSTOM, $0A
	snd_inc_vol 10
	snd_note $37, NOTELEN_02
	snd_inc_vol -10
	snd_pan SNDOUT_CHL
	snd_note $37, NOTELEN_04
	snd_note $00, NOTELEN_06
	snd_inc_vol 10
	snd_note $35, NOTELEN_02
	snd_inc_vol -10
	snd_pan SNDOUT_CHR
	snd_note $35, NOTELEN_CUSTOM, $0A
	snd_inc_vol 10
	snd_note $35, NOTELEN_02
	snd_inc_vol -10
	snd_pan SNDOUT_CHL
	snd_note $35, NOTELEN_CUSTOM, $0A
	snd_inc_vol 10
	snd_note $35, NOTELEN_02
	snd_inc_vol -10
	snd_pan SNDOUT_CHR
	snd_note $35, NOTELEN_CUSTOM, $0A
	snd_inc_vol 10
	snd_note $35, NOTELEN_02
	snd_inc_vol -10
	snd_pan SNDOUT_CHL
	snd_note $35, NOTELEN_CUSTOM, $0A
	snd_inc_vol 10
	snd_note $35, NOTELEN_02
	snd_inc_vol -10
	snd_pan SNDOUT_CHR
	snd_note $35, NOTELEN_CUSTOM, $0A
	snd_inc_vol 10
	snd_note $35, NOTELEN_02
	snd_inc_vol -10
	snd_pan SNDOUT_CHL
	snd_note $35, NOTELEN_CUSTOM, $0A
	snd_inc_vol 10
	snd_note $37, NOTELEN_02
	snd_inc_vol -10
	snd_pan SNDOUT_CHR
	snd_note $37, NOTELEN_CUSTOM, $0A
	snd_inc_vol 10
	snd_note $37, NOTELEN_02
	snd_inc_vol -10
	snd_pan SNDOUT_CHL
	snd_note $37, NOTELEN_04
	snd_pan SNDOUT_CHALL
	snd_inc_vol 13
	snd_jp SndData_0A_Ch2
SndData_0A_Ch4:
	snd_call .sub0
	snd_call .sub1
	snd_call .sub0
	snd_noteex PRESET_01, NOTELEN_03
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_note $00
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_03
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_01
	snd_noteex PRESET_04
	snd_noteex PRESET_00
	snd_noteex PRESET_01
	snd_inc_vol -5
	snd_noteex PRESET_04, NOTELEN_01
	snd_noteex PRESET_04
	snd_noteex PRESET_04
	snd_inc_vol 5
	snd_call .sub0
	snd_call .sub2
	snd_call .sub3
	snd_note $00
	snd_note $00
	snd_noteex PRESET_01, NOTELEN_06
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_02
	snd_noteex PRESET_03
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_04
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_00, NOTELEN_06
	snd_call .sub0
	snd_call .sub2
	snd_call .sub3
	snd_noteex PRESET_02, NOTELEN_06
	snd_noteex PRESET_00
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_02
	snd_noteex PRESET_03
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_01
	snd_note $00
	snd_noteex PRESET_00
	snd_noteex PRESET_04
	snd_noteex PRESET_01
	snd_note $00
	snd_var iSndChInfo_LoopTimer0, $06
	.loop0:
		snd_noteex PRESET_01, NOTELEN_06
		snd_noteex PRESET_03, NOTELEN_03
		snd_noteex PRESET_01
		snd_noteex PRESET_00
		snd_noteex PRESET_02
		snd_noteex PRESET_01, NOTELEN_06
		snd_noteex PRESET_02
		snd_noteex PRESET_01
		snd_noteex PRESET_00, NOTELEN_03
		snd_noteex PRESET_02
		snd_noteex PRESET_03, NOTELEN_06
		snd_djnz iSndChInfo_LoopTimer0, .loop0
	snd_noteex PRESET_01, NOTELEN_06
	snd_noteex PRESET_01
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_02
	snd_noteex PRESET_03, NOTELEN_06
	snd_noteex PRESET_01
	snd_noteex PRESET_01
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_02
	snd_noteex PRESET_03, NOTELEN_06
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_02, NOTELEN_09
	snd_inc_vol -5
	snd_noteex PRESET_04, NOTELEN_01
	snd_noteex PRESET_04
	snd_noteex PRESET_04
	snd_inc_vol 5
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_04, NOTELEN_03
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_04, NOTELEN_03
	snd_call .sub0
	snd_call .sub1
	snd_call .sub0
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_04, NOTELEN_03
	snd_noteex PRESET_00, NOTELEN_06
	snd_inc_vol -5
	snd_noteex PRESET_04, NOTELEN_01
	snd_noteex PRESET_04
	snd_noteex PRESET_04
	snd_inc_vol 5
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_inc_vol -5
	snd_noteex PRESET_04, NOTELEN_01
	snd_noteex PRESET_04
	snd_noteex PRESET_04
	snd_inc_vol 5
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_00
	snd_noteex PRESET_01
	snd_note $00
	snd_jp SndData_0A_Ch4
.sub0:
	snd_noteex PRESET_01, NOTELEN_03
	snd_noteex PRESET_02
	snd_noteex PRESET_03, NOTELEN_06
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_02
	snd_noteex PRESET_03
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_01
	snd_note $00
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_03, NOTELEN_06
	snd_ret
.sub1:
	snd_noteex PRESET_01, NOTELEN_03
	snd_noteex PRESET_02
	snd_noteex PRESET_03, NOTELEN_06
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_02
	snd_noteex PRESET_03
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_04
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_03, NOTELEN_06
	snd_ret
.sub2:
	snd_noteex PRESET_01, NOTELEN_03
	snd_noteex PRESET_02
	snd_noteex PRESET_01, NOTELEN_06
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_02
	snd_noteex PRESET_03
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_04
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_03, NOTELEN_06
	snd_ret
.sub3:
	snd_noteex PRESET_01, NOTELEN_03
	snd_noteex PRESET_02
	snd_noteex PRESET_03, NOTELEN_06
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_02
	snd_noteex PRESET_03
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_01
	snd_note $00
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_03
	snd_noteex PRESET_01
	snd_ret
