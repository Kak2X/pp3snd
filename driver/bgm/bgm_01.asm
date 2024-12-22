SndHeader_01:
	db 4 ; Number of slots
.slot0:
	db SNDSLOT0 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_35 ; iSndChInfo_Vibrato
	db -1 ; iSndChInfo_NoteIdBase
	db 113 ; iSndChInfo_Speed
	db SNDCH_WAVE ; iSndChInfo_ChId
	dw SndData_01_Ch3 ; Data pointer
	db $80 ; [PLACEHOLDER] ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot1:
	db SNDSLOT1 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 11 ; iSndChInfo_Vol
	db INSTR_2E ; iSndChInfo_Instrument
	db VIBRATO_35 ; iSndChInfo_Vibrato
	db -25 ; iSndChInfo_NoteIdBase
	db 113 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_01_Ch2 ; Data pointer
	nrx1 SNDDUTY_25, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot2:
	db SNDSLOT2 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 8 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_35 ; iSndChInfo_Vibrato
	db -13 ; iSndChInfo_NoteIdBase
	db 113 ; iSndChInfo_Speed
	db SNDCH_PULSE1 ; iSndChInfo_ChId
	dw SndData_01_Ch1 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot3:
	db SNDSLOT3 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db 0 ; iSndChInfo_NoteIdBase
	db 113 ; iSndChInfo_Speed
	db SNDCH_NOISE ; iSndChInfo_ChId
	dw SndData_01_Ch4 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_01_Ch3:
	snd_wave WAVE_09
	snd_note $00, NOTELEN_09
	snd_note $1E, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $1E, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $22, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $22, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $25, NOTELEN_03
	snd_note $27, NOTELEN_09
	snd_note $2A, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_instrument INSTR_NONE
	snd_inc_freq_offset -1
	snd_note $2A, NOTELEN_CUSTOM, $06
	snd_inc_vol 5
	snd_instrument INSTR_NONE
	snd_inc_freq_offset 1
	snd_note $27, NOTELEN_06
	snd_note $25, NOTELEN_09
	snd_note $22, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_instrument INSTR_NONE
	snd_inc_freq_offset -1
	snd_note $22, NOTELEN_CUSTOM, $06
	snd_inc_vol 5
	snd_instrument INSTR_NONE
	snd_inc_freq_offset 1
	snd_note $25, NOTELEN_06
	snd_note $23
	snd_note $23, NOTELEN_03
	snd_note $23
	snd_note $00
	snd_note $22
	snd_note $00
	snd_note $20
	snd_note $1E, NOTELEN_CUSTOM, $06
	snd_inc_vol -5
	snd_instrument INSTR_NONE
	snd_inc_freq_offset -1
	snd_note $1E, NOTELEN_CUSTOM, $03
	snd_inc_vol 5
	snd_instrument INSTR_NONE
	snd_inc_freq_offset 1
	snd_note $1E, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $1E, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $22, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $22, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $25, NOTELEN_03
	snd_note $27, NOTELEN_09
	snd_note $2A, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_instrument INSTR_NONE
	snd_inc_freq_offset -1
	snd_note $2A, NOTELEN_CUSTOM, $06
	snd_inc_vol 5
	snd_instrument INSTR_NONE
	snd_inc_freq_offset 1
	snd_note $27, NOTELEN_06
	snd_note $25, NOTELEN_09
	snd_note $22, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $22, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $23, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $23, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $24, NOTELEN_03
	snd_note $25, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_instrument INSTR_NONE
	snd_inc_freq_offset -1
	snd_note $25, NOTELEN_CUSTOM, $06
	snd_inc_vol 5
	snd_instrument INSTR_NONE
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_CUSTOM, $0F
	snd_wave WAVE_09
	snd_instrument INSTR_30
	snd_note $00, NOTELEN_06
	snd_note $31, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $31, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $31, NOTELEN_CUSTOM, $06
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $31, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $31, NOTELEN_09
	snd_note $2F, NOTELEN_06
	snd_note $2E
	snd_note $2F
	snd_note $31, NOTELEN_CUSTOM, $0B
	snd_note $34, NOTELEN_01
	snd_note $35, NOTELEN_09
	snd_note $36, NOTELEN_CUSTOM, $1B
	snd_inc_vol -5
	snd_instrument INSTR_NONE
	snd_inc_freq_offset -1
	snd_note $36, NOTELEN_CUSTOM, $06
	snd_inc_vol 5
	snd_instrument INSTR_30
	snd_inc_freq_offset 1
	snd_note $33, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $33, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $31, NOTELEN_03
	snd_note $2F, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $2F, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $2E, NOTELEN_09
	snd_note $2C, NOTELEN_06
	snd_note $2E
	snd_note $2F
	snd_note $31, NOTELEN_CUSTOM, $30
	snd_inc_vol -5
	snd_instrument INSTR_NONE
	snd_inc_freq_offset -1
	snd_note $31, NOTELEN_CUSTOM, $06
	snd_inc_vol 5
	snd_instrument INSTR_30
	snd_inc_freq_offset 1
	snd_note $31, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $31, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $31, NOTELEN_CUSTOM, $06
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $31, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $31, NOTELEN_09
	snd_note $2F, NOTELEN_06
	snd_note $2E
	snd_note $2F
	snd_note $31, NOTELEN_09
	snd_note $32, NOTELEN_01
	snd_note $33
	snd_note $34
	snd_note $35, NOTELEN_09
	snd_note $36, NOTELEN_CUSTOM, $1B
	snd_inc_vol -5
	snd_instrument INSTR_NONE
	snd_inc_freq_offset -1
	snd_note $36, NOTELEN_CUSTOM, $06
	snd_inc_vol 5
	snd_instrument INSTR_30
	snd_inc_freq_offset 1
	snd_note $36, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $36, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $33, NOTELEN_03
	snd_note $2F, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $2F, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $2E, NOTELEN_09
	snd_note $2C, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $2C, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $2A, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $2A, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $2A, NOTELEN_CUSTOM, $36
	snd_inc_vol -5
	snd_instrument INSTR_NONE
	snd_inc_freq_offset -1
	snd_note $2A, NOTELEN_CUSTOM, $06
	snd_inc_vol 5
	snd_instrument INSTR_30
	snd_inc_freq_offset 1
	snd_wave WAVE_10
	snd_instrument INSTR_30
	snd_inc_base_note 12
	snd_vibrato VIBRATO_35
	snd_note $31, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $31, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $31, NOTELEN_CUSTOM, $06
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $31, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $31, NOTELEN_09
	snd_note $2F, NOTELEN_06
	snd_note $2E
	snd_note $2F
	snd_note $31, NOTELEN_09
	snd_note $31, NOTELEN_01
	snd_note $33
	snd_note $34
	snd_note $35, NOTELEN_09
	snd_note $36, NOTELEN_CUSTOM, $1B
	snd_inc_vol -5
	snd_instrument INSTR_NONE
	snd_inc_freq_offset -1
	snd_note $36, NOTELEN_CUSTOM, $06
	snd_inc_vol 5
	snd_instrument INSTR_30
	snd_inc_freq_offset 1
	snd_note $33, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $33, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $31, NOTELEN_03
	snd_note $2F, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $2F, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $2E, NOTELEN_09
	snd_note $2C, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $2C, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $2E, NOTELEN_06
	snd_note $2F
	snd_note $31, NOTELEN_CUSTOM, $30
	snd_inc_vol -5
	snd_instrument INSTR_NONE
	snd_inc_freq_offset -1
	snd_note $31, NOTELEN_CUSTOM, $06
	snd_inc_vol 5
	snd_instrument INSTR_30
	snd_inc_freq_offset 1
	snd_note $31, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $31, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $31, NOTELEN_CUSTOM, $06
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $31, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $31, NOTELEN_09
	snd_note $2F, NOTELEN_06
	snd_note $2E
	snd_note $2F
	snd_note $31, NOTELEN_09
	snd_note $31, NOTELEN_01
	snd_note $33
	snd_note $34
	snd_note $35, NOTELEN_09
	snd_note $36, NOTELEN_CUSTOM, $1B
	snd_inc_vol -5
	snd_instrument INSTR_NONE
	snd_inc_freq_offset -1
	snd_note $36, NOTELEN_CUSTOM, $06
	snd_inc_vol 5
	snd_instrument INSTR_30
	snd_inc_freq_offset 1
	snd_note $36, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $36, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $33, NOTELEN_03
	snd_note $2F, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $2F, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $2E, NOTELEN_09
	snd_note $2C, NOTELEN_06
	snd_note $2A, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $2A, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $2A, NOTELEN_30
	snd_wave WAVE_09
	snd_instrument INSTR_2E
	snd_inc_base_note -12
	snd_note $36, NOTELEN_03
	snd_note $36
	snd_note $36, NOTELEN_06
	snd_end_saveid
