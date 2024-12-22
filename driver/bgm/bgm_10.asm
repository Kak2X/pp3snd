SndHeader_10:
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
	nrx1 SNDDUTY_12, $00 ; iSndChInfo_DutyOrWave
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
	nrx1 SNDDUTY_12, $00 ; iSndChInfo_DutyOrWave
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
	nrx1 SNDDUTY_12, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_10_Ch3:
	snd_wave WAVE_0D
	snd_note $1D, NOTELEN_09
	snd_note $1D, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $18, NOTELEN_03
	snd_note $1A
	snd_note $00
	snd_note $1D
	snd_note $00
	snd_note $1F
	snd_note $21
	snd_note $1D
	snd_note $18
	snd_note $1A
	snd_note $1B, NOTELEN_09
	snd_note $1B, NOTELEN_02
	snd_note $00, NOTELEN_CUSTOM, $07
	snd_note $1A, NOTELEN_0C
	snd_note $1A, NOTELEN_03
	snd_note $00
	snd_note $18
	snd_note $1A
	snd_note $1D
	snd_note $1A
	snd_note $1D, NOTELEN_09
	snd_note $1D, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $18, NOTELEN_03
	snd_note $1A
	snd_note $00
	snd_note $1D
	snd_note $00
	snd_note $1F
	snd_note $21
	snd_note $1D
	snd_note $18
	snd_note $1A
	snd_note $1B, NOTELEN_09
	snd_note $1B, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $1A, NOTELEN_12
	snd_note $18, NOTELEN_03
	snd_note $1A
	snd_note $1D
	snd_note $1F
	snd_note $1D, NOTELEN_09
	snd_note $1D, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $18, NOTELEN_03
	snd_note $1A
	snd_note $00
	snd_note $1D
	snd_note $00
	snd_note $1F
	snd_note $21
	snd_note $1D
	snd_note $18
	snd_note $1A
	snd_note $1B, NOTELEN_09
	snd_note $1B, NOTELEN_02
	snd_note $00, NOTELEN_CUSTOM, $07
	snd_note $1A, NOTELEN_0C
	snd_note $1A, NOTELEN_03
	snd_note $00
	snd_note $18
	snd_note $1A
	snd_note $1D
	snd_note $1A
	snd_note $1D, NOTELEN_09
	snd_note $1D, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $18, NOTELEN_03
	snd_note $1A
	snd_note $00
	snd_note $1D
	snd_note $00
	snd_note $1F
	snd_note $21
	snd_note $1D
	snd_note $18
	snd_note $1A
	snd_note $1B, NOTELEN_09
	snd_note $1B, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $1A, NOTELEN_12
	snd_note $18, NOTELEN_03
	snd_note $1A
	snd_note $1D
	snd_note $1F
	snd_note $1D
	snd_note $00, NOTELEN_09
	snd_note $1D, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $1D, NOTELEN_03
	snd_note $00
	snd_note $1D
	snd_note $00
	snd_note $18
	snd_note $1D, NOTELEN_06
	snd_note $18
	snd_note $1B, NOTELEN_03
	snd_note $00, NOTELEN_09
	snd_note $1B, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $16, NOTELEN_03
	snd_note $00
	snd_note $16
	snd_note $1A, NOTELEN_06
	snd_note $1B
	snd_note $1C
	snd_note $1D, NOTELEN_03
	snd_note $00, NOTELEN_09
	snd_note $1D, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $1D, NOTELEN_03
	snd_note $00
	snd_note $1D
	snd_note $00
	snd_note $18
	snd_note $1D, NOTELEN_06
	snd_note $18
	snd_note $1B, NOTELEN_03
	snd_note $00, NOTELEN_09
	snd_note $1B, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $16, NOTELEN_03
	snd_note $00
	snd_note $16
	snd_note $1A, NOTELEN_06
	snd_note $1B
	snd_note $1C
	snd_note $1D, NOTELEN_03
	snd_note $00, NOTELEN_09
	snd_note $1D, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $1D, NOTELEN_03
	snd_note $00
	snd_note $1D
	snd_note $00
	snd_note $18
	snd_note $1D, NOTELEN_06
	snd_note $18
	snd_note $1B, NOTELEN_03
	snd_note $00, NOTELEN_09
	snd_note $1B, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $16, NOTELEN_03
	snd_note $00
	snd_note $16
	snd_note $1A, NOTELEN_06
	snd_note $1B
	snd_note $1C
	snd_note $1D, NOTELEN_03
	snd_note $00, NOTELEN_09
	snd_note $1D, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $1D, NOTELEN_03
	snd_note $00
	snd_note $1D, NOTELEN_06
	snd_note $1F, NOTELEN_03
	snd_note $21
	snd_note $1D
	snd_note $18
	snd_note $1A
	snd_note $1B
	snd_note $00, NOTELEN_CUSTOM, $2D
	snd_note $1D, NOTELEN_09
	snd_note $1D, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $18, NOTELEN_03
	snd_note $1A
	snd_note $00
	snd_note $1D
	snd_note $00
	snd_note $1F
	snd_note $21
	snd_note $1D
	snd_note $18
	snd_note $1A
	snd_note $1B, NOTELEN_09
	snd_note $1B, NOTELEN_02
	snd_note $00, NOTELEN_CUSTOM, $07
	snd_note $1A, NOTELEN_12
	snd_note $18, NOTELEN_03
	snd_note $1A
	snd_note $1D
	snd_note $1A
	snd_note $1D, NOTELEN_09
	snd_note $1D, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $18, NOTELEN_03
	snd_note $1A
	snd_note $00
	snd_note $1D
	snd_note $00
	snd_note $1F
	snd_note $21
	snd_note $1D
	snd_note $18
	snd_note $1A
	snd_note $1B, NOTELEN_09
	snd_note $1B, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $1A, NOTELEN_12
	snd_note $18, NOTELEN_03
	snd_note $1A
	snd_note $1D
	snd_note $1F
	snd_note $1D, NOTELEN_09
	snd_note $1D, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $18, NOTELEN_03
	snd_note $1A
	snd_note $00
	snd_note $1D
	snd_note $00
	snd_note $1F
	snd_note $21
	snd_note $1D
	snd_note $18
	snd_note $1A
	snd_note $1B, NOTELEN_09
	snd_note $1B, NOTELEN_02
	snd_note $00, NOTELEN_CUSTOM, $07
	snd_note $1A, NOTELEN_12
	snd_note $18, NOTELEN_03
	snd_note $1A
	snd_note $1D
	snd_note $1A
	snd_note $1D, NOTELEN_09
	snd_note $1D, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $18, NOTELEN_03
	snd_note $1A
	snd_note $00
	snd_note $1D
	snd_note $00
	snd_note $1F
	snd_note $21
	snd_note $1D
	snd_note $18
	snd_note $1A
	snd_note $1B, NOTELEN_09
	snd_note $1B, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $1A, NOTELEN_12
	snd_note $18, NOTELEN_03
	snd_note $1A
	snd_note $1D
	snd_note $1F
	snd_note $18
	snd_note $00, NOTELEN_12
	snd_note $18, NOTELEN_02
	snd_note $00, NOTELEN_04
	snd_note $18, NOTELEN_03
	snd_note $1C, NOTELEN_06
	snd_note $1D
	snd_note $1F
	snd_note $16, NOTELEN_03
	snd_note $00, NOTELEN_CUSTOM, $0F
	snd_note $16, NOTELEN_02
	snd_note $00, NOTELEN_CUSTOM, $07
	snd_note $16, NOTELEN_03
	snd_note $1A, NOTELEN_06
	snd_note $1B
	snd_note $1D
	snd_note $1D, NOTELEN_03
	snd_note $00, NOTELEN_12
	snd_note $1D, NOTELEN_03
	snd_note $00, NOTELEN_18
	snd_note $1D, NOTELEN_03
	snd_note $00, NOTELEN_CUSTOM, $0F
	snd_note $1D, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $1D, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_note $15, NOTELEN_06
	snd_note $16
	snd_note $17
	snd_note $18, NOTELEN_03
	snd_note $00, NOTELEN_12
	snd_note $18, NOTELEN_02
	snd_note $00, NOTELEN_04
	snd_note $18, NOTELEN_03
	snd_note $1C, NOTELEN_06
	snd_note $1D
	snd_note $1F
	snd_note $16, NOTELEN_03
	snd_note $00, NOTELEN_CUSTOM, $0F
	snd_note $16, NOTELEN_02
	snd_note $00, NOTELEN_CUSTOM, $07
	snd_note $16, NOTELEN_03
	snd_note $1A, NOTELEN_06
	snd_note $1B
	snd_note $1D
	snd_note $1D, NOTELEN_03
	snd_note $00, NOTELEN_12
	snd_note $1D, NOTELEN_03
	snd_note $00, NOTELEN_18
	snd_note $1D, NOTELEN_03
	snd_note $00, NOTELEN_CUSTOM, $0F
	snd_note $1D, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $1D, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_note $15, NOTELEN_06
	snd_note $16
	snd_note $17
	snd_note $18, NOTELEN_03
	snd_note $00, NOTELEN_12
	snd_note $18, NOTELEN_02
	snd_note $00, NOTELEN_04
	snd_note $18, NOTELEN_03
	snd_note $1C, NOTELEN_06
	snd_note $1D
	snd_note $1F
	snd_note $16, NOTELEN_03
	snd_note $00, NOTELEN_CUSTOM, $0F
	snd_note $16, NOTELEN_02
	snd_note $00, NOTELEN_CUSTOM, $07
	snd_note $16, NOTELEN_03
	snd_note $1A, NOTELEN_06
	snd_note $1B
	snd_note $1D
	snd_note $1D, NOTELEN_03
	snd_note $00, NOTELEN_12
	snd_note $1D, NOTELEN_03
	snd_note $00, NOTELEN_18
	snd_note $1D, NOTELEN_03
	snd_note $00, NOTELEN_CUSTOM, $0F
	snd_note $1D, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $1D, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_note $15, NOTELEN_06
	snd_note $16
	snd_note $17
	snd_note $18, NOTELEN_0C
	snd_note $24, NOTELEN_09
	snd_note $18, NOTELEN_04
	snd_note $00, NOTELEN_02
	snd_note $18, NOTELEN_03
	snd_note $1C, NOTELEN_06
	snd_note $1D
	snd_note $1F, NOTELEN_04
	snd_note $00, NOTELEN_02
	snd_note $16, NOTELEN_0C
	snd_note $22, NOTELEN_09
	snd_note $16, NOTELEN_03
	snd_note $00
	snd_note $16
	snd_note $1A, NOTELEN_06
	snd_note $1B
	snd_note $1C, NOTELEN_04
	snd_note $00, NOTELEN_02
	snd_note $1D, NOTELEN_03
	snd_note $00
	snd_note $21, NOTELEN_04
	snd_note $00, NOTELEN_08
	snd_note $22, NOTELEN_04
	snd_note $00, NOTELEN_08
	snd_note $23, NOTELEN_04
	snd_note $00, NOTELEN_08
	snd_note $24, NOTELEN_06
	snd_note $24
	snd_note $18
	snd_note $1A, NOTELEN_03
	snd_note $00
	snd_note $1A
	snd_note $00
	snd_note $1B
	snd_note $00
	snd_note $1B
	snd_note $00
	snd_note $1C
	snd_note $00
	snd_note $1C
	snd_note $00
	snd_jp SndData_10_Ch3
