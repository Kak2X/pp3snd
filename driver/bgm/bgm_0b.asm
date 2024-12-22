SndHeader_0B:
	db 4 ; Number of slots
.slot0:
	db SNDSLOT0 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db 0 ; iSndChInfo_NoteIdBase
	db 121 ; iSndChInfo_Speed
	db SNDCH_WAVE ; iSndChInfo_ChId
	dw SndData_0B_Ch3 ; Data pointer
	db WAVE_01 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot1:
	db SNDSLOT1 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 12 ; iSndChInfo_Vol
	db INSTR_2E ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -12 ; iSndChInfo_NoteIdBase
	db 121 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_0B_Ch2 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot2:
	db SNDSLOT2 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 10 ; iSndChInfo_Vol
	db INSTR_31 ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -12 ; iSndChInfo_NoteIdBase
	db 121 ; iSndChInfo_Speed
	db SNDCH_PULSE1 ; iSndChInfo_ChId
	dw SndData_0B_Ch1 ; Data pointer
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
	dw SndData_0B_Ch4 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_0B_Ch3:
	snd_wave WAVE_10
	snd_vibrato VIBRATO_35
	snd_call .sub0
	snd_note $36, NOTELEN_09
	snd_note $35, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_instrument INSTR_NONE
	snd_inc_freq_offset -1
	snd_note $35, NOTELEN_CUSTOM, $06
	snd_inc_vol 5
	snd_instrument INSTR_NONE
	snd_inc_freq_offset 1
	snd_note $33, NOTELEN_06
	snd_note $3A, NOTELEN_09
	snd_note $37, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_instrument INSTR_NONE
	snd_inc_freq_offset -1
	snd_note $37, NOTELEN_CUSTOM, $06
	snd_inc_vol 5
	snd_instrument INSTR_NONE
	snd_inc_freq_offset 1
	snd_note $33, NOTELEN_CUSTOM, $1E
	snd_inc_vol -5
	snd_instrument INSTR_NONE
	snd_inc_freq_offset -1
	snd_note $33, NOTELEN_CUSTOM, $06
	snd_inc_vol 5
	snd_instrument INSTR_NONE
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_CUSTOM, $12
	snd_wave WAVE_09
	snd_vibrato VIBRATO_34
	snd_note $27, NOTELEN_03
	snd_note $27
	snd_note $24, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $24, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $27, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $27, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_06
	snd_note $29, NOTELEN_01
	snd_note $2A, NOTELEN_02
	snd_note $00, NOTELEN_06
	snd_note $29, NOTELEN_09
	snd_note $24, NOTELEN_06
	snd_note $27, NOTELEN_03
	snd_note $27
	snd_note $24, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $24, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $27, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $27, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_06
	snd_note $1E, NOTELEN_01
	snd_note $1F, NOTELEN_02
	snd_note $00, NOTELEN_06
	snd_note $20, NOTELEN_09
	snd_note $22, NOTELEN_06
	snd_note $27, NOTELEN_03
	snd_note $27
	snd_note $24, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $24, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $27, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $27, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_06
	snd_note $29, NOTELEN_01
	snd_note $2A, NOTELEN_02
	snd_note $00, NOTELEN_06
	snd_note $29, NOTELEN_09
	snd_note $24, NOTELEN_06
	snd_note $27, NOTELEN_03
	snd_note $27
	snd_note $24, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $24, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $27
	snd_note $06
	snd_note $00, NOTELEN_CUSTOM, $04
	snd_note $2B, NOTELEN_01
	snd_note $2C
	snd_note $2D
	snd_note $2E, NOTELEN_CUSTOM, $05
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $2E, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $2B, NOTELEN_09
	snd_note $24, NOTELEN_06
	snd_note $27, NOTELEN_03
	snd_note $27
	snd_note $24, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $24, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $27, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $27, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_06
	snd_note $29, NOTELEN_01
	snd_note $2A, NOTELEN_02
	snd_note $00, NOTELEN_06
	snd_note $29, NOTELEN_09
	snd_note $24, NOTELEN_06
	snd_note $27, NOTELEN_03
	snd_note $27
	snd_note $24, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $24, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $27, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $27, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_06
	snd_note $1E, NOTELEN_01
	snd_note $1F, NOTELEN_02
	snd_note $00, NOTELEN_06
	snd_note $20, NOTELEN_09
	snd_note $22, NOTELEN_06
	snd_note $27, NOTELEN_03
	snd_note $27
	snd_note $24, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $24, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $27, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $27, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_06
	snd_note $29, NOTELEN_01
	snd_note $2A, NOTELEN_02
	snd_note $00, NOTELEN_06
	snd_note $29, NOTELEN_09
	snd_note $24, NOTELEN_06
	snd_note $00
	snd_note $2E, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $2E, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_03
	snd_note $2A, NOTELEN_01
	snd_note $2B, NOTELEN_08
	snd_note $27, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $27, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_CUSTOM, $12
	snd_wave WAVE_10
	snd_vibrato VIBRATO_35
	snd_call .sub0
	snd_note $36, NOTELEN_09
	snd_note $35, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $35, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_03
	snd_note $33, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $33, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $3A, NOTELEN_09
	snd_note $37, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $37, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_03
	snd_note $33, NOTELEN_CUSTOM, $1E
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $33, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_09
	snd_wave WAVE_0E
	snd_vibrato VIBRATO_35
	snd_note $29, NOTELEN_03
	snd_note $2B
	snd_note $2C
	snd_note $2E
	snd_note $30, NOTELEN_CUSTOM, $18
	snd_inc_vol -5
	snd_instrument INSTR_NONE
	snd_inc_freq_offset -1
	snd_note $30, NOTELEN_CUSTOM, $06
	snd_inc_vol 5
	snd_instrument INSTR_NONE
	snd_inc_freq_offset 1
	snd_note $32, NOTELEN_01
	snd_note $33, NOTELEN_08
	snd_note $31, NOTELEN_09
	snd_note $30, NOTELEN_1E
	snd_note $2E, NOTELEN_09
	snd_note $2C
	snd_note $2F, NOTELEN_01
	snd_note $30, NOTELEN_CUSTOM, $59
	snd_inc_vol -5
	snd_instrument INSTR_NONE
	snd_inc_freq_offset -1
	snd_note $30, NOTELEN_CUSTOM, $06
	snd_inc_vol 5
	snd_instrument INSTR_NONE
	snd_inc_freq_offset 1
	snd_note $30, NOTELEN_CUSTOM, $1B
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $30, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $32, NOTELEN_01
	snd_note $33, NOTELEN_08
	snd_note $31, NOTELEN_09
	snd_note $30, NOTELEN_CUSTOM, $21
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $30, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $36, NOTELEN_01
	snd_note $37, NOTELEN_CUSTOM, $0B
	snd_note $33, NOTELEN_CUSTOM, $4E
	snd_inc_vol -5
	snd_instrument INSTR_NONE
	snd_inc_freq_offset -1
	snd_note $33, NOTELEN_CUSTOM, $06
	snd_inc_vol 5
	snd_instrument INSTR_NONE
	snd_inc_freq_offset 1
	snd_note $31, NOTELEN_0C
	snd_note $30, NOTELEN_18
	snd_note $2E
	snd_note $2C, NOTELEN_CUSTOM, $18
	snd_inc_vol -5
	snd_instrument INSTR_NONE
	snd_inc_freq_offset -1
	snd_note $2C, NOTELEN_CUSTOM, $06
	snd_inc_vol 5
	snd_instrument INSTR_NONE
	snd_inc_freq_offset 1
	snd_note $30, NOTELEN_09
	snd_note $29
	snd_note $2C, NOTELEN_CUSTOM, $8A
	snd_inc_vol -5
	snd_instrument INSTR_NONE
	snd_inc_freq_offset -1
	snd_note $2C, NOTELEN_CUSTOM, $06
	snd_inc_vol 5
	snd_instrument INSTR_NONE
	snd_inc_freq_offset 1
	snd_wave WAVE_09
	snd_vibrato VIBRATO_34
	snd_note $2C, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $2C, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $2C, NOTELEN_03
	snd_note $2C, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_instrument INSTR_NONE
	snd_inc_freq_offset -1
	snd_note $2C, NOTELEN_CUSTOM, $06
	snd_inc_vol 5
	snd_instrument INSTR_NONE
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_06
	snd_note $2C, NOTELEN_03
	snd_note $2C, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $2C, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $2C, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_instrument INSTR_NONE
	snd_inc_freq_offset -1
	snd_note $2C, NOTELEN_CUSTOM, $06
	snd_inc_vol 5
	snd_instrument INSTR_NONE
	snd_inc_freq_offset 1
	snd_note $2C, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $2C, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_jp SndData_0B_Ch3