SndData_01_Ch2:
	snd_note $1E, NOTELEN_09
	snd_note $22
	snd_note $25, NOTELEN_06
	snd_note $23, NOTELEN_09
	snd_note $27
	snd_note $2A, NOTELEN_06
	snd_note $22, NOTELEN_09
	snd_note $25
	snd_note $29, NOTELEN_06
	snd_note $20, NOTELEN_03
	snd_note $20, NOTELEN_06
	snd_note $19
	snd_note $1D
	snd_note $20, NOTELEN_03
	snd_note $1E, NOTELEN_09
	snd_note $1E, NOTELEN_06
	snd_note $22, NOTELEN_03
	snd_note $25, NOTELEN_06
	snd_note $23, NOTELEN_09
	snd_note $27
	snd_note $2A, NOTELEN_06
	snd_note $22, NOTELEN_03
	snd_note $22, NOTELEN_06
	snd_note $22
	snd_note $1E
	snd_note $1B, NOTELEN_03
	snd_note $19, NOTELEN_0C
	snd_note $25
	snd_note $1E, NOTELEN_09
	snd_note $22
	snd_note $25, NOTELEN_06
	snd_note $23, NOTELEN_09
	snd_note $27
	snd_note $2A, NOTELEN_06
	snd_note $22, NOTELEN_09
	snd_note $25
	snd_note $29, NOTELEN_06
	snd_note $21, NOTELEN_09
	snd_note $24
	snd_note $27, NOTELEN_06
	snd_note $20, NOTELEN_09
	snd_note $23
	snd_note $27, NOTELEN_06
	snd_note $25, NOTELEN_09
	snd_note $20
	snd_note $1D, NOTELEN_06
	snd_note $22, NOTELEN_0C
	snd_note $21
	snd_note $20, NOTELEN_09
	snd_note $25, NOTELEN_03
	snd_note $25, NOTELEN_06
	snd_note $25
	snd_note $1E, NOTELEN_09
	snd_note $22
	snd_note $25, NOTELEN_06
	snd_note $23, NOTELEN_09
	snd_note $27
	snd_note $2A, NOTELEN_06
	snd_note $22, NOTELEN_09
	snd_note $25
	snd_note $29, NOTELEN_06
	snd_note $21, NOTELEN_09
	snd_note $24
	snd_note $27, NOTELEN_06
	snd_note $20, NOTELEN_09
	snd_note $23
	snd_note $27, NOTELEN_06
	snd_note $25, NOTELEN_09
	snd_note $20
	snd_note $25, NOTELEN_06
	snd_note $1E, NOTELEN_09
	snd_note $1E
	snd_note $1E, NOTELEN_06
	snd_note $25, NOTELEN_09
	snd_note $20
	snd_note $25, NOTELEN_06
	snd_note $1E, NOTELEN_09
	snd_note $22
	snd_note $25, NOTELEN_06
	snd_note $23, NOTELEN_09
	snd_note $27
	snd_note $2A, NOTELEN_06
	snd_note $22, NOTELEN_09
	snd_note $25
	snd_note $29, NOTELEN_06
	snd_note $21, NOTELEN_09
	snd_note $24
	snd_note $27, NOTELEN_06
	snd_note $20, NOTELEN_09
	snd_note $23
	snd_note $27, NOTELEN_06
	snd_note $25, NOTELEN_09
	snd_note $20
	snd_note $1D, NOTELEN_06
	snd_note $22, NOTELEN_0C
	snd_note $21
	snd_note $20, NOTELEN_09
	snd_note $25, NOTELEN_03
	snd_note $25, NOTELEN_06
	snd_note $25
	snd_note $1E, NOTELEN_09
	snd_note $22
	snd_note $25, NOTELEN_06
	snd_note $23, NOTELEN_09
	snd_note $27
	snd_note $2A, NOTELEN_06
	snd_note $22, NOTELEN_09
	snd_note $25
	snd_note $29, NOTELEN_06
	snd_note $21, NOTELEN_09
	snd_note $24
	snd_note $27, NOTELEN_06
	snd_note $20, NOTELEN_09
	snd_note $23
	snd_note $27, NOTELEN_06
	snd_note $25, NOTELEN_09
	snd_note $20
	snd_note $25, NOTELEN_06
	snd_note $1E, NOTELEN_09
	snd_note $1E
	snd_note $19
	snd_note $1E
	snd_note $1E, NOTELEN_06
	snd_note $19
	snd_note $1E, NOTELEN_06
	snd_end
