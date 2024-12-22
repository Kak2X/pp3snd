SndHeader_BGM_13:
	db 4 ; Number of slots
.slot0:
	db SNDSLOT0 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_08 ; iSndChInfo_Instrument
	db VIBRATO_0F ; iSndChInfo_Vibrato
	db -8 ; iSndChInfo_NoteIdBase
	db 99 ; iSndChInfo_Speed
	db SNDCH_WAVE ; iSndChInfo_ChId
	dw SndData_13_Ch3 ; Data pointer
	db WAVE_00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot1:
	db SNDSLOT1 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_0F ; iSndChInfo_Vibrato
	db -20 ; iSndChInfo_NoteIdBase
	db 99 ; iSndChInfo_Speed
	db SNDCH_PULSE1 ; iSndChInfo_ChId
	dw SndData_13_Ch1 ; Data pointer
	nrx1 SNDDUTY_12, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot2:
	db SNDSLOT2 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 9 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_0F ; iSndChInfo_Vibrato
	db -20 ; iSndChInfo_NoteIdBase
	db 99 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_13_Ch2 ; Data pointer
	nrx1 SNDDUTY_12, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot3:
	db SNDSLOT3 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db 4 ; iSndChInfo_NoteIdBase
	db 99 ; iSndChInfo_Speed
	db SNDCH_NOISE ; iSndChInfo_ChId
	dw SndData_13_Ch4 ; Data pointer
	nrx1 SNDDUTY_12, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_13_Ch3:
	snd_wave WAVE_0D
	snd_note $16, NOTELEN_06
	snd_note $16, NOTELEN_02
	snd_note $16
	snd_note $00, NOTELEN_04
	snd_note $18, NOTELEN_03
	snd_note $00
	snd_note $18
	snd_note $00
	snd_note $19
	snd_note $00, NOTELEN_09
	snd_note $1D, NOTELEN_CUSTOM, $0A
	snd_note $1B, NOTELEN_02
	snd_note $00, NOTELEN_10
	snd_note $1B, NOTELEN_02
	snd_note $1C, NOTELEN_04
	snd_note $1D, NOTELEN_02
	snd_note $00, NOTELEN_04
	snd_note $18, NOTELEN_02
	snd_note $11, NOTELEN_06
	snd_note $1D
	snd_note $17, NOTELEN_06
	snd_note $16, NOTELEN_04
	snd_note $16, NOTELEN_02
	snd_note $16
	snd_note $00, NOTELEN_04
	snd_note $18, NOTELEN_03
	snd_note $00
	snd_note $18
	snd_note $00
	snd_note $19
	snd_note $00, NOTELEN_09
	snd_note $1D, NOTELEN_CUSTOM, $0A
	snd_note $1B, NOTELEN_02
	snd_note $00, NOTELEN_10
	snd_note $1B, NOTELEN_02
	snd_note $1C, NOTELEN_04
	snd_note $1D, NOTELEN_02
	snd_note $00, NOTELEN_04
	snd_note $18, NOTELEN_02
	snd_note $11, NOTELEN_06
	snd_note $1D, NOTELEN_04
	snd_note $17, NOTELEN_06
	snd_note $16
	snd_note $16, NOTELEN_02
	snd_note $16
	snd_note $00, NOTELEN_04
	snd_note $18, NOTELEN_03
	snd_note $00
	snd_note $18
	snd_note $00
	snd_note $19
	snd_note $00, NOTELEN_09
	snd_note $1D, NOTELEN_CUSTOM, $0A
	snd_note $1B, NOTELEN_02
	snd_note $00, NOTELEN_10
	snd_note $1B, NOTELEN_02
	snd_note $1C, NOTELEN_04
	snd_note $1D, NOTELEN_02
	snd_note $00, NOTELEN_04
	snd_note $18, NOTELEN_02
	snd_note $11, NOTELEN_06
	snd_note $1D
	snd_note $17, NOTELEN_06
	snd_note $16, NOTELEN_04
	snd_note $16, NOTELEN_02
	snd_note $14, NOTELEN_04
	snd_note $11, NOTELEN_02
	snd_note $16
	snd_note $00, NOTELEN_08
	snd_note $18, NOTELEN_06
	snd_note $18, NOTELEN_02
	snd_note $16, NOTELEN_04
	snd_note $13, NOTELEN_02
	snd_note $18
	snd_note $00, NOTELEN_08
	snd_note $19, NOTELEN_06
	snd_note $19, NOTELEN_02
	snd_note $14, NOTELEN_04
	snd_note $16, NOTELEN_02
	snd_note $19, NOTELEN_04
	snd_note $1B, NOTELEN_02
	snd_note $1D, NOTELEN_04
	snd_note $1B, NOTELEN_08
	snd_note $1B, NOTELEN_02
	snd_note $00, NOTELEN_04
	snd_note $1A, NOTELEN_02
	snd_note $00, NOTELEN_04
	snd_note $1A, NOTELEN_02
	snd_note $00
	snd_note $00
	snd_note $19, NOTELEN_10
	snd_note $14, NOTELEN_02
	snd_note $16, NOTELEN_04
	snd_note $14, NOTELEN_02
	snd_note $00, NOTELEN_04
	snd_note $19, NOTELEN_02
	snd_note $00, NOTELEN_04
	snd_note $19, NOTELEN_06
	snd_note $14, NOTELEN_02
	snd_note $16, NOTELEN_04
	snd_note $14, NOTELEN_02
	snd_note $19, NOTELEN_10
	snd_note $14, NOTELEN_02
	snd_note $16, NOTELEN_04
	snd_note $14, NOTELEN_02
	snd_note $00, NOTELEN_04
	snd_note $19, NOTELEN_06
	snd_note $14, NOTELEN_02
	snd_note $19, NOTELEN_04
	snd_note $00, NOTELEN_02
	snd_note $19, NOTELEN_06
	snd_note $18, NOTELEN_10
	snd_note $13, NOTELEN_02
	snd_note $16, NOTELEN_04
	snd_note $18, NOTELEN_02
	snd_note $00, NOTELEN_04
	snd_note $18, NOTELEN_02
	snd_note $00, NOTELEN_04
	snd_note $18, NOTELEN_06
	snd_note $13, NOTELEN_02
	snd_note $18, NOTELEN_06
	snd_note $1D, NOTELEN_06
	snd_note $29, NOTELEN_02
	snd_note $00, NOTELEN_04
	snd_note $1B, NOTELEN_06
	snd_note $27, NOTELEN_02
	snd_note $00, NOTELEN_04
	snd_note $19, NOTELEN_06
	snd_note $25, NOTELEN_02
	snd_note $00, NOTELEN_04
	snd_note $18, NOTELEN_06
	snd_note $24, NOTELEN_02
	snd_note $00
	snd_note $00
	snd_note $16, NOTELEN_CUSTOM, $0A
	snd_note $11, NOTELEN_02
	snd_note $14, NOTELEN_04
	snd_note $16, NOTELEN_02
	snd_note $00, NOTELEN_04
	snd_note $16, NOTELEN_02
	snd_note $00, NOTELEN_04
	snd_note $16, NOTELEN_02
	snd_note $00, NOTELEN_04
	snd_note $11, NOTELEN_02
	snd_note $14, NOTELEN_06
	snd_note $16, NOTELEN_06
	snd_note $1B, NOTELEN_CUSTOM, $0A
	snd_note $16, NOTELEN_02
	snd_note $18, NOTELEN_04
	snd_note $1B, NOTELEN_02
	snd_note $00, NOTELEN_04
	snd_note $1B, NOTELEN_02
	snd_note $00, NOTELEN_04
	snd_note $1B, NOTELEN_02
	snd_note $00, NOTELEN_04
	snd_note $1B, NOTELEN_02
	snd_note $1D, NOTELEN_06
	snd_note $1B, NOTELEN_06
	snd_note $14, NOTELEN_06
	snd_note $20, NOTELEN_03
	snd_note $00
	snd_note $20, NOTELEN_04
	snd_note $1B, NOTELEN_02
	snd_note $1C, NOTELEN_04
	snd_note $1D, NOTELEN_06
	snd_note $1D, NOTELEN_02
	snd_note $1B, NOTELEN_04
	snd_note $1C, NOTELEN_02
	snd_note $1D, NOTELEN_04
	snd_note $1B, NOTELEN_02
	snd_note $18, NOTELEN_06
	snd_note $16, NOTELEN_04
	snd_note $19, NOTELEN_02
	snd_note $1D, NOTELEN_04
	snd_note $20, NOTELEN_02
	snd_note $24, NOTELEN_06
	snd_note $22
	snd_note $25, NOTELEN_0C
	snd_note $24, NOTELEN_CUSTOM, $0A
	snd_note $20, NOTELEN_24
	snd_inc_vol -3
	snd_instrument INSTR_NONE
	snd_var iSndChInfo_LoopTimer0, $0C
	.loop0:
		snd_note $20, NOTELEN_01
		snd_inc_vol -1
		snd_djnz iSndChInfo_LoopTimer0, .loop0
	snd_end_saveid