SndData_10_Ch1:
	snd_duty SNDDUTY_25, $00
	snd_instrument INSTR_07
	snd_note $35, NOTELEN_18
	snd_inc_vol -11
	snd_instrument INSTR_NONE
	snd_note $35, NOTELEN_06
	snd_inc_vol 11
	snd_instrument INSTR_07
	snd_note $38, NOTELEN_02
	snd_note $00, NOTELEN_04
	snd_note $39, NOTELEN_03
	snd_note $3C
	snd_note $41
	snd_note $00
	snd_note $3F, NOTELEN_06
	snd_inc_vol -11
	snd_instrument INSTR_NONE
	snd_note $3F
	snd_inc_vol 11
	snd_instrument INSTR_07
	snd_note $3E
	snd_inc_vol -11
	snd_instrument INSTR_NONE
	snd_note $3E
	snd_inc_vol 11
	snd_instrument INSTR_07
	snd_note $3A
	snd_inc_vol -11
	snd_instrument INSTR_NONE
	snd_note $3A
	snd_inc_vol 11
	snd_instrument INSTR_07
	snd_note $3C
	snd_inc_vol -11
	snd_instrument INSTR_NONE
	snd_note $3C
	snd_inc_vol 11
	snd_instrument INSTR_07
	snd_note $39, NOTELEN_09
	snd_note $3A, NOTELEN_02
	snd_inc_vol -11
	snd_instrument INSTR_NONE
	snd_note $3A, NOTELEN_04
	snd_note $00, NOTELEN_03
	snd_inc_vol 11
	snd_instrument INSTR_07
	snd_note $3C
	snd_note $00, NOTELEN_09
	snd_note $35, NOTELEN_0C
	snd_note $37, NOTELEN_02
	snd_note $00, NOTELEN_04
	snd_note $38, NOTELEN_06
	snd_note $37, NOTELEN_02
	snd_note $00, NOTELEN_04
	snd_note $35, NOTELEN_03
	snd_note $32, NOTELEN_09
	snd_note $35, NOTELEN_06
	snd_inc_vol -11
	snd_instrument INSTR_NONE
	snd_note $35
	snd_inc_vol 11
	snd_instrument INSTR_07
	snd_note $37
	snd_inc_vol -11
	snd_instrument INSTR_NONE
	snd_note $37
	snd_inc_vol 11
	snd_instrument INSTR_07
	snd_note $35, NOTELEN_18
	snd_inc_vol -11
	snd_instrument INSTR_NONE
	snd_note $35, NOTELEN_06
	snd_inc_vol 11
	snd_instrument INSTR_07
	snd_note $38, NOTELEN_02
	snd_note $00, NOTELEN_04
	snd_note $39, NOTELEN_03
	snd_note $3C
	snd_note $41
	snd_note $00
	snd_note $3F, NOTELEN_06
	snd_inc_vol -11
	snd_instrument INSTR_NONE
	snd_note $3F
	snd_inc_vol 11
	snd_instrument INSTR_07
	snd_note $3E
	snd_inc_vol -11
	snd_instrument INSTR_NONE
	snd_note $3E
	snd_inc_vol 11
	snd_instrument INSTR_07
	snd_note $3A
	snd_inc_vol -11
	snd_instrument INSTR_NONE
	snd_note $3A
	snd_inc_vol 11
	snd_instrument INSTR_07
	snd_note $3C
	snd_inc_vol -11
	snd_instrument INSTR_NONE
	snd_note $3C
	snd_inc_vol 11
	snd_instrument INSTR_07
	snd_note $39, NOTELEN_09
	snd_note $3A, NOTELEN_02
	snd_inc_vol -11
	snd_instrument INSTR_NONE
	snd_note $3A, NOTELEN_04
	snd_note $00, NOTELEN_03
	snd_inc_vol 11
	snd_instrument INSTR_07
	snd_note $3C
	snd_note $00, NOTELEN_09
	snd_note $35, NOTELEN_0C
	snd_note $37, NOTELEN_02
	snd_note $00, NOTELEN_04
	snd_note $38, NOTELEN_06
	snd_note $37, NOTELEN_02
	snd_note $00, NOTELEN_04
	snd_note $35, NOTELEN_03
	snd_note $32, NOTELEN_09
	snd_note $35, NOTELEN_06
	snd_inc_vol -11
	snd_instrument INSTR_NONE
	snd_note $35
	snd_inc_vol 11
	snd_instrument INSTR_07
	snd_note $32
	snd_inc_vol -11
	snd_instrument INSTR_NONE
	snd_note $32
	snd_inc_vol 11
	snd_var iSndChInfo_LoopTimer0, $03
	.loop0:
		snd_duty SNDDUTY_50, $00
		snd_instrument INSTR_0B
		snd_note $3C, NOTELEN_03
		snd_note $00
		snd_note $44
		snd_note $45
		snd_note $00
		snd_note $41
		snd_note $00
		snd_note $45
		snd_note $00
		snd_note $43
		snd_note $46
		snd_note $44
		snd_note $47
		snd_note $45
		snd_note $48
		snd_note $45
		snd_duty SNDDUTY_25, $00
		snd_note $3A
		snd_note $41
		snd_note $44
		snd_note $3A
		snd_note $3F
		snd_note $43
		snd_note $3A
		snd_note $3E
		snd_note $41
		snd_note $3A
		snd_note $3E
		snd_note $41
		snd_note $3A
		snd_note $3E
		snd_note $41
		snd_note $3A
		snd_djnz iSndChInfo_LoopTimer0, .loop0
	snd_duty SNDDUTY_50, $00
	snd_note $3C
	snd_note $00
	snd_note $44
	snd_note $45
	snd_note $00
	snd_note $41
	snd_note $00
	snd_note $45
	snd_note $00
	snd_note $43
	snd_note $46
	snd_note $44
	snd_note $47
	snd_note $45
	snd_note $48
	snd_note $45
	snd_duty SNDDUTY_25, $00
	snd_note $3A
	snd_note $41
	snd_note $44
	snd_note $3A
	snd_note $3F
	snd_note $43
	snd_note $3A
	snd_note $3E
	snd_note $41
	snd_note $3A
	snd_note $3E
	snd_note $41
	snd_note $43
	snd_note $46
	snd_note $4A
	snd_note $4D
	snd_duty SNDDUTY_25, $00
	snd_instrument INSTR_07
	snd_note $35, NOTELEN_18
	snd_inc_vol -11
	snd_instrument INSTR_NONE
	snd_note $35, NOTELEN_06
	snd_inc_vol 11
	snd_instrument INSTR_07
	snd_note $38, NOTELEN_02
	snd_note $00, NOTELEN_04
	snd_note $39, NOTELEN_03
	snd_note $3C
	snd_note $41
	snd_note $00
	snd_note $3F, NOTELEN_06
	snd_inc_vol -11
	snd_instrument INSTR_NONE
	snd_note $3F
	snd_inc_vol 11
	snd_instrument INSTR_07
	snd_note $3E
	snd_inc_vol -11
	snd_instrument INSTR_NONE
	snd_note $3E
	snd_inc_vol 11
	snd_instrument INSTR_07
	snd_note $3A
	snd_inc_vol -11
	snd_instrument INSTR_NONE
	snd_note $3A
	snd_inc_vol 11
	snd_instrument INSTR_07
	snd_note $3C
	snd_inc_vol -11
	snd_instrument INSTR_NONE
	snd_note $3C
	snd_inc_vol 11
	snd_instrument INSTR_07
	snd_note $39, NOTELEN_09
	snd_note $3A, NOTELEN_02
	snd_inc_vol -11
	snd_instrument INSTR_NONE
	snd_note $3A, NOTELEN_04
	snd_note $00, NOTELEN_03
	snd_inc_vol 11
	snd_instrument INSTR_07
	snd_note $3C
	snd_note $00, NOTELEN_09
	snd_note $35, NOTELEN_0C
	snd_note $37, NOTELEN_02
	snd_note $00, NOTELEN_04
	snd_note $38, NOTELEN_06
	snd_note $37, NOTELEN_02
	snd_note $00, NOTELEN_04
	snd_note $35, NOTELEN_03
	snd_note $32, NOTELEN_09
	snd_note $35, NOTELEN_06
	snd_inc_vol -11
	snd_instrument INSTR_NONE
	snd_note $35
	snd_inc_vol 11
	snd_instrument INSTR_07
	snd_note $37
	snd_inc_vol -11
	snd_instrument INSTR_NONE
	snd_note $37
	snd_inc_vol 11
	snd_instrument INSTR_07
	snd_note $35, NOTELEN_18
	snd_inc_vol -11
	snd_instrument INSTR_NONE
	snd_note $35, NOTELEN_06
	snd_inc_vol 11
	snd_instrument INSTR_07
	snd_note $38, NOTELEN_02
	snd_note $00, NOTELEN_04
	snd_note $39, NOTELEN_03
	snd_note $3C
	snd_note $41
	snd_note $00
	snd_note $3F, NOTELEN_06
	snd_inc_vol -11
	snd_instrument INSTR_NONE
	snd_note $3F
	snd_inc_vol 11
	snd_instrument INSTR_07
	snd_note $3E
	snd_inc_vol -11
	snd_instrument INSTR_NONE
	snd_note $3E
	snd_inc_vol 11
	snd_instrument INSTR_07
	snd_note $3A
	snd_inc_vol -11
	snd_instrument INSTR_NONE
	snd_note $3A
	snd_inc_vol 11
	snd_instrument INSTR_07
	snd_note $3C
	snd_inc_vol -11
	snd_instrument INSTR_NONE
	snd_note $3C
	snd_inc_vol 11
	snd_instrument INSTR_07
	snd_note $39, NOTELEN_09
	snd_note $3A, NOTELEN_02
	snd_inc_vol -11
	snd_instrument INSTR_NONE
	snd_note $3A, NOTELEN_04
	snd_note $00, NOTELEN_03
	snd_inc_vol 11
	snd_instrument INSTR_07
	snd_note $3C
	snd_note $00, NOTELEN_09
	snd_note $35, NOTELEN_0C
	snd_note $37, NOTELEN_02
	snd_note $00, NOTELEN_04
	snd_note $38, NOTELEN_06
	snd_note $37, NOTELEN_02
	snd_note $00, NOTELEN_04
	snd_note $35, NOTELEN_03
	snd_note $32, NOTELEN_09
	snd_note $35, NOTELEN_06
	snd_inc_vol -11
	snd_instrument INSTR_NONE
	snd_note $35
	snd_inc_vol 11
	snd_instrument INSTR_07
	snd_note $32
	snd_inc_vol -11
	snd_instrument INSTR_NONE
	snd_note $32
	snd_instrument INSTR_09
	snd_inc_vol 11
	snd_note $43, NOTELEN_03
	snd_note $43
	snd_note $41
	snd_note $40
	snd_inc_vol -11
	snd_instrument INSTR_NONE
	snd_note $40
	snd_note $00
	snd_note $00, NOTELEN_18
	snd_inc_vol 11
	snd_instrument INSTR_09
	snd_note $40, NOTELEN_03
	snd_note $40
	snd_note $3E
	snd_note $40
	snd_note $00
	snd_note $41
	snd_inc_vol -11
	snd_instrument INSTR_NONE
	snd_note $41
	snd_note $00
	snd_note $00, NOTELEN_18
	snd_inc_vol 11
	snd_instrument INSTR_09
	snd_note $3A, NOTELEN_03
	snd_note $00
	snd_note $3C
	snd_note $3C
	snd_note $3A
	snd_note $39
	snd_inc_vol -11
	snd_instrument INSTR_NONE
	snd_note $39
	snd_note $00
	snd_note $00, NOTELEN_18
	snd_inc_vol 11
	snd_instrument INSTR_09
	snd_note $3C, NOTELEN_03
	snd_note $00
	snd_note $3F, NOTELEN_03
	snd_note $3F
	snd_note $3E
	snd_note $3C
	snd_inc_vol -11
	snd_instrument INSTR_NONE
	snd_note $3C
	snd_note $00
	snd_note $00, NOTELEN_18
	snd_inc_vol 11
	snd_instrument INSTR_09
	snd_note $41, NOTELEN_03
	snd_note $00
	snd_note $43
	snd_note $43
	snd_note $41
	snd_note $40
	snd_inc_vol -11
	snd_instrument INSTR_NONE
	snd_note $40
	snd_note $00
	snd_note $00, NOTELEN_18
	snd_inc_vol 11
	snd_instrument INSTR_09
	snd_note $40, NOTELEN_03
	snd_note $40
	snd_note $3E
	snd_note $40
	snd_note $00
	snd_note $41
	snd_inc_vol -11
	snd_instrument INSTR_NONE
	snd_note $41
	snd_note $00
	snd_note $00, NOTELEN_18
	snd_inc_vol 11
	snd_instrument INSTR_09
	snd_note $3A, NOTELEN_03
	snd_note $00
	snd_note $3C, NOTELEN_03
	snd_note $3C
	snd_note $3A
	snd_note $39
	snd_inc_vol -11
	snd_instrument INSTR_NONE
	snd_note $39
	snd_note $00
	snd_note $00, NOTELEN_18
	snd_inc_vol 11
	snd_instrument INSTR_09
	snd_note $3C, NOTELEN_03
	snd_note $00
	snd_note $3F
	snd_note $3F
	snd_note $3E
	snd_note $3C
	snd_inc_vol -11
	snd_instrument INSTR_NONE
	snd_note $3C
	snd_note $00
	snd_note $00, NOTELEN_18
	snd_inc_vol 11
	snd_instrument INSTR_09
	snd_note $41, NOTELEN_03
	snd_note $00
	snd_note $40
	snd_note $40
	snd_note $3E
	snd_note $3C
	snd_inc_vol -11
	snd_instrument INSTR_NONE
	snd_note $3C
	snd_note $00
	snd_note $00, NOTELEN_18
	snd_inc_vol 11
	snd_instrument INSTR_09
	snd_note $3C, NOTELEN_03
	snd_note $3C
	snd_note $3A
	snd_note $3C
	snd_note $00
	snd_note $3E
	snd_inc_vol -11
	snd_instrument INSTR_NONE
	snd_note $3E
	snd_note $00
	snd_note $00, NOTELEN_18
	snd_inc_vol 11
	snd_instrument INSTR_09
	snd_note $37, NOTELEN_03
	snd_note $00
	snd_note $39, NOTELEN_03
	snd_note $39
	snd_note $37
	snd_note $35
	snd_inc_vol -11
	snd_instrument INSTR_NONE
	snd_note $35
	snd_note $00
	snd_note $00, NOTELEN_18
	snd_inc_vol 11
	snd_instrument INSTR_09
	snd_note $39, NOTELEN_03
	snd_note $00
	snd_note $3C, NOTELEN_03
	snd_note $3C
	snd_note $3A
	snd_note $39
	snd_inc_vol -11
	snd_instrument INSTR_NONE
	snd_note $39
	snd_note $00
	snd_note $00, NOTELEN_18
	snd_inc_vol 11
	snd_instrument INSTR_09
	snd_note $3C, NOTELEN_03
	snd_note $00
	snd_note $48
	snd_note $48
	snd_note $48
	snd_note $43
	snd_note $00, NOTELEN_06
	snd_duty SNDDUTY_50, $00
	snd_instrument INSTR_0A
	snd_inc_vol -2
	snd_note $43, NOTELEN_03
	snd_note $43
	snd_note $48
	snd_note $48
	snd_note $48
	snd_note $43
	snd_note $00
	snd_note $00
	snd_duty SNDDUTY_25, $00
	snd_instrument INSTR_09
	snd_inc_vol 2
	snd_note $43, NOTELEN_03
	snd_note $43
	snd_note $41
	snd_note $46
	snd_note $00
	snd_note $46
	snd_duty SNDDUTY_50, $00
	snd_instrument INSTR_0A
	snd_inc_vol -2
	snd_note $41, NOTELEN_03
	snd_note $46
	snd_note $00
	snd_note $46
	snd_note $41
	snd_note $46
	snd_note $00
	snd_note $46
	snd_note $41
	snd_note $46
	snd_note $00
	snd_note $46
	snd_duty SNDDUTY_25, $00
	snd_instrument INSTR_09
	snd_inc_vol 2
	snd_note $41, NOTELEN_06
	snd_note $3F
	snd_inc_vol -11
	snd_instrument INSTR_NONE
	snd_note $3F
	snd_inc_vol 11
	snd_instrument INSTR_09
	snd_note $3E, NOTELEN_04
	snd_inc_vol -11
	snd_instrument INSTR_NONE
	snd_note $3E, NOTELEN_08
	snd_inc_vol 11
	snd_instrument INSTR_09
	snd_note $3D, NOTELEN_04
	snd_inc_vol -11
	snd_instrument INSTR_NONE
	snd_note $3D, NOTELEN_08
	snd_inc_vol 11
	snd_instrument INSTR_09
	snd_note $3C, NOTELEN_06
	snd_inc_vol -11
	snd_instrument INSTR_NONE
	snd_note $3C
	snd_inc_vol 11
	snd_instrument INSTR_09
	snd_note $3C, NOTELEN_02
	snd_note $00, NOTELEN_04
	snd_note $3F, NOTELEN_0C
	snd_note $3C, NOTELEN_02
	snd_note $00, NOTELEN_04
	snd_note $3F, NOTELEN_12
	snd_jp SndData_10_Ch1
