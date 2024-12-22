SndHeader_0D:
	db 4 ; Number of slots
.slot0:
	db SNDSLOT0 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_35 ; iSndChInfo_Vibrato
	db 2 ; iSndChInfo_NoteIdBase
	db 121 ; iSndChInfo_Speed
	db SNDCH_WAVE ; iSndChInfo_ChId
	dw SndData_0D_Ch3 ; Data pointer
	db $80 ; [PLACEHOLDER] ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot1:
	db SNDSLOT1 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 13 ; iSndChInfo_Vol
	db INSTR_2E ; iSndChInfo_Instrument
	db VIBRATO_35 ; iSndChInfo_Vibrato
	db -10 ; iSndChInfo_NoteIdBase
	db 121 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_0D_Ch2 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot2:
	db SNDSLOT2 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 8 ; iSndChInfo_Vol
	db INSTR_2E ; iSndChInfo_Instrument
	db VIBRATO_33 ; iSndChInfo_Vibrato
	db -10 ; iSndChInfo_NoteIdBase
	db 121 ; iSndChInfo_Speed
	db SNDCH_PULSE1 ; iSndChInfo_ChId
	dw SndData_0D_Ch1 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot3:
	db SNDSLOT3 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db 0 ; iSndChInfo_NoteIdBase
	db 121 ; iSndChInfo_Speed
	db SNDCH_NOISE ; iSndChInfo_ChId
	dw SndData_0D_Ch4 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_0D_Ch3:
	snd_wave WAVE_12
	snd_instrument INSTR_30
	snd_vibrato VIBRATO_36
	snd_note $2B, NOTELEN_CUSTOM, $2D
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $2B, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $29, NOTELEN_18
	snd_note $2E
	snd_note $2B, NOTELEN_CUSTOM, $2A
	snd_inc_vol -5
	snd_instrument INSTR_NONE
	snd_inc_freq_offset -1
	snd_note $2B, NOTELEN_CUSTOM, $06
	snd_inc_vol 5
	snd_instrument INSTR_NONE
	snd_inc_freq_offset 1
	snd_note $29, NOTELEN_18
	snd_note $2E
	snd_note $2B, NOTELEN_CUSTOM, $41
	snd_inc_vol -5
	snd_instrument INSTR_NONE
	snd_inc_freq_offset -1
	snd_note $2B, NOTELEN_CUSTOM, $06
	snd_inc_vol 5
	snd_instrument INSTR_NONE
	snd_inc_freq_offset 1
	snd_note $2E, NOTELEN_01
	snd_note $2F
	snd_note $30, NOTELEN_08
	snd_note $2E, NOTELEN_09
	snd_note $27, NOTELEN_06
	snd_note $2B, NOTELEN_CUSTOM, $48
	snd_inc_vol -5
	snd_instrument INSTR_NONE
	snd_inc_freq_offset -1
	snd_note $2B, NOTELEN_CUSTOM, $06
	snd_inc_vol 5
	snd_instrument INSTR_NONE
	snd_inc_freq_offset 1
	snd_note $27, NOTELEN_0C
	snd_note $29, NOTELEN_06
	snd_note $2B, NOTELEN_CUSTOM, $2D
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $2B, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $29, NOTELEN_18
	snd_note $2E
	snd_note $2B, NOTELEN_CUSTOM, $2A
	snd_inc_vol -5
	snd_instrument INSTR_NONE
	snd_inc_freq_offset -1
	snd_note $2B, NOTELEN_CUSTOM, $06
	snd_inc_vol 5
	snd_instrument INSTR_NONE
	snd_inc_freq_offset 1
	snd_note $29, NOTELEN_CUSTOM, $16
	snd_note $2B, NOTELEN_01
	snd_note $2C
	snd_note $2D
	snd_note $2E, NOTELEN_CUSTOM, $17
	snd_note $2B, NOTELEN_CUSTOM, $42
	snd_inc_vol -5
	snd_instrument INSTR_NONE
	snd_inc_freq_offset -1
	snd_note $2B, NOTELEN_CUSTOM, $06
	snd_inc_vol 5
	snd_instrument INSTR_30
	snd_inc_freq_offset 1
	snd_note $27, NOTELEN_18
	snd_note $2B, NOTELEN_CUSTOM, $50
	snd_inc_vol -5
	snd_instrument INSTR_NONE
	snd_inc_freq_offset -1
	snd_note $2B, NOTELEN_CUSTOM, $06
	snd_inc_vol 5
	snd_instrument INSTR_30
	snd_inc_freq_offset 1
	snd_wave WAVE_09
	snd_vibrato VIBRATO_35
	snd_note $34, NOTELEN_02
	snd_note $35
	snd_note $37
	snd_note $39
	snd_note $3B
	snd_note $3C, NOTELEN_CUSTOM, $1B
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $3C, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $35, NOTELEN_06
	snd_note $38
	snd_note $3F
	snd_note $3C, NOTELEN_12
	snd_note $3A
	snd_note $38, NOTELEN_0C
	snd_note $37, NOTELEN_CUSTOM, $1B
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $37, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $33, NOTELEN_06
	snd_note $30
	snd_note $33, NOTELEN_CUSTOM, $1E
	snd_inc_vol -5
	snd_instrument INSTR_NONE
	snd_inc_freq_offset -1
	snd_note $33, NOTELEN_CUSTOM, $06
	snd_inc_vol 5
	snd_instrument INSTR_30
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_06
	snd_note $32, NOTELEN_0C
	snd_note $31, NOTELEN_CUSTOM, $1B
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $31, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $35, NOTELEN_06
	snd_note $38
	snd_note $3F
	snd_note $3C, NOTELEN_12
	snd_note $3A, NOTELEN_CUSTOM, $15
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $3A, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $38, NOTELEN_03
	snd_note $3A
	snd_note $3C, NOTELEN_CUSTOM, $48
	snd_inc_vol -5
	snd_instrument INSTR_NONE
	snd_inc_freq_offset -1
	snd_note $3C, NOTELEN_CUSTOM, $06
	snd_inc_vol 5
	snd_instrument INSTR_30
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_06
	snd_note $33, NOTELEN_03
	snd_note $35
	snd_note $37
	snd_note $38
	snd_note $3A, NOTELEN_CUSTOM, $1B
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $3A, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $33, NOTELEN_06
	snd_note $36
	snd_note $3D
	snd_note $3A, NOTELEN_12
	snd_note $38
	snd_note $36, NOTELEN_0C
	snd_note $35, NOTELEN_CUSTOM, $18
	snd_inc_vol -5
	snd_instrument INSTR_NONE
	snd_inc_freq_offset -1
	snd_note $35, NOTELEN_CUSTOM, $06
	snd_inc_vol 5
	snd_instrument INSTR_30
	snd_inc_freq_offset 1
	snd_note $31, NOTELEN_06
	snd_note $2E
	snd_note $31, NOTELEN_CUSTOM, $1E
	snd_inc_vol -5
	snd_instrument INSTR_NONE
	snd_inc_freq_offset -1
	snd_note $31, NOTELEN_CUSTOM, $06
	snd_inc_vol 5
	snd_instrument INSTR_30
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_06
	snd_note $31, NOTELEN_0C
	snd_note $30, NOTELEN_CUSTOM, $1B
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $30, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $32, NOTELEN_06
	snd_note $33
	snd_note $2D, NOTELEN_CUSTOM, $19
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $2D, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $2E, NOTELEN_01
	snd_note $2F
	snd_note $30, NOTELEN_CUSTOM, $16
	snd_note $31, NOTELEN_01
	snd_note $32
	snd_note $33, NOTELEN_CUSTOM, $2A
	snd_inc_vol -5
	snd_instrument INSTR_NONE
	snd_inc_freq_offset -1
	snd_note $33, NOTELEN_CUSTOM, $06
	snd_inc_vol 5
	snd_instrument INSTR_NONE
	snd_inc_freq_offset 1
	snd_note $32, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $32, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $32, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_instrument INSTR_NONE
	snd_inc_freq_offset -1
	snd_note $32, NOTELEN_CUSTOM, $06
	snd_inc_vol 5
	snd_instrument INSTR_NONE
	snd_inc_freq_offset 1
	snd_note $32, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $32, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $32, NOTELEN_0C
	snd_wave WAVE_12
	snd_note $26, NOTELEN_03
	snd_note $27, NOTELEN_06
	snd_note $29
	snd_jp SndData_0D_Ch3