SndData_13_Ch1:
	snd_duty SNDDUTY_12, $00
	snd_instrument INSTR_11
	snd_note $00, NOTELEN_06
	snd_note $00, NOTELEN_02
	snd_note $00
	snd_note $00
	snd_note $00
	snd_note $38, NOTELEN_03
	snd_inc_vol -10
	snd_instrument INSTR_NONE
	snd_note $38
	snd_note $36, NOTELEN_01
	snd_note $35
	snd_note $33
	snd_note $31
	snd_note $30
	snd_note $2E
	snd_note $00, NOTELEN_0C
	snd_inc_vol 10
	snd_instrument INSTR_11
	snd_duty SNDDUTY_25, $00
	snd_note $33, NOTELEN_04
	snd_note $35, NOTELEN_03
	snd_note $00
	snd_note $38
	snd_inc_vol -12
	snd_instrument INSTR_NONE
	snd_note $38
	snd_note $00, NOTELEN_0C
	snd_inc_vol 12
	snd_instrument INSTR_11
	snd_note $3A, NOTELEN_02
	snd_note $3C, NOTELEN_04
	snd_note $38, NOTELEN_03
	snd_inc_vol -12
	snd_instrument INSTR_NONE
	snd_note $38
	snd_note $00, NOTELEN_08
	snd_inc_vol 12
	snd_instrument INSTR_11
	snd_note $35, NOTELEN_04
	snd_note $33, NOTELEN_02
	snd_note $35, NOTELEN_04
	snd_note $38, NOTELEN_03
	snd_inc_vol -12
	snd_instrument INSTR_NONE
	snd_note $38
	snd_inc_vol 12
	snd_instrument INSTR_11
	snd_note $00, NOTELEN_02
	snd_note $00, NOTELEN_03
	snd_note $00
	snd_note $38
	snd_duty SNDDUTY_12, $00
	snd_inc_vol -10
	snd_instrument INSTR_NONE
	snd_note $38
	snd_note $36, NOTELEN_01
	snd_note $35
	snd_note $33
	snd_note $31
	snd_note $30
	snd_note $2E
	snd_note $00, NOTELEN_0C
	snd_duty SNDDUTY_25, $00
	snd_inc_vol 10
	snd_instrument INSTR_11
	snd_note $33, NOTELEN_04
	snd_note $35, NOTELEN_03
	snd_note $00
	snd_note $3F, NOTELEN_CUSTOM, $0F
	snd_inc_vol -12
	snd_instrument INSTR_NONE
	snd_note $3F, NOTELEN_03
	snd_inc_vol 12
	snd_instrument INSTR_11
	snd_note $3F, NOTELEN_02
	snd_note $41, NOTELEN_04
	snd_inc_vol -5
	snd_note $3B, NOTELEN_01
	snd_inc_vol 5
	snd_note $3C, NOTELEN_CUSTOM, $05
	snd_note $3C, NOTELEN_02
	snd_note $3A, NOTELEN_03
	snd_inc_vol -12
	snd_instrument INSTR_NONE
	snd_note $3A
	snd_inc_vol 12
	snd_instrument INSTR_11
	snd_note $38, NOTELEN_04
	snd_note $35, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_note $00, NOTELEN_03
	snd_note $00, NOTELEN_02
	snd_note $00, NOTELEN_03
	snd_note $00
	snd_note $38
	snd_duty SNDDUTY_12, $00
	snd_inc_vol -10
	snd_instrument INSTR_NONE
	snd_note $38
	snd_note $36, NOTELEN_01
	snd_note $35
	snd_note $33
	snd_note $31
	snd_note $30
	snd_note $2E
	snd_note $00, NOTELEN_0C
	snd_duty SNDDUTY_25, $00
	snd_inc_vol 10
	snd_instrument INSTR_11
	snd_note $33, NOTELEN_04
	snd_note $35, NOTELEN_03
	snd_note $00
	snd_note $38
	snd_inc_vol -12
	snd_instrument INSTR_NONE
	snd_note $38
	snd_note $00, NOTELEN_0C
	snd_inc_vol 12
	snd_instrument INSTR_11
	snd_note $3A, NOTELEN_02
	snd_note $3C, NOTELEN_04
	snd_note $38, NOTELEN_03
	snd_inc_vol -12
	snd_instrument INSTR_NONE
	snd_note $38
	snd_note $00, NOTELEN_08
	snd_inc_vol 12
	snd_instrument INSTR_11
	snd_note $35, NOTELEN_04
	snd_note $33, NOTELEN_02
	snd_note $35, NOTELEN_04
	snd_note $38, NOTELEN_CUSTOM, $0F
	snd_inc_vol -12
	snd_instrument INSTR_NONE
	snd_pan SNDOUT_CHL
	snd_note $38, NOTELEN_03
	snd_pan SNDOUT_CHALL
	snd_inc_vol 12
	snd_instrument INSTR_11
	snd_note $33, NOTELEN_02
	snd_note $35, NOTELEN_04
	snd_note $38, NOTELEN_CUSTOM, $0B
	snd_inc_vol -12
	snd_instrument INSTR_NONE
	snd_pan SNDOUT_CHR
	snd_note $38, NOTELEN_03
	snd_pan SNDOUT_CHALL
	snd_inc_vol 12
	snd_instrument INSTR_11
	snd_note $38, NOTELEN_04
	snd_note $3A, NOTELEN_02
	snd_note $3C, NOTELEN_04
	snd_note $38, NOTELEN_CUSTOM, $16
	snd_inc_vol -12
	snd_instrument INSTR_NONE
	snd_pan SNDOUT_CHL
	snd_note $38, NOTELEN_04
	snd_pan SNDOUT_CHALL
	snd_inc_vol 12
	snd_instrument INSTR_11
	snd_note $3A, NOTELEN_09
	snd_inc_vol -12
	snd_instrument INSTR_NONE
	snd_pan SNDOUT_CHR
	snd_note $3A, NOTELEN_03
	snd_pan SNDOUT_CHALL
	snd_inc_vol 12
	snd_instrument INSTR_11
	snd_note $3A, NOTELEN_CUSTOM, $0A
	snd_inc_vol -12
	snd_instrument INSTR_NONE
	snd_pan SNDOUT_CHL
	snd_note $3A, NOTELEN_08
	snd_pan SNDOUT_CHALL
	snd_duty SNDDUTY_50, $00
	snd_instrument INSTR_15
	snd_inc_vol 8
	snd_note $3C, NOTELEN_04
	snd_note $3D, NOTELEN_02
	snd_note $00, NOTELEN_04
	snd_note $3C, NOTELEN_02
	snd_note $00, NOTELEN_04
	snd_note $38, NOTELEN_08
	snd_note $35, NOTELEN_02
	snd_note $00, NOTELEN_04
	snd_note $38, NOTELEN_02
	snd_note $00, NOTELEN_04
	snd_note $3A, NOTELEN_02
	snd_note $00
	snd_note $00
	snd_note $3C, NOTELEN_06
	snd_note $3D, NOTELEN_04
	snd_note $3C, NOTELEN_02
	snd_note $00, NOTELEN_04
	snd_note $3A, NOTELEN_02
	snd_note $00, NOTELEN_04
	snd_note $38, NOTELEN_08
	snd_note $35, NOTELEN_06
	snd_note $38
	snd_vibrato VIBRATO_13
	snd_note $3A, NOTELEN_06
	snd_vibrato VIBRATO_0F
	snd_note $37, NOTELEN_CUSTOM, $0F
	snd_inc_vol -10
	snd_instrument INSTR_NONE
	snd_note $37, NOTELEN_03
	snd_inc_vol 3
	snd_note $37, NOTELEN_02
	snd_inc_vol 3
	snd_note $38
	snd_inc_vol 3
	snd_note $39
	snd_inc_vol 3
	snd_instrument INSTR_15
	snd_note $3A, NOTELEN_09
	snd_note $38
	snd_note $37, NOTELEN_06
	snd_note $36, NOTELEN_CUSTOM, $15
	snd_inc_vol -10
	snd_instrument INSTR_NONE
	snd_note $36, NOTELEN_03
	snd_inc_vol 10
	snd_instrument INSTR_15
	snd_note $35, NOTELEN_09
	snd_note $34
	snd_note $35, NOTELEN_06
	snd_note $3C, NOTELEN_CUSTOM, $0F
	snd_inc_vol -10
	snd_instrument INSTR_NONE
	snd_note $3C, NOTELEN_03
	snd_inc_vol 10
	snd_instrument INSTR_15
	snd_note $35, NOTELEN_CUSTOM, $0F
	snd_inc_vol -10
	snd_instrument INSTR_NONE
	snd_note $35, NOTELEN_03
	snd_inc_vol 10
	snd_instrument INSTR_15
	snd_note $34, NOTELEN_06
	snd_note $35, NOTELEN_06
	snd_note $3C, NOTELEN_10
	snd_inc_vol -10
	snd_instrument INSTR_NONE
	snd_note $3C, NOTELEN_01
	snd_inc_vol 3
	snd_note $3D
	snd_inc_vol 4
	snd_note $3E
	snd_inc_vol 5
	snd_instrument INSTR_15
	snd_note $3F, NOTELEN_CUSTOM, $11
	snd_note $3C, NOTELEN_0C
	snd_note $38, NOTELEN_CUSTOM, $82
	snd_inc_vol -3
	snd_instrument INSTR_NONE
	snd_var iSndChInfo_LoopTimer0, $0C
	.loop0:
		snd_note $38, NOTELEN_01
		snd_inc_vol -1
		snd_djnz iSndChInfo_LoopTimer0, .loop0
	snd_end