SndData_10_Ch2:
	snd_inc_freq_offset -1
.loop0:
	snd_duty SNDDUTY_25, $00
	snd_instrument INSTR_07
	snd_var iSndChInfo_LoopTimer0, $03
	.loop1:
		snd_note $39, NOTELEN_2A
		snd_inc_vol -6
		snd_instrument INSTR_NONE
		snd_note $39, NOTELEN_06
		snd_inc_vol 6
		snd_instrument INSTR_07
		snd_note $3A
		snd_note $00, NOTELEN_03
		snd_note $3A
		snd_inc_vol -6
		snd_instrument INSTR_NONE
		snd_note $3A, NOTELEN_06
		snd_inc_vol 6
		snd_instrument INSTR_07
		snd_note $3A, NOTELEN_18
		snd_inc_vol -6
		snd_instrument INSTR_NONE
		snd_note $3A, NOTELEN_06
		snd_inc_vol 6
		snd_instrument INSTR_07
		snd_djnz iSndChInfo_LoopTimer0, .loop1
	snd_note $39, NOTELEN_2A
	snd_inc_vol -6
	snd_instrument INSTR_NONE
	snd_note $39, NOTELEN_06
	snd_inc_vol 6
	snd_instrument INSTR_07
	snd_note $3A
	snd_note $00, NOTELEN_03
	snd_note $3A
	snd_inc_vol -6
	snd_instrument INSTR_NONE
	snd_note $3A, NOTELEN_06
	snd_inc_vol 6
	snd_instrument INSTR_07
	snd_note $3A, NOTELEN_0C
	snd_inc_vol -6
	snd_instrument INSTR_NONE
	snd_note $3A, NOTELEN_06
	snd_duty SNDDUTY_50, $00
	snd_note $4D, NOTELEN_01
	snd_note $4C
	snd_note $4A
	snd_note $48
	snd_note $46
	snd_note $45
	snd_note $43
	snd_note $41
	snd_note $40
	snd_note $3E
	snd_note $3D
	snd_note $3C
	snd_duty SNDDUTY_25, $00
	snd_instrument INSTR_0B
	snd_note $00, NOTELEN_06
	snd_inc_vol 6
	snd_note $41, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $41, NOTELEN_03
	snd_note $00
	snd_note $41
	snd_note $00
	snd_note $43
	snd_note $00, NOTELEN_06
	snd_note $44, NOTELEN_03
	snd_note $00
	snd_note $45
	snd_note $00
	snd_note $00, NOTELEN_06
	snd_inc_vol -2
	snd_note $4D, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $4B, NOTELEN_03
	snd_note $00
	snd_note $4A
	snd_note $00
	snd_note $4A
	snd_note $46
	snd_note $00
	snd_note $45
	snd_note $46
	snd_note $00, NOTELEN_06
	snd_note $00
	snd_inc_vol 2
	snd_note $41, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $41, NOTELEN_03
	snd_note $00
	snd_note $41
	snd_note $00
	snd_note $43
	snd_note $00, NOTELEN_06
	snd_note $44, NOTELEN_03
	snd_note $00
	snd_note $45
	snd_note $00
	snd_note $00, NOTELEN_06
	snd_inc_vol -2
	snd_note $4D, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $4B, NOTELEN_03
	snd_note $00
	snd_note $4A
	snd_note $00
	snd_note $45
	snd_note $46
	snd_note $45
	snd_note $4A
	snd_note $4A
	snd_note $00, NOTELEN_06
	snd_note $00
	snd_inc_vol 2
	snd_note $41, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $41, NOTELEN_03
	snd_note $00
	snd_note $41
	snd_note $00
	snd_note $43
	snd_note $00, NOTELEN_06
	snd_note $44, NOTELEN_03
	snd_note $00
	snd_note $45
	snd_note $00
	snd_note $00, NOTELEN_06
	snd_inc_vol -2
	snd_note $4D, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $4B, NOTELEN_03
	snd_note $00
	snd_note $4A
	snd_note $00
	snd_note $4A
	snd_note $46
	snd_note $00
	snd_note $45
	snd_note $46
	snd_note $00, NOTELEN_06
	snd_note $00
	snd_inc_vol 2
	snd_note $41, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $41, NOTELEN_03
	snd_note $00
	snd_note $41
	snd_note $00
	snd_note $43
	snd_note $00, NOTELEN_06
	snd_note $44, NOTELEN_03
	snd_note $00
	snd_note $45
	snd_note $00
	snd_note $00, NOTELEN_06
	snd_inc_vol -2
	snd_note $4D, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $4B, NOTELEN_03
	snd_note $00
	snd_note $4A
	snd_note $00
	snd_note $45
	snd_note $46
	snd_note $45
	snd_note $4A
	snd_note $4A
	snd_note $00, NOTELEN_06
	snd_inc_vol 2
	snd_instrument INSTR_07
	snd_var iSndChInfo_LoopTimer0, $03
	.loop2:
		snd_note $39, NOTELEN_2A
		snd_inc_vol -6
		snd_instrument INSTR_NONE
		snd_note $39, NOTELEN_06
		snd_inc_vol 6
		snd_instrument INSTR_07
		snd_note $3A
		snd_note $00, NOTELEN_03
		snd_note $3A
		snd_inc_vol -6
		snd_instrument INSTR_NONE
		snd_note $3A, NOTELEN_06
		snd_inc_vol 6
		snd_instrument INSTR_07
		snd_note $3A, NOTELEN_18
		snd_inc_vol -6
		snd_instrument INSTR_NONE
		snd_note $3A, NOTELEN_06
		snd_inc_vol 6
		snd_instrument INSTR_07
		snd_djnz iSndChInfo_LoopTimer0, .loop2
	snd_note $39, NOTELEN_2A
	snd_inc_vol -6
	snd_instrument INSTR_NONE
	snd_note $39, NOTELEN_06
	snd_inc_vol 6
	snd_instrument INSTR_07
	snd_note $3A
	snd_note $00, NOTELEN_03
	snd_note $3A
	snd_inc_vol -6
	snd_instrument INSTR_NONE
	snd_note $3A, NOTELEN_06
	snd_inc_vol 6
	snd_instrument INSTR_07
	snd_note $3A, NOTELEN_0C
	snd_note $46, NOTELEN_03
	snd_inc_vol -6
	snd_instrument INSTR_NONE
	snd_note $46, NOTELEN_06
	snd_inc_vol 6
	snd_instrument INSTR_07
	snd_note $46, NOTELEN_09
	snd_duty SNDDUTY_25, $00
	snd_instrument INSTR_09
	snd_note $40, NOTELEN_03
	snd_note $40
	snd_note $3E
	snd_note $3C
	snd_inc_vol -6
	snd_instrument INSTR_NONE
	snd_note $3C
	snd_note $00
	snd_note $00, NOTELEN_18
	snd_inc_vol 6
	snd_instrument INSTR_09
	snd_note $3C, NOTELEN_03
	snd_note $3C
	snd_note $3A
	snd_note $3C
	snd_note $00
	snd_note $3E
	snd_inc_vol -6
	snd_instrument INSTR_NONE
	snd_note $3E
	snd_note $00
	snd_note $00, NOTELEN_18
	snd_inc_vol 6
	snd_instrument INSTR_09
	snd_note $37, NOTELEN_03
	snd_note $00
	snd_note $39
	snd_note $39
	snd_note $37
	snd_note $35
	snd_inc_vol -6
	snd_instrument INSTR_NONE
	snd_note $35
	snd_note $00
	snd_note $00, NOTELEN_18
	snd_inc_vol 6
	snd_instrument INSTR_09
	snd_note $39, NOTELEN_03
	snd_note $00
	snd_note $3C
	snd_note $3C
	snd_note $3A
	snd_note $39
	snd_inc_vol -6
	snd_instrument INSTR_NONE
	snd_note $39
	snd_note $00
	snd_note $00, NOTELEN_18
	snd_inc_vol 6
	snd_instrument INSTR_09
	snd_note $3C, NOTELEN_03
	snd_note $00
	snd_note $40
	snd_note $40
	snd_note $3E
	snd_note $3C
	snd_inc_vol -6
	snd_instrument INSTR_NONE
	snd_note $3C
	snd_note $00
	snd_note $00, NOTELEN_18
	snd_inc_vol 6
	snd_instrument INSTR_09
	snd_note $3C, NOTELEN_03
	snd_note $3C
	snd_note $3A
	snd_note $3C
	snd_note $00
	snd_note $3E
	snd_inc_vol -6
	snd_instrument INSTR_NONE
	snd_note $3E
	snd_note $00
	snd_note $00, NOTELEN_18
	snd_inc_vol 6
	snd_instrument INSTR_09
	snd_note $37, NOTELEN_03
	snd_note $00
	snd_note $39
	snd_note $39
	snd_note $37
	snd_note $35
	snd_inc_vol -6
	snd_instrument INSTR_NONE
	snd_note $35
	snd_note $00
	snd_note $00, NOTELEN_18
	snd_inc_vol 6
	snd_instrument INSTR_09
	snd_note $39, NOTELEN_03
	snd_note $00
	snd_note $3C
	snd_note $3C
	snd_note $3A
	snd_note $39
	snd_inc_vol -6
	snd_instrument INSTR_NONE
	snd_note $39
	snd_note $00
	snd_note $00, NOTELEN_18
	snd_inc_vol 6
	snd_instrument INSTR_09
	snd_note $3C, NOTELEN_03
	snd_note $00
	snd_note $3C
	snd_note $3C
	snd_note $3C
	snd_note $37, NOTELEN_03
	snd_inc_vol -6
	snd_instrument INSTR_NONE
	snd_note $37
	snd_note $00
	snd_note $00, NOTELEN_18
	snd_inc_vol 6
	snd_instrument INSTR_09
	snd_note $37, NOTELEN_03
	snd_note $37
	snd_note $35
	snd_note $3A
	snd_note $00
	snd_note $3A
	snd_inc_vol -6
	snd_instrument INSTR_NONE
	snd_note $3A
	snd_note $00
	snd_note $00, NOTELEN_18
	snd_inc_vol 6
	snd_instrument INSTR_09
	snd_note $32, NOTELEN_03
	snd_note $00
	snd_note $35
	snd_note $35
	snd_note $35
	snd_note $30
	snd_inc_vol -6
	snd_instrument INSTR_NONE
	snd_note $30
	snd_note $00
	snd_note $00, NOTELEN_18
	snd_inc_vol 6
	snd_instrument INSTR_09
	snd_note $35, NOTELEN_03
	snd_note $00
	snd_note $39
	snd_note $39
	snd_note $37
	snd_note $35
	snd_inc_vol -6
	snd_instrument INSTR_NONE
	snd_note $35
	snd_note $00
	snd_note $00, NOTELEN_18
	snd_inc_vol 6
	snd_instrument INSTR_09
	snd_note $39, NOTELEN_03
	snd_note $00
	snd_note $40
	snd_note $40
	snd_note $40
	snd_note $3E
	snd_inc_vol -6
	snd_instrument INSTR_NONE
	snd_note $3E
	snd_note $00
	snd_inc_vol 6
	snd_duty SNDDUTY_50, $00
	snd_instrument INSTR_0A
	snd_inc_vol -2
	snd_note $5B, NOTELEN_03
	snd_note $5B
	snd_note $60
	snd_note $60
	snd_note $60
	snd_note $5B
	snd_note $00
	snd_note $00
	snd_duty SNDDUTY_25, $00
	snd_instrument INSTR_09
	snd_inc_vol 2
	snd_note $3C, NOTELEN_03
	snd_note $3C
	snd_note $3A
	snd_note $3C
	snd_note $00
	snd_note $3E
	snd_duty SNDDUTY_50, $00
	snd_instrument INSTR_0A
	snd_inc_vol -2
	snd_note $59
	snd_note $5E
	snd_note $00
	snd_note $5E
	snd_note $59
	snd_note $5E
	snd_note $00
	snd_note $5E
	snd_note $59
	snd_note $5E
	snd_note $00
	snd_note $5E
	snd_duty SNDDUTY_25, $00
	snd_instrument INSTR_09
	snd_inc_vol 2
	snd_note $39, NOTELEN_06
	snd_note $35
	snd_inc_vol -6
	snd_instrument INSTR_NONE
	snd_note $35
	snd_inc_vol 6
	snd_instrument INSTR_09
	snd_note $35, NOTELEN_04
	snd_inc_vol -6
	snd_instrument INSTR_NONE
	snd_note $35, NOTELEN_08
	snd_inc_vol 6
	snd_instrument INSTR_09
	snd_note $38, NOTELEN_04
	snd_inc_vol -6
	snd_instrument INSTR_NONE
	snd_note $38, NOTELEN_08
	snd_inc_vol 6
	snd_instrument INSTR_09
	snd_note $34, NOTELEN_06
	snd_inc_vol -6
	snd_instrument INSTR_NONE
	snd_note $34
	snd_inc_vol 6
	snd_instrument INSTR_09
	snd_note $34, NOTELEN_02
	snd_note $00, NOTELEN_04
	snd_note $37, NOTELEN_0C
	snd_note $34, NOTELEN_02
	snd_note $00, NOTELEN_04
	snd_note $37, NOTELEN_12
	snd_jp .loop0