SndData_01_Ch1:
	snd_duty SNDDUTY_25, $00
	snd_inc_freq_offset -2
	snd_note $00, NOTELEN_09
	snd_note $2A, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $2A, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $2E, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $2E, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $31, NOTELEN_03
	snd_note $33, NOTELEN_09
	snd_note $36, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_instrument INSTR_NONE
	snd_inc_freq_offset -1
	snd_note $36, NOTELEN_CUSTOM, $06
	snd_inc_vol 5
	snd_instrument INSTR_NONE
	snd_inc_freq_offset 1
	snd_note $33, NOTELEN_06
	snd_note $31, NOTELEN_09
	snd_note $2E, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_instrument INSTR_NONE
	snd_inc_freq_offset -1
	snd_note $2E, NOTELEN_CUSTOM, $06
	snd_inc_vol 5
	snd_instrument INSTR_NONE
	snd_inc_freq_offset 1
	snd_note $31, NOTELEN_06
	snd_note $2F
	snd_note $2F, NOTELEN_03
	snd_note $2F, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $2F, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $2E, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $2E, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $2C, NOTELEN_03
	snd_note $2A, NOTELEN_09
	snd_note $2A, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $2A, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $2E, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $2E, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $31, NOTELEN_03
	snd_note $33, NOTELEN_09
	snd_note $36, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_instrument INSTR_NONE
	snd_inc_freq_offset -1
	snd_note $36, NOTELEN_CUSTOM, $06
	snd_inc_vol 5
	snd_instrument INSTR_NONE
	snd_inc_freq_offset 1
	snd_note $33, NOTELEN_06
	snd_note $31, NOTELEN_09
	snd_note $2E, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $2E, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $2F, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $2F, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $30, NOTELEN_03
	snd_note $31, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_instrument INSTR_NONE
	snd_inc_freq_offset -1
	snd_note $31, NOTELEN_CUSTOM, $06
	snd_inc_vol 5
	snd_instrument INSTR_NONE
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_CUSTOM, $0F
	snd_inc_freq_offset 2
	snd_duty SNDDUTY_25, $00
	snd_instrument INSTR_3B
	snd_note $2E, NOTELEN_CUSTOM, $15
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $2E, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $2F, NOTELEN_CUSTOM, $15
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $2F, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $2E, NOTELEN_CUSTOM, $15
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $2E, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $2D, NOTELEN_CUSTOM, $15
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $2D, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $2C, NOTELEN_CUSTOM, $15
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $2C, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $29, NOTELEN_CUSTOM, $15
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $29, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_duty SNDDUTY_50, $00
	snd_instrument INSTR_33
	snd_inc_base_note 12
	snd_note $35, NOTELEN_0C
	snd_note $34
	snd_note $33
	snd_note $2C
	snd_duty SNDDUTY_25, $00
	snd_instrument INSTR_3B
	snd_inc_base_note -12
	snd_note $2E, NOTELEN_CUSTOM, $15
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $2E, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $2F, NOTELEN_CUSTOM, $15
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $2F, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $2E, NOTELEN_CUSTOM, $15
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $2E, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $2D, NOTELEN_CUSTOM, $15
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $2D, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $2C, NOTELEN_CUSTOM, $15
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $2C, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $29, NOTELEN_CUSTOM, $15
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $29, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $2E, NOTELEN_CUSTOM, $15
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $2E, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $2F, NOTELEN_CUSTOM, $15
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $2F, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $2E, NOTELEN_CUSTOM, $15
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $2E, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $2F, NOTELEN_CUSTOM, $15
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $2F, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $2E, NOTELEN_CUSTOM, $15
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $2E, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $2D, NOTELEN_CUSTOM, $15
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $2D, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $2C, NOTELEN_CUSTOM, $15
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $2C, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $29, NOTELEN_CUSTOM, $15
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $29, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_duty SNDDUTY_12, $00
	snd_instrument INSTR_NONE
	snd_note $00, NOTELEN_02
	snd_note $24, NOTELEN_01
	snd_note $25, NOTELEN_03
	snd_note $27, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $27, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $2A, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $2A, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $27, NOTELEN_06
	snd_note $2A, NOTELEN_03
	snd_note $2B
	snd_note $2C
	snd_note $2D, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $2D, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $2F, NOTELEN_09
	snd_note $31
	snd_note $30, NOTELEN_01
	snd_note $2F
	snd_note $2E
	snd_note $2D
	snd_note $2C
	snd_note $2B
	snd_note $00, NOTELEN_02
	snd_inc_vol -4
	snd_note $30, NOTELEN_01
	snd_note $2F
	snd_note $2E
	snd_note $2D
	snd_inc_vol -1
	snd_note $2C
	snd_note $2B
	snd_note $00, NOTELEN_01
	snd_inc_vol 5
	snd_duty SNDDUTY_25, $00
	snd_instrument INSTR_3B
	snd_note $2F, NOTELEN_CUSTOM, $15
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $2F, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $2E, NOTELEN_CUSTOM, $15
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $2E, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $2D, NOTELEN_CUSTOM, $15
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $2D, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $2C, NOTELEN_CUSTOM, $15
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $2C, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $29, NOTELEN_CUSTOM, $15
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $29, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $2F, NOTELEN_CUSTOM, $06
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $2F, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $2F, NOTELEN_CUSTOM, $06
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $2F, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $2F, NOTELEN_CUSTOM, $06
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $2F, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $2F, NOTELEN_CUSTOM, $06
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $2F, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $2F, NOTELEN_06
	snd_duty SNDDUTY_25, $00
	snd_instrument INSTR_2E
	snd_note $2F, NOTELEN_03
	snd_note $2F
	snd_note $2E, NOTELEN_06
	snd_end