.sub0:
	snd_note $3A, NOTELEN_CUSTOM, $18
	snd_inc_vol -5
	snd_instrument INSTR_NONE
	snd_inc_freq_offset -1
	snd_note $3A, NOTELEN_CUSTOM, $06
	snd_inc_vol 5
	snd_instrument INSTR_NONE
	snd_inc_freq_offset 1
	snd_note $3F, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $3F, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $3C, NOTELEN_06
	snd_note $3A, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $3A, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $37, NOTELEN_09
	snd_note $35, NOTELEN_CUSTOM, $06
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $35, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $33, NOTELEN_CUSTOM, $0C
	snd_inc_vol -5
	snd_instrument INSTR_NONE
	snd_inc_freq_offset -1
	snd_note $33, NOTELEN_CUSTOM, $06
	snd_inc_vol 5
	snd_instrument INSTR_NONE
	snd_inc_freq_offset 1
	snd_note $30, NOTELEN_06
	snd_note $33, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $33, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $36, NOTELEN_09
	snd_note $35, NOTELEN_CUSTOM, $06
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $35, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $33, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $33, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $2F, NOTELEN_09
	snd_note $2E, NOTELEN_CUSTOM, $06
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $2E, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $37, NOTELEN_CUSTOM, $1E
	snd_inc_vol -5
	snd_instrument INSTR_NONE
	snd_inc_freq_offset -1
	snd_note $37, NOTELEN_CUSTOM, $06
	snd_inc_vol 5
	snd_instrument INSTR_NONE
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_06
	snd_note $38, NOTELEN_0C
	snd_note $3A, NOTELEN_CUSTOM, $18
	snd_inc_vol -5
	snd_instrument INSTR_NONE
	snd_inc_freq_offset -1
	snd_note $3A, NOTELEN_CUSTOM, $06
	snd_inc_vol 5
	snd_instrument INSTR_NONE
	snd_inc_freq_offset 1
	snd_note $3F, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $3F, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $3C, NOTELEN_06
	snd_note $3A, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $3A, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $37, NOTELEN_09
	snd_note $35, NOTELEN_CUSTOM, $06
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $35, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $33, NOTELEN_CUSTOM, $0C
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $33, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_03
	snd_note $30, NOTELEN_06
	snd_note $33, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $33, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_ret