SndData_0D_Ch2:
	snd_duty SNDDUTY_12, $01
	snd_note $18, NOTELEN_09
	snd_note $18, NOTELEN_03
	snd_note $1F, NOTELEN_0C
	snd_note $18, NOTELEN_09
	snd_note $18, NOTELEN_03
	snd_note $1F, NOTELEN_0C
	snd_note $1B, NOTELEN_09
	snd_note $1B, NOTELEN_03
	snd_note $22, NOTELEN_0C
	snd_note $1B, NOTELEN_09
	snd_note $1B, NOTELEN_03
	snd_note $22, NOTELEN_06
	snd_note $21
	snd_note $20, NOTELEN_09
	snd_note $20, NOTELEN_03
	snd_note $1B, NOTELEN_0C
	snd_note $20, NOTELEN_09
	snd_note $20, NOTELEN_03
	snd_note $1B, NOTELEN_06
	snd_note $20
	snd_note $1F, NOTELEN_09
	snd_note $1F, NOTELEN_03
	snd_note $1A, NOTELEN_0C
	snd_note $1F, NOTELEN_09
	snd_note $1F, NOTELEN_03
	snd_note $1A, NOTELEN_06
	snd_note $1F
	snd_note $1D, NOTELEN_09
	snd_note $1D, NOTELEN_03
	snd_note $18, NOTELEN_0C
	snd_note $1D, NOTELEN_09
	snd_note $1D, NOTELEN_03
	snd_note $18, NOTELEN_06
	snd_note $1D
	snd_note $16, NOTELEN_09
	snd_note $16, NOTELEN_03
	snd_note $1D, NOTELEN_0C
	snd_note $16, NOTELEN_09
	snd_note $16, NOTELEN_03
	snd_note $1D, NOTELEN_06
	snd_note $1C
	snd_note $1B, NOTELEN_09
	snd_note $1B, NOTELEN_03
	snd_note $22, NOTELEN_0C
	snd_note $1B, NOTELEN_09
	snd_note $1B, NOTELEN_03
	snd_note $22, NOTELEN_06
	snd_note $1B
	snd_note $1A, NOTELEN_09
	snd_note $1A, NOTELEN_03
	snd_note $24
	snd_note $25, NOTELEN_06
	snd_note $26, NOTELEN_09
	snd_note $25, NOTELEN_0C
	snd_note $19, NOTELEN_06
	snd_note $18, NOTELEN_09
	snd_note $18, NOTELEN_03
	snd_note $1F, NOTELEN_0C
	snd_note $18, NOTELEN_09
	snd_note $18, NOTELEN_03
	snd_note $1F, NOTELEN_0C
	snd_note $16, NOTELEN_09
	snd_note $16, NOTELEN_03
	snd_note $1D, NOTELEN_0C
	snd_note $16, NOTELEN_09
	snd_note $16, NOTELEN_03
	snd_note $20, NOTELEN_02
	snd_note $21
	snd_note $22, NOTELEN_08
	snd_note $20, NOTELEN_09
	snd_note $20, NOTELEN_03
	snd_note $1B, NOTELEN_0C
	snd_note $20, NOTELEN_09
	snd_note $20, NOTELEN_03
	snd_note $1B, NOTELEN_06
	snd_note $20
	snd_note $1F, NOTELEN_09
	snd_note $1F, NOTELEN_03
	snd_note $1A, NOTELEN_0C
	snd_note $1F, NOTELEN_09
	snd_note $1F, NOTELEN_03
	snd_note $1A, NOTELEN_06
	snd_note $1F
	snd_note $1D, NOTELEN_09
	snd_note $1D, NOTELEN_03
	snd_note $18, NOTELEN_0C
	snd_note $1D, NOTELEN_09
	snd_note $1D, NOTELEN_03
	snd_note $18, NOTELEN_06
	snd_note $1D
	snd_note $16, NOTELEN_09
	snd_note $16, NOTELEN_03
	snd_note $1D, NOTELEN_0C
	snd_note $16, NOTELEN_09
	snd_note $16, NOTELEN_03
	snd_note $1D, NOTELEN_0C
	snd_note $18, NOTELEN_09
	snd_note $18, NOTELEN_03
	snd_note $1F, NOTELEN_0C
	snd_note $18, NOTELEN_09
	snd_note $18, NOTELEN_03
	snd_note $1F, NOTELEN_0C
	snd_note $18, NOTELEN_09
	snd_note $18, NOTELEN_03
	snd_note $1D
	snd_note $1E
	snd_note $1F, NOTELEN_06
	snd_note $26, NOTELEN_09
	snd_note $24, NOTELEN_03
	snd_note $24, NOTELEN_06
	snd_note $23
	snd_note $16, NOTELEN_09
	snd_note $1D
	snd_note $20, NOTELEN_06
	snd_note $22, NOTELEN_09
	snd_note $1D
	snd_note $1D, NOTELEN_03
	snd_note $1C
	snd_note $1B, NOTELEN_09
	snd_note $16
	snd_note $19, NOTELEN_06
	snd_note $1B, NOTELEN_09
	snd_note $22
	snd_note $1B, NOTELEN_06
	snd_note $1D, NOTELEN_09
	snd_note $18
	snd_note $1B, NOTELEN_06
	snd_note $1D, NOTELEN_09
	snd_note $24
	snd_note $27, NOTELEN_03
	snd_note $28
	snd_note $29, NOTELEN_09
	snd_note $27
	snd_note $24, NOTELEN_06
	snd_note $1D, NOTELEN_09
	snd_note $24
	snd_note $23, NOTELEN_06
	snd_note $22, NOTELEN_09
	snd_note $1D
	snd_note $20, NOTELEN_06
	snd_note $22, NOTELEN_09
	snd_note $1D
	snd_note $1C, NOTELEN_06
	snd_note $1B, NOTELEN_09
	snd_note $16
	snd_note $19, NOTELEN_06
	snd_note $1B, NOTELEN_09
	snd_note $22
	snd_note $1B, NOTELEN_06
	snd_note $20, NOTELEN_09
	snd_note $1B
	snd_note $16, NOTELEN_06
	snd_note $14, NOTELEN_09
	snd_note $1B
	snd_note $22, NOTELEN_06
	snd_note $20, NOTELEN_09
	snd_note $1F
	snd_note $1B, NOTELEN_06
	snd_note $14, NOTELEN_09
	snd_note $13
	snd_note $1B, NOTELEN_06
	snd_note $20, NOTELEN_09
	snd_note $1B
	snd_note $1E, NOTELEN_06
	snd_note $20, NOTELEN_09
	snd_note $27
	snd_note $1B, NOTELEN_03
	snd_note $1A
	snd_note $19, NOTELEN_09
	snd_note $14
	snd_note $17, NOTELEN_06
	snd_note $19, NOTELEN_09
	snd_note $20
	snd_note $19, NOTELEN_06
	snd_note $1B, NOTELEN_09
	snd_note $16
	snd_note $19, NOTELEN_06
	snd_note $1B, NOTELEN_09
	snd_note $22
	snd_note $25, NOTELEN_06
	snd_note $27, NOTELEN_09
	snd_note $25
	snd_note $22, NOTELEN_06
	snd_note $1B, NOTELEN_09
	snd_note $25
	snd_note $22, NOTELEN_06
	snd_note $21, NOTELEN_09
	snd_note $1B
	snd_note $1F, NOTELEN_06
	snd_note $21, NOTELEN_09
	snd_note $27
	snd_note $1F, NOTELEN_06
	snd_note $21, NOTELEN_09
	snd_note $1B
	snd_note $1F, NOTELEN_06
	snd_note $21, NOTELEN_09
	snd_note $1B
	snd_note $21, NOTELEN_06
	snd_note $22, NOTELEN_09
	snd_note $1D
	snd_note $20, NOTELEN_06
	snd_note $22, NOTELEN_09
	snd_note $29
	snd_note $22, NOTELEN_06
	snd_note $1F
	snd_note $1F, NOTELEN_09
	snd_note $1F, NOTELEN_06
	snd_note $1F, NOTELEN_0C
	snd_note $1A, NOTELEN_03
	snd_note $1F, NOTELEN_06
	snd_note $13
	snd_jp SndData_0D_Ch2