SndData_13_Ch2:
	snd_duty SNDDUTY_25, $00
	snd_instrument INSTR_07
	snd_note $2C, NOTELEN_30
	snd_note $2E, NOTELEN_18
	snd_note $30
	snd_note $31, NOTELEN_CUSTOM, $1A
	snd_note $30, NOTELEN_CUSTOM, $16
	snd_note $2E, NOTELEN_18
	snd_note $30
	snd_note $2C, NOTELEN_CUSTOM, $1A
	snd_note $2E, NOTELEN_CUSTOM, $16
	snd_note $30, NOTELEN_18
	snd_note $33
	snd_inc_vol 4
	snd_instrument INSTR_11
	snd_note $31, NOTELEN_CUSTOM, $15
	snd_inc_vol -10
	snd_instrument INSTR_NONE
	snd_pan SNDOUT_CHR
	snd_note $31, NOTELEN_03
	snd_pan SNDOUT_CHALL
	snd_inc_vol 10
	snd_instrument INSTR_11
	snd_note $33, NOTELEN_CUSTOM, $15
	snd_inc_vol -10
	snd_instrument INSTR_NONE
	snd_pan SNDOUT_CHL
	snd_note $33, NOTELEN_03
	snd_pan SNDOUT_CHALL
	snd_inc_vol 10
	snd_instrument INSTR_11
	snd_note $35, NOTELEN_CUSTOM, $16
	snd_inc_vol -10
	snd_instrument INSTR_NONE
	snd_pan SNDOUT_CHR
	snd_note $35, NOTELEN_04
	snd_pan SNDOUT_CHALL
	snd_inc_vol 10
	snd_instrument INSTR_11
	snd_note $37, NOTELEN_09
	snd_inc_vol -10
	snd_instrument INSTR_NONE
	snd_pan SNDOUT_CHL
	snd_note $37, NOTELEN_03
	snd_pan SNDOUT_CHALL
	snd_inc_vol 10
	snd_instrument INSTR_11
	snd_note $37, NOTELEN_06
	snd_duty SNDDUTY_50, $00
	snd_instrument INSTR_15
	snd_inc_vol -5
	snd_note $29, NOTELEN_02
	snd_note $2A
	snd_note $2B
	snd_note $2C, NOTELEN_24
	snd_note $29, NOTELEN_06
	snd_note $2B, NOTELEN_06
	snd_note $2C, NOTELEN_09
	snd_note $2E
	snd_note $30, NOTELEN_06
	snd_note $31, NOTELEN_09
	snd_note $33
	snd_note $35, NOTELEN_06
	snd_note $33, NOTELEN_18
	snd_note $33, NOTELEN_09
	snd_note $31
	snd_note $30, NOTELEN_06
	snd_note $2E, NOTELEN_CUSTOM, $15
	snd_inc_vol -5
	snd_instrument INSTR_NONE
	snd_note $2E, NOTELEN_03
	snd_inc_vol 5
	snd_instrument INSTR_15
	snd_note $30, NOTELEN_18
	snd_note $35, NOTELEN_CUSTOM, $0F
	snd_inc_vol -5
	snd_instrument INSTR_NONE
	snd_note $35, NOTELEN_03
	snd_inc_vol 5
	snd_instrument INSTR_15
	snd_note $31, NOTELEN_CUSTOM, $0F
	snd_inc_vol -5
	snd_instrument INSTR_NONE
	snd_note $31, NOTELEN_03
	snd_inc_vol 5
	snd_instrument INSTR_15
	snd_note $30, NOTELEN_06
	snd_note $31, NOTELEN_06
	snd_note $35, NOTELEN_CUSTOM, $0F
	snd_inc_vol -5
	snd_instrument INSTR_NONE
	snd_note $35, NOTELEN_03
	snd_inc_vol 5
	snd_instrument INSTR_15
	snd_note $34, NOTELEN_12
	snd_note $31, NOTELEN_0C
	snd_note $30, NOTELEN_CUSTOM, $2D
	snd_inc_vol -5
	snd_instrument INSTR_NONE
	snd_note $30, NOTELEN_03
	snd_inc_vol 5
	snd_instrument INSTR_15
	snd_note $31, NOTELEN_CUSTOM, $15
	snd_inc_vol -5
	snd_instrument INSTR_NONE
	snd_note $31, NOTELEN_03
	snd_inc_vol 5
	snd_instrument INSTR_15
	snd_note $31, NOTELEN_09
	snd_inc_vol -5
	snd_instrument INSTR_NONE
	snd_note $31, NOTELEN_03
	snd_inc_vol 5
	snd_instrument INSTR_15
	snd_note $34, NOTELEN_CUSTOM, $0A
	snd_note $33, NOTELEN_24
	snd_inc_vol -3
	snd_instrument INSTR_NONE
	snd_var iSndChInfo_LoopTimer0, $0C
	.loop0:
		snd_note $33, NOTELEN_01
		snd_inc_vol -1
		snd_djnz iSndChInfo_LoopTimer0, .loop0
	snd_end