SndData_0B_Ch2:
	snd_duty SNDDUTY_25, $00
	snd_inc_base_note -12
	snd_note $1B, NOTELEN_06
	snd_note $1B, NOTELEN_03
	snd_note $1E, NOTELEN_01
	snd_note $1F, NOTELEN_08
	snd_note $22, NOTELEN_06
	snd_note $25, NOTELEN_01
	snd_note $26
	snd_note $27, NOTELEN_CUSTOM, $07
	snd_note $24, NOTELEN_06
	snd_note $24, NOTELEN_03
	snd_note $22
	snd_note $22
	snd_note $21
	snd_note $21
	snd_note $21
	snd_note $24, NOTELEN_09
	snd_note $27, NOTELEN_06
	snd_note $29, NOTELEN_01
	snd_note $2A
	snd_note $2B, NOTELEN_CUSTOM, $07
	snd_note $27, NOTELEN_06
	snd_note $27, NOTELEN_03
	snd_note $24, NOTELEN_06
	snd_note $20, NOTELEN_03
	snd_note $20, NOTELEN_06
	snd_note $23, NOTELEN_01
	snd_note $24, NOTELEN_08
	snd_note $27, NOTELEN_06
	snd_note $23, NOTELEN_01
	snd_note $24
	snd_note $25, NOTELEN_CUSTOM, $07
	snd_note $20, NOTELEN_06
	snd_note $20, NOTELEN_03
	snd_note $19, NOTELEN_06
	snd_note $1B, NOTELEN_03
	snd_note $1B, NOTELEN_06
	snd_note $1E, NOTELEN_01
	snd_note $1F, NOTELEN_08
	snd_note $22, NOTELEN_06
	snd_note $27, NOTELEN_0C
	snd_note $1C
	snd_note $1B, NOTELEN_06
	snd_note $1B, NOTELEN_03
	snd_note $1E, NOTELEN_01
	snd_note $1F, NOTELEN_08
	snd_note $22, NOTELEN_06
	snd_note $25, NOTELEN_01
	snd_note $26
	snd_note $27, NOTELEN_CUSTOM, $07
	snd_note $24, NOTELEN_06
	snd_note $24, NOTELEN_03
	snd_note $22
	snd_note $22
	snd_note $21
	snd_note $21
	snd_note $21
	snd_note $24, NOTELEN_09
	snd_note $27, NOTELEN_06
	snd_note $29, NOTELEN_01
	snd_note $2A
	snd_note $2B, NOTELEN_CUSTOM, $07
	snd_note $27, NOTELEN_06
	snd_note $27, NOTELEN_03
	snd_note $24, NOTELEN_06
	snd_inc_base_note 12
	snd_note $1D, NOTELEN_03
	snd_note $1D, NOTELEN_06
	snd_note $20, NOTELEN_09
	snd_note $21, NOTELEN_06
	snd_note $22, NOTELEN_09
	snd_note $16
	snd_note $19, NOTELEN_02
	snd_note $1A, NOTELEN_04
	snd_note $1B, NOTELEN_03
	snd_note $1B, NOTELEN_06
	snd_note $1E, NOTELEN_01
	snd_note $1F, NOTELEN_08
	snd_note $22, NOTELEN_06
	snd_note $27, NOTELEN_0C
	snd_note $27
	snd_note $1B, NOTELEN_03
	snd_note $1B
	snd_note $17
	snd_note $18
	snd_note $1B, NOTELEN_0C
	snd_note $1E, NOTELEN_09
	snd_note $1D, NOTELEN_03
	snd_note $1C
	snd_note $1D
	snd_note $18, NOTELEN_06
	snd_note $1B, NOTELEN_03
	snd_note $1B
	snd_note $17
	snd_note $18
	snd_note $1B, NOTELEN_0C
	snd_note $13, NOTELEN_09
	snd_note $14, NOTELEN_03
	snd_note $13
	snd_note $14
	snd_note $16, NOTELEN_06
	snd_note $1B, NOTELEN_03
	snd_note $1B
	snd_note $17
	snd_note $18
	snd_note $1B, NOTELEN_0C
	snd_note $1E, NOTELEN_09
	snd_note $1D, NOTELEN_03
	snd_note $1C
	snd_note $1D
	snd_note $18, NOTELEN_06
	snd_note $1B, NOTELEN_03
	snd_note $1B
	snd_note $17
	snd_note $18
	snd_note $1B, NOTELEN_0C
	snd_note $22, NOTELEN_09
	snd_note $1F, NOTELEN_03
	snd_note $1E
	snd_note $1F
	snd_note $18, NOTELEN_06
	snd_note $1B, NOTELEN_03
	snd_note $1B
	snd_note $17
	snd_note $18
	snd_note $1B, NOTELEN_0C
	snd_note $1E, NOTELEN_09
	snd_note $1D, NOTELEN_03
	snd_note $1C
	snd_note $1D
	snd_note $18, NOTELEN_06
	snd_note $1B, NOTELEN_03
	snd_note $1B
	snd_note $17
	snd_note $18
	snd_note $1B, NOTELEN_0C
	snd_note $13, NOTELEN_09
	snd_note $14, NOTELEN_03
	snd_note $13
	snd_note $14
	snd_note $16, NOTELEN_06
	snd_note $1B, NOTELEN_03
	snd_note $1B
	snd_note $17
	snd_note $18
	snd_note $1B, NOTELEN_0C
	snd_note $1E, NOTELEN_09
	snd_note $1D, NOTELEN_03
	snd_note $1C
	snd_note $1D
	snd_note $18, NOTELEN_06
	snd_note $00
	snd_note $22, NOTELEN_09
	snd_note $1E, NOTELEN_03
	snd_note $1F, NOTELEN_06
	snd_note $1B
	snd_note $00, NOTELEN_12
	snd_inc_base_note -12
	snd_note $1B, NOTELEN_06
	snd_note $1B, NOTELEN_03
	snd_note $1E, NOTELEN_01
	snd_note $1F, NOTELEN_08
	snd_note $22, NOTELEN_06
	snd_note $25, NOTELEN_01
	snd_note $26
	snd_note $27, NOTELEN_CUSTOM, $07
	snd_note $24, NOTELEN_06
	snd_note $24, NOTELEN_03
	snd_note $22
	snd_note $22
	snd_note $21
	snd_note $21
	snd_note $21
	snd_note $24, NOTELEN_09
	snd_note $27, NOTELEN_06
	snd_note $29, NOTELEN_01
	snd_note $2A
	snd_note $2B, NOTELEN_CUSTOM, $07
	snd_note $27, NOTELEN_06
	snd_note $27, NOTELEN_03
	snd_note $24, NOTELEN_06
	snd_note $20, NOTELEN_03
	snd_note $20, NOTELEN_06
	snd_note $23, NOTELEN_01
	snd_note $24, NOTELEN_08
	snd_note $27, NOTELEN_06
	snd_note $25, NOTELEN_03
	snd_note $23, NOTELEN_06
	snd_note $22
	snd_note $20
	snd_note $19, NOTELEN_03
	snd_note $1B
	snd_note $1B, NOTELEN_06
	snd_note $1E, NOTELEN_01
	snd_note $1F, NOTELEN_08
	snd_note $22, NOTELEN_06
	snd_note $27, NOTELEN_0C
	snd_note $1C
	snd_note $1B, NOTELEN_06
	snd_note $1B, NOTELEN_03
	snd_note $1E, NOTELEN_01
	snd_note $1F, NOTELEN_08
	snd_note $22, NOTELEN_06
	snd_note $25, NOTELEN_01
	snd_note $26
	snd_note $27, NOTELEN_CUSTOM, $07
	snd_note $24, NOTELEN_09
	snd_note $27, NOTELEN_03
	snd_note $28
	snd_note $28, NOTELEN_01
	snd_note $29, NOTELEN_08
	snd_note $24, NOTELEN_09
	snd_note $27, NOTELEN_03
	snd_note $29
	snd_note $2A, NOTELEN_02
	snd_note $2B, NOTELEN_CUSTOM, $07
	snd_note $27, NOTELEN_09
	snd_note $24, NOTELEN_06
	snd_note $1D, NOTELEN_03
	snd_note $1D, NOTELEN_06
	snd_note $1F, NOTELEN_01
	snd_note $20, NOTELEN_08
	snd_note $21, NOTELEN_06
	snd_note $20, NOTELEN_01
	snd_note $21
	snd_note $22, NOTELEN_CUSTOM, $07
	snd_note $16, NOTELEN_09
	snd_note $1A, NOTELEN_06
	snd_note $1B, NOTELEN_03
	snd_note $1B, NOTELEN_06
	snd_note $1E, NOTELEN_01
	snd_note $1F, NOTELEN_08
	snd_note $22, NOTELEN_06
	snd_note $27, NOTELEN_0C
	snd_note $27
	snd_inc_base_note 12
	snd_inc_base_note -12
	snd_note $21, NOTELEN_01
	snd_note $22, NOTELEN_08
	snd_note $25, NOTELEN_09
	snd_note $29, NOTELEN_06
	snd_note $2E, NOTELEN_01
	snd_note $2F
	snd_note $30, NOTELEN_CUSTOM, $07
	snd_note $2E, NOTELEN_09
	snd_note $2C, NOTELEN_06
	snd_note $2A, NOTELEN_01
	snd_note $2B, NOTELEN_08
	snd_note $27, NOTELEN_09
	snd_note $22, NOTELEN_18
	snd_note $1A, NOTELEN_01
	snd_note $1B, NOTELEN_CUSTOM, $05
	snd_note $1F, NOTELEN_01
	snd_note $20, NOTELEN_08
	snd_note $24, NOTELEN_09
	snd_note $27, NOTELEN_06
	snd_note $2D, NOTELEN_01
	snd_note $2E, NOTELEN_08
	snd_note $2C, NOTELEN_09
	snd_note $2B, NOTELEN_06
	snd_note $28, NOTELEN_01
	snd_note $29, NOTELEN_08
	snd_note $24, NOTELEN_09
	snd_note $1D, NOTELEN_12
	snd_note $1B, NOTELEN_01
	snd_note $1C
	snd_note $1D, NOTELEN_CUSTOM, $0A
	snd_note $21, NOTELEN_01
	snd_note $22, NOTELEN_08
	snd_note $25, NOTELEN_09
	snd_note $29, NOTELEN_06
	snd_note $2E, NOTELEN_01
	snd_note $2F
	snd_note $30, NOTELEN_CUSTOM, $07
	snd_note $2E, NOTELEN_09
	snd_note $2C, NOTELEN_06
	snd_note $2A, NOTELEN_01
	snd_note $2B, NOTELEN_08
	snd_note $27, NOTELEN_09
	snd_note $22, NOTELEN_18
	snd_note $1A, NOTELEN_01
	snd_note $1B, NOTELEN_CUSTOM, $05
	snd_note $1F, NOTELEN_01
	snd_note $20, NOTELEN_08
	snd_note $24, NOTELEN_09
	snd_note $27, NOTELEN_06
	snd_note $2D, NOTELEN_01
	snd_note $2E, NOTELEN_08
	snd_note $2C, NOTELEN_09
	snd_note $2B, NOTELEN_06
	snd_note $2A, NOTELEN_01
	snd_note $2B, NOTELEN_08
	snd_note $27, NOTELEN_09
	snd_note $24, NOTELEN_12
	snd_note $19, NOTELEN_01
	snd_note $1A
	snd_note $1B, NOTELEN_CUSTOM, $0A
	snd_note $24, NOTELEN_01
	snd_note $25, NOTELEN_CUSTOM, $17
	snd_note $23, NOTELEN_01
	snd_note $24, NOTELEN_CUSTOM, $17
	snd_note $21, NOTELEN_01
	snd_note $22, NOTELEN_CUSTOM, $17
	snd_note $1A, NOTELEN_01
	snd_note $1B, NOTELEN_CUSTOM, $17
	snd_inc_base_note 12
	snd_note $12, NOTELEN_09
	snd_note $19
	snd_note $1E, NOTELEN_06
	snd_note $1F, NOTELEN_01
	snd_note $20, NOTELEN_08
	snd_note $12, NOTELEN_09
	snd_note $19, NOTELEN_06
	snd_note $14, NOTELEN_09
	snd_note $1B
	snd_note $20, NOTELEN_06
	snd_note $24, NOTELEN_03
	snd_note $23, NOTELEN_06
	snd_note $21, NOTELEN_01
	snd_note $22, NOTELEN_08
	snd_note $20, NOTELEN_03
	snd_note $1F
	snd_note $1E, NOTELEN_09
	snd_note $19
	snd_note $1E
	snd_note $1F, NOTELEN_01
	snd_note $20, NOTELEN_08
	snd_note $12, NOTELEN_06
	snd_note $13
	snd_note $14, NOTELEN_09
	snd_note $16
	snd_note $18, NOTELEN_06
	snd_note $18, NOTELEN_03
	snd_note $17, NOTELEN_01
	snd_note $18, NOTELEN_08
	snd_note $19, NOTELEN_06
	snd_note $1A
	snd_jp SndData_0B_Ch2