SndData_0D_Ch1:
	snd_instrument INSTR_30
	snd_duty SNDDUTY_25, $00
	snd_note $27, NOTELEN_09
	snd_instrument INSTR_33
	snd_duty SNDDUTY_12, $00
	snd_note $33, NOTELEN_03
	snd_note $27
	snd_note $33
	snd_note $27, NOTELEN_06
	snd_note $33, NOTELEN_03
	snd_note $27, NOTELEN_06
	snd_note $33, NOTELEN_03
	snd_note $27, NOTELEN_06
	snd_note $33
	snd_instrument INSTR_30
	snd_duty SNDDUTY_25, $00
	snd_note $25, NOTELEN_09
	snd_instrument INSTR_33
	snd_duty SNDDUTY_12, $00
	snd_note $31, NOTELEN_03
	snd_note $25
	snd_note $31
	snd_note $25, NOTELEN_06
	snd_note $31, NOTELEN_03
	snd_note $2B, NOTELEN_06
	snd_note $31, NOTELEN_03
	snd_note $2B, NOTELEN_06
	snd_note $31
	snd_instrument INSTR_30
	snd_duty SNDDUTY_25, $00
	snd_note $24, NOTELEN_09
	snd_instrument INSTR_33
	snd_duty SNDDUTY_12, $00
	snd_note $33, NOTELEN_03
	snd_note $24
	snd_note $33
	snd_note $24, NOTELEN_06
	snd_note $33, NOTELEN_03
	snd_note $24, NOTELEN_06
	snd_note $33, NOTELEN_03
	snd_note $24, NOTELEN_06
	snd_note $33
	snd_instrument INSTR_30
	snd_duty SNDDUTY_25, $00
	snd_note $22, NOTELEN_09
	snd_instrument INSTR_33
	snd_duty SNDDUTY_12, $00
	snd_note $35, NOTELEN_03
	snd_note $22
	snd_note $32
	snd_note $22, NOTELEN_06
	snd_note $32, NOTELEN_03
	snd_note $26, NOTELEN_06
	snd_note $32, NOTELEN_03
	snd_note $26, NOTELEN_06
	snd_note $35
	snd_instrument INSTR_30
	snd_duty SNDDUTY_25, $00
	snd_note $27, NOTELEN_09
	snd_instrument INSTR_33
	snd_duty SNDDUTY_12, $00
	snd_note $33, NOTELEN_03
	snd_note $27
	snd_note $33
	snd_note $27, NOTELEN_06
	snd_note $33, NOTELEN_03
	snd_note $27, NOTELEN_06
	snd_note $33, NOTELEN_03
	snd_note $27, NOTELEN_06
	snd_note $33
	snd_instrument INSTR_30
	snd_duty SNDDUTY_25, $00
	snd_note $27, NOTELEN_09
	snd_instrument INSTR_33
	snd_duty SNDDUTY_12, $00
	snd_note $33, NOTELEN_03
	snd_note $27
	snd_note $33
	snd_note $27, NOTELEN_06
	snd_instrument INSTR_30
	snd_duty SNDDUTY_25, $00
	snd_note $2B, NOTELEN_09
	snd_note $27
	snd_note $22, NOTELEN_06
	snd_note $22, NOTELEN_0C
	snd_duty SNDDUTY_12, $00
	snd_instrument INSTR_33
	snd_note $3E, NOTELEN_03
	snd_note $3E
	snd_note $3C
	snd_note $3E, NOTELEN_0C
	snd_note $37, NOTELEN_06
	snd_note $3A, NOTELEN_03
	snd_note $37
	snd_note $3A
	snd_note $3C, NOTELEN_09
	snd_note $35, NOTELEN_03
	snd_note $39
	snd_note $3C, NOTELEN_06
	snd_note $3E, NOTELEN_09
	snd_instrument INSTR_30
	snd_inc_vol -1
	snd_note $2F, NOTELEN_0C
	snd_note $2F, NOTELEN_06
	snd_note $32, NOTELEN_CUSTOM, $2D
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $32, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $30, NOTELEN_18
	snd_note $29
	snd_note $2E, NOTELEN_CUSTOM, $15
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $2E, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $2E, NOTELEN_09
	snd_note $30
	snd_note $31, NOTELEN_06
	snd_note $32, NOTELEN_CUSTOM, $15
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $32, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $2B, NOTELEN_09
	snd_note $26
	snd_note $32, NOTELEN_06
	snd_note $33, NOTELEN_CUSTOM, $42
	snd_inc_vol -5
	snd_instrument INSTR_NONE
	snd_inc_freq_offset -1
	snd_note $33, NOTELEN_CUSTOM, $06
	snd_inc_vol 5
	snd_instrument INSTR_30
	snd_inc_freq_offset 1
	snd_note $30, NOTELEN_CUSTOM, $18
	snd_inc_vol -5
	snd_instrument INSTR_NONE
	snd_inc_freq_offset -1
	snd_note $30, NOTELEN_CUSTOM, $06
	snd_inc_vol 5
	snd_instrument INSTR_NONE
	snd_inc_freq_offset 1
	snd_duty SNDDUTY_25, $00
	snd_instrument INSTR_33
	snd_inc_vol 1
	snd_note $47, NOTELEN_03
	snd_note $48
	snd_note $47
	snd_note $43, NOTELEN_06
	snd_note $40, NOTELEN_0C
	snd_note $3B, NOTELEN_03
	snd_note $3C
	snd_note $3E
	snd_note $43, NOTELEN_06
	snd_note $41, NOTELEN_09
	snd_note $40, NOTELEN_06
	snd_note $3C, NOTELEN_03
	snd_instrument INSTR_30
	snd_note $37, NOTELEN_CUSTOM, $18
	snd_inc_vol -5
	snd_instrument INSTR_NONE
	snd_inc_freq_offset -1
	snd_note $37, NOTELEN_CUSTOM, $06
	snd_inc_vol 5
	snd_instrument INSTR_30
	snd_inc_freq_offset 1
	snd_instrument INSTR_30
	snd_inc_base_note -12
	snd_inc_vol 2
	snd_note $38, NOTELEN_0C
	snd_instrument INSTR_33
	snd_note $35, NOTELEN_03
	snd_note $35, NOTELEN_06
	snd_note $35, NOTELEN_09
	snd_instrument INSTR_30
	snd_note $30, NOTELEN_06
	snd_note $35
	snd_note $38
	snd_note $37, NOTELEN_0C
	snd_instrument INSTR_33
	snd_note $35, NOTELEN_03
	snd_note $35
	snd_instrument INSTR_30
	snd_note $31, NOTELEN_12
	snd_note $30, NOTELEN_0C
	snd_note $2E
	snd_instrument INSTR_33
	snd_note $33, NOTELEN_03
	snd_note $33, NOTELEN_06
	snd_note $33, NOTELEN_09
	snd_instrument INSTR_30
	snd_note $2E, NOTELEN_06
	snd_note $2E
	snd_note $2B, NOTELEN_CUSTOM, $1E
	snd_note $30, NOTELEN_CUSTOM, $15
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $30, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $2C, NOTELEN_0C
	snd_instrument INSTR_33
	snd_note $30, NOTELEN_03
	snd_note $30, NOTELEN_06
	snd_note $30, NOTELEN_09
	snd_instrument INSTR_30
	snd_note $31, NOTELEN_06
	snd_note $35
	snd_note $38
	snd_note $38, NOTELEN_12
	snd_note $35, NOTELEN_18
	snd_note $31, NOTELEN_06
	snd_note $30, NOTELEN_CUSTOM, $0A
	snd_note $35, NOTELEN_01
	snd_note $36
	snd_note $37, NOTELEN_CUSTOM, $0F
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $37, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $3A, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $3A, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $38, NOTELEN_06
	snd_note $37, NOTELEN_0C
	snd_note $33, NOTELEN_08
	snd_note $32, NOTELEN_02
	snd_note $31
	snd_instrument INSTR_37
	snd_note $30, NOTELEN_1E
	snd_instrument INSTR_30
	snd_note $2A, NOTELEN_0C
	snd_instrument INSTR_33
	snd_note $36, NOTELEN_03
	snd_note $36, NOTELEN_06
	snd_note $36, NOTELEN_09
	snd_instrument INSTR_30
	snd_note $2A, NOTELEN_06
	snd_note $2A
	snd_note $2A
	snd_note $27, NOTELEN_12
	snd_note $2A
	snd_note $2F, NOTELEN_0C
	snd_note $31
	snd_instrument INSTR_33
	snd_note $31, NOTELEN_03
	snd_note $31, NOTELEN_06
	snd_note $31, NOTELEN_09
	snd_instrument INSTR_30
	snd_note $29, NOTELEN_06
	snd_note $25
	snd_note $29, NOTELEN_CUSTOM, $1E
	snd_note $2C, NOTELEN_CUSTOM, $15
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $2C, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $2B, NOTELEN_CUSTOM, $2A
	snd_inc_vol -5
	snd_instrument INSTR_NONE
	snd_inc_freq_offset -1
	snd_note $2B, NOTELEN_CUSTOM, $06
	snd_inc_vol 5
	snd_instrument INSTR_30
	snd_inc_freq_offset 1
	snd_note $27, NOTELEN_CUSTOM, $30
	snd_inc_vol -5
	snd_instrument INSTR_NONE
	snd_inc_freq_offset -1
	snd_note $27, NOTELEN_CUSTOM, $06
	snd_inc_vol 5
	snd_instrument INSTR_30
	snd_inc_freq_offset 1
	snd_instrument INSTR_33
	snd_inc_base_note 12
	snd_note $37, NOTELEN_03
	snd_note $38, NOTELEN_06
	snd_note $33, NOTELEN_09
	snd_note $33, NOTELEN_03
	snd_note $30, NOTELEN_06
	snd_note $30
	snd_note $2C, NOTELEN_03
	snd_note $30
	snd_note $33
	snd_instrument INSTR_NONE
	snd_note $35, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $35, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $35, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_instrument INSTR_NONE
	snd_inc_freq_offset -1
	snd_note $35, NOTELEN_CUSTOM, $06
	snd_inc_vol 5
	snd_instrument INSTR_NONE
	snd_inc_freq_offset 1
	snd_note $35, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $35, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $35, NOTELEN_CUSTOM, $0C
	snd_inc_vol -5
	snd_instrument INSTR_NONE
	snd_inc_freq_offset -1
	snd_note $35, NOTELEN_CUSTOM, $06
	snd_inc_vol 5
	snd_instrument INSTR_NONE
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_09
	snd_inc_vol -2
	snd_jp SndData_0D_Ch1