SndData_13_Ch4:
	snd_noteex PRESET_01, NOTELEN_02
	snd_note $00, NOTELEN_04
	snd_noteex PRESET_02, NOTELEN_02
	snd_noteex PRESET_01, NOTELEN_06
	snd_noteex PRESET_00, NOTELEN_04
	snd_noteex PRESET_02, NOTELEN_02
	snd_noteex PRESET_01, NOTELEN_06
	snd_noteex PRESET_01, NOTELEN_04
	snd_noteex PRESET_03, NOTELEN_02
	snd_noteex PRESET_02, NOTELEN_06
	snd_noteex PRESET_00
	snd_noteex PRESET_01, NOTELEN_04
	snd_noteex PRESET_01, NOTELEN_02
	snd_note $00, NOTELEN_04
	snd_noteex PRESET_02, NOTELEN_02
	snd_noteex PRESET_01, NOTELEN_06
	snd_noteex PRESET_00, NOTELEN_04
	snd_noteex PRESET_02, NOTELEN_02
	snd_noteex PRESET_01, NOTELEN_04
	snd_noteex PRESET_01, NOTELEN_02
	snd_noteex PRESET_02, NOTELEN_04
	snd_noteex PRESET_01, NOTELEN_02
	snd_noteex PRESET_01, NOTELEN_04
	snd_noteex PRESET_04, NOTELEN_02
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_01
	snd_noteex PRESET_01, NOTELEN_04
	snd_noteex PRESET_02, NOTELEN_02
	snd_noteex PRESET_01, NOTELEN_06
	snd_noteex PRESET_00, NOTELEN_04
	snd_noteex PRESET_02, NOTELEN_02
	snd_noteex PRESET_01, NOTELEN_06
	snd_noteex PRESET_01, NOTELEN_04
	snd_noteex PRESET_02, NOTELEN_02
	snd_noteex PRESET_01, NOTELEN_06
	snd_noteex PRESET_00
	snd_noteex PRESET_01, NOTELEN_04
	snd_noteex PRESET_01, NOTELEN_02
	snd_note $00, NOTELEN_04
	snd_noteex PRESET_02, NOTELEN_02
	snd_noteex PRESET_01, NOTELEN_04
	snd_noteex PRESET_02, NOTELEN_02
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_01, NOTELEN_04
	snd_noteex PRESET_01
	snd_noteex PRESET_02, NOTELEN_02
	snd_noteex PRESET_01
	snd_noteex PRESET_01, NOTELEN_04
	snd_noteex PRESET_04, NOTELEN_02
	snd_noteex PRESET_00, NOTELEN_04
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_01, NOTELEN_02
	snd_note $00, NOTELEN_04
	snd_noteex PRESET_02, NOTELEN_02
	snd_noteex PRESET_01, NOTELEN_06
	snd_noteex PRESET_00, NOTELEN_04
	snd_noteex PRESET_02, NOTELEN_02
	snd_noteex PRESET_01, NOTELEN_06
	snd_noteex PRESET_01, NOTELEN_04
	snd_noteex PRESET_03, NOTELEN_02
	snd_noteex PRESET_02, NOTELEN_06
	snd_noteex PRESET_00
	snd_noteex PRESET_01, NOTELEN_04
	snd_noteex PRESET_01, NOTELEN_02
	snd_note $00, NOTELEN_04
	snd_noteex PRESET_02, NOTELEN_02
	snd_noteex PRESET_01, NOTELEN_06
	snd_noteex PRESET_00, NOTELEN_04
	snd_noteex PRESET_02, NOTELEN_02
	snd_noteex PRESET_01, NOTELEN_04
	snd_noteex PRESET_01, NOTELEN_02
	snd_noteex PRESET_02, NOTELEN_04
	snd_noteex PRESET_01, NOTELEN_02
	snd_noteex PRESET_01, NOTELEN_04
	snd_noteex PRESET_04, NOTELEN_02
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_01, NOTELEN_04
	snd_noteex PRESET_01, NOTELEN_02
	snd_note $00, NOTELEN_04
	snd_noteex PRESET_02, NOTELEN_02
	snd_noteex PRESET_01, NOTELEN_06
	snd_noteex PRESET_00, NOTELEN_04
	snd_noteex PRESET_02, NOTELEN_02
	snd_noteex PRESET_01, NOTELEN_06
	snd_noteex PRESET_01, NOTELEN_04
	snd_noteex PRESET_03, NOTELEN_02
	snd_noteex PRESET_02, NOTELEN_06
	snd_noteex PRESET_00
	snd_noteex PRESET_01, NOTELEN_04
	snd_noteex PRESET_01, NOTELEN_02
	snd_note $00, NOTELEN_04
	snd_noteex PRESET_02, NOTELEN_02
	snd_noteex PRESET_01, NOTELEN_06
	snd_noteex PRESET_00
	snd_noteex PRESET_00, NOTELEN_04
	snd_noteex PRESET_01, NOTELEN_06
	snd_noteex PRESET_04, NOTELEN_02
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_00
	snd_noteex PRESET_00, NOTELEN_04
	snd_noteex PRESET_04, NOTELEN_02
	snd_var iSndChInfo_LoopTimer0, $08
	.loop0:
		snd_noteex PRESET_01, NOTELEN_04
		snd_noteex PRESET_02, NOTELEN_02
		snd_noteex PRESET_03, NOTELEN_04
		snd_noteex PRESET_02, NOTELEN_02
		snd_noteex PRESET_00, NOTELEN_04
		snd_noteex PRESET_02, NOTELEN_02
		snd_noteex PRESET_03, NOTELEN_04
		snd_noteex PRESET_02, NOTELEN_02
		snd_djnz iSndChInfo_LoopTimer0, .loop0
	snd_noteex PRESET_01, NOTELEN_04
	snd_noteex PRESET_02, NOTELEN_02
	snd_noteex PRESET_03, NOTELEN_04
	snd_noteex PRESET_02, NOTELEN_02
	snd_noteex PRESET_00, NOTELEN_04
	snd_noteex PRESET_02, NOTELEN_02
	snd_noteex PRESET_03, NOTELEN_04
	snd_noteex PRESET_01, NOTELEN_02
	snd_noteex PRESET_02, NOTELEN_04
	snd_noteex PRESET_01, NOTELEN_02
	snd_noteex PRESET_01, NOTELEN_04
	snd_noteex PRESET_02, NOTELEN_02
	snd_noteex PRESET_00, NOTELEN_04
	snd_noteex PRESET_02, NOTELEN_02
	snd_noteex PRESET_03, NOTELEN_04
	snd_noteex PRESET_02, NOTELEN_02
	snd_noteex PRESET_01, NOTELEN_04
	snd_noteex PRESET_02, NOTELEN_02
	snd_noteex PRESET_03, NOTELEN_04
	snd_noteex PRESET_02, NOTELEN_02
	snd_noteex PRESET_00, NOTELEN_04
	snd_noteex PRESET_02, NOTELEN_02
	snd_noteex PRESET_03, NOTELEN_04
	snd_noteex PRESET_01, NOTELEN_02
	snd_noteex PRESET_02, NOTELEN_04
	snd_noteex PRESET_02, NOTELEN_02
	snd_noteex PRESET_01, NOTELEN_04
	snd_noteex PRESET_02, NOTELEN_02
	snd_noteex PRESET_00, NOTELEN_04
	snd_noteex PRESET_02, NOTELEN_02
	snd_noteex PRESET_03, NOTELEN_04
	snd_noteex PRESET_02, NOTELEN_02
	snd_noteex PRESET_01, NOTELEN_04
	snd_noteex PRESET_02, NOTELEN_02
	snd_noteex PRESET_01, NOTELEN_04
	snd_noteex PRESET_02, NOTELEN_02
	snd_noteex PRESET_00, NOTELEN_04
	snd_noteex PRESET_02, NOTELEN_02
	snd_noteex PRESET_03, NOTELEN_04
	snd_noteex PRESET_01, NOTELEN_02
	snd_noteex PRESET_02, NOTELEN_04
	snd_noteex PRESET_02, NOTELEN_02
	snd_noteex PRESET_01, NOTELEN_04
	snd_noteex PRESET_02, NOTELEN_02
	snd_noteex PRESET_00, NOTELEN_04
	snd_noteex PRESET_02, NOTELEN_02
	snd_noteex PRESET_03
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_01, NOTELEN_04
	snd_noteex PRESET_02, NOTELEN_02
	snd_noteex PRESET_03, NOTELEN_04
	snd_noteex PRESET_02, NOTELEN_02
	snd_noteex PRESET_00, NOTELEN_04
	snd_noteex PRESET_02, NOTELEN_02
	snd_noteex PRESET_03, NOTELEN_04
	snd_noteex PRESET_02, NOTELEN_02
	snd_noteex PRESET_00, NOTELEN_08
	snd_noteex PRESET_02, NOTELEN_02
	snd_noteex PRESET_02
	snd_noteex PRESET_00, NOTELEN_CUSTOM, $08
	snd_noteex PRESET_02, NOTELEN_02
	snd_noteex PRESET_01
	snd_var iSndChInfo_LoopTimer0, $0F
	.loop1:
		snd_noteex PRESET_04, NOTELEN_02
		snd_noteex PRESET_04
		snd_inc_vol -1
		snd_djnz iSndChInfo_LoopTimer0, .loop1
	snd_end