SndData_0B_Ch1:
	snd_duty SNDDUTY_25, $00
	snd_note $36, NOTELEN_01
	snd_note $37, NOTELEN_CUSTOM, $05
	snd_note $37, NOTELEN_03
	snd_note $37, NOTELEN_06
	snd_note $2E
	snd_note $33
	snd_note $33, NOTELEN_03
	snd_note $2E, NOTELEN_06
	snd_note $30
	snd_note $33
	snd_note $37
	snd_note $37, NOTELEN_03
	snd_note $37, NOTELEN_06
	snd_note $30
	snd_note $33
	snd_note $33, NOTELEN_03
	snd_note $2D, NOTELEN_06
	snd_note $30
	snd_note $33
	snd_note $33
	snd_note $33, NOTELEN_03
	snd_note $33, NOTELEN_06
	snd_note $30
	snd_note $30, NOTELEN_03
	snd_note $35, NOTELEN_06
	snd_note $35, NOTELEN_03
	snd_note $35, NOTELEN_06
	snd_note $33
	snd_note $2F, NOTELEN_03
	snd_note $3A, NOTELEN_06
	snd_note $3A, NOTELEN_03
	snd_note $36, NOTELEN_01
	snd_note $37, NOTELEN_CUSTOM, $05
	snd_note $33, NOTELEN_09
	snd_note $2E, NOTELEN_0C
	snd_note $3B, NOTELEN_02
	snd_note $3B
	snd_note $3B
	snd_note $3B
	snd_note $3B
	snd_note $3B
	snd_note $37, NOTELEN_06
	snd_note $36, NOTELEN_03
	snd_note $37, NOTELEN_06
	snd_note $2E
	snd_note $33
	snd_note $33, NOTELEN_03
	snd_note $2E, NOTELEN_06
	snd_note $30
	snd_note $33
	snd_note $37
	snd_note $3C, NOTELEN_03
	snd_note $37, NOTELEN_06
	snd_note $30
	snd_note $33
	snd_note $33, NOTELEN_03
	snd_note $2D, NOTELEN_06
	snd_note $30
	snd_note $33
	snd_note $33
	snd_note $33, NOTELEN_03
	snd_note $33, NOTELEN_06
	snd_note $30
	snd_note $30, NOTELEN_03
	snd_note $33, NOTELEN_06
	snd_note $33, NOTELEN_03
	snd_note $33, NOTELEN_06
	snd_note $30
	snd_note $2C, NOTELEN_03
	snd_note $3A, NOTELEN_06
	snd_note $3A, NOTELEN_03
	snd_note $36, NOTELEN_01
	snd_note $37, NOTELEN_CUSTOM, $05
	snd_note $33, NOTELEN_09
	snd_note $33, NOTELEN_0C
	snd_note $33, NOTELEN_02
	snd_note $33
	snd_note $33
	snd_note $33
	snd_note $33
	snd_note $33
	snd_duty SNDDUTY_12, $00
	snd_note $33, NOTELEN_03
	snd_note $33
	snd_note $30, NOTELEN_06
	snd_note $33, NOTELEN_0C
	snd_note $35, NOTELEN_01
	snd_note $36, NOTELEN_08
	snd_note $35, NOTELEN_09
	snd_note $30, NOTELEN_06
	snd_note $33, NOTELEN_03
	snd_note $33
	snd_note $30, NOTELEN_06
	snd_note $33, NOTELEN_0C
	snd_note $2A, NOTELEN_01
	snd_note $2B, NOTELEN_08
	snd_note $2C, NOTELEN_09
	snd_note $2E, NOTELEN_06
	snd_note $33, NOTELEN_03
	snd_note $33
	snd_note $30, NOTELEN_06
	snd_note $33, NOTELEN_0C
	snd_note $35, NOTELEN_01
	snd_note $36, NOTELEN_08
	snd_note $35, NOTELEN_09
	snd_note $30, NOTELEN_06
	snd_note $33, NOTELEN_03
	snd_note $33
	snd_note $30, NOTELEN_06
	snd_note $33, NOTELEN_CUSTOM, $0A
	snd_note $37, NOTELEN_01
	snd_note $38
	snd_note $39
	snd_note $3A, NOTELEN_08
	snd_note $37, NOTELEN_09
	snd_note $30, NOTELEN_06
	snd_note $33, NOTELEN_03
	snd_note $33
	snd_note $30, NOTELEN_06
	snd_note $33, NOTELEN_0C
	snd_note $35, NOTELEN_01
	snd_note $36, NOTELEN_08
	snd_note $35, NOTELEN_09
	snd_note $30, NOTELEN_06
	snd_note $33, NOTELEN_03
	snd_note $33
	snd_note $30, NOTELEN_06
	snd_note $33, NOTELEN_0C
	snd_note $2A, NOTELEN_01
	snd_note $2B, NOTELEN_08
	snd_note $2C, NOTELEN_09
	snd_note $2E, NOTELEN_06
	snd_note $33, NOTELEN_03
	snd_note $33
	snd_note $30, NOTELEN_06
	snd_note $33, NOTELEN_0C
	snd_note $35, NOTELEN_01
	snd_note $36, NOTELEN_08
	snd_note $35, NOTELEN_09
	snd_note $30, NOTELEN_06
	snd_note $00
	snd_note $3A, NOTELEN_09
	snd_note $36, NOTELEN_01
	snd_note $37, NOTELEN_08
	snd_note $33, NOTELEN_18
	snd_duty SNDDUTY_25, $00
	snd_note $36, NOTELEN_01
	snd_note $37, NOTELEN_CUSTOM, $05
	snd_note $37, NOTELEN_03
	snd_note $37, NOTELEN_06
	snd_note $2E
	snd_note $33
	snd_note $33, NOTELEN_03
	snd_note $2E, NOTELEN_06
	snd_note $30
	snd_note $33
	snd_note $37
	snd_note $37, NOTELEN_03
	snd_note $37, NOTELEN_06
	snd_note $30
	snd_note $33
	snd_note $33, NOTELEN_03
	snd_note $2D, NOTELEN_06
	snd_note $30
	snd_note $33
	snd_note $33
	snd_note $33, NOTELEN_03
	snd_note $33, NOTELEN_06
	snd_note $30
	snd_note $30, NOTELEN_03
	snd_note $35, NOTELEN_06
	snd_note $35, NOTELEN_03
	snd_note $35, NOTELEN_06
	snd_note $33
	snd_note $2F, NOTELEN_03
	snd_note $3A, NOTELEN_06
	snd_note $3A, NOTELEN_03
	snd_duty SNDDUTY_12, $00
	snd_note $2A, NOTELEN_01
	snd_note $2B, NOTELEN_CUSTOM, $05
	snd_note $27, NOTELEN_09
	snd_note $22, NOTELEN_03
	snd_note $00, NOTELEN_09
	snd_duty SNDDUTY_25, $00
	snd_note $3B, NOTELEN_02
	snd_note $3B
	snd_note $3B
	snd_note $3B
	snd_note $3B
	snd_note $3B
	snd_note $37, NOTELEN_06
	snd_note $36, NOTELEN_03
	snd_note $37, NOTELEN_06
	snd_note $2E
	snd_note $33
	snd_note $33, NOTELEN_03
	snd_note $2E, NOTELEN_06
	snd_note $30
	snd_note $33
	snd_note $37
	snd_note $3C, NOTELEN_03
	snd_note $37, NOTELEN_06
	snd_note $30
	snd_note $33
	snd_note $33, NOTELEN_03
	snd_note $2D, NOTELEN_06
	snd_note $30
	snd_note $33
	snd_note $33
	snd_note $33, NOTELEN_03
	snd_note $33, NOTELEN_06
	snd_note $30
	snd_note $30, NOTELEN_03
	snd_note $33, NOTELEN_06
	snd_note $33, NOTELEN_03
	snd_note $33, NOTELEN_06
	snd_note $30
	snd_note $2C, NOTELEN_03
	snd_note $3A, NOTELEN_06
	snd_duty SNDDUTY_50, $00
	snd_inc_vol -2
	snd_note $2E, NOTELEN_03
	snd_note $30
	snd_note $33
	snd_note $30
	snd_note $2E
	snd_note $30
	snd_note $27, NOTELEN_0C
	snd_duty SNDDUTY_50, $00
	snd_inc_vol -1
	snd_note $33, NOTELEN_02
	snd_note $33
	snd_note $33
	snd_note $33
	snd_note $33, NOTELEN_04
	snd_note $38, NOTELEN_02
	snd_note $3C
	snd_inc_vol -1
	snd_note $38
	snd_note $3C
	snd_inc_vol -1
	snd_note $38
	snd_note $3C
	snd_inc_vol -1
	snd_note $38
	snd_note $3C
	snd_note $38
	snd_note $3C
	snd_note $38
	snd_note $3C
	snd_note $38
	snd_note $3C
	snd_note $38
	snd_note $3C
	snd_note $38
	snd_note $3C
	snd_note $38
	snd_note $3C
	snd_note $38
	snd_note $3C
	snd_note $38
	snd_note $3C
	snd_inc_vol 3
	snd_var iSndChInfo_LoopTimer0, $02
	.loop:
		snd_note $37
		snd_note $3C
		snd_inc_vol -1
		snd_note $37
		snd_note $3C
		snd_inc_vol -1
		snd_note $37
		snd_note $3C
		snd_inc_vol -1
		snd_note $37
		snd_note $3C
		snd_note $37
		snd_note $3C
		snd_note $37
		snd_note $3C
		snd_note $37
		snd_note $3C
		snd_note $37
		snd_note $3C
		snd_note $37
		snd_note $3C
		snd_note $37
		snd_note $3C
		snd_note $37
		snd_note $3C
		snd_note $37
		snd_note $3C
		snd_inc_vol 3
		snd_djnz iSndChInfo_LoopTimer0, .loop
	snd_note $33
	snd_note $37
	snd_inc_vol -1
	snd_note $33
	snd_note $37
	snd_inc_vol -1
	snd_note $33
	snd_note $37
	snd_inc_vol -1
	snd_note $33
	snd_note $37
	snd_note $33
	snd_note $37
	snd_note $33
	snd_note $37
	snd_note $33
	snd_note $37
	snd_note $33
	snd_note $37
	snd_note $33
	snd_note $37
	snd_note $33
	snd_note $37
	snd_note $33
	snd_note $37
	snd_note $33
	snd_note $37
	snd_inc_vol 3
	snd_note $38
	snd_note $3C
	snd_inc_vol -1
	snd_note $38
	snd_note $3C
	snd_inc_vol -1
	snd_note $38
	snd_note $3C
	snd_inc_vol -1
	snd_note $38
	snd_note $3C
	snd_note $38
	snd_note $3C
	snd_note $38
	snd_note $3C
	snd_note $38
	snd_note $3C
	snd_note $38
	snd_note $3C
	snd_note $38
	snd_note $3C
	snd_note $38
	snd_note $3C
	snd_note $38
	snd_note $3C
	snd_note $38
	snd_note $3C
	snd_inc_vol 3
	snd_note $37
	snd_inc_vol -1
	snd_note $3C
	snd_inc_vol -1
	snd_note $37
	snd_inc_vol -1
	snd_note $3C
	snd_note $37
	snd_note $3C
	snd_note $37
	snd_note $3C
	snd_note $37
	snd_note $3C
	snd_note $37
	snd_note $3C
	snd_note $37
	snd_note $3C
	snd_note $37
	snd_note $3C
	snd_note $37
	snd_note $3C
	snd_note $37
	snd_note $3C
	snd_note $37
	snd_note $3C
	snd_note $37
	snd_note $3C
	snd_inc_vol 3
	snd_note $3C
	snd_inc_vol -1
	snd_note $3F
	snd_inc_vol -1
	snd_note $3C
	snd_inc_vol -1
	snd_note $3F
	snd_note $3C
	snd_note $3F
	snd_note $3C
	snd_note $3F
	snd_note $3C
	snd_note $3F
	snd_note $3C
	snd_note $3F
	snd_note $3C
	snd_note $3F
	snd_note $3C
	snd_note $3F
	snd_note $3C
	snd_note $3F
	snd_note $3C
	snd_note $3F
	snd_note $3C
	snd_note $3F
	snd_note $3C
	snd_note $3F
	snd_inc_vol 3
	snd_note $37
	snd_inc_vol -1
	snd_note $3C
	snd_inc_vol -1
	snd_note $37
	snd_inc_vol -1
	snd_note $3C
	snd_note $37
	snd_note $3C
	snd_note $37
	snd_note $3C
	snd_note $37
	snd_note $3C
	snd_note $37
	snd_note $3C
	snd_note $33
	snd_note $37
	snd_note $33
	snd_note $37
	snd_note $33
	snd_note $37
	snd_note $36
	snd_note $3D
	snd_note $36
	snd_note $3D
	snd_note $36
	snd_note $3D
	snd_inc_vol 3
	snd_note $38
	snd_inc_vol -1
	snd_note $3C
	snd_inc_vol -1
	snd_note $38
	snd_inc_vol -1
	snd_note $3C
	snd_note $38
	snd_note $3C
	snd_note $38
	snd_note $3C
	snd_note $38
	snd_note $3C
	snd_note $38
	snd_note $3C
	snd_note $37
	snd_note $3A
	snd_note $37
	snd_note $3A
	snd_note $37
	snd_note $3A
	snd_note $37
	snd_note $3A
	snd_note $37
	snd_inc_vol 1
	snd_note $3A
	snd_inc_vol 1
	snd_note $37
	snd_inc_vol 1
	snd_note $3A
	snd_note $35
	snd_inc_vol -1
	snd_note $38
	snd_inc_vol -1
	snd_note $35
	snd_inc_vol -1
	snd_note $38
	snd_note $35
	snd_note $38
	snd_note $35
	snd_note $38
	snd_note $35
	snd_note $38
	snd_note $35
	snd_note $38
	snd_note $35
	snd_note $38
	snd_note $35
	snd_note $38
	snd_note $35
	snd_note $38
	snd_note $35
	snd_note $38
	snd_note $35
	snd_inc_vol 1
	snd_note $38
	snd_inc_vol 1
	snd_note $35
	snd_inc_vol 1
	snd_note $38
	snd_inc_vol 3
	snd_note $2A, NOTELEN_06
	snd_note $2E, NOTELEN_09
	snd_note $2A, NOTELEN_06
	snd_note $2E
	snd_note $2A, NOTELEN_09
	snd_note $2E, NOTELEN_06
	snd_note $2A
	snd_note $2C
	snd_note $30, NOTELEN_09
	snd_note $2C, NOTELEN_06
	snd_note $30
	snd_note $2C
	snd_note $30, NOTELEN_03
	snd_note $30, NOTELEN_06
	snd_note $2C
	snd_note $2A
	snd_note $2E, NOTELEN_09
	snd_note $2A, NOTELEN_06
	snd_note $2E
	snd_note $2A, NOTELEN_09
	snd_note $2E, NOTELEN_06
	snd_note $2A
	snd_duty SNDDUTY_50, $00
	snd_note $38
	snd_note $38, NOTELEN_03
	snd_note $38, NOTELEN_CUSTOM, $0F
	snd_note $38, NOTELEN_03
	snd_note $38, NOTELEN_06
	snd_note $38, NOTELEN_09
	snd_note $38, NOTELEN_06
	snd_jp SndData_0B_Ch1