SndData_0D_Ch4:
	snd_call .sub0
	snd_noteex PRESET_01, NOTELEN_03
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_call .sub0
	snd_noteex PRESET_01, NOTELEN_03
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_call .sub0
	snd_noteex PRESET_01, NOTELEN_03
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_call .sub0
	snd_noteex PRESET_01, NOTELEN_03
	snd_noteex PRESET_02
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_01, NOTELEN_03
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_00, NOTELEN_0C
	snd_noteex PRESET_01, NOTELEN_03
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_00, NOTELEN_06
	snd_jp SndData_0D_Ch4
.sub0:
	snd_var iSndChInfo_LoopTimer0, $07
	.sub0loop0:
		snd_noteex PRESET_01, NOTELEN_03
		snd_noteex PRESET_02
		snd_noteex PRESET_02
		snd_noteex PRESET_02
		snd_noteex PRESET_00
		snd_noteex PRESET_02
		snd_noteex PRESET_02
		snd_noteex PRESET_02
		snd_noteex PRESET_01
		snd_noteex PRESET_02
		snd_noteex PRESET_02
		snd_noteex PRESET_00
		snd_noteex PRESET_01
		snd_noteex PRESET_02
		snd_noteex PRESET_00, NOTELEN_06
		snd_djnz iSndChInfo_LoopTimer0, .sub0loop0
	snd_ret