SndData_10_Ch4:
	snd_var iSndChInfo_LoopTimer0, $03
	.loop0:
		snd_noteex PRESET_01, NOTELEN_03
		snd_note $00
		snd_noteex PRESET_02
		snd_noteex PRESET_01
		snd_noteex PRESET_00
		snd_noteex PRESET_02
		snd_noteex PRESET_01
		snd_note $00
		snd_noteex PRESET_02
		snd_noteex PRESET_02
		snd_noteex PRESET_01
		snd_note $00
		snd_noteex PRESET_00
		snd_noteex PRESET_03
		snd_noteex PRESET_02
		snd_noteex PRESET_02
		snd_noteex PRESET_01
		snd_note $00
		snd_noteex PRESET_02
		snd_noteex PRESET_01
		snd_noteex PRESET_00, NOTELEN_06
		snd_noteex PRESET_01, NOTELEN_03
		snd_noteex PRESET_02
		snd_note $00
		snd_noteex PRESET_02
		snd_noteex PRESET_01
		snd_note $00
		snd_noteex PRESET_00
		snd_noteex PRESET_02
		snd_noteex PRESET_02
		snd_noteex PRESET_03
		snd_djnz iSndChInfo_LoopTimer0, .loop0
	snd_noteex PRESET_01, NOTELEN_03
	snd_note $00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_note $00
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_note $00
	snd_noteex PRESET_00
	snd_noteex PRESET_03
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_note $00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_note $00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_note $00
	snd_noteex PRESET_00
	snd_noteex PRESET_04, NOTELEN_06
	snd_noteex PRESET_00, NOTELEN_03
	snd_var iSndChInfo_LoopTimer0, $03
	.loop1:
		snd_noteex PRESET_01
		snd_noteex PRESET_02
		snd_noteex PRESET_01
		snd_note $00
		snd_noteex PRESET_00
		snd_noteex PRESET_02
		snd_noteex PRESET_03
		snd_noteex PRESET_01
		snd_note $00
		snd_noteex PRESET_01
		snd_noteex PRESET_01
		snd_note $00
		snd_noteex PRESET_00, NOTELEN_06
		snd_noteex PRESET_02, NOTELEN_03
		snd_noteex PRESET_03
		snd_noteex PRESET_01
		snd_noteex PRESET_02
		snd_noteex PRESET_01
		snd_note $00
		snd_noteex PRESET_00
		snd_noteex PRESET_03
		snd_noteex PRESET_02
		snd_noteex PRESET_01
		snd_noteex PRESET_02
		snd_noteex PRESET_00
		snd_noteex PRESET_01
		snd_note $00
		snd_noteex PRESET_00
		snd_noteex PRESET_02
		snd_noteex PRESET_03
		snd_noteex PRESET_02
		snd_djnz iSndChInfo_LoopTimer0, .loop1
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_note $00
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_02, NOTELEN_03
	snd_noteex PRESET_01
	snd_note $00
	snd_noteex PRESET_01
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_00
	snd_noteex PRESET_04, NOTELEN_01
	snd_noteex PRESET_00, NOTELEN_CUSTOM, $05
	snd_noteex PRESET_02, NOTELEN_0C
	snd_noteex PRESET_02
	snd_noteex PRESET_01, NOTELEN_03
	snd_noteex PRESET_04, NOTELEN_01
	snd_noteex PRESET_04
	snd_noteex PRESET_04
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_00
	snd_noteex PRESET_01
	snd_note $00
	snd_var iSndChInfo_LoopTimer0, $03
	.loop2:
		snd_noteex PRESET_01, NOTELEN_03
		snd_note $00
		snd_noteex PRESET_02
		snd_noteex PRESET_01
		snd_noteex PRESET_00
		snd_noteex PRESET_02
		snd_noteex PRESET_01
		snd_note $00
		snd_noteex PRESET_02
		snd_noteex PRESET_02
		snd_noteex PRESET_01
		snd_note $00
		snd_noteex PRESET_00
		snd_noteex PRESET_03
		snd_noteex PRESET_02
		snd_noteex PRESET_02
		snd_noteex PRESET_01
		snd_note $00
		snd_noteex PRESET_02
		snd_noteex PRESET_01
		snd_noteex PRESET_00, NOTELEN_06
		snd_noteex PRESET_01, NOTELEN_03
		snd_noteex PRESET_02
		snd_note $00
		snd_noteex PRESET_02
		snd_noteex PRESET_01
		snd_note $00
		snd_noteex PRESET_00
		snd_noteex PRESET_02
		snd_noteex PRESET_02
		snd_noteex PRESET_03
		snd_djnz iSndChInfo_LoopTimer0, .loop2
	snd_noteex PRESET_01, NOTELEN_03
	snd_note $00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_note $00
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_note $00
	snd_noteex PRESET_00
	snd_noteex PRESET_03
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_note $00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_note $00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_note $00
	snd_noteex PRESET_00
	snd_noteex PRESET_04, NOTELEN_06
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_01
	snd_note $00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_03
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_02, NOTELEN_03
	snd_noteex PRESET_03
	snd_noteex PRESET_01
	snd_note $00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_note $00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_note $00
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_03
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_note $00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_03
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_02, NOTELEN_03
	snd_noteex PRESET_03
	snd_noteex PRESET_01
	snd_note $00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_note $00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_note $00
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_03
	snd_noteex PRESET_00
	snd_noteex PRESET_01
	snd_note $00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_03
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_02, NOTELEN_03
	snd_noteex PRESET_03
	snd_noteex PRESET_01
	snd_note $00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_note $00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_note $00
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_03
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_note $00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_03
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_02, NOTELEN_03
	snd_noteex PRESET_03
	snd_noteex PRESET_01
	snd_note $00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_note $00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_note $00
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_00
	snd_var iSndChInfo_LoopTimer0, $02
	.loop3:
		snd_noteex PRESET_01
		snd_note $00
		snd_noteex PRESET_02
		snd_noteex PRESET_01
		snd_noteex PRESET_00
		snd_noteex PRESET_02
		snd_noteex PRESET_01
		snd_noteex PRESET_03
		snd_noteex PRESET_02
		snd_noteex PRESET_02
		snd_noteex PRESET_01
		snd_noteex PRESET_02
		snd_noteex PRESET_00, NOTELEN_06
		snd_noteex PRESET_02, NOTELEN_03
		snd_noteex PRESET_03
		snd_noteex PRESET_01
		snd_note $00
		snd_noteex PRESET_02
		snd_noteex PRESET_01
		snd_noteex PRESET_00
		snd_noteex PRESET_02
		snd_noteex PRESET_01
		snd_noteex PRESET_02
		snd_note $00
		snd_noteex PRESET_02
		snd_noteex PRESET_01
		snd_note $00
		snd_noteex PRESET_00
		snd_noteex PRESET_02
		snd_noteex PRESET_03
		snd_noteex PRESET_02
		snd_djnz iSndChInfo_LoopTimer0, .loop3
	snd_noteex PRESET_01
	snd_note $00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_03
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_02, NOTELEN_03
	snd_noteex PRESET_03
	snd_noteex PRESET_01
	snd_note $00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_note $00
	snd_noteex PRESET_01
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_03
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_02, NOTELEN_03
	snd_noteex PRESET_02
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_01
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_03
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_01, NOTELEN_03
	snd_noteex PRESET_02
	snd_inc_vol -12
	snd_var iSndChInfo_LoopTimer0, $06
	.loop4:
		snd_noteex PRESET_00, NOTELEN_06
		snd_inc_vol 2
		snd_djnz iSndChInfo_LoopTimer0, .loop4
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_04
	snd_noteex PRESET_01
	snd_note $00
	snd_jp SndData_10_Ch4