SndData_0B_Ch4:
	snd_call .sub0
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_01, NOTELEN_0C
	snd_noteex PRESET_00
	snd_call .sub0
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_00, NOTELEN_01
	snd_noteex PRESET_00
	snd_noteex PRESET_00
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_00
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_00, NOTELEN_0C
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_01, NOTELEN_06
	snd_noteex PRESET_01, NOTELEN_03
	snd_noteex PRESET_02
	snd_noteex PRESET_00, NOTELEN_09
	snd_noteex PRESET_00, NOTELEN_01
	snd_noteex PRESET_00
	snd_noteex PRESET_00
	snd_noteex PRESET_01, NOTELEN_03
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_01, NOTELEN_03
	snd_noteex PRESET_00
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_02, NOTELEN_03
	snd_noteex PRESET_00
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_01, NOTELEN_03
	snd_noteex PRESET_00
	snd_noteex PRESET_01, NOTELEN_06
	snd_noteex PRESET_01, NOTELEN_03
	snd_noteex PRESET_02
	snd_noteex PRESET_00, NOTELEN_09
	snd_noteex PRESET_00, NOTELEN_01
	snd_noteex PRESET_00
	snd_noteex PRESET_00
	snd_noteex PRESET_01, NOTELEN_03
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_01, NOTELEN_03
	snd_noteex PRESET_00
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_02, NOTELEN_03
	snd_noteex PRESET_00
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_00
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_01, NOTELEN_06
	snd_noteex PRESET_01, NOTELEN_03
	snd_noteex PRESET_02
	snd_noteex PRESET_00, NOTELEN_09
	snd_noteex PRESET_00, NOTELEN_01
	snd_noteex PRESET_00
	snd_noteex PRESET_00
	snd_noteex PRESET_01, NOTELEN_03
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_01, NOTELEN_03
	snd_noteex PRESET_00
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_02, NOTELEN_03
	snd_noteex PRESET_00
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_01, NOTELEN_03
	snd_noteex PRESET_00
	snd_noteex PRESET_01, NOTELEN_06
	snd_noteex PRESET_01, NOTELEN_03
	snd_noteex PRESET_02
	snd_noteex PRESET_00, NOTELEN_09
	snd_noteex PRESET_00, NOTELEN_01
	snd_noteex PRESET_00
	snd_noteex PRESET_00
	snd_noteex PRESET_01, NOTELEN_03
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_01, NOTELEN_03
	snd_noteex PRESET_00
	snd_noteex PRESET_01, NOTELEN_06
	snd_noteex PRESET_00
	snd_noteex PRESET_02, NOTELEN_03
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_02, NOTELEN_03
	snd_noteex PRESET_00, NOTELEN_CUSTOM, $0F
	snd_noteex PRESET_00, NOTELEN_01
	snd_noteex PRESET_00
	snd_noteex PRESET_00
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_00
	snd_call .sub0
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_01, NOTELEN_0C
	snd_noteex PRESET_00
	snd_call .sub0
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_00, NOTELEN_01
	snd_noteex PRESET_00
	snd_noteex PRESET_00
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_00
	snd_noteex PRESET_01
	snd_noteex PRESET_00, NOTELEN_01
	snd_noteex PRESET_00
	snd_noteex PRESET_00
	snd_noteex PRESET_00, NOTELEN_0C
	snd_noteex PRESET_00
	snd_noteex PRESET_01, NOTELEN_06
	snd_noteex PRESET_02, NOTELEN_03
	snd_noteex PRESET_01
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_01
	snd_noteex PRESET_01
	snd_noteex PRESET_02, NOTELEN_03
	snd_noteex PRESET_01
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_01
	snd_noteex PRESET_01
	snd_noteex PRESET_02, NOTELEN_03
	snd_noteex PRESET_01
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_01
	snd_noteex PRESET_01
	snd_noteex PRESET_02, NOTELEN_03
	snd_noteex PRESET_01
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_01
	snd_noteex PRESET_01
	snd_noteex PRESET_02, NOTELEN_03
	snd_noteex PRESET_01
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_01
	snd_noteex PRESET_01
	snd_noteex PRESET_02, NOTELEN_03
	snd_noteex PRESET_01
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_01
	snd_noteex PRESET_01
	snd_noteex PRESET_02, NOTELEN_03
	snd_noteex PRESET_01
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_01
	snd_noteex PRESET_01, NOTELEN_03
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_01, NOTELEN_03
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_01
	snd_noteex PRESET_01
	snd_noteex PRESET_02, NOTELEN_03
	snd_noteex PRESET_01
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_01
	snd_noteex PRESET_01
	snd_noteex PRESET_02, NOTELEN_03
	snd_noteex PRESET_01
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_01
	snd_noteex PRESET_01
	snd_noteex PRESET_02, NOTELEN_03
	snd_noteex PRESET_01
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_01
	snd_noteex PRESET_01
	snd_noteex PRESET_02, NOTELEN_03
	snd_noteex PRESET_01
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_01
	snd_noteex PRESET_01
	snd_noteex PRESET_02, NOTELEN_03
	snd_noteex PRESET_01
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_01
	snd_noteex PRESET_01
	snd_noteex PRESET_02, NOTELEN_03
	snd_noteex PRESET_01
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_01
	snd_noteex PRESET_01
	snd_noteex PRESET_02, NOTELEN_03
	snd_noteex PRESET_01
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_01
	snd_noteex PRESET_01, NOTELEN_03
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_01, NOTELEN_03
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_01, NOTELEN_0C
	snd_noteex PRESET_00
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_02, NOTELEN_03
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_00, NOTELEN_03
	snd_call .sub0
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_01, NOTELEN_03
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_00
	snd_jp SndData_0B_Ch4
.sub0:
	snd_var iSndChInfo_LoopTimer0, $03
	.sub0loop0:
		snd_noteex PRESET_01, NOTELEN_03
		snd_noteex PRESET_02
		snd_noteex PRESET_02
		snd_noteex PRESET_01
		snd_noteex PRESET_00
		snd_noteex PRESET_02
		snd_noteex PRESET_01
		snd_noteex PRESET_02
		snd_noteex PRESET_01
		snd_noteex PRESET_02
		snd_noteex PRESET_02
		snd_noteex PRESET_01
		snd_noteex PRESET_00
		snd_noteex PRESET_02
		snd_noteex PRESET_01
		snd_noteex PRESET_02
		snd_djnz iSndChInfo_LoopTimer0, .sub0loop0
	snd_ret