SndData_01_Ch4:
	snd_var iSndChInfo_LoopTimer0, $03
	.loop0:
		snd_noteex PRESET_01, NOTELEN_03
		snd_noteex PRESET_02
		snd_noteex PRESET_02
		snd_noteex PRESET_00
		snd_noteex PRESET_01, NOTELEN_06
		snd_noteex PRESET_02, NOTELEN_03
		snd_noteex PRESET_02
		snd_noteex PRESET_01
		snd_noteex PRESET_02
		snd_noteex PRESET_02
		snd_noteex PRESET_00
		snd_noteex PRESET_01
		snd_noteex PRESET_02
		snd_noteex PRESET_00
		snd_noteex PRESET_02
		snd_djnz iSndChInfo_LoopTimer0, .loop0
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_02, NOTELEN_03
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_00, NOTELEN_09
	snd_noteex PRESET_00, NOTELEN_01
	snd_noteex PRESET_00
	snd_noteex PRESET_00
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_00
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_var iSndChInfo_LoopTimer0, $03
	.loop1:
		snd_noteex PRESET_01
		snd_noteex PRESET_02
		snd_noteex PRESET_02
		snd_noteex PRESET_00
		snd_noteex PRESET_01, NOTELEN_06
		snd_noteex PRESET_02, NOTELEN_03
		snd_noteex PRESET_02
		snd_noteex PRESET_01
		snd_noteex PRESET_02
		snd_noteex PRESET_02
		snd_noteex PRESET_00
		snd_noteex PRESET_01, NOTELEN_06
		snd_noteex PRESET_02, NOTELEN_03
		snd_noteex PRESET_02
		snd_djnz iSndChInfo_LoopTimer0, .loop1
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_01, NOTELEN_06
	snd_noteex PRESET_02, NOTELEN_03
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_var iSndChInfo_LoopTimer0, $02
	.loop2a:
		snd_var iSndChInfo_LoopTimer1, $03
		.loop2b:
			snd_noteex PRESET_01
			snd_noteex PRESET_02
			snd_noteex PRESET_02
			snd_noteex PRESET_00
			snd_noteex PRESET_01, NOTELEN_06
			snd_noteex PRESET_02, NOTELEN_03
			snd_noteex PRESET_02
			snd_noteex PRESET_01
			snd_noteex PRESET_02
			snd_noteex PRESET_02
			snd_noteex PRESET_00
			snd_noteex PRESET_01, NOTELEN_06
			snd_noteex PRESET_02, NOTELEN_03
			snd_noteex PRESET_02
			snd_djnz iSndChInfo_LoopTimer1, .loop2b
		snd_noteex PRESET_01
		snd_noteex PRESET_02
		snd_noteex PRESET_02
		snd_noteex PRESET_00
		snd_noteex PRESET_01, NOTELEN_06
		snd_noteex PRESET_02, NOTELEN_03
		snd_noteex PRESET_02
		snd_noteex PRESET_01
		snd_noteex PRESET_02
		snd_noteex PRESET_02
		snd_noteex PRESET_00
		snd_noteex PRESET_01
		snd_noteex PRESET_02
		snd_noteex PRESET_00
		snd_noteex PRESET_02
		snd_djnz iSndChInfo_LoopTimer0, .loop2a
	snd_var iSndChInfo_LoopTimer0, $03
L08470B:
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_01, NOTELEN_06
	snd_noteex PRESET_02, NOTELEN_03
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_01, NOTELEN_06
	snd_noteex PRESET_02, NOTELEN_03
	snd_noteex PRESET_02
	snd_djnz iSndChInfo_LoopTimer0, L08470B
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_01, NOTELEN_06
	snd_noteex PRESET_02, NOTELEN_03
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_00, NOTELEN_30
	snd_end
