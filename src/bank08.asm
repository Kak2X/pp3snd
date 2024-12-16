SndHeader_01:
	db 4 ; Number of slots
.slot0:
	db SNDSLOT0 ; Slot location
	db SNDX_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_01
	db INSTR_NONE ; iSndChInfo_02
	db VIBRATO_35 ; iSndChInfo_03
	db -1 ; iSndChInfo_04
	db 113 ; iSndChInfo_05
	db SNDCH_WAVE ; iSndChInfo_06
	dw SndData_01_Ch3 ; Data pointer
	db $80 ; [PLACEHOLDER] ; iSndChInfo_09
	db SNDOUT_CHALL ; iSndChInfo_0A
.slot1:
	db SNDSLOT1 ; Slot location
	db SNDX_CH123 ; iSndChInfo_Status
	db 11 ; iSndChInfo_01
	db INSTR_2E ; iSndChInfo_02
	db VIBRATO_35 ; iSndChInfo_03
	db -25 ; iSndChInfo_04
	db 113 ; iSndChInfo_05
	db SNDCH_PULSE2 ; iSndChInfo_06
	dw SndData_01_Ch2 ; Data pointer
	nrx1 SNDDUTY_25, $00 ; iSndChInfo_09
	db SNDOUT_CHALL ; iSndChInfo_0A
.slot2:
	db SNDSLOT2 ; Slot location
	db SNDX_CH123 ; iSndChInfo_Status
	db 8 ; iSndChInfo_01
	db INSTR_NONE ; iSndChInfo_02
	db VIBRATO_35 ; iSndChInfo_03
	db -13 ; iSndChInfo_04
	db 113 ; iSndChInfo_05
	db SNDCH_PULSE1 ; iSndChInfo_06
	dw SndData_01_Ch1 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_09
	db SNDOUT_CHALL ; iSndChInfo_0A
.slot3:
	db SNDSLOT3 ; Slot location
	db SNDX_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_01
	db INSTR_NONE ; iSndChInfo_02
	db VIBRATO_NONE ; iSndChInfo_03
	db 0 ; iSndChInfo_04
	db 113 ; iSndChInfo_05
	db SNDCH_NOISE ; iSndChInfo_06
	dw SndData_01_Ch4 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_09
	db SNDOUT_CHALL ; iSndChInfo_0A
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
	snd_var iSndChInfo_24, $03
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
		snd_djnz iSndChInfo_24, .loop0
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
	snd_var iSndChInfo_24, $03
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
		snd_djnz iSndChInfo_24, .loop1
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
	snd_var iSndChInfo_24, $02
	.loop2a:
		snd_var iSndChInfo_25, $03
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
			snd_djnz iSndChInfo_25, .loop2b
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
		snd_djnz iSndChInfo_24, .loop2a
	snd_var iSndChInfo_24, $03
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
	snd_djnz iSndChInfo_24, L08470B
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
SndHeader_04:
	db 4 ; Number of slots
.slot0:
	db SNDSLOT0 ; Slot location
	db SNDX_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_01
	db INSTR_40 ; iSndChInfo_02
	db VIBRATO_NONE ; iSndChInfo_03
	db 0 ; iSndChInfo_04
	db 102 ; iSndChInfo_05
	db SNDCH_WAVE ; iSndChInfo_06
	dw SndData_04_Ch3 ; Data pointer
	db $80 ; [PLACEHOLDER] ; iSndChInfo_09
	db SNDOUT_CHALL ; iSndChInfo_0A
.slot1:
	db SNDSLOT1 ; Slot location
	db SNDX_CH123 ; iSndChInfo_Status
	db 13 ; iSndChInfo_01
	db INSTR_2E ; iSndChInfo_02
	db VIBRATO_NONE ; iSndChInfo_03
	db -12 ; iSndChInfo_04
	db 102 ; iSndChInfo_05
	db SNDCH_PULSE1 ; iSndChInfo_06
	dw SndData_04_Ch1 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_09
	db SNDOUT_CHALL ; iSndChInfo_0A
.slot2:
	db SNDSLOT2 ; Slot location
	db SNDX_CH123 ; iSndChInfo_Status
	db 11 ; iSndChInfo_01
	db INSTR_40 ; iSndChInfo_02
	db VIBRATO_NONE ; iSndChInfo_03
	db -12 ; iSndChInfo_04
	db 102 ; iSndChInfo_05
	db SNDCH_PULSE2 ; iSndChInfo_06
	dw SndData_04_Ch2 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_09
	db SNDOUT_CHALL ; iSndChInfo_0A
.slot3:
	db SNDSLOT3 ; Slot location
	db SNDX_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_01
	db INSTR_NONE ; iSndChInfo_02
	db VIBRATO_NONE ; iSndChInfo_03
	db 0 ; iSndChInfo_04
	db 102 ; iSndChInfo_05
	db SNDCH_NOISE ; iSndChInfo_06
	dw SndData_04_Ch4 ; Data pointer
	nrx1 SNDDUTY_12, $00 ; iSndChInfo_09
	db SNDOUT_CHALL ; iSndChInfo_0A
SndData_04_Ch3:
	snd_wave WAVE_08
	snd_note $38, NOTELEN_09
	snd_note $38
	snd_note $39, NOTELEN_06
	snd_note $3B, NOTELEN_09
	snd_note $39
	snd_note $39
	snd_note $38, NOTELEN_03
	snd_note $36, NOTELEN_09
	snd_note $34
	snd_note $38
	snd_note $38
	snd_note $39, NOTELEN_06
	snd_note $3B, NOTELEN_09
	snd_note $39, NOTELEN_CUSTOM, $0F
	snd_note $00, NOTELEN_18
	snd_note $38, NOTELEN_09
	snd_note $38
	snd_note $39, NOTELEN_06
	snd_note $3B, NOTELEN_09
	snd_note $39
	snd_note $39
	snd_note $38, NOTELEN_03
	snd_note $36, NOTELEN_09
	snd_note $34
	snd_note $38
	snd_note $38
	snd_note $39, NOTELEN_06
	snd_note $3B, NOTELEN_09
	snd_note $39, NOTELEN_CUSTOM, $0F
	snd_note $00, NOTELEN_0C
	snd_note $36
	snd_note $38, NOTELEN_09
	snd_note $38
	snd_note $39, NOTELEN_06
	snd_note $3B, NOTELEN_09
	snd_note $39
	snd_note $39
	snd_note $38, NOTELEN_03
	snd_note $36, NOTELEN_09
	snd_note $34
	snd_note $38
	snd_note $38
	snd_note $39, NOTELEN_06
	snd_note $3B, NOTELEN_09
	snd_note $39, NOTELEN_CUSTOM, $0F
	snd_note $00, NOTELEN_18
	snd_note $38, NOTELEN_09
	snd_note $38
	snd_note $39, NOTELEN_06
	snd_note $3B, NOTELEN_09
	snd_note $39
	snd_note $39
	snd_note $38, NOTELEN_03
	snd_note $36, NOTELEN_09
	snd_note $34
	snd_note $38
	snd_note $38
	snd_note $39, NOTELEN_06
	snd_note $3B, NOTELEN_09
	snd_note $39, NOTELEN_CUSTOM, $0F
	snd_note $00, NOTELEN_03
	snd_note $2F, NOTELEN_0C
	snd_note $32, NOTELEN_09
	snd_jp SndData_04_Ch3
SndData_04_Ch1:
	snd_duty SNDDUTY_25, $00
	snd_note $1C, NOTELEN_CUSTOM, $0F
	snd_note $23, NOTELEN_03
	snd_note $28, NOTELEN_06
	snd_note $1C, NOTELEN_09
	snd_note $1A, NOTELEN_0C
	snd_note $00, NOTELEN_06
	snd_note $21, NOTELEN_03
	snd_note $26, NOTELEN_09
	snd_note $1A
	snd_note $1C, NOTELEN_CUSTOM, $0F
	snd_note $23, NOTELEN_03
	snd_note $28, NOTELEN_06
	snd_note $1C, NOTELEN_09
	snd_note $1A, NOTELEN_03
	snd_note $00, NOTELEN_0C
	snd_note $00, NOTELEN_18
	snd_note $1C, NOTELEN_CUSTOM, $0F
	snd_note $23, NOTELEN_03
	snd_note $28, NOTELEN_06
	snd_note $1C, NOTELEN_09
	snd_note $1A, NOTELEN_0C
	snd_note $00, NOTELEN_06
	snd_note $21, NOTELEN_03
	snd_note $26, NOTELEN_09
	snd_note $1A
	snd_note $1C, NOTELEN_CUSTOM, $0F
	snd_note $23, NOTELEN_03
	snd_note $28, NOTELEN_06
	snd_note $1C, NOTELEN_09
	snd_note $1A
	snd_note $19, NOTELEN_03
	snd_note $17
	snd_note $17
	snd_note $1A
	snd_note $00, NOTELEN_06
	snd_note $1A, NOTELEN_0C
	snd_note $1C, NOTELEN_CUSTOM, $0F
	snd_note $23, NOTELEN_03
	snd_note $28, NOTELEN_06
	snd_note $1C, NOTELEN_09
	snd_note $1A, NOTELEN_0C
	snd_note $00, NOTELEN_06
	snd_note $21, NOTELEN_03
	snd_note $26, NOTELEN_09
	snd_note $1A
	snd_note $1C, NOTELEN_CUSTOM, $0F
	snd_note $23, NOTELEN_03
	snd_note $28, NOTELEN_06
	snd_note $1C, NOTELEN_09
	snd_note $1A, NOTELEN_03
	snd_note $00, NOTELEN_0C
	snd_note $00, NOTELEN_18
	snd_note $1C, NOTELEN_CUSTOM, $0F
	snd_note $23, NOTELEN_03
	snd_note $28, NOTELEN_06
	snd_note $1C, NOTELEN_09
	snd_note $1A, NOTELEN_0C
	snd_note $00, NOTELEN_06
	snd_note $21, NOTELEN_03
	snd_note $26, NOTELEN_09
	snd_note $21
	snd_note $15, NOTELEN_0C
	snd_note $00, NOTELEN_03
	snd_note $1C
	snd_note $21, NOTELEN_06
	snd_note $15, NOTELEN_09
	snd_note $13
	snd_note $1A, NOTELEN_03
	snd_note $1F
	snd_note $1F
	snd_note $13, NOTELEN_09
	snd_note $00, NOTELEN_03
	snd_note $1F, NOTELEN_09
	snd_jp SndData_04_Ch1
SndData_04_Ch2:
	snd_duty SNDDUTY_12, $01
	snd_instrument INSTR_41
	snd_note $38, NOTELEN_03
	snd_note $34
	snd_note $31
	snd_note $2F
	snd_note $00
	snd_instrument INSTR_40
	snd_note $1C
	snd_note $28, NOTELEN_06
	snd_note $00, NOTELEN_0C
	snd_note $2A, NOTELEN_CUSTOM, $0F
	snd_note $26, NOTELEN_0C
	snd_note $2A, NOTELEN_09
	snd_note $1C, NOTELEN_06
	snd_note $28, NOTELEN_09
	snd_note $1C, NOTELEN_03
	snd_note $28, NOTELEN_CUSTOM, $0F
	snd_note $2A, NOTELEN_CUSTOM, $0F
	snd_note $00, NOTELEN_18
	snd_note $1C, NOTELEN_06
	snd_note $28, NOTELEN_09
	snd_note $1C, NOTELEN_03
	snd_note $2C, NOTELEN_06
	snd_note $00, NOTELEN_0C
	snd_note $2A, NOTELEN_CUSTOM, $0F
	snd_note $26, NOTELEN_0C
	snd_note $2A, NOTELEN_09
	snd_note $1C, NOTELEN_06
	snd_note $28, NOTELEN_09
	snd_note $1C, NOTELEN_03
	snd_note $28, NOTELEN_CUSTOM, $0F
	snd_note $2A, NOTELEN_CUSTOM, $0F
	snd_note $00, NOTELEN_0C
	snd_note $2D
	snd_note $1C, NOTELEN_06
	snd_note $28, NOTELEN_09
	snd_note $1C, NOTELEN_03
	snd_note $2C, NOTELEN_06
	snd_note $00, NOTELEN_0C
	snd_note $2A, NOTELEN_CUSTOM, $0F
	snd_note $26, NOTELEN_0C
	snd_note $2A, NOTELEN_09
	snd_note $1C, NOTELEN_06
	snd_note $28, NOTELEN_09
	snd_note $1C, NOTELEN_03
	snd_note $2C, NOTELEN_CUSTOM, $0F
	snd_note $2A, NOTELEN_CUSTOM, $0F
	snd_note $00, NOTELEN_18
	snd_note $1C, NOTELEN_06
	snd_note $28, NOTELEN_09
	snd_note $1C, NOTELEN_03
	snd_note $2C, NOTELEN_06
	snd_note $00, NOTELEN_0C
	snd_note $2A, NOTELEN_CUSTOM, $0F
	snd_note $2A, NOTELEN_0C
	snd_note $26, NOTELEN_09
	snd_note $15, NOTELEN_06
	snd_note $31, NOTELEN_09
	snd_note $15, NOTELEN_03
	snd_note $2D, NOTELEN_06
	snd_note $15, NOTELEN_09
	snd_note $2B, NOTELEN_CUSTOM, $0F
	snd_note $00, NOTELEN_03
	snd_note $2A, NOTELEN_0C
	snd_note $2B, NOTELEN_09
	snd_jp SndData_04_Ch2
SndData_04_Ch4:
	snd_noteex PRESET_01, NOTELEN_09
	snd_noteex PRESET_00
	snd_noteex PRESET_01, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_01, NOTELEN_09
	snd_noteex PRESET_01, NOTELEN_03
	snd_noteex PRESET_00, NOTELEN_09
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_01
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_01, NOTELEN_09
	snd_noteex PRESET_01, NOTELEN_03
	snd_noteex PRESET_00
	snd_note $00
	snd_noteex PRESET_01, NOTELEN_09
	snd_noteex PRESET_01, NOTELEN_03
	snd_noteex PRESET_00, NOTELEN_09
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_01, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_01, NOTELEN_09
	snd_noteex PRESET_01, NOTELEN_03
	snd_noteex PRESET_00, NOTELEN_09
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_01
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_01, NOTELEN_09
	snd_noteex PRESET_01, NOTELEN_03
	snd_noteex PRESET_00
	snd_note $00
	snd_noteex PRESET_01, NOTELEN_09
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_01, NOTELEN_09
	snd_noteex PRESET_00
	snd_noteex PRESET_01, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_01, NOTELEN_09
	snd_noteex PRESET_01, NOTELEN_03
	snd_noteex PRESET_00, NOTELEN_09
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_01
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_01, NOTELEN_09
	snd_noteex PRESET_01, NOTELEN_03
	snd_noteex PRESET_00
	snd_note $00
	snd_noteex PRESET_01, NOTELEN_09
	snd_noteex PRESET_01, NOTELEN_03
	snd_noteex PRESET_00, NOTELEN_09
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_01, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_01, NOTELEN_09
	snd_noteex PRESET_01, NOTELEN_03
	snd_noteex PRESET_00, NOTELEN_09
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_01
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_01, NOTELEN_09
	snd_noteex PRESET_01, NOTELEN_03
	snd_noteex PRESET_00
	snd_note $00
	snd_noteex PRESET_01, NOTELEN_09
	snd_inc_vol -6
	snd_noteex PRESET_00, NOTELEN_01
	snd_inc_vol 2
	snd_noteex PRESET_00
	snd_inc_vol 2
	snd_noteex PRESET_00
	snd_inc_vol 2
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_00
	snd_noteex PRESET_00
	snd_jp SndData_04_Ch4
SndHeader_06:
	db 4 ; Number of slots
.slot0:
	db SNDSLOT0 ; Slot location
	db SNDX_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_01
	db INSTR_40 ; iSndChInfo_02
	db VIBRATO_33 ; iSndChInfo_03
	db 0 ; iSndChInfo_04
	db 116 ; iSndChInfo_05
	db SNDCH_WAVE ; iSndChInfo_06
	dw SndData_06_Ch3 ; Data pointer
	db $80 ; [PLACEHOLDER] ; iSndChInfo_09
	db SNDOUT_CHALL ; iSndChInfo_0A
.slot1:
	db SNDSLOT1 ; Slot location
	db SNDX_CH123 ; iSndChInfo_Status
	db 13 ; iSndChInfo_01
	db INSTR_3E ; iSndChInfo_02
	db VIBRATO_NONE ; iSndChInfo_03
	db -12 ; iSndChInfo_04
	db 116 ; iSndChInfo_05
	db SNDCH_PULSE1 ; iSndChInfo_06
	dw SndData_06_Ch1 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_09
	db SNDOUT_CHALL ; iSndChInfo_0A
.slot2:
	db SNDSLOT2 ; Slot location
	db SNDX_CH123 ; iSndChInfo_Status
	db 11 ; iSndChInfo_01
	db INSTR_3E ; iSndChInfo_02
	db VIBRATO_33 ; iSndChInfo_03
	db -12 ; iSndChInfo_04
	db 116 ; iSndChInfo_05
	db SNDCH_PULSE2 ; iSndChInfo_06
	dw SndData_06_Ch2 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_09
	db SNDOUT_CHALL ; iSndChInfo_0A
.slot3:
	db SNDSLOT3 ; Slot location
	db SNDX_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_01
	db INSTR_NONE ; iSndChInfo_02
	db VIBRATO_NONE ; iSndChInfo_03
	db 0 ; iSndChInfo_04
	db 116 ; iSndChInfo_05
	db SNDCH_NOISE ; iSndChInfo_06
	dw SndData_06_Ch4 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_09
	db SNDOUT_CHALL ; iSndChInfo_0A
SndData_06_Ch3:
	snd_wave WAVE_08
	snd_note $2F, NOTELEN_0C
	snd_note $2C, NOTELEN_06
	snd_note $31, NOTELEN_0C
	snd_note $2F, NOTELEN_06
	snd_note $2C
	snd_note $2F
	snd_note $2F
	snd_note $2C, NOTELEN_0C
	snd_note $31
	snd_note $2F, NOTELEN_06
	snd_note $2C
	snd_note $2F
	snd_note $2D, NOTELEN_0C
	snd_note $28, NOTELEN_06
	snd_note $2F, NOTELEN_0C
	snd_note $2D, NOTELEN_06
	snd_note $28
	snd_note $2D
	snd_note $2D
	snd_note $2A, NOTELEN_0C
	snd_note $2F
	snd_note $2D, NOTELEN_06
	snd_note $2A
	snd_note $2D
	snd_note $2F, NOTELEN_0C
	snd_note $2C, NOTELEN_06
	snd_note $31, NOTELEN_0C
	snd_note $2F, NOTELEN_06
	snd_note $2C
	snd_note $2F
	snd_note $2F
	snd_note $2C, NOTELEN_0C
	snd_note $31
	snd_note $2F, NOTELEN_06
	snd_note $2C
	snd_note $2F
	snd_note $2D, NOTELEN_0C
	snd_note $28, NOTELEN_06
	snd_note $2F, NOTELEN_0C
	snd_note $2D, NOTELEN_06
	snd_note $28
	snd_note $2D
	snd_note $2D
	snd_note $2A, NOTELEN_0C
	snd_note $2F
	snd_note $2D, NOTELEN_06
	snd_note $2A
	snd_note $2D
	snd_wave WAVE_09
	snd_inc_base_note -12
	snd_note $00, NOTELEN_09
	snd_note $28, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $28, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_CUSTOM, $12
	snd_note $28, NOTELEN_03
	snd_note $2C, NOTELEN_06
	snd_note $2F
	snd_note $00, NOTELEN_09
	snd_note $25, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $25, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_CUSTOM, $12
	snd_note $25, NOTELEN_03
	snd_note $28, NOTELEN_06
	snd_note $2C
	snd_note $00, NOTELEN_09
	snd_note $2A, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $2A, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_CUSTOM, $12
	snd_note $2A, NOTELEN_03
	snd_note $2D, NOTELEN_06
	snd_note $31
	snd_note $00, NOTELEN_09
	snd_note $23, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $23, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_CUSTOM, $09
	snd_note $2F, NOTELEN_09
	snd_note $23, NOTELEN_03
	snd_note $27, NOTELEN_06
	snd_note $2A
	snd_inc_base_note 12
	snd_jp SndData_06_Ch3
SndData_06_Ch1:
	snd_duty SNDDUTY_12, $05
	snd_note $1C, NOTELEN_09
	snd_note $1C, NOTELEN_03
	snd_note $20, NOTELEN_06
	snd_note $23
	snd_note $1C, NOTELEN_09
	snd_note $1C, NOTELEN_03
	snd_note $20, NOTELEN_06
	snd_note $23
	snd_note $19, NOTELEN_09
	snd_note $19, NOTELEN_03
	snd_note $1C, NOTELEN_06
	snd_note $20
	snd_note $19, NOTELEN_09
	snd_note $19, NOTELEN_03
	snd_note $1C, NOTELEN_06
	snd_note $20
	snd_note $1E, NOTELEN_09
	snd_note $1E, NOTELEN_03
	snd_note $21, NOTELEN_06
	snd_note $25
	snd_note $1E, NOTELEN_09
	snd_note $1E, NOTELEN_03
	snd_note $21, NOTELEN_06
	snd_note $25
	snd_note $17, NOTELEN_09
	snd_note $17, NOTELEN_03
	snd_note $1B, NOTELEN_06
	snd_note $1E
	snd_note $17, NOTELEN_09
	snd_note $17, NOTELEN_03
	snd_note $1B, NOTELEN_06
	snd_note $1E
	snd_note $1C, NOTELEN_09
	snd_note $1C, NOTELEN_03
	snd_note $20, NOTELEN_06
	snd_note $23
	snd_note $1C, NOTELEN_09
	snd_note $1C, NOTELEN_03
	snd_note $20, NOTELEN_06
	snd_note $23
	snd_note $19, NOTELEN_09
	snd_note $19, NOTELEN_03
	snd_note $1C, NOTELEN_06
	snd_note $20
	snd_note $19, NOTELEN_09
	snd_note $19, NOTELEN_03
	snd_note $1C, NOTELEN_06
	snd_note $20
	snd_note $1E, NOTELEN_09
	snd_note $1E, NOTELEN_03
	snd_note $21, NOTELEN_06
	snd_note $25
	snd_note $1E, NOTELEN_09
	snd_note $1E, NOTELEN_03
	snd_note $21, NOTELEN_06
	snd_note $25
	snd_note $17, NOTELEN_09
	snd_note $17, NOTELEN_03
	snd_note $1B, NOTELEN_06
	snd_note $1E
	snd_note $17, NOTELEN_09
	snd_note $17, NOTELEN_03
	snd_note $1B, NOTELEN_06
	snd_note $1E
	snd_duty SNDDUTY_12, $09
	snd_inc_base_note 12
	snd_note $00, NOTELEN_09
	snd_note $1C, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $1C, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_CUSTOM, $12
	snd_note $1C, NOTELEN_03
	snd_note $20, NOTELEN_06
	snd_note $23
	snd_note $00, NOTELEN_09
	snd_note $19, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $19, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_CUSTOM, $12
	snd_note $19, NOTELEN_03
	snd_note $1C, NOTELEN_06
	snd_note $20
	snd_note $00, NOTELEN_09
	snd_note $1E, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $1E, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_CUSTOM, $12
	snd_note $1E, NOTELEN_03
	snd_note $21, NOTELEN_06
	snd_note $25
	snd_note $00, NOTELEN_09
	snd_note $17, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $17, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_CUSTOM, $09
	snd_note $23, NOTELEN_09
	snd_note $17, NOTELEN_03
	snd_note $1B, NOTELEN_06
	snd_note $1E
	snd_inc_base_note -12
	snd_jp SndData_06_Ch1
SndData_06_Ch2:
	snd_instrument INSTR_2E
	snd_duty SNDDUTY_50, $00
	snd_note $28, NOTELEN_03
	snd_note $28
	snd_note $23, NOTELEN_06
	snd_instrument INSTR_33
	snd_duty SNDDUTY_25, $00
	snd_note $34
	snd_instrument INSTR_2E
	snd_duty SNDDUTY_50, $00
	snd_note $28, NOTELEN_09
	snd_note $28, NOTELEN_03
	snd_note $23, NOTELEN_06
	snd_instrument INSTR_33
	snd_duty SNDDUTY_25, $00
	snd_note $34
	snd_instrument INSTR_2E
	snd_duty SNDDUTY_50, $00
	snd_note $28
	snd_note $25, NOTELEN_03
	snd_note $25
	snd_instrument INSTR_33
	snd_duty SNDDUTY_25, $00
	snd_note $2F, NOTELEN_0C
	snd_instrument INSTR_2E
	snd_duty SNDDUTY_50, $00
	snd_note $25, NOTELEN_09
	snd_note $25, NOTELEN_03
	snd_note $20, NOTELEN_06
	snd_instrument INSTR_33
	snd_duty SNDDUTY_25, $00
	snd_note $34
	snd_instrument INSTR_2E
	snd_duty SNDDUTY_50, $00
	snd_note $25
	snd_note $2A, NOTELEN_03
	snd_note $2A
	snd_note $25, NOTELEN_06
	snd_instrument INSTR_33
	snd_duty SNDDUTY_25, $00
	snd_note $31
	snd_instrument INSTR_2E
	snd_duty SNDDUTY_50, $00
	snd_note $2A, NOTELEN_09
	snd_note $2A, NOTELEN_03
	snd_note $25, NOTELEN_06
	snd_instrument INSTR_33
	snd_duty SNDDUTY_25, $00
	snd_note $31
	snd_instrument INSTR_2E
	snd_duty SNDDUTY_50, $00
	snd_note $2A
	snd_note $23, NOTELEN_03
	snd_note $23
	snd_instrument INSTR_33
	snd_duty SNDDUTY_25, $00
	snd_note $33, NOTELEN_0C
	snd_instrument INSTR_2E
	snd_duty SNDDUTY_50, $00
	snd_note $23, NOTELEN_09
	snd_note $23, NOTELEN_03
	snd_note $1E, NOTELEN_06
	snd_instrument INSTR_33
	snd_duty SNDDUTY_25, $00
	snd_note $33
	snd_instrument INSTR_2E
	snd_duty SNDDUTY_50, $00
	snd_note $23
	snd_note $28, NOTELEN_03
	snd_note $28
	snd_note $23, NOTELEN_06
	snd_instrument INSTR_33
	snd_duty SNDDUTY_25, $00
	snd_note $34
	snd_instrument INSTR_2E
	snd_duty SNDDUTY_50, $00
	snd_note $28, NOTELEN_09
	snd_note $28, NOTELEN_03
	snd_note $23, NOTELEN_06
	snd_instrument INSTR_33
	snd_duty SNDDUTY_25, $00
	snd_note $34
	snd_instrument INSTR_2E
	snd_duty SNDDUTY_50, $00
	snd_note $28
	snd_note $25, NOTELEN_03
	snd_note $25
	snd_instrument INSTR_33
	snd_duty SNDDUTY_25, $00
	snd_note $2F, NOTELEN_0C
	snd_instrument INSTR_2E
	snd_duty SNDDUTY_50, $00
	snd_note $25, NOTELEN_09
	snd_note $25, NOTELEN_03
	snd_note $20, NOTELEN_06
	snd_instrument INSTR_33
	snd_duty SNDDUTY_25, $00
	snd_note $34
	snd_instrument INSTR_2E
	snd_duty SNDDUTY_50, $00
	snd_note $25
	snd_note $2A, NOTELEN_03
	snd_note $2A
	snd_note $25, NOTELEN_06
	snd_instrument INSTR_33
	snd_duty SNDDUTY_25, $00
	snd_note $31
	snd_instrument INSTR_2E
	snd_duty SNDDUTY_50, $00
	snd_note $2A, NOTELEN_09
	snd_note $2A, NOTELEN_03
	snd_note $25, NOTELEN_06
	snd_instrument INSTR_33
	snd_duty SNDDUTY_25, $00
	snd_note $31
	snd_instrument INSTR_2E
	snd_duty SNDDUTY_50, $00
	snd_note $2A
	snd_note $23, NOTELEN_03
	snd_note $23
	snd_instrument INSTR_33
	snd_duty SNDDUTY_25, $00
	snd_note $33, NOTELEN_0C
	snd_instrument INSTR_2E
	snd_duty SNDDUTY_50, $00
	snd_note $23, NOTELEN_09
	snd_note $23, NOTELEN_03
	snd_note $1E, NOTELEN_06
	snd_instrument INSTR_33
	snd_duty SNDDUTY_25, $00
	snd_note $33
	snd_instrument INSTR_2E
	snd_duty SNDDUTY_50, $00
	snd_note $23
	snd_note $28, NOTELEN_03
	snd_note $28
	snd_note $23, NOTELEN_06
	snd_note $25
	snd_note $28, NOTELEN_09
	snd_note $28, NOTELEN_03
	snd_note $23, NOTELEN_06
	snd_note $25
	snd_note $28
	snd_note $25, NOTELEN_03
	snd_note $25
	snd_note $20, NOTELEN_06
	snd_note $23
	snd_note $25, NOTELEN_09
	snd_note $25, NOTELEN_03
	snd_note $20, NOTELEN_06
	snd_note $23
	snd_note $25
	snd_note $2A, NOTELEN_03
	snd_note $2A
	snd_note $25, NOTELEN_06
	snd_note $28
	snd_note $2A, NOTELEN_09
	snd_note $2A, NOTELEN_03
	snd_note $25, NOTELEN_06
	snd_note $28
	snd_note $2A
	snd_note $23, NOTELEN_03
	snd_note $23
	snd_note $1E, NOTELEN_06
	snd_note $21
	snd_note $23
	snd_instrument INSTR_3E
	snd_inc_vol -2
	snd_note $1E, NOTELEN_01
	snd_note $20
	snd_note $21
	snd_note $23
	snd_note $25
	snd_note $27
	snd_note $28
	snd_note $2A
	snd_note $2C
	snd_note $2D
	snd_note $2F
	snd_note $31
	snd_note $33
	snd_note $34
	snd_note $36
	snd_note $38
	snd_note $39
	snd_note $3B
	snd_note $3D
	snd_note $3F
	snd_note $40
	snd_note $42
	snd_note $44
	snd_note $45
	snd_inc_vol 2
	snd_jp SndData_06_Ch2
SndData_06_Ch4:
	snd_call .sub0
	snd_noteex PRESET_01
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
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_00
	snd_noteex PRESET_07
	snd_noteex PRESET_02
	snd_call .sub0
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_00
	snd_noteex PRESET_07
	snd_noteex PRESET_00
	snd_var iSndChInfo_24, $03
	.loop:
		snd_noteex PRESET_01, NOTELEN_09
		snd_noteex PRESET_02, NOTELEN_03
		snd_noteex PRESET_01, NOTELEN_0C
		snd_noteex PRESET_00, NOTELEN_09
		snd_noteex PRESET_00, NOTELEN_03
		snd_noteex PRESET_02, NOTELEN_0C
		snd_djnz iSndChInfo_24, .loop
	snd_noteex PRESET_01, NOTELEN_09
	snd_noteex PRESET_02, NOTELEN_03
	snd_noteex PRESET_01, NOTELEN_09
	snd_noteex PRESET_02, NOTELEN_03
	snd_noteex PRESET_00
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_00
	snd_jp SndData_06_Ch4
.sub0:
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
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_05
	snd_noteex PRESET_02
	snd_noteex PRESET_01
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
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_07
	snd_noteex PRESET_02
	snd_noteex PRESET_01
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
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_05
	snd_noteex PRESET_02
	snd_ret
SndHeader_09:
	db 4 ; Number of slots
.slot0:
	db SNDSLOT0 ; Slot location
	db SNDX_CH123 ; iSndChInfo_Status
	db 13 ; iSndChInfo_01
	db INSTR_NONE ; iSndChInfo_02
	db VIBRATO_NONE ; iSndChInfo_03
	db -12 ; iSndChInfo_04
	db 109 ; iSndChInfo_05
	db SNDCH_WAVE ; iSndChInfo_06
	dw SndData_09_Ch3 ; Data pointer
	db $80 ; [PLACEHOLDER] ; iSndChInfo_09
	db SNDOUT_CHALL ; iSndChInfo_0A
.slot1:
	db SNDSLOT1 ; Slot location
	db SNDX_CH123 ; iSndChInfo_Status
	db 13 ; iSndChInfo_01
	db INSTR_2E ; iSndChInfo_02
	db VIBRATO_NONE ; iSndChInfo_03
	db -24 ; iSndChInfo_04
	db 109 ; iSndChInfo_05
	db SNDCH_PULSE1 ; iSndChInfo_06
	dw SndData_09_Ch1 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_09
	db SNDOUT_CHALL ; iSndChInfo_0A
.slot2:
	db SNDSLOT2 ; Slot location
	db SNDX_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_01
	db INSTR_2E ; iSndChInfo_02
	db VIBRATO_NONE ; iSndChInfo_03
	db -12 ; iSndChInfo_04
	db 109 ; iSndChInfo_05
	db SNDCH_PULSE2 ; iSndChInfo_06
	dw SndData_09_Ch2 ; Data pointer
	nrx1 SNDDUTY_25, $00 ; iSndChInfo_09
	db SNDOUT_CHALL ; iSndChInfo_0A
.slot3:
	db SNDSLOT3 ; Slot location
	db SNDX_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_01
	db INSTR_NONE ; iSndChInfo_02
	db VIBRATO_NONE ; iSndChInfo_03
	db 0 ; iSndChInfo_04
	db 109 ; iSndChInfo_05
	db SNDCH_NOISE ; iSndChInfo_06
	dw SndData_09_Ch4 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_09
	db SNDOUT_CHALL ; iSndChInfo_0A
SndData_09_Ch3:
	snd_wave WAVE_09
	snd_instrument INSTR_01
	snd_vibrato VIBRATO_3D
	snd_inc_base_note 0
	snd_inc_vol -4
	snd_note $24, NOTELEN_01
	snd_inc_vol 2
	snd_note $25
	snd_inc_vol 1
	snd_note $26
	snd_inc_vol 1
	snd_note $27, NOTELEN_09
	snd_note $29, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $29, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $2A, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $2A, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
.loop:
	snd_wave WAVE_07
	snd_instrument INSTR_2E
	snd_vibrato VIBRATO_NONE
	snd_inc_base_note 12
	snd_note $2B, NOTELEN_06
	snd_note $24, NOTELEN_09
	snd_note $2B, NOTELEN_06
	snd_note $29, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $29, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_wave WAVE_09
	snd_instrument INSTR_30
	snd_vibrato VIBRATO_34
	snd_inc_base_note -12
	snd_note $29, NOTELEN_09
	snd_note $30, NOTELEN_06
	snd_note $29
	snd_wave WAVE_07
	snd_instrument INSTR_2E
	snd_vibrato VIBRATO_NONE
	snd_inc_base_note 12
	snd_note $29
	snd_note $22, NOTELEN_09
	snd_note $29, NOTELEN_06
	snd_note $27, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $27, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_wave WAVE_09
	snd_instrument INSTR_30
	snd_vibrato VIBRATO_34
	snd_inc_base_note -12
	snd_note $27, NOTELEN_09
	snd_note $2E, NOTELEN_06
	snd_note $27
	snd_wave WAVE_07
	snd_instrument INSTR_2E
	snd_vibrato VIBRATO_NONE
	snd_inc_base_note 12
	snd_note $2B
	snd_note $24, NOTELEN_09
	snd_note $2B, NOTELEN_06
	snd_note $29, NOTELEN_03
	snd_wave WAVE_09
	snd_instrument INSTR_30
	snd_vibrato VIBRATO_34
	snd_inc_base_note -12
	snd_note $2D, NOTELEN_01
	snd_note $2E
	snd_note $2F
	snd_note $30, NOTELEN_09
	snd_note $32, NOTELEN_06
	snd_note $33
	snd_note $35, NOTELEN_03
	snd_vibrato VIBRATO_NONE
	snd_note $34, NOTELEN_01
	snd_inc_vol -1
	snd_note $33
	snd_inc_vol -1
	snd_note $32
	snd_inc_vol -2
	snd_note $31
	snd_inc_vol -2
	snd_note $30
	snd_note $2F, NOTELEN_02
	snd_inc_vol 6
	snd_wave WAVE_07
	snd_instrument INSTR_2E
	snd_vibrato VIBRATO_NONE
	snd_inc_base_note 12
	snd_note $30, NOTELEN_01
	snd_note $31, NOTELEN_0C
	snd_note $30, NOTELEN_04
	snd_wave WAVE_09
	snd_instrument INSTR_30
	snd_vibrato VIBRATO_34
	snd_inc_base_note -12
	snd_note $27, NOTELEN_09
	snd_note $29, NOTELEN_06
	snd_note $2A
	snd_note $2B, NOTELEN_03
	snd_note $2A, NOTELEN_01
	snd_note $29
	snd_note $28
	snd_wave WAVE_07
	snd_instrument INSTR_2E
	snd_vibrato VIBRATO_NONE
	snd_inc_base_note 12
	snd_note $24, NOTELEN_09
	snd_note $2B, NOTELEN_06
	snd_note $29, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $29, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_wave WAVE_09
	snd_instrument INSTR_30
	snd_vibrato VIBRATO_34
	snd_inc_base_note -12
	snd_note $29, NOTELEN_09
	snd_note $30, NOTELEN_06
	snd_note $29
	snd_wave WAVE_07
	snd_instrument INSTR_2E
	snd_vibrato VIBRATO_NONE
	snd_inc_base_note 12
	snd_note $29
	snd_note $22, NOTELEN_09
	snd_note $29, NOTELEN_06
	snd_note $27, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $27, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_wave WAVE_09
	snd_instrument INSTR_30
	snd_vibrato VIBRATO_34
	snd_inc_base_note -12
	snd_note $27, NOTELEN_09
	snd_note $2E, NOTELEN_06
	snd_note $27
	snd_wave WAVE_07
	snd_instrument INSTR_2E
	snd_vibrato VIBRATO_NONE
	snd_inc_base_note 12
	snd_note $2B
	snd_note $24, NOTELEN_09
	snd_note $2B, NOTELEN_06
	snd_note $29, NOTELEN_03
	snd_wave WAVE_09
	snd_instrument INSTR_30
	snd_vibrato VIBRATO_34
	snd_inc_base_note -12
	snd_note $2D, NOTELEN_01
	snd_note $2E
	snd_note $2F
	snd_note $30, NOTELEN_09
	snd_note $32, NOTELEN_06
	snd_note $33
	snd_note $35, NOTELEN_03
	snd_vibrato VIBRATO_NONE
	snd_note $34, NOTELEN_01
	snd_note $33
	snd_note $32
	snd_note $31
	snd_note $30
	snd_note $2F, NOTELEN_02
	snd_wave WAVE_07
	snd_instrument INSTR_2E
	snd_vibrato VIBRATO_NONE
	snd_inc_base_note 12
	snd_note $30, NOTELEN_01
	snd_note $31, NOTELEN_0C
	snd_note $30, NOTELEN_04
	snd_wave WAVE_09
	snd_instrument INSTR_30
	snd_vibrato VIBRATO_34
	snd_inc_base_note -12
	snd_note $27, NOTELEN_09
	snd_note $29, NOTELEN_06
	snd_note $2A
	snd_wave WAVE_01
	snd_instrument INSTR_2E
	snd_vibrato VIBRATO_33
	snd_inc_base_note 0
	snd_note $3E
	snd_note $37, NOTELEN_09
	snd_note $3E, NOTELEN_06
	snd_note $3C, NOTELEN_CUSTOM, $17
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $3C, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_wave WAVE_08
	snd_instrument INSTR_33
	snd_vibrato VIBRATO_33
	snd_inc_base_note 0
	snd_note $3A, NOTELEN_01
	snd_note $3C, NOTELEN_06
	snd_note $35, NOTELEN_09
	snd_note $3C, NOTELEN_06
	snd_note $3A, NOTELEN_CUSTOM, $16
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $3A, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_wave WAVE_01
	snd_instrument INSTR_2E
	snd_vibrato VIBRATO_33
	snd_inc_base_note 0
	snd_note $3C, NOTELEN_01
	snd_note $3D
	snd_note $3E, NOTELEN_06
	snd_note $37, NOTELEN_09
	snd_note $3E, NOTELEN_06
	snd_note $3C, NOTELEN_CUSTOM, $23
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $3C, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $3C, NOTELEN_01
	snd_note $3D, NOTELEN_0C
	snd_note $3C
	snd_note $3A
	snd_wave WAVE_02
	snd_instrument INSTR_33
	snd_vibrato VIBRATO_33
	snd_inc_base_note 0
	snd_note $2E, NOTELEN_06
	snd_note $33, NOTELEN_09
	snd_note $3A, NOTELEN_06
	snd_note $39
	snd_note $33
	snd_note $2D, NOTELEN_03
	snd_note $39, NOTELEN_06
	snd_note $35
	snd_note $38
	snd_note $35, NOTELEN_09
	snd_note $38, NOTELEN_06
	snd_note $37
	snd_note $33
	snd_note $2B, NOTELEN_03
	snd_note $37, NOTELEN_06
	snd_note $33
	snd_note $2E
	snd_note $33, NOTELEN_09
	snd_note $3A, NOTELEN_06
	snd_note $39
	snd_note $33
	snd_note $2D, NOTELEN_03
	snd_note $39, NOTELEN_06
	snd_note $35
	snd_note $38
	snd_note $35, NOTELEN_09
	snd_note $38, NOTELEN_06
	snd_note $37, NOTELEN_03
	snd_wave WAVE_09
	snd_instrument INSTR_30
	snd_vibrato VIBRATO_33
	snd_inc_base_note 0
	snd_note $24, NOTELEN_01
	snd_note $25
	snd_note $26
	snd_note $27, NOTELEN_09
	snd_note $29, NOTELEN_06
	snd_note $2A
	snd_jp .loop
SndData_09_Ch1:
	snd_duty SNDDUTY_25, $00
	snd_note $30, NOTELEN_01
	snd_note $31
	snd_note $32
	snd_note $33, NOTELEN_09
	snd_note $35, NOTELEN_06
	snd_note $36
.loop:
	snd_duty SNDDUTY_50, $00
	snd_instrument INSTR_2F
	snd_vibrato VIBRATO_3D
	snd_inc_base_note 12
	snd_note $3E
	snd_note $37, NOTELEN_09
	snd_note $3E, NOTELEN_06
	snd_note $3C
	snd_duty SNDDUTY_25, $00
	snd_instrument INSTR_30
	snd_vibrato VIBRATO_34
	snd_inc_base_note -12
	snd_note $35, NOTELEN_09
	snd_note $3C, NOTELEN_06
	snd_note $35, NOTELEN_CUSTOM, $05
	snd_duty SNDDUTY_50, $00
	snd_instrument INSTR_2F
	snd_vibrato VIBRATO_3D
	snd_inc_base_note 12
	snd_note $3A, NOTELEN_01
	snd_note $3C, NOTELEN_06
	snd_note $35, NOTELEN_09
	snd_note $3C, NOTELEN_06
	snd_note $3A
	snd_duty SNDDUTY_25, $00
	snd_instrument INSTR_30
	snd_vibrato VIBRATO_34
	snd_inc_base_note -12
	snd_note $33, NOTELEN_09
	snd_note $3A, NOTELEN_06
	snd_note $33, NOTELEN_CUSTOM, $05
	snd_duty SNDDUTY_50, $00
	snd_instrument INSTR_2F
	snd_vibrato VIBRATO_3D
	snd_inc_base_note 12
	snd_note $3C, NOTELEN_01
	snd_note $3E, NOTELEN_06
	snd_note $37, NOTELEN_09
	snd_note $3E, NOTELEN_06
	snd_note $3C
	snd_duty SNDDUTY_25, $00
	snd_instrument INSTR_30
	snd_vibrato VIBRATO_34
	snd_inc_base_note -12
	snd_note $3C, NOTELEN_09
	snd_note $3E, NOTELEN_06
	snd_note $3F
	snd_note $41, NOTELEN_03
	snd_vibrato VIBRATO_NONE
	snd_note $40, NOTELEN_01
	snd_note $3F
	snd_note $3E
	snd_note $3D
	snd_note $3C
	snd_note $3B, NOTELEN_03
	snd_duty SNDDUTY_50, $00
	snd_instrument INSTR_2F
	snd_vibrato VIBRATO_3D
	snd_inc_base_note 12
	snd_note $3C, NOTELEN_01
	snd_note $3D, NOTELEN_0C
	snd_note $3C
	snd_note $3A, NOTELEN_CUSTOM, $0B
	snd_note $3C, NOTELEN_01
	snd_note $3E, NOTELEN_06
	snd_note $37, NOTELEN_09
	snd_note $3E, NOTELEN_06
	snd_note $3C
	snd_duty SNDDUTY_25, $00
	snd_instrument INSTR_30
	snd_vibrato VIBRATO_34
	snd_inc_base_note -12
	snd_note $35, NOTELEN_09
	snd_note $3C, NOTELEN_06
	snd_note $35, NOTELEN_CUSTOM, $05
	snd_duty SNDDUTY_50, $00
	snd_instrument INSTR_2F
	snd_vibrato VIBRATO_3D
	snd_inc_base_note 12
	snd_note $3A, NOTELEN_01
	snd_note $3C, NOTELEN_06
	snd_note $35, NOTELEN_09
	snd_note $3C, NOTELEN_06
	snd_note $3A
	snd_duty SNDDUTY_25, $00
	snd_instrument INSTR_30
	snd_vibrato VIBRATO_34
	snd_inc_base_note -12
	snd_note $33, NOTELEN_09
	snd_note $3A, NOTELEN_06
	snd_note $33, NOTELEN_CUSTOM, $05
	snd_duty SNDDUTY_50, $00
	snd_instrument INSTR_2F
	snd_vibrato VIBRATO_3D
	snd_inc_base_note 12
	snd_note $3C, NOTELEN_01
	snd_note $3E, NOTELEN_06
	snd_note $37, NOTELEN_09
	snd_note $3E, NOTELEN_06
	snd_note $3C
	snd_duty SNDDUTY_25, $00
	snd_instrument INSTR_30
	snd_vibrato VIBRATO_34
	snd_inc_base_note -12
	snd_note $3C, NOTELEN_09
	snd_note $3E, NOTELEN_06
	snd_note $3F
	snd_note $41, NOTELEN_03
	snd_vibrato VIBRATO_NONE
	snd_note $40, NOTELEN_01
	snd_note $3F
	snd_note $3E
	snd_note $3D
	snd_note $3C
	snd_note $3B, NOTELEN_03
	snd_duty SNDDUTY_50, $00
	snd_instrument INSTR_2F
	snd_vibrato VIBRATO_3D
	snd_inc_base_note 12
	snd_note $3C, NOTELEN_01
	snd_note $3D, NOTELEN_0C
	snd_note $3C
	snd_note $3A
	snd_duty SNDDUTY_50, $00
	snd_instrument INSTR_38
	snd_vibrato VIBRATO_3D
	snd_inc_base_note -12
	snd_inc_vol -8
	snd_note $32, NOTELEN_CUSTOM, $15
	snd_note $2D, NOTELEN_CUSTOM, $1B
	snd_note $2C, NOTELEN_CUSTOM, $15
	snd_note $2B, NOTELEN_CUSTOM, $1B
	snd_note $32, NOTELEN_CUSTOM, $15
	snd_note $2D, NOTELEN_CUSTOM, $1B
	snd_note $2C, NOTELEN_CUSTOM, $15
	snd_note $2B, NOTELEN_CUSTOM, $1B
	snd_inc_vol 8
	snd_duty SNDDUTY_12, $00
	snd_instrument INSTR_2F
	snd_vibrato VIBRATO_3D
	snd_inc_base_note 0
	snd_note $3A, NOTELEN_06
	snd_note $37, NOTELEN_09
	snd_note $2E, NOTELEN_06
	snd_note $2D
	snd_note $35
	snd_note $39, NOTELEN_03
	snd_note $2D, NOTELEN_06
	snd_note $33
	snd_note $2C
	snd_note $31, NOTELEN_09
	snd_note $2C, NOTELEN_06
	snd_note $2B
	snd_note $31
	snd_note $37, NOTELEN_03
	snd_note $2B, NOTELEN_06
	snd_note $31
	snd_note $3A
	snd_note $37, NOTELEN_09
	snd_note $2E, NOTELEN_06
	snd_note $2D
	snd_note $35
	snd_note $39, NOTELEN_03
	snd_note $2D, NOTELEN_06
	snd_note $33
	snd_note $2C
	snd_note $31, NOTELEN_09
	snd_note $2C, NOTELEN_06
	snd_note $2B, NOTELEN_03
	snd_duty SNDDUTY_25, $00
	snd_instrument INSTR_30
	snd_vibrato VIBRATO_3D
	snd_inc_base_note 0
	snd_note $30, NOTELEN_01
	snd_note $31
	snd_note $32
	snd_note $33, NOTELEN_09
	snd_note $35, NOTELEN_06
	snd_note $36
	snd_jp .loop
SndData_09_Ch2:
	snd_note $00, NOTELEN_18
.loop:
	snd_note $18, NOTELEN_09
	snd_note $1A, NOTELEN_0C
	snd_note $2B, NOTELEN_03
	snd_note $1D, NOTELEN_09
	snd_note $1F
	snd_note $23, NOTELEN_06
	snd_note $22, NOTELEN_09
	snd_note $1D
	snd_note $29, NOTELEN_03
	snd_note $1D
	snd_note $1B, NOTELEN_09
	snd_note $2E, NOTELEN_03
	snd_note $25, NOTELEN_06
	snd_note $19
	snd_note $18, NOTELEN_09
	snd_note $1A, NOTELEN_0C
	snd_note $2B, NOTELEN_03
	snd_note $1D, NOTELEN_09
	snd_note $1F
	snd_note $23, NOTELEN_06
	snd_note $22, NOTELEN_09
	snd_note $24
	snd_note $28, NOTELEN_06
	snd_note $27, NOTELEN_03
	snd_note $2E
	snd_note $22
	snd_note $1B
	snd_note $16, NOTELEN_06
	snd_note $17
	snd_note $18, NOTELEN_09
	snd_note $1A, NOTELEN_0C
	snd_note $2B, NOTELEN_03
	snd_note $1D, NOTELEN_09
	snd_note $1F
	snd_note $23, NOTELEN_06
	snd_note $22, NOTELEN_09
	snd_note $1D
	snd_note $29, NOTELEN_03
	snd_note $1D
	snd_note $1B, NOTELEN_09
	snd_note $2E, NOTELEN_03
	snd_note $25, NOTELEN_06
	snd_note $19
	snd_note $18, NOTELEN_09
	snd_note $1A, NOTELEN_0C
	snd_note $2B, NOTELEN_03
	snd_note $1D, NOTELEN_09
	snd_note $1F
	snd_note $23, NOTELEN_06
	snd_note $22, NOTELEN_09
	snd_note $24
	snd_note $28, NOTELEN_06
	snd_note $27, NOTELEN_03
	snd_note $2E
	snd_note $22
	snd_note $1B, NOTELEN_CUSTOM, $0F
	snd_duty SNDDUTY_12, $00
	snd_inc_vol -8
	snd_instrument INSTR_38
	snd_note $22, NOTELEN_CUSTOM, $15
	snd_note $24, NOTELEN_CUSTOM, $1B
	snd_note $24, NOTELEN_CUSTOM, $15
	snd_note $22, NOTELEN_CUSTOM, $1B
	snd_note $22, NOTELEN_CUSTOM, $15
	snd_note $24, NOTELEN_CUSTOM, $1B
	snd_note $24, NOTELEN_CUSTOM, $15
	snd_note $22, NOTELEN_CUSTOM, $1B
	snd_inc_vol 8
	snd_duty SNDDUTY_25, $00
	snd_instrument INSTR_2E
	snd_note $22, NOTELEN_06
	snd_note $27, NOTELEN_09
	snd_note $2E, NOTELEN_06
	snd_note $2D
	snd_note $27
	snd_note $21, NOTELEN_03
	snd_note $2D, NOTELEN_06
	snd_note $29
	snd_note $2C
	snd_note $29, NOTELEN_09
	snd_note $2C, NOTELEN_06
	snd_note $2B
	snd_note $27
	snd_note $1F, NOTELEN_03
	snd_note $2B, NOTELEN_06
	snd_note $27
	snd_note $22
	snd_note $27, NOTELEN_09
	snd_note $2E, NOTELEN_06
	snd_note $2D
	snd_note $27
	snd_note $21, NOTELEN_03
	snd_note $2D, NOTELEN_06
	snd_note $29
	snd_note $2C
	snd_note $29, NOTELEN_09
	snd_note $2C, NOTELEN_06
	snd_note $2B, NOTELEN_CUSTOM, $0F
	snd_duty SNDDUTY_25, $00
	snd_instrument INSTR_2E
	snd_note $16, NOTELEN_06
	snd_note $17
	snd_jp .loop
SndData_09_Ch4:
	snd_duty SNDDUTY_12, $00
	snd_note $00, NOTELEN_0C
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_00
.loop0:
	snd_var iSndChInfo_24, $03
	.loop1:
		snd_noteex PRESET_01, NOTELEN_06
		snd_noteex PRESET_00, NOTELEN_03
		snd_noteex PRESET_01
		snd_noteex PRESET_00, NOTELEN_09
		snd_noteex PRESET_00, NOTELEN_03
		snd_noteex PRESET_01
		snd_noteex PRESET_00, NOTELEN_06
		snd_noteex PRESET_00, NOTELEN_03
		snd_noteex PRESET_00, NOTELEN_06
		snd_noteex PRESET_00, NOTELEN_03
		snd_noteex PRESET_00
		snd_noteex PRESET_01, NOTELEN_06
		snd_noteex PRESET_00, NOTELEN_03
		snd_noteex PRESET_01
		snd_noteex PRESET_01
		snd_noteex PRESET_00, NOTELEN_06
		snd_noteex PRESET_00, NOTELEN_03
		snd_noteex PRESET_01
		snd_noteex PRESET_00, NOTELEN_06
		snd_noteex PRESET_00, NOTELEN_03
		snd_noteex PRESET_00, NOTELEN_06
		snd_noteex PRESET_00, NOTELEN_03
		snd_noteex PRESET_00
		snd_djnz iSndChInfo_24, .loop1
	snd_noteex PRESET_01, NOTELEN_06
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_01
	snd_noteex PRESET_00, NOTELEN_09
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_01
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_00
	snd_noteex PRESET_01, NOTELEN_06
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_01
	snd_noteex PRESET_01
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_01
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_00
	snd_call .sub0
	snd_noteex PRESET_01, NOTELEN_06
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_01
	snd_noteex PRESET_00, NOTELEN_09
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_01
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_00
	snd_noteex PRESET_01, NOTELEN_06
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_01
	snd_noteex PRESET_01
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_01
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_00
	snd_noteex PRESET_01, NOTELEN_06
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_01
	snd_noteex PRESET_00, NOTELEN_09
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_01
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_00
	snd_noteex PRESET_01, NOTELEN_06
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_01
	snd_noteex PRESET_01
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_01, NOTELEN_09
	snd_noteex PRESET_01, NOTELEN_03
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_00
	snd_jp .loop0
.sub0:
	snd_var iSndChInfo_24, $04
	.sub0loop0:
		snd_noteex PRESET_02
		snd_inc_vol -3
		snd_noteex PRESET_02
		snd_noteex PRESET_02
		snd_noteex PRESET_02
		snd_noteex PRESET_02
		snd_noteex PRESET_02
		snd_noteex PRESET_02
		snd_inc_vol 3
		snd_noteex PRESET_02
		snd_inc_vol -3
		snd_noteex PRESET_02
		snd_noteex PRESET_02
		snd_noteex PRESET_02
		snd_noteex PRESET_02
		snd_noteex PRESET_02
		snd_noteex PRESET_02
		snd_noteex PRESET_02
		snd_noteex PRESET_02
		snd_inc_vol 3
		snd_djnz iSndChInfo_24, .sub0loop0
	snd_ret
SndHeader_0B:
	db 4 ; Number of slots
.slot0:
	db SNDSLOT0 ; Slot location
	db SNDX_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_01
	db INSTR_NONE ; iSndChInfo_02
	db VIBRATO_NONE ; iSndChInfo_03
	db 0 ; iSndChInfo_04
	db 121 ; iSndChInfo_05
	db SNDCH_WAVE ; iSndChInfo_06
	dw SndData_0B_Ch3 ; Data pointer
	db WAVE_01 ; iSndChInfo_09
	db SNDOUT_CHALL ; iSndChInfo_0A
.slot1:
	db SNDSLOT1 ; Slot location
	db SNDX_CH123 ; iSndChInfo_Status
	db 12 ; iSndChInfo_01
	db INSTR_2E ; iSndChInfo_02
	db VIBRATO_NONE ; iSndChInfo_03
	db -12 ; iSndChInfo_04
	db 121 ; iSndChInfo_05
	db SNDCH_PULSE2 ; iSndChInfo_06
	dw SndData_0B_Ch2 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_09
	db SNDOUT_CHALL ; iSndChInfo_0A
.slot2:
	db SNDSLOT2 ; Slot location
	db SNDX_CH123 ; iSndChInfo_Status
	db 10 ; iSndChInfo_01
	db INSTR_31 ; iSndChInfo_02
	db VIBRATO_NONE ; iSndChInfo_03
	db -12 ; iSndChInfo_04
	db 121 ; iSndChInfo_05
	db SNDCH_PULSE1 ; iSndChInfo_06
	dw SndData_0B_Ch1 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_09
	db SNDOUT_CHALL ; iSndChInfo_0A
.slot3:
	db SNDSLOT3 ; Slot location
	db SNDX_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_01
	db INSTR_NONE ; iSndChInfo_02
	db VIBRATO_NONE ; iSndChInfo_03
	db 0 ; iSndChInfo_04
	db 121 ; iSndChInfo_05
	db SNDCH_NOISE ; iSndChInfo_06
	dw SndData_0B_Ch4 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_09
	db SNDOUT_CHALL ; iSndChInfo_0A
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
	snd_var iSndChInfo_24, $02
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
		snd_djnz iSndChInfo_24, .loop
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
	snd_var iSndChInfo_24, $03
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
		snd_djnz iSndChInfo_24, .sub0loop0
	snd_ret
SndHeader_0C:
	db 4 ; Number of slots
.slot0:
	db SNDSLOT0 ; Slot location
	db SNDX_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_01
	db INSTR_2E ; iSndChInfo_02
	db VIBRATO_33 ; iSndChInfo_03
	db 0 ; iSndChInfo_04
	db 116 ; iSndChInfo_05
	db SNDCH_WAVE ; iSndChInfo_06
	dw SndData_0C_Ch3 ; Data pointer
	db $80 ; [PLACEHOLDER] ; iSndChInfo_09
	db SNDOUT_CHALL ; iSndChInfo_0A
.slot1:
	db SNDSLOT1 ; Slot location
	db SNDX_CH123 ; iSndChInfo_Status
	db 13 ; iSndChInfo_01
	db INSTR_2E ; iSndChInfo_02
	db VIBRATO_33 ; iSndChInfo_03
	db -12 ; iSndChInfo_04
	db 116 ; iSndChInfo_05
	db SNDCH_PULSE2 ; iSndChInfo_06
	dw SndData_0C_Ch2 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_09
	db SNDOUT_CHALL ; iSndChInfo_0A
.slot2:
	db SNDSLOT2 ; Slot location
	db SNDX_CH123 ; iSndChInfo_Status
	db 11 ; iSndChInfo_01
	db INSTR_2E ; iSndChInfo_02
	db VIBRATO_33 ; iSndChInfo_03
	db -12 ; iSndChInfo_04
	db 116 ; iSndChInfo_05
	db SNDCH_PULSE1 ; iSndChInfo_06
	dw SndData_0C_Ch1 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_09
	db SNDOUT_CHALL ; iSndChInfo_0A
.slot3:
	db SNDSLOT3 ; Slot location
	db SNDX_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_01
	db INSTR_NONE ; iSndChInfo_02
	db VIBRATO_NONE ; iSndChInfo_03
	db 0 ; iSndChInfo_04
	db 116 ; iSndChInfo_05
	db SNDCH_NOISE ; iSndChInfo_06
	dw SndData_0C_Ch4 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_09
	db SNDOUT_CHALL ; iSndChInfo_0A
SndData_0C_Ch3:
	snd_wave WAVE_09
	snd_note $27, NOTELEN_03
	snd_note $29
	snd_note $2A
	snd_note $2C
	snd_note $2E
	snd_note $31, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $31, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $30, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $30, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $2C, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $2C, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $2E, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $2E, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $2E, NOTELEN_03
	snd_note $2A, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $2A, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $27, NOTELEN_03
	snd_note $29
	snd_note $2A
	snd_note $2C
	snd_note $2E
	snd_note $31, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $31, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $30, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $30, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $33, NOTELEN_03
	snd_note $32
	snd_note $33
	snd_note $00, NOTELEN_0C
	snd_note $27, NOTELEN_03
	snd_note $29
	snd_note $2A
	snd_note $2C
	snd_note $2E
	snd_note $31, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $31, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $30, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $30, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $2C, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $2C, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $2E, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $2E, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $2E, NOTELEN_03
	snd_note $2A, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $2A, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $27, NOTELEN_03
	snd_note $29
	snd_note $2A
	snd_note $2C
	snd_note $2E
	snd_note $31, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $31, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $30, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_instrument INSTR_NONE
	snd_inc_freq_offset -1
	snd_note $30, NOTELEN_CUSTOM, $03
	snd_inc_vol 5
	snd_instrument INSTR_2E
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_09
	snd_note $33, NOTELEN_0C
	snd_wave WAVE_07
	snd_note $30, NOTELEN_06
	snd_note $31, NOTELEN_03
	snd_note $33, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $33, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $35, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $35, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $35, NOTELEN_01
	snd_note $36, NOTELEN_08
	snd_note $35, NOTELEN_06
	snd_note $33
	snd_note $31
	snd_note $30
	snd_note $31, NOTELEN_03
	snd_note $33, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $33, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $30, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $30, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $2E, NOTELEN_09
	snd_note $2C, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $2C, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $2E, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $2E, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $2C, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $2C, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $2F, NOTELEN_01
	snd_note $30, NOTELEN_08
	snd_note $33, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $33, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_wave WAVE_01
	snd_inc_vol -6
	snd_note $31, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $31, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $30, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_instrument INSTR_NONE
	snd_inc_freq_offset -1
	snd_note $30, NOTELEN_CUSTOM, $06
	snd_inc_vol 5
	snd_instrument INSTR_2E
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_06
	snd_note $30, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $30, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $2C, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $2C, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_wave WAVE_06
	snd_inc_vol 6
	snd_note $00, NOTELEN_03
	snd_note $31
	snd_note $36
	snd_note $3A
	snd_note $3D, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $3D, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $3D, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $3D, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $3D, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $3D, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $3D, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $3D, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $3D, NOTELEN_03
	snd_note $3C
	snd_note $3A
	snd_note $38
	snd_wave WAVE_07
	snd_note $30, NOTELEN_06
	snd_note $31, NOTELEN_03
	snd_note $33, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $33, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $35, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $35, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $35, NOTELEN_01
	snd_note $36, NOTELEN_08
	snd_note $35, NOTELEN_06
	snd_note $33
	snd_note $31
	snd_note $30
	snd_note $31, NOTELEN_03
	snd_note $33, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $33, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $30, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $30, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $2E, NOTELEN_09
	snd_note $2C, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $2C, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $2E, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $2E, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $2C, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $2C, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $2F, NOTELEN_01
	snd_note $30, NOTELEN_08
	snd_wave WAVE_09
	snd_note $2C, NOTELEN_03
	snd_note $2E
	snd_note $31, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $31, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $30, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $30, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $2C, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $2C, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $2E, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $2E, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $2E, NOTELEN_03
	snd_note $2A, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $2A, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $27, NOTELEN_03
	snd_note $29
	snd_note $2A
	snd_note $2C
	snd_note $2E
	snd_note $31, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $31, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $33, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_instrument INSTR_NONE
	snd_inc_freq_offset -1
	snd_note $33, NOTELEN_CUSTOM, $06
	snd_inc_vol 5
	snd_instrument INSTR_2E
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_12
	snd_wave WAVE_07
	snd_note $30, NOTELEN_06
	snd_note $31, NOTELEN_03
	snd_note $33, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $33, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $35, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $35, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $35, NOTELEN_01
	snd_note $36, NOTELEN_08
	snd_note $35, NOTELEN_06
	snd_note $33
	snd_note $31
	snd_note $30
	snd_note $31, NOTELEN_03
	snd_note $33, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $33, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $30, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $30, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $2E, NOTELEN_09
	snd_note $2C, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $2C, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $2E, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $2E, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $2C, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $2C, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $2F, NOTELEN_01
	snd_note $30, NOTELEN_08
	snd_note $33, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $33, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_wave WAVE_01
	snd_inc_vol -6
	snd_note $31, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $31, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $30, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_instrument INSTR_NONE
	snd_inc_freq_offset -1
	snd_note $30, NOTELEN_CUSTOM, $06
	snd_inc_vol 5
	snd_instrument INSTR_2E
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_06
	snd_note $30, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $30, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $2C, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $2C, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_wave WAVE_06
	snd_inc_vol 6
	snd_note $00, NOTELEN_03
	snd_note $31
	snd_note $36
	snd_note $3A
	snd_note $3D, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $3D, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $3D, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $3D, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $3D, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $3D, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $3D, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $3D, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $3D, NOTELEN_03
	snd_note $3C
	snd_note $3A
	snd_note $38
	snd_wave WAVE_07
	snd_note $30, NOTELEN_06
	snd_note $31, NOTELEN_03
	snd_note $33, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $33, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $35, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $35, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $35, NOTELEN_01
	snd_note $36, NOTELEN_08
	snd_note $35, NOTELEN_06
	snd_note $33
	snd_note $31
	snd_note $30
	snd_note $31, NOTELEN_03
	snd_note $33, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $33, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $30, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $30, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $2E, NOTELEN_09
	snd_note $2C, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $2C, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $2E, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $2E, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $2C, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $2C, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $2F, NOTELEN_01
	snd_note $30, NOTELEN_08
	snd_note $2C, NOTELEN_CUSTOM, $4B
	snd_wave WAVE_09
	snd_instrument INSTR_NONE
	snd_note $2C, NOTELEN_0C
	snd_note $38, NOTELEN_30
	snd_note $36, NOTELEN_CUSTOM, $09
	snd_inc_vol -5
	snd_instrument INSTR_NONE
	snd_inc_freq_offset -1
	snd_note $36, NOTELEN_CUSTOM, $03
	snd_inc_vol 5
	snd_instrument INSTR_NONE
	snd_inc_freq_offset 1
	snd_note $35, NOTELEN_CUSTOM, $09
	snd_inc_vol -5
	snd_instrument INSTR_NONE
	snd_inc_freq_offset -1
	snd_note $35, NOTELEN_CUSTOM, $03
	snd_inc_vol 5
	snd_instrument INSTR_NONE
	snd_inc_freq_offset 1
	snd_note $33, NOTELEN_CUSTOM, $09
	snd_inc_vol -5
	snd_instrument INSTR_NONE
	snd_inc_freq_offset -1
	snd_note $33, NOTELEN_CUSTOM, $03
	snd_inc_vol 5
	snd_instrument INSTR_NONE
	snd_inc_freq_offset 1
	snd_note $35, NOTELEN_02
	snd_note $00, NOTELEN_04
	snd_note $2C, NOTELEN_06
	snd_note $2C, NOTELEN_CUSTOM, $4B
	snd_note $00, NOTELEN_09
	snd_note $2C, NOTELEN_0C
	snd_note $38, NOTELEN_30
	snd_note $36, NOTELEN_CUSTOM, $09
	snd_inc_vol -5
	snd_instrument INSTR_NONE
	snd_inc_freq_offset -1
	snd_note $36, NOTELEN_CUSTOM, $03
	snd_inc_vol 5
	snd_instrument INSTR_NONE
	snd_inc_freq_offset 1
	snd_note $35, NOTELEN_CUSTOM, $09
	snd_inc_vol -5
	snd_instrument INSTR_NONE
	snd_inc_freq_offset -1
	snd_note $35, NOTELEN_CUSTOM, $03
	snd_inc_vol 5
	snd_instrument INSTR_NONE
	snd_inc_freq_offset 1
	snd_note $33, NOTELEN_CUSTOM, $09
	snd_inc_vol -5
	snd_instrument INSTR_NONE
	snd_inc_freq_offset -1
	snd_note $33, NOTELEN_CUSTOM, $03
	snd_inc_vol 5
	snd_instrument INSTR_NONE
	snd_inc_freq_offset 1
	snd_note $35, NOTELEN_02
	snd_note $00, NOTELEN_04
	snd_note $2C, NOTELEN_06
	snd_note $2C, NOTELEN_CUSTOM, $48
	snd_note $00, NOTELEN_0C
	snd_note $2C
	snd_note $3A, NOTELEN_30
	snd_note $38, NOTELEN_CUSTOM, $09
	snd_inc_vol -5
	snd_instrument INSTR_NONE
	snd_inc_freq_offset -1
	snd_note $38, NOTELEN_CUSTOM, $03
	snd_inc_vol 5
	snd_instrument INSTR_NONE
	snd_inc_freq_offset 1
	snd_note $37, NOTELEN_CUSTOM, $09
	snd_inc_vol -5
	snd_instrument INSTR_NONE
	snd_inc_freq_offset -1
	snd_note $37, NOTELEN_CUSTOM, $03
	snd_inc_vol 5
	snd_instrument INSTR_NONE
	snd_inc_freq_offset 1
	snd_note $35, NOTELEN_CUSTOM, $09
	snd_inc_vol -5
	snd_instrument INSTR_NONE
	snd_inc_freq_offset -1
	snd_note $35, NOTELEN_CUSTOM, $03
	snd_inc_vol 5
	snd_instrument INSTR_NONE
	snd_inc_freq_offset 1
	snd_note $37, NOTELEN_02
	snd_note $00, NOTELEN_04
	snd_note $2E, NOTELEN_06
	snd_note $2E, NOTELEN_CUSTOM, $48
	snd_note $00, NOTELEN_0C
	snd_note $2E
	snd_note $3A, NOTELEN_30
	snd_note $38, NOTELEN_CUSTOM, $09
	snd_inc_vol -5
	snd_instrument INSTR_NONE
	snd_inc_freq_offset -1
	snd_note $38, NOTELEN_CUSTOM, $03
	snd_inc_vol 5
	snd_instrument INSTR_NONE
	snd_inc_freq_offset 1
	snd_note $37, NOTELEN_CUSTOM, $09
	snd_inc_vol -5
	snd_instrument INSTR_NONE
	snd_inc_freq_offset -1
	snd_note $37, NOTELEN_CUSTOM, $03
	snd_inc_vol 5
	snd_instrument INSTR_NONE
	snd_inc_freq_offset 1
	snd_note $35, NOTELEN_CUSTOM, $09
	snd_inc_vol -5
	snd_instrument INSTR_NONE
	snd_inc_freq_offset -1
	snd_note $35, NOTELEN_CUSTOM, $03
	snd_inc_vol 5
	snd_instrument INSTR_NONE
	snd_inc_freq_offset 1
	snd_note $37, NOTELEN_02
	snd_note $00, NOTELEN_04
	snd_note $3A, NOTELEN_06
	snd_note $3A, NOTELEN_CUSTOM, $60
	snd_jp SndData_0C_Ch3
SndData_0C_Ch2:
	snd_duty SNDDUTY_12, $01
	snd_note $14, NOTELEN_09
	snd_note $1B, NOTELEN_0C
	snd_note $20
	snd_note $1B, NOTELEN_09
	snd_note $20, NOTELEN_06
	snd_note $12, NOTELEN_09
	snd_note $19, NOTELEN_0C
	snd_note $1E
	snd_note $0F, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_note $1B, NOTELEN_06
	snd_note $14, NOTELEN_09
	snd_note $1B, NOTELEN_0C
	snd_note $20
	snd_note $1B, NOTELEN_09
	snd_note $20, NOTELEN_06
	snd_note $12, NOTELEN_09
	snd_note $19, NOTELEN_0C
	snd_note $1E
	snd_note $0F, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_note $0F, NOTELEN_06
	snd_note $14, NOTELEN_09
	snd_note $1B, NOTELEN_0C
	snd_note $20
	snd_note $1B, NOTELEN_09
	snd_note $12, NOTELEN_06
	snd_note $12, NOTELEN_09
	snd_note $19, NOTELEN_0C
	snd_note $1E, NOTELEN_06
	snd_note $0F
	snd_note $0F, NOTELEN_03
	snd_note $16, NOTELEN_06
	snd_note $12
	snd_note $14, NOTELEN_09
	snd_note $1B, NOTELEN_0C
	snd_note $20
	snd_note $1B, NOTELEN_09
	snd_note $12, NOTELEN_06
	snd_note $12, NOTELEN_09
	snd_note $19, NOTELEN_0C
	snd_note $1E
	snd_note $0F, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_note $0F, NOTELEN_06
	snd_note $14, NOTELEN_09
	snd_note $1B, NOTELEN_0C
	snd_note $20
	snd_note $1B, NOTELEN_09
	snd_note $12, NOTELEN_06
	snd_note $12, NOTELEN_09
	snd_note $19, NOTELEN_0C
	snd_note $1E
	snd_note $0F, NOTELEN_09
	snd_note $0F, NOTELEN_06
	snd_note $14, NOTELEN_09
	snd_note $1B, NOTELEN_0C
	snd_note $20
	snd_note $1B, NOTELEN_09
	snd_note $12, NOTELEN_06
	snd_note $12, NOTELEN_09
	snd_note $19, NOTELEN_06
	snd_note $1E
	snd_note $0F
	snd_note $0F, NOTELEN_09
	snd_note $16, NOTELEN_06
	snd_note $1B
	snd_note $14, NOTELEN_09
	snd_note $1B, NOTELEN_0C
	snd_note $20
	snd_note $1B, NOTELEN_09
	snd_note $12, NOTELEN_06
	snd_note $12, NOTELEN_09
	snd_note $19, NOTELEN_0C
	snd_note $1E
	snd_note $0F, NOTELEN_09
	snd_note $0F, NOTELEN_06
	snd_note $14, NOTELEN_09
	snd_note $1B, NOTELEN_0C
	snd_note $20
	snd_note $1B, NOTELEN_09
	snd_note $12, NOTELEN_06
	snd_note $12, NOTELEN_09
	snd_note $19
	snd_note $1E
	snd_note $0F, NOTELEN_06
	snd_note $0F, NOTELEN_03
	snd_note $16, NOTELEN_06
	snd_note $12
	snd_note $14, NOTELEN_09
	snd_note $1B, NOTELEN_0C
	snd_note $20
	snd_note $1B, NOTELEN_09
	snd_note $12, NOTELEN_06
	snd_note $12, NOTELEN_09
	snd_note $19, NOTELEN_0C
	snd_note $1E
	snd_note $0F, NOTELEN_09
	snd_note $0F, NOTELEN_06
	snd_note $14, NOTELEN_09
	snd_note $1B, NOTELEN_0C
	snd_note $20
	snd_note $1B, NOTELEN_09
	snd_note $12, NOTELEN_06
	snd_note $12, NOTELEN_09
	snd_note $19, NOTELEN_06
	snd_note $1E
	snd_note $0F, NOTELEN_03
	snd_note $00
	snd_note $1B, NOTELEN_09
	snd_note $1A, NOTELEN_03
	snd_note $00
	snd_note $1A, NOTELEN_06
	snd_note $19, NOTELEN_09
	snd_note $1D
	snd_note $19, NOTELEN_06
	snd_note $17, NOTELEN_09
	snd_note $16
	snd_note $14, NOTELEN_06
	snd_note $19, NOTELEN_09
	snd_note $1D
	snd_note $19, NOTELEN_06
	snd_note $17, NOTELEN_09
	snd_note $1B
	snd_note $1E, NOTELEN_06
	snd_note $19, NOTELEN_09
	snd_note $1D
	snd_note $19, NOTELEN_06
	snd_note $17, NOTELEN_09
	snd_note $16
	snd_note $14, NOTELEN_06
	snd_note $19, NOTELEN_09
	snd_note $1D
	snd_note $19, NOTELEN_06
	snd_note $17, NOTELEN_09
	snd_note $1E
	snd_note $17, NOTELEN_06
	snd_note $19, NOTELEN_09
	snd_note $1D
	snd_note $19, NOTELEN_06
	snd_note $17, NOTELEN_09
	snd_note $16
	snd_note $14, NOTELEN_06
	snd_note $19, NOTELEN_09
	snd_note $1D
	snd_note $19, NOTELEN_06
	snd_note $17, NOTELEN_09
	snd_note $1B
	snd_note $1E, NOTELEN_06
	snd_note $19, NOTELEN_09
	snd_note $1D
	snd_note $19, NOTELEN_06
	snd_note $17, NOTELEN_09
	snd_note $16
	snd_note $14, NOTELEN_06
	snd_note $19, NOTELEN_09
	snd_note $1D
	snd_note $19, NOTELEN_06
	snd_note $17, NOTELEN_09
	snd_note $1E
	snd_note $17, NOTELEN_06
	snd_note $1B, NOTELEN_09
	snd_note $1F
	snd_note $1B, NOTELEN_06
	snd_note $19, NOTELEN_09
	snd_note $18
	snd_note $16, NOTELEN_06
	snd_note $1B, NOTELEN_09
	snd_note $1F
	snd_note $1B, NOTELEN_06
	snd_note $19, NOTELEN_09
	snd_note $1D
	snd_note $20, NOTELEN_06
	snd_note $1B, NOTELEN_09
	snd_note $1F
	snd_note $1B, NOTELEN_06
	snd_note $19, NOTELEN_09
	snd_note $18
	snd_note $16, NOTELEN_06
	snd_note $1B, NOTELEN_09
	snd_note $1F
	snd_note $1B, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_note $19, NOTELEN_06
	snd_note $19, NOTELEN_03
	snd_note $1A
	snd_note $00
	snd_note $1A, NOTELEN_06
	snd_note $1B, NOTELEN_09
	snd_note $1F, NOTELEN_03
	snd_note $00
	snd_note $1B
	snd_note $00
	snd_note $19
	snd_note $00
	snd_note $19, NOTELEN_09
	snd_note $1D, NOTELEN_03
	snd_note $00
	snd_note $19
	snd_note $00
	snd_note $1B, NOTELEN_09
	snd_note $1F, NOTELEN_03
	snd_note $00
	snd_note $1B
	snd_note $00
	snd_note $19
	snd_note $00
	snd_note $19, NOTELEN_09
	snd_note $1D, NOTELEN_03
	snd_note $00
	snd_note $19
	snd_note $00
	snd_note $1B, NOTELEN_09
	snd_note $1F, NOTELEN_03
	snd_note $00
	snd_note $1B
	snd_note $00
	snd_note $19
	snd_note $00
	snd_note $19, NOTELEN_09
	snd_note $1D, NOTELEN_03
	snd_note $00
	snd_note $20
	snd_note $00
	snd_note $1B, NOTELEN_09
	snd_note $1F, NOTELEN_03
	snd_note $00
	snd_note $1B
	snd_note $00
	snd_note $19
	snd_note $00
	snd_note $19, NOTELEN_06
	snd_note $18, NOTELEN_03
	snd_note $16
	snd_note $00
	snd_note $18
	snd_note $00
	snd_jp SndData_0C_Ch2
SndData_0C_Ch1:
	snd_duty SNDDUTY_12, $02
	snd_note $1B, NOTELEN_03
	snd_note $1D
	snd_note $1E
	snd_note $20
	snd_note $22
	snd_note $25
	snd_note $00
	snd_note $24
	snd_note $00
	snd_note $20
	snd_note $00
	snd_note $22
	snd_note $00
	snd_note $22
	snd_note $1E
	snd_note $00
	snd_note $1B
	snd_note $1D
	snd_note $1E
	snd_note $20
	snd_note $22
	snd_note $25
	snd_note $00
	snd_note $24
	snd_note $00
	snd_note $27
	snd_note $26
	snd_note $27
	snd_note $00, NOTELEN_0C
	snd_note $1B, NOTELEN_03
	snd_note $1D
	snd_note $1E
	snd_note $20
	snd_note $22
	snd_note $25
	snd_note $00
	snd_note $24
	snd_note $00
	snd_note $20
	snd_note $00
	snd_note $22
	snd_note $00
	snd_note $22
	snd_note $1E
	snd_note $00
	snd_note $1B
	snd_note $1D
	snd_note $1E
	snd_note $20
	snd_note $22
	snd_note $25
	snd_note $00
	snd_note $24
	snd_note $00, NOTELEN_0C
	snd_note $27
	snd_duty SNDDUTY_12, $29
	snd_note $2C, NOTELEN_06
	snd_note $27, NOTELEN_03
	snd_note $2A, NOTELEN_06
	snd_note $2E
	snd_note $2C, NOTELEN_CUSTOM, $0F
	snd_note $2C, NOTELEN_06
	snd_note $27
	snd_note $2A
	snd_note $22, NOTELEN_03
	snd_note $25, NOTELEN_06
	snd_note $29
	snd_note $2A, NOTELEN_CUSTOM, $0F
	snd_note $2A, NOTELEN_06
	snd_note $27
	snd_note $2C
	snd_note $27, NOTELEN_03
	snd_note $2A, NOTELEN_06
	snd_note $2E
	snd_note $2C, NOTELEN_CUSTOM, $0F
	snd_note $2C, NOTELEN_06
	snd_note $27
	snd_note $2A
	snd_note $22, NOTELEN_03
	snd_note $25, NOTELEN_06
	snd_note $29
	snd_note $2A, NOTELEN_CUSTOM, $0F
	snd_note $2A, NOTELEN_06
	snd_note $27
	snd_note $2C
	snd_note $27, NOTELEN_03
	snd_note $2A, NOTELEN_06
	snd_note $2E
	snd_note $2C, NOTELEN_CUSTOM, $0F
	snd_note $2C, NOTELEN_06
	snd_note $27
	snd_note $2A
	snd_note $22, NOTELEN_03
	snd_note $25, NOTELEN_06
	snd_note $29
	snd_note $2A, NOTELEN_CUSTOM, $0F
	snd_note $2A, NOTELEN_06
	snd_note $27
	snd_duty SNDDUTY_12, $02
	snd_note $1B, NOTELEN_03
	snd_note $1D
	snd_note $1E
	snd_note $20
	snd_note $22
	snd_note $25
	snd_note $00
	snd_note $24
	snd_note $00
	snd_note $20
	snd_note $00
	snd_note $22
	snd_note $00
	snd_note $22
	snd_note $1E
	snd_note $00
	snd_note $1B
	snd_note $1D
	snd_note $1E
	snd_note $20
	snd_note $22
	snd_note $25
	snd_note $00
	snd_note $27
	snd_note $00, NOTELEN_0C
	snd_duty SNDDUTY_12, $00
	snd_note $2A, NOTELEN_01
	snd_note $2C
	snd_note $2D
	snd_note $2F
	snd_note $31
	snd_note $33
	snd_note $34
	snd_note $36
	snd_note $38
	snd_note $39
	snd_note $3B
	snd_note $3D
	snd_note $2C, NOTELEN_06
	snd_note $2E, NOTELEN_03
	snd_note $30, NOTELEN_06
	snd_note $31
	snd_note $33, NOTELEN_09
	snd_note $31, NOTELEN_06
	snd_note $30
	snd_note $2E
	snd_note $2C
	snd_note $2E, NOTELEN_03
	snd_note $30, NOTELEN_06
	snd_note $2C
	snd_note $2A, NOTELEN_09
	snd_note $29, NOTELEN_06
	snd_note $2A
	snd_note $29
	snd_duty SNDDUTY_12, $29
	snd_note $2C
	snd_note $27, NOTELEN_03
	snd_note $2A, NOTELEN_06
	snd_note $2E
	snd_note $2C, NOTELEN_CUSTOM, $0F
	snd_note $2C, NOTELEN_06
	snd_note $27
	snd_note $2A
	snd_note $22, NOTELEN_03
	snd_note $25, NOTELEN_06
	snd_note $29
	snd_note $2A, NOTELEN_CUSTOM, $0F
	snd_note $2A, NOTELEN_06
	snd_note $27
	snd_duty SNDDUTY_12, $00
	snd_note $2C
	snd_note $2E, NOTELEN_03
	snd_note $30, NOTELEN_06
	snd_note $31
	snd_note $33, NOTELEN_09
	snd_note $31, NOTELEN_06
	snd_note $30
	snd_note $2E
	snd_note $2C
	snd_note $2E, NOTELEN_03
	snd_note $30, NOTELEN_06
	snd_note $2C
	snd_note $2A, NOTELEN_09
	snd_note $29, NOTELEN_06
	snd_note $2A
	snd_note $29
	snd_duty SNDDUTY_12, $02
	snd_note $1B, NOTELEN_03
	snd_note $1D
	snd_note $1E
	snd_note $20
	snd_note $22
	snd_note $25, NOTELEN_06
	snd_note $24
	snd_note $20
	snd_note $22
	snd_note $22, NOTELEN_03
	snd_note $1E, NOTELEN_06
	snd_note $1B, NOTELEN_03
	snd_note $1D
	snd_note $1E
	snd_note $20
	snd_note $22
	snd_note $25, NOTELEN_06
	snd_note $24
	snd_note $20
	snd_note $22
	snd_note $22, NOTELEN_03
	snd_note $1E, NOTELEN_06
	snd_duty SNDDUTY_12, $28
	snd_note $31
	snd_note $29, NOTELEN_03
	snd_note $2C, NOTELEN_06
	snd_note $31
	snd_note $2F
	snd_note $2F
	snd_note $2E, NOTELEN_03
	snd_note $2C, NOTELEN_06
	snd_note $2E
	snd_note $31
	snd_note $29, NOTELEN_03
	snd_note $2C, NOTELEN_06
	snd_note $31
	snd_note $2F
	snd_note $2F
	snd_note $2E, NOTELEN_03
	snd_note $2C, NOTELEN_0C
	snd_note $31, NOTELEN_06
	snd_note $29, NOTELEN_03
	snd_note $2C, NOTELEN_06
	snd_note $31
	snd_note $2F
	snd_note $2F
	snd_note $2E, NOTELEN_03
	snd_note $2C, NOTELEN_06
	snd_note $2E
	snd_note $31
	snd_note $29, NOTELEN_03
	snd_note $2C, NOTELEN_06
	snd_note $31
	snd_note $2F
	snd_note $2F
	snd_note $2E, NOTELEN_03
	snd_note $2C, NOTELEN_0C
	snd_note $31, NOTELEN_06
	snd_note $29, NOTELEN_03
	snd_note $2C, NOTELEN_06
	snd_note $31
	snd_note $2F
	snd_note $2F
	snd_note $2E, NOTELEN_03
	snd_note $2C, NOTELEN_06
	snd_note $2E
	snd_note $31
	snd_note $29, NOTELEN_03
	snd_note $2C, NOTELEN_06
	snd_note $31
	snd_note $2F
	snd_note $2F
	snd_note $2E, NOTELEN_03
	snd_note $2C, NOTELEN_0C
	snd_note $31, NOTELEN_06
	snd_note $29, NOTELEN_03
	snd_note $2C, NOTELEN_06
	snd_note $31
	snd_note $2F
	snd_note $2F
	snd_note $2E, NOTELEN_03
	snd_note $2C, NOTELEN_06
	snd_note $2E
	snd_note $31
	snd_note $29, NOTELEN_03
	snd_note $2C, NOTELEN_06
	snd_note $31
	snd_note $2F
	snd_note $2F
	snd_note $2E, NOTELEN_03
	snd_note $2C, NOTELEN_06
	snd_note $2A
	snd_note $33
	snd_note $2B, NOTELEN_03
	snd_note $2E, NOTELEN_06
	snd_note $33
	snd_note $31
	snd_note $31
	snd_note $30, NOTELEN_03
	snd_note $2E, NOTELEN_06
	snd_note $30
	snd_note $33
	snd_note $2B, NOTELEN_03
	snd_note $2E, NOTELEN_06
	snd_note $33
	snd_note $31
	snd_note $31
	snd_note $30, NOTELEN_03
	snd_note $2E, NOTELEN_06
	snd_note $2C
	snd_note $33
	snd_note $2B, NOTELEN_03
	snd_note $2E, NOTELEN_06
	snd_note $33
	snd_note $31
	snd_note $31
	snd_note $30, NOTELEN_03
	snd_note $2E, NOTELEN_06
	snd_note $30
	snd_note $33
	snd_note $2B, NOTELEN_03
	snd_note $2E, NOTELEN_06
	snd_note $33
	snd_note $31
	snd_note $31
	snd_note $30, NOTELEN_03
	snd_note $2E, NOTELEN_06
	snd_note $2C
	snd_note $33
	snd_note $2B, NOTELEN_03
	snd_note $2E, NOTELEN_06
	snd_note $33
	snd_note $31
	snd_note $31
	snd_note $30, NOTELEN_03
	snd_note $2E, NOTELEN_06
	snd_note $30
	snd_note $33
	snd_note $2B, NOTELEN_03
	snd_note $2E, NOTELEN_06
	snd_note $33
	snd_note $31
	snd_note $31
	snd_note $30, NOTELEN_03
	snd_note $2E, NOTELEN_06
	snd_note $2C
	snd_note $33
	snd_note $2B, NOTELEN_03
	snd_note $2E, NOTELEN_06
	snd_note $33
	snd_note $31
	snd_note $31
	snd_note $30, NOTELEN_03
	snd_note $2E, NOTELEN_06
	snd_note $30
	snd_note $33
	snd_note $2B, NOTELEN_03
	snd_note $2E, NOTELEN_06
	snd_note $33
	snd_note $31
	snd_note $31
	snd_note $30, NOTELEN_03
	snd_note $2E, NOTELEN_06
	snd_note $30
	snd_jp SndData_0C_Ch1
SndData_0C_Ch4:
	snd_duty SNDDUTY_12, $00
	snd_call .sub0
	snd_call .sub0
	snd_call .sub0
	snd_call .sub0
	snd_call .sub0
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_var iSndChInfo_24, $04
	.loop0:
		snd_noteex PRESET_01
		snd_noteex PRESET_02
		snd_noteex PRESET_02
		snd_noteex PRESET_01
		snd_noteex PRESET_00
		snd_noteex PRESET_02
		snd_noteex PRESET_02
		snd_noteex PRESET_00
		snd_noteex PRESET_00
		snd_noteex PRESET_02
		snd_noteex PRESET_02
		snd_noteex PRESET_00
		snd_noteex PRESET_00
		snd_noteex PRESET_02
		snd_noteex PRESET_00
		snd_noteex PRESET_01
		snd_noteex PRESET_01
		snd_noteex PRESET_00
		snd_noteex PRESET_02
		snd_noteex PRESET_01
		snd_noteex PRESET_00
		snd_noteex PRESET_02
		snd_noteex PRESET_02
		snd_noteex PRESET_00
		snd_noteex PRESET_00
		snd_noteex PRESET_02
		snd_noteex PRESET_02
		snd_noteex PRESET_00
		snd_noteex PRESET_00
		snd_noteex PRESET_02
		snd_noteex PRESET_00
		snd_noteex PRESET_01
		snd_djnz iSndChInfo_24, .loop0
	snd_var iSndChInfo_24, $08
	.loop1:
		snd_noteex PRESET_01
		snd_noteex PRESET_02
		snd_noteex PRESET_02
		snd_noteex PRESET_07
		snd_noteex PRESET_01
		snd_noteex PRESET_02
		snd_noteex PRESET_02
		snd_noteex PRESET_02
		snd_noteex PRESET_01
		snd_noteex PRESET_02
		snd_noteex PRESET_02
		snd_noteex PRESET_05
		snd_noteex PRESET_01
		snd_noteex PRESET_02
		snd_noteex PRESET_02
		snd_noteex PRESET_02
		snd_djnz iSndChInfo_24, .loop1
	snd_var iSndChInfo_24, $07
	.loop2:
		snd_noteex PRESET_01
		snd_noteex PRESET_02
		snd_noteex PRESET_02
		snd_noteex PRESET_01
		snd_noteex PRESET_02
		snd_noteex PRESET_01
		snd_noteex PRESET_02
		snd_noteex PRESET_01
		snd_noteex PRESET_02
		snd_noteex PRESET_01
		snd_noteex PRESET_02
		snd_noteex PRESET_01
		snd_noteex PRESET_01
		snd_noteex PRESET_02
		snd_noteex PRESET_02
		snd_noteex PRESET_02
		snd_djnz iSndChInfo_24, .loop2
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_00
	snd_jp SndData_0C_Ch4
.sub0:
	snd_noteex PRESET_01, NOTELEN_03
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_ret
SndHeader_0D:
	db 4 ; Number of slots
.slot0:
	db SNDSLOT0 ; Slot location
	db SNDX_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_01
	db INSTR_NONE ; iSndChInfo_02
	db VIBRATO_35 ; iSndChInfo_03
	db 2 ; iSndChInfo_04
	db 121 ; iSndChInfo_05
	db SNDCH_WAVE ; iSndChInfo_06
	dw SndData_0D_Ch3 ; Data pointer
	db $80 ; [PLACEHOLDER] ; iSndChInfo_09
	db SNDOUT_CHALL ; iSndChInfo_0A
.slot1:
	db SNDSLOT1 ; Slot location
	db SNDX_CH123 ; iSndChInfo_Status
	db 13 ; iSndChInfo_01
	db INSTR_2E ; iSndChInfo_02
	db VIBRATO_35 ; iSndChInfo_03
	db -10 ; iSndChInfo_04
	db 121 ; iSndChInfo_05
	db SNDCH_PULSE2 ; iSndChInfo_06
	dw SndData_0D_Ch2 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_09
	db SNDOUT_CHALL ; iSndChInfo_0A
.slot2:
	db SNDSLOT2 ; Slot location
	db SNDX_CH123 ; iSndChInfo_Status
	db 8 ; iSndChInfo_01
	db INSTR_2E ; iSndChInfo_02
	db VIBRATO_33 ; iSndChInfo_03
	db -10 ; iSndChInfo_04
	db 121 ; iSndChInfo_05
	db SNDCH_PULSE1 ; iSndChInfo_06
	dw SndData_0D_Ch1 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_09
	db SNDOUT_CHALL ; iSndChInfo_0A
.slot3:
	db SNDSLOT3 ; Slot location
	db SNDX_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_01
	db INSTR_NONE ; iSndChInfo_02
	db VIBRATO_NONE ; iSndChInfo_03
	db 0 ; iSndChInfo_04
	db 121 ; iSndChInfo_05
	db SNDCH_NOISE ; iSndChInfo_06
	dw SndData_0D_Ch4 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_09
	db SNDOUT_CHALL ; iSndChInfo_0A
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
	snd_var iSndChInfo_24, $07
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
		snd_djnz iSndChInfo_24, .sub0loop0
	snd_ret
SndHeader_14:
	db 4 ; Number of slots
.slot0:
	db SNDSLOT0 ; Slot location
	db SNDX_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_01
	db INSTR_NONE ; iSndChInfo_02
	db VIBRATO_35 ; iSndChInfo_03
	db -2 ; iSndChInfo_04
	db 108 ; iSndChInfo_05
	db SNDCH_WAVE ; iSndChInfo_06
	dw SndData_14_Ch3 ; Data pointer
	db $80 ; [PLACEHOLDER] ; iSndChInfo_09
	db SNDOUT_CHALL ; iSndChInfo_0A
.slot1:
	db SNDSLOT1 ; Slot location
	db SNDX_CH123 ; iSndChInfo_Status
	db 12 ; iSndChInfo_01
	db INSTR_NONE ; iSndChInfo_02
	db VIBRATO_35 ; iSndChInfo_03
	db -14 ; iSndChInfo_04
	db 108 ; iSndChInfo_05
	db SNDCH_PULSE2 ; iSndChInfo_06
	dw SndData_14_Ch2 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_09
	db SNDOUT_CHALL ; iSndChInfo_0A
.slot2:
	db SNDSLOT2 ; Slot location
	db SNDX_CH123 ; iSndChInfo_Status
	db 8 ; iSndChInfo_01
	db INSTR_NONE ; iSndChInfo_02
	db VIBRATO_35 ; iSndChInfo_03
	db -14 ; iSndChInfo_04
	db 108 ; iSndChInfo_05
	db SNDCH_PULSE1 ; iSndChInfo_06
	dw SndData_14_Ch1 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_09
	db SNDOUT_CHALL ; iSndChInfo_0A
.slot3:
	db SNDSLOT3 ; Slot location
	db SNDX_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_01
	db INSTR_NONE ; iSndChInfo_02
	db VIBRATO_NONE ; iSndChInfo_03
	db 0 ; iSndChInfo_04
	db 108 ; iSndChInfo_05
	db SNDCH_NOISE ; iSndChInfo_06
	dw SndData_14_Ch4 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_09
	db SNDOUT_CHALL ; iSndChInfo_0A
SndData_14_Ch3:
	snd_wave WAVE_00
	snd_instrument INSTR_34
	snd_inc_vol -4
	snd_note $36, NOTELEN_1E
	snd_note $2B, NOTELEN_06
	snd_note $36
	snd_note $32, NOTELEN_CUSTOM, $1E
	snd_note $34, NOTELEN_18
	snd_note $32, NOTELEN_1E
	snd_note $2F, NOTELEN_06
	snd_note $32
	snd_note $28, NOTELEN_0C
	snd_instrument INSTR_33
	snd_inc_vol -2
	snd_note $4A, NOTELEN_02
	snd_note $49
	snd_note $47
	snd_note $45
	snd_note $43
	snd_note $42
	snd_note $40
	snd_note $3E
	snd_note $3D
	snd_note $3B
	snd_note $39
	snd_note $37
	snd_note $36
	snd_note $34
	snd_note $32
	snd_note $31
	snd_note $2F
	snd_note $2D
	snd_note $2B
	snd_note $2A
	snd_note $28
	snd_inc_vol 2
	snd_note $28, NOTELEN_0C
	snd_wave WAVE_0E
	snd_instrument INSTR_34
	snd_inc_vol 2
	snd_note $39, NOTELEN_12
	snd_note $37, NOTELEN_0C
	snd_note $36, NOTELEN_CUSTOM, $24
	snd_inc_vol -5
	snd_instrument INSTR_NONE
	snd_inc_freq_offset -1
	snd_note $36, NOTELEN_CUSTOM, $06
	snd_inc_vol 5
	snd_instrument INSTR_34
	snd_inc_freq_offset 1
	snd_note $34, NOTELEN_06
	snd_note $36, NOTELEN_CUSTOM, $21
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $36, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $30, NOTELEN_0C
	snd_note $2F, NOTELEN_CUSTOM, $18
	snd_inc_vol -5
	snd_instrument INSTR_NONE
	snd_inc_freq_offset -1
	snd_note $2F, NOTELEN_CUSTOM, $06
	snd_inc_vol 5
	snd_instrument INSTR_34
	snd_inc_freq_offset 1
	snd_wave WAVE_05
	snd_instrument INSTR_33
	snd_note $3B, NOTELEN_0C
	snd_note $39
	snd_note $37
	snd_wave WAVE_0E
	snd_instrument INSTR_34
	snd_note $3B, NOTELEN_12
	snd_note $39, NOTELEN_0C
	snd_note $37, NOTELEN_CUSTOM, $27
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $37, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $36, NOTELEN_06
	snd_note $37, NOTELEN_CUSTOM, $1E
	snd_inc_vol -5
	snd_instrument INSTR_NONE
	snd_inc_freq_offset -1
	snd_note $37, NOTELEN_CUSTOM, $06
	snd_inc_vol 5
	snd_instrument INSTR_34
	snd_inc_freq_offset 1
	snd_note $32, NOTELEN_0C
	snd_note $31, NOTELEN_CUSTOM, $33
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $31, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_wave WAVE_05
	snd_instrument INSTR_33
	snd_inc_vol 2
	snd_note $31, NOTELEN_06
	snd_note $31
	snd_note $31, NOTELEN_12
	snd_wave WAVE_09
	snd_instrument INSTR_NONE
	snd_note $2D, NOTELEN_06
	snd_note $39
	snd_note $36, NOTELEN_CUSTOM, $18
	snd_inc_vol -5
	snd_instrument INSTR_NONE
	snd_inc_freq_offset -1
	snd_note $36, NOTELEN_CUSTOM, $06
	snd_inc_vol 5
	snd_instrument INSTR_NONE
	snd_inc_freq_offset 1
	snd_note $34, NOTELEN_0C
	snd_note $32
	snd_wave WAVE_05
	snd_instrument INSTR_33
	snd_note $31, NOTELEN_06
	snd_note $31
	snd_note $31, NOTELEN_12
	snd_wave WAVE_09
	snd_instrument INSTR_NONE
	snd_note $32, NOTELEN_06
	snd_note $2F
	snd_note $32, NOTELEN_CUSTOM, $18
	snd_inc_vol -5
	snd_instrument INSTR_NONE
	snd_inc_freq_offset -1
	snd_note $32, NOTELEN_CUSTOM, $06
	snd_inc_vol 5
	snd_instrument INSTR_NONE
	snd_inc_freq_offset 1
	snd_note $34, NOTELEN_0C
	snd_note $32
	snd_wave WAVE_05
	snd_instrument INSTR_33
	snd_note $31, NOTELEN_06
	snd_note $31
	snd_note $31, NOTELEN_12
	snd_wave WAVE_09
	snd_instrument INSTR_NONE
	snd_note $2D, NOTELEN_06
	snd_note $39
	snd_note $36, NOTELEN_CUSTOM, $18
	snd_inc_vol -5
	snd_instrument INSTR_NONE
	snd_inc_freq_offset -1
	snd_note $36, NOTELEN_CUSTOM, $06
	snd_inc_vol 5
	snd_instrument INSTR_NONE
	snd_inc_freq_offset 1
	snd_note $34, NOTELEN_0C
	snd_note $32
	snd_wave WAVE_05
	snd_instrument INSTR_33
	snd_note $31, NOTELEN_06
	snd_note $31
	snd_note $31, NOTELEN_12
	snd_wave WAVE_09
	snd_instrument INSTR_NONE
	snd_note $32, NOTELEN_06
	snd_note $2F
	snd_note $32, NOTELEN_CUSTOM, $30
	snd_inc_vol -5
	snd_instrument INSTR_NONE
	snd_inc_freq_offset -1
	snd_note $32, NOTELEN_CUSTOM, $06
	snd_inc_vol 5
	snd_instrument INSTR_NONE
	snd_inc_freq_offset 1
	snd_wave WAVE_00
	snd_instrument INSTR_33
	snd_inc_vol -2
	snd_fade SSF_FADEOUT, 0, 12
	snd_note $45, NOTELEN_02
	snd_note $42
	snd_note $3E
	snd_note $3D
	snd_note $39
	snd_note $36
	snd_note $32
	snd_note $31
	snd_note $2D
	snd_note $2A
	snd_note $26
	snd_note $25
	snd_note $26
	snd_note $2A
	snd_note $2D
	snd_note $31
	snd_note $32
	snd_note $36
	snd_note $32
	snd_note $31
	snd_note $2D
	snd_note $2A
	snd_note $26
	snd_note $25
	snd_note $21
	snd_note $1E
	snd_note $1A
	snd_note $19
	snd_note $1A
	snd_note $1E
	snd_note $21
	snd_note $25
	snd_note $26
	snd_note $2A
	snd_note $26
	snd_note $25
	snd_note $21
	snd_note $1E
	snd_note $1A
	snd_note $19
	snd_note $15
	snd_note $12
	snd_note $0E, NOTELEN_0C
	snd_end_saveid
SndData_14_Ch2:
	snd_duty SNDDUTY_25, $00
	snd_instrument INSTR_34
	snd_note $15, NOTELEN_12
	snd_note $15, NOTELEN_06
	snd_note $1C, NOTELEN_12
	snd_note $15, NOTELEN_0C
	snd_note $15, NOTELEN_0C
	snd_note $15, NOTELEN_06
	snd_note $1C, NOTELEN_0C
	snd_note $1C
	snd_note $15, NOTELEN_12
	snd_note $15, NOTELEN_06
	snd_note $1C, NOTELEN_12
	snd_note $15, NOTELEN_0C
	snd_note $15, NOTELEN_0C
	snd_note $15, NOTELEN_06
	snd_note $1C, NOTELEN_0C
	snd_note $1C
	snd_note $1A, NOTELEN_12
	snd_note $1A, NOTELEN_06
	snd_note $21, NOTELEN_12
	snd_note $1A, NOTELEN_0C
	snd_note $1A, NOTELEN_0C
	snd_note $1A, NOTELEN_06
	snd_note $21, NOTELEN_0C
	snd_note $21
	snd_note $1E, NOTELEN_12
	snd_note $1E, NOTELEN_06
	snd_note $24, NOTELEN_12
	snd_note $23, NOTELEN_0C
	snd_note $23, NOTELEN_0C
	snd_note $23, NOTELEN_06
	snd_note $1E, NOTELEN_0C
	snd_note $1E
	snd_note $1C, NOTELEN_12
	snd_note $1C, NOTELEN_06
	snd_note $23, NOTELEN_12
	snd_note $1C, NOTELEN_0C
	snd_note $1C, NOTELEN_0C
	snd_note $1C, NOTELEN_06
	snd_note $23, NOTELEN_0C
	snd_note $23
	snd_note $1C, NOTELEN_12
	snd_note $1C, NOTELEN_06
	snd_note $23, NOTELEN_12
	snd_note $21, NOTELEN_0C
	snd_note $21, NOTELEN_0C
	snd_note $15, NOTELEN_06
	snd_note $15, NOTELEN_03
	snd_note $21
	snd_note $17, NOTELEN_06
	snd_note $18
	snd_note $19
	snd_var iSndChInfo_24, $02
	.loop:
		snd_note $1A, NOTELEN_0C
		snd_note $1A, NOTELEN_09
		snd_note $1A, NOTELEN_03
		snd_note $1E, NOTELEN_06
		snd_note $1F
		snd_note $20
		snd_note $21
		snd_note $00
		snd_note $21
		snd_note $21, NOTELEN_09
		snd_note $21, NOTELEN_03
		snd_note $21, NOTELEN_06
		snd_note $1C
		snd_note $1E
		snd_note $21
		snd_djnz iSndChInfo_24, .loop
	snd_note $1A, NOTELEN_0C
	snd_note $1A, NOTELEN_09
	snd_note $1A, NOTELEN_03
	snd_note $1E, NOTELEN_06
	snd_note $1F
	snd_note $20
	snd_note $21
	snd_note $00
	snd_note $21
	snd_note $21, NOTELEN_09
	snd_note $21, NOTELEN_03
	snd_note $21
	snd_note $2D
	snd_note $1C, NOTELEN_06
	snd_note $1E
	snd_note $21
	snd_note $1A, NOTELEN_0C
	snd_note $1A, NOTELEN_09
	snd_note $1A, NOTELEN_03
	snd_note $1E, NOTELEN_06
	snd_note $1F
	snd_note $20
	snd_note $21
	snd_note $00
	snd_note $21
	snd_note $21, NOTELEN_09
	snd_note $21, NOTELEN_03
	snd_note $26
	snd_note $23, NOTELEN_06
	snd_note $21
	snd_note $1E
	snd_note $1C, NOTELEN_03
	snd_instrument INSTR_36
	snd_note $1A, NOTELEN_CUSTOM, $60
	snd_end
SndData_14_Ch1:
	snd_duty SNDDUTY_50, $00
	snd_instrument INSTR_34
	snd_inc_freq_offset -2
	snd_inc_vol -2
	snd_vibrato VIBRATO_33
	snd_note $00, NOTELEN_04
	snd_note $36, NOTELEN_1E
	snd_note $2B, NOTELEN_06
	snd_note $36
	snd_note $32, NOTELEN_CUSTOM, $1E
	snd_note $34, NOTELEN_18
	snd_note $32, NOTELEN_1E
	snd_note $2F, NOTELEN_06
	snd_note $32
	snd_note $28, NOTELEN_0C
	snd_duty SNDDUTY_50, $00
	snd_instrument INSTR_33
	snd_inc_vol -2
	snd_note $4A, NOTELEN_02
	snd_note $49
	snd_note $47
	snd_note $45
	snd_note $43
	snd_note $42
	snd_note $40
	snd_note $3E
	snd_note $3D
	snd_note $3B
	snd_note $39
	snd_note $37
	snd_note $36
	snd_note $34
	snd_note $32
	snd_note $31
	snd_note $2F
	snd_note $2D
	snd_note $2B
	snd_note $2A, NOTELEN_01
	snd_duty SNDDUTY_25, $00
	snd_instrument INSTR_30
	snd_inc_freq_offset 2
	snd_inc_vol 4
	snd_vibrato VIBRATO_33
	snd_note $2D, NOTELEN_2A
	snd_note $2D, NOTELEN_CUSTOM, $33
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $2D, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $2D, NOTELEN_2A
	snd_note $2B, NOTELEN_CUSTOM, $33
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $2B, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $2B, NOTELEN_2A
	snd_note $2B, NOTELEN_CUSTOM, $33
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $2B, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $2B, NOTELEN_2A
	snd_note $2B, NOTELEN_CUSTOM, $33
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $2B, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_duty SNDDUTY_12, $00
	snd_inc_vol -2
	snd_note $2A, NOTELEN_2A
	snd_note $2B, NOTELEN_CUSTOM, $36
	snd_note $2D, NOTELEN_2A
	snd_note $2F, NOTELEN_CUSTOM, $36
	snd_note $31, NOTELEN_2A
	snd_note $32, NOTELEN_CUSTOM, $36
	snd_note $36, NOTELEN_2A
	snd_note $37, NOTELEN_CUSTOM, $36
	snd_instrument INSTR_36
	snd_inc_vol 2
	snd_note $31, NOTELEN_CUSTOM, $60
	snd_end
SndData_14_Ch4:
	snd_duty SNDDUTY_12, $00
	snd_var iSndChInfo_24, $03
	.loop0:
		snd_noteex PRESET_01, NOTELEN_06
		snd_noteex PRESET_02
		snd_noteex PRESET_02
		snd_noteex PRESET_01
		snd_noteex PRESET_01
		snd_noteex PRESET_02
		snd_noteex PRESET_02
		snd_noteex PRESET_01
		snd_djnz iSndChInfo_24, .loop0
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_01
	snd_var iSndChInfo_24, $07
	.loop1:
		snd_noteex PRESET_01
		snd_noteex PRESET_02
		snd_noteex PRESET_02
		snd_noteex PRESET_01
		snd_noteex PRESET_01
		snd_noteex PRESET_02
		snd_noteex PRESET_02
		snd_noteex PRESET_01
		snd_djnz iSndChInfo_24, .loop1
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_02, NOTELEN_03
	snd_noteex PRESET_00
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_02, NOTELEN_03
	snd_noteex PRESET_00
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_02, NOTELEN_03
	snd_noteex PRESET_00
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_01, NOTELEN_06
	snd_noteex PRESET_00
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_00, NOTELEN_30
	snd_end
SndHeader_16:
	db 4 ; Number of slots
.slot0:
	db SNDSLOT0 ; Slot location
	db SNDX_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_01
	db INSTR_NONE ; iSndChInfo_02
	db VIBRATO_NONE ; iSndChInfo_03
	db 0 ; iSndChInfo_04
	db 145 ; iSndChInfo_05
	db SNDCH_NOISE ; iSndChInfo_06
	dw SndData_16_Ch4 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_09
	db SNDOUT_CHALL ; iSndChInfo_0A
.slot1:
	db SNDSLOT1 ; Slot location
	db SNDX_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_01
	db INSTR_32 ; iSndChInfo_02
	db VIBRATO_37 ; iSndChInfo_03
	db 0 ; iSndChInfo_04
	db 145 ; iSndChInfo_05
	db SNDCH_WAVE ; iSndChInfo_06
	dw SndData_16_Ch3 ; Data pointer
	db WAVE_07 ; iSndChInfo_09
	db SNDOUT_CHALL ; iSndChInfo_0A
.slot2:
	db SNDSLOT2 ; Slot location
	db SNDX_CH123 ; iSndChInfo_Status
	db 9 ; iSndChInfo_01
	db INSTR_41 ; iSndChInfo_02
	db VIBRATO_NONE ; iSndChInfo_03
	db -12 ; iSndChInfo_04
	db 145 ; iSndChInfo_05
	db SNDCH_PULSE2 ; iSndChInfo_06
	dw SndData_16_Ch2 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_09
	db SNDOUT_CHALL ; iSndChInfo_0A
.slot3:
	db SNDSLOT3 ; Slot location
	db SNDX_CH123 ; iSndChInfo_Status
	db 11 ; iSndChInfo_01
	db INSTR_41 ; iSndChInfo_02
	db VIBRATO_37 ; iSndChInfo_03
	db -14 ; iSndChInfo_04
	db 145 ; iSndChInfo_05
	db SNDCH_PULSE1 ; iSndChInfo_06
	dw SndData_16_Ch1 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_09
	db SNDOUT_CHALL ; iSndChInfo_0A
SndData_16_Ch4:
	snd_noteex PRESET_00, NOTELEN_0C
	snd_noteex PRESET_01, NOTELEN_06
	snd_noteex PRESET_00, NOTELEN_0C
	snd_noteex PRESET_01, NOTELEN_06
	snd_noteex PRESET_00, NOTELEN_0C
	snd_jp SndData_16_Ch4
SndData_16_Ch3:
	snd_note $34, NOTELEN_12
	snd_note $34
	snd_note $34, NOTELEN_0C
	snd_jp SndData_16_Ch3
SndData_16_Ch2:
	snd_note $42, NOTELEN_06
	snd_note $42
	snd_note $3F
	snd_note $3F
	snd_note $42, NOTELEN_09
	snd_note $42, NOTELEN_03
	snd_note $3F, NOTELEN_06
	snd_note $3F
	snd_note $42, NOTELEN_06
	snd_note $42
	snd_note $3F
	snd_note $3F, NOTELEN_03
	snd_note $42, NOTELEN_06
	snd_note $42
	snd_note $42, NOTELEN_03
	snd_note $3F, NOTELEN_06
	snd_note $3F
	snd_jp SndData_16_Ch2
SndData_16_Ch1:
	snd_call .sub0
	snd_note $2A
	snd_inc_vol -6
	snd_note $2A
	snd_note $2A
	snd_note $2A
	snd_inc_vol 6
	snd_note $2A
	snd_inc_vol -6
	snd_note $2A
	snd_inc_vol 6
	snd_note $2A
	snd_inc_vol -6
	snd_note $2A
	snd_note $2A
	snd_note $2A
	snd_inc_vol 6
	snd_note $2A
	snd_inc_vol -6
	snd_note $2A
	snd_note $2A
	snd_note $2A
	snd_inc_vol 6
	snd_note $2A
	snd_inc_vol -6
	snd_note $2A
	snd_inc_vol 6
	snd_call .sub0
	snd_inc_base_note -17
	snd_note $3A, NOTELEN_02
	snd_note $3A
	snd_note $3A
	snd_note $3A, NOTELEN_03
	snd_note $3A
	snd_note $35, NOTELEN_02
	snd_note $35
	snd_note $35
	snd_note $35, NOTELEN_03
	snd_note $35
	snd_note $30, NOTELEN_02
	snd_note $30
	snd_note $30
	snd_note $30, NOTELEN_03
	snd_note $30
	snd_note $29, NOTELEN_02
	snd_note $29
	snd_note $29
	snd_note $29, NOTELEN_03
	snd_note $29
	snd_inc_base_note 17
	snd_jp SndData_16_Ch1
.sub0:
	snd_var iSndChInfo_24, $04
	.sub0loop:
		snd_note $2A, NOTELEN_03
		snd_inc_vol -6
		snd_note $2A
		snd_note $2A
		snd_note $2A
		snd_inc_vol 6
		snd_djnz iSndChInfo_24, .sub0loop
	snd_ret
SndHeader_18:
	db 4 ; Number of slots
.slot0:
	db SNDSLOT0 ; Slot location
	db SNDX_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_01
	db INSTR_3D ; iSndChInfo_02
	db VIBRATO_NONE ; iSndChInfo_03
	db 0 ; iSndChInfo_04
	db 138 ; iSndChInfo_05
	db SNDCH_WAVE ; iSndChInfo_06
	dw SndData_18_Ch3 ; Data pointer
	db $80 ; [PLACEHOLDER] ; iSndChInfo_09
	db SNDOUT_CHALL ; iSndChInfo_0A
.slot1:
	db SNDSLOT1 ; Slot location
	db SNDX_CH123 ; iSndChInfo_Status
	db 10 ; iSndChInfo_01
	db INSTR_3D ; iSndChInfo_02
	db VIBRATO_NONE ; iSndChInfo_03
	db -12 ; iSndChInfo_04
	db 138 ; iSndChInfo_05
	db SNDCH_PULSE2 ; iSndChInfo_06
	dw SndData_18_Ch2 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_09
	db SNDOUT_CHALL ; iSndChInfo_0A
.slot2:
	db SNDSLOT2 ; Slot location
	db SNDX_CH123 ; iSndChInfo_Status
	db 12 ; iSndChInfo_01
	db INSTR_2E ; iSndChInfo_02
	db VIBRATO_NONE ; iSndChInfo_03
	db -12 ; iSndChInfo_04
	db 138 ; iSndChInfo_05
	db SNDCH_PULSE1 ; iSndChInfo_06
	dw SndData_18_Ch1 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_09
	db SNDOUT_CHALL ; iSndChInfo_0A
.slot3:
	db SNDSLOT3 ; Slot location
	db SNDX_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_01
	db INSTR_NONE ; iSndChInfo_02
	db VIBRATO_NONE ; iSndChInfo_03
	db 0 ; iSndChInfo_04
	db 138 ; iSndChInfo_05
	db SNDCH_NOISE ; iSndChInfo_06
	dw SndData_18_Ch4 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_09
	db SNDOUT_CHALL ; iSndChInfo_0A
SndData_18_Ch3:
	snd_wave WAVE_07
	snd_note $00, NOTELEN_06
	snd_note $2D
	snd_note $2C
	snd_note $2D, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $2D, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_06
	snd_note $24, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $24, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_06
	snd_note $26, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $26, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_06
	snd_note $29, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $29, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_06
	snd_note $2B, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $2B, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_06
	snd_note $2B
	snd_note $29
	snd_note $2B
	snd_note $2D, NOTELEN_CUSTOM, $06
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $2D, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_03
	snd_note $30, NOTELEN_06
	snd_note $32, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $32, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_06
	snd_note $2B, NOTELEN_01
	snd_note $2C, NOTELEN_CUSTOM, $05
	snd_note $2B, NOTELEN_06
	snd_note $29, NOTELEN_CUSTOM, $06
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $29, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_03
	snd_wave WAVE_05
	snd_instrument INSTR_40
	snd_note $37, NOTELEN_01
	snd_note $38, NOTELEN_CUSTOM, $05
	snd_note $37, NOTELEN_06
	snd_note $35, NOTELEN_CUSTOM, $06
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $35, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_CUSTOM, $15
	snd_note $00, NOTELEN_12
	snd_wave WAVE_07
	snd_instrument INSTR_3D
	snd_note $2C, NOTELEN_01
	snd_note $2D, NOTELEN_CUSTOM, $05
	snd_note $2E, NOTELEN_06
	snd_note $30, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $30, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_06
	snd_note $2E, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $2E, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_06
	snd_note $2D, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $2D, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_06
	snd_note $29, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $29, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_06
	snd_note $29, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $29, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $2B, NOTELEN_06
	snd_note $2C, NOTELEN_01
	snd_note $2D, NOTELEN_03
	snd_note $2D, NOTELEN_02
	snd_inc_vol -1
	snd_note $2D
	snd_note $2D
	snd_note $2D
	snd_inc_vol -1
	snd_note $2D
	snd_note $2D
	snd_note $2D
	snd_inc_vol -1
	snd_note $2D
	snd_note $2D
	snd_note $2D
	snd_wave WAVE_09
	snd_note $29, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $29, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_06
	snd_inc_vol 1
	snd_note $29, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $29, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_06
	snd_inc_vol 1
	snd_note $29, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $29, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_06
	snd_inc_vol 1
	snd_note $29
	snd_note $26, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $26, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $24, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $24, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $26, NOTELEN_06
	snd_note $29, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $29, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $2C, NOTELEN_06
	snd_note $2B, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $2B, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_06
	snd_note $35, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $35, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_12
	snd_wave WAVE_07
	snd_note $29, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $29, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $26, NOTELEN_06
	snd_note $29, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $29, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_18
	snd_wave WAVE_09
	snd_note $2C, NOTELEN_06
	snd_note $2D, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $2D, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $2C, NOTELEN_06
	snd_note $2D, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $2D, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $29, NOTELEN_CUSTOM, $06
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $29, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_03
	snd_note $29, NOTELEN_CUSTOM, $06
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $29, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_09
	snd_wave WAVE_07
	snd_note $29, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $29, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $29, NOTELEN_06
	snd_note $29, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $29, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_12
	snd_wave WAVE_09
	snd_note $30, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $30, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $32, NOTELEN_06
	snd_note $35, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $35, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $39, NOTELEN_06
	snd_note $35, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $35, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_1E
	snd_wave WAVE_07
	snd_note $29, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $29, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $26, NOTELEN_06
	snd_note $29, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $29, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_18
	snd_wave WAVE_09
	snd_note $2C, NOTELEN_06
	snd_note $2D, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $2D, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $2C, NOTELEN_06
	snd_note $2D, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $2D, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $29, NOTELEN_CUSTOM, $06
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $29, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $2C, NOTELEN_01
	snd_note $2D
	snd_note $30
	snd_note $35, NOTELEN_CUSTOM, $06
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $35, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_09
	snd_wave WAVE_07
	snd_note $29, NOTELEN_06
	snd_note $29
	snd_note $29, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $29, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_wave WAVE_09
	snd_note $38, NOTELEN_06
	snd_note $39, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $39, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_06
	snd_note $30, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $30, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $32, NOTELEN_06
	snd_note $35, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $35, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $32, NOTELEN_06
	snd_note $35, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $35, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_wave WAVE_0B
	snd_instrument INSTR_3E
	snd_note $00, NOTELEN_06
	snd_note $39
	snd_note $38
	snd_note $39, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $39, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_06
	snd_note $30, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $30, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_06
	snd_note $32, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $32, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_06
	snd_note $35, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $35, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_06
	snd_note $37, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $37, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_06
	snd_note $37, NOTELEN_06
	snd_note $35
	snd_note $37
	snd_note $39, NOTELEN_CUSTOM, $06
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $39, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_03
	snd_note $3C, NOTELEN_06
	snd_note $3E, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $3E, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_06
	snd_note $37, NOTELEN_01
	snd_note $38, NOTELEN_CUSTOM, $05
	snd_note $37, NOTELEN_06
	snd_note $35, NOTELEN_CUSTOM, $06
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $35, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_CUSTOM, $0F
	snd_wave WAVE_09
	snd_instrument INSTR_3D
	snd_note $30, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $30, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $32, NOTELEN_06
	snd_note $35, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $35, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $38, NOTELEN_01
	snd_note $39, NOTELEN_CUSTOM, $05
	snd_note $35, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $35, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_06
	snd_note $35, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $35, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_06
	snd_wave WAVE_0B
	snd_instrument INSTR_3E
	snd_note $38, NOTELEN_01
	snd_note $39, NOTELEN_CUSTOM, $05
	snd_note $3A, NOTELEN_06
	snd_note $3C, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $3C, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_06
	snd_note $3A, NOTELEN_CUSTOM, $06
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $3A, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_03
	snd_note $39, NOTELEN_CUSTOM, $06
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $39, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_03
	snd_note $35, NOTELEN_CUSTOM, $06
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $35, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_03
	snd_note $35, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $35, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $37, NOTELEN_06
	snd_note $38, NOTELEN_02
	snd_note $39
	snd_note $39
	snd_inc_vol -2
	snd_note $39
	snd_note $39
	snd_note $39
	snd_inc_vol -2
	snd_note $39
	snd_note $39
	snd_note $39
	snd_inc_vol -1
	snd_note $39
	snd_note $39
	snd_note $39
	snd_wave WAVE_09
	snd_inc_vol 2
	snd_instrument INSTR_3D
	snd_note $35, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $35, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_06
	snd_inc_vol 2
	snd_note $35, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $35, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_06
	snd_inc_vol 1
	snd_note $35, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $35, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_inc_vol 1
	snd_note $00, NOTELEN_06
	snd_note $35
	snd_note $32, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $32, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $30, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $30, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $32, NOTELEN_06
	snd_note $35, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $35, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $38, NOTELEN_06
	snd_note $37, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $37, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_06
	snd_note $35, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $35, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_12
	snd_wave WAVE_0B
	snd_instrument INSTR_3E
	snd_note $35, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $35, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $32, NOTELEN_06
	snd_note $35, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $35, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_wave WAVE_09
	snd_instrument INSTR_3D
	snd_note $00, NOTELEN_18
	snd_note $2C, NOTELEN_06
	snd_note $2D, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $2D, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $2C, NOTELEN_06
	snd_note $2D, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $2D, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $29, NOTELEN_CUSTOM, $06
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $29, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_03
	snd_note $29, NOTELEN_CUSTOM, $06
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $29, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_09
	snd_wave WAVE_0B
	snd_instrument INSTR_3E
	snd_note $35, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $35, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $35, NOTELEN_06
	snd_note $35, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $35, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_12
	snd_wave WAVE_09
	snd_instrument INSTR_3D
	snd_note $30, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $30, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $32, NOTELEN_06
	snd_note $35, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $35, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $39, NOTELEN_06
	snd_note $35, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $35, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_12
	snd_note $35, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $35, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_06
	snd_wave WAVE_0B
	snd_instrument INSTR_3E
	snd_note $35, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $35, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $32, NOTELEN_06
	snd_note $35, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $35, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_18
	snd_wave WAVE_09
	snd_instrument INSTR_3D
	snd_note $2C, NOTELEN_06
	snd_note $2D, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $2D, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $2C, NOTELEN_06
	snd_note $2D, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $2D, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $29, NOTELEN_CUSTOM, $06
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $29, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $2C, NOTELEN_01
	snd_note $2D
	snd_note $30
	snd_note $35, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $35, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_0C
	snd_wave WAVE_0B
	snd_instrument INSTR_3E
	snd_note $35, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $35, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $35, NOTELEN_06
	snd_note $35, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $35, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_12
	snd_wave WAVE_09
	snd_instrument INSTR_3D
	snd_note $36, NOTELEN_01
	snd_note $37
	snd_note $38, NOTELEN_CUSTOM, $0A
	snd_note $35, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $35, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $37, NOTELEN_06
	snd_note $32, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $32, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $35, NOTELEN_06
	snd_note $34, NOTELEN_01
	snd_note $33
	snd_note $32
	snd_note $30, NOTELEN_02
	snd_note $00, NOTELEN_CUSTOM, $07
	snd_wave WAVE_01
	snd_note $35, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $35, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $37, NOTELEN_06
	snd_note $39, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $39, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_CUSTOM, $06
	snd_note $3E, NOTELEN_CUSTOM, $1B
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $3E, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_06
	snd_note $40
	snd_note $41, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $41, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $44, NOTELEN_0C
	snd_note $41, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $41, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $3A, NOTELEN_03
	snd_note $39
	snd_note $38, NOTELEN_CUSTOM, $4B
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $38, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_12
	snd_note $35, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $35, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $37, NOTELEN_06
	snd_note $39, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $39, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_CUSTOM, $06
	snd_note $3E, NOTELEN_CUSTOM, $1B
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $3E, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_06
	snd_note $3E, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $3E, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $40, NOTELEN_06
	snd_note $41, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $41, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $44, NOTELEN_2A
	snd_note $43, NOTELEN_02
	snd_note $42
	snd_note $41
	snd_note $40, NOTELEN_30
	snd_wave $40 ; [BUG] Invalid waveform
	snd_inc_vol -5
	snd_note $35, NOTELEN_12
	snd_note $35, NOTELEN_18
	snd_note $35, NOTELEN_06
	snd_note $35, NOTELEN_12
	snd_note $35, NOTELEN_0C
	snd_note $2B
	snd_note $32, NOTELEN_06
	snd_note $35, NOTELEN_12
	snd_note $35, NOTELEN_18
	snd_note $35, NOTELEN_06
	snd_note $35, NOTELEN_12
	snd_note $35, NOTELEN_0C
	snd_note $32, NOTELEN_06
	snd_note $35
	snd_note $35
	snd_note $00
	snd_note $35, NOTELEN_0C
	snd_note $30, NOTELEN_06
	snd_note $35, NOTELEN_12
	snd_note $35, NOTELEN_06
	snd_note $35, NOTELEN_12
	snd_note $35, NOTELEN_0C
	snd_note $2B
	snd_note $32, NOTELEN_06
	snd_note $35, NOTELEN_12
	snd_note $35, NOTELEN_18
	snd_note $35, NOTELEN_06
	snd_note $35, NOTELEN_12
	snd_note $35, NOTELEN_0C
	snd_note $32, NOTELEN_06
	snd_note $33
	snd_note $34
	snd_inc_vol 5
	snd_note $00, NOTELEN_1E
	snd_wave WAVE_07
	snd_note $29, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $29, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $26, NOTELEN_06
	snd_note $29, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $29, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_18
	snd_wave WAVE_09
	snd_note $2C, NOTELEN_06
	snd_note $2D, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $2D, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $2C, NOTELEN_06
	snd_note $2D, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $2D, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $29, NOTELEN_CUSTOM, $06
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $29, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_03
	snd_note $29, NOTELEN_CUSTOM, $06
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $29, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_09
	snd_wave WAVE_07
	snd_note $29, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $29, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $29, NOTELEN_06
	snd_note $29, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $29, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_12
	snd_wave WAVE_09
	snd_note $30, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $30, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $32, NOTELEN_06
	snd_note $35, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $35, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $39, NOTELEN_06
	snd_note $35, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $35, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_1E
	snd_wave WAVE_07
	snd_note $29, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $29, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $26, NOTELEN_06
	snd_note $29, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $29, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_18
	snd_wave WAVE_09
	snd_note $2C, NOTELEN_06
	snd_note $2D, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $2D, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $2C, NOTELEN_06
	snd_note $2D, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $2D, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $29, NOTELEN_CUSTOM, $06
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $29, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $2C, NOTELEN_01
	snd_note $2D
	snd_note $30
	snd_note $35, NOTELEN_CUSTOM, $06
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $35, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_09
	snd_wave WAVE_07
	snd_note $29, NOTELEN_06
	snd_note $29
	snd_note $29, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $29, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_wave WAVE_09
	snd_note $38, NOTELEN_06
	snd_note $39, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $39, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_CUSTOM, $06
	snd_note $30, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $30, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $32, NOTELEN_06
	snd_note $35, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $35, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $32, NOTELEN_06
	snd_note $35, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $35, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_wave WAVE_00
	snd_inc_vol -5
	snd_note $00, NOTELEN_06
	snd_note $3C
	snd_note $3C
	snd_note $3C, NOTELEN_0C
	snd_note $3A, NOTELEN_06
	snd_note $39
	snd_note $3A
	snd_note $3C
	snd_note $40, NOTELEN_0C
	snd_note $41, NOTELEN_02
	snd_note $3E
	snd_inc_vol -1
	snd_note $41
	snd_note $3E
	snd_inc_vol -1
	snd_note $41
	snd_note $3E
	snd_inc_vol -1
	snd_note $41
	snd_note $3E
	snd_note $41
	snd_note $3E
	snd_note $41
	snd_note $3E
	snd_note $41
	snd_note $3E
	snd_note $41
	snd_note $00, NOTELEN_1E
	snd_inc_vol 8
	snd_wave WAVE_07
	snd_note $29, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $29, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $29, NOTELEN_06
	snd_note $29, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $29, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_12
	snd_wave WAVE_09
	snd_note $30, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $30, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $32, NOTELEN_06
	snd_note $35, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $35, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $39, NOTELEN_06
	snd_note $35, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $35, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_wave WAVE_00
	snd_inc_vol -5
	snd_note $00, NOTELEN_0C
	snd_note $3C, NOTELEN_06
	snd_note $3C, NOTELEN_0C
	snd_note $3A, NOTELEN_06
	snd_note $39
	snd_note $3A
	snd_note $3C
	snd_note $40, NOTELEN_0C
	snd_note $41, NOTELEN_02
	snd_note $3E
	snd_inc_vol -1
	snd_note $41
	snd_note $3E
	snd_inc_vol -1
	snd_note $41
	snd_note $3E
	snd_inc_vol -1
	snd_note $41
	snd_note $3E
	snd_note $41
	snd_note $3E
	snd_note $41
	snd_note $3E
	snd_note $41
	snd_note $3E
	snd_note $41
	snd_wave WAVE_09
	snd_inc_vol 8
	snd_note $29, NOTELEN_CUSTOM, $06
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $29, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $2C, NOTELEN_01
	snd_note $2D
	snd_note $30
	snd_note $35, NOTELEN_CUSTOM, $06
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $35, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_09
	snd_wave WAVE_07
	snd_note $29, NOTELEN_06
	snd_note $29
	snd_note $29, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $29, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_wave WAVE_09
	snd_note $38, NOTELEN_06
	snd_note $39, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $39, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_06
	snd_note $30, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $30, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $32, NOTELEN_06
	snd_note $35, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $35, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $32, NOTELEN_06
	snd_note $35, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $35, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_jp SndData_18_Ch3
SndData_18_Ch2:
	snd_duty SNDDUTY_25, $00
	snd_instrument INSTR_3C
	snd_var iSndChInfo_24, $03
	.loop0:
		snd_call .sub0
		snd_note $00
		snd_note $29, NOTELEN_0C
		snd_note $21, NOTELEN_06
		snd_note $1D
		snd_note $21
		snd_note $24
		snd_note $1D, NOTELEN_0C
		snd_note $22, NOTELEN_06
		snd_note $26
		snd_note $1D, NOTELEN_0C
		snd_note $22
		snd_note $1A, NOTELEN_06
		snd_note $1D
		snd_note $21
		snd_note $24
		snd_note $1D, NOTELEN_0C
		snd_note $21, NOTELEN_06
		snd_note $24
		snd_note $1D, NOTELEN_0C
		snd_note $22, NOTELEN_06
		snd_note $26
		snd_note $1D, NOTELEN_0C
		snd_note $22, NOTELEN_06
		snd_note $1B
		snd_note $1C
		snd_djnz iSndChInfo_24, .loop0
	snd_call .sub0
	snd_note $00, NOTELEN_12
	snd_note $21, NOTELEN_06
	snd_note $1D
	snd_note $21
	snd_note $24
	snd_note $1D, NOTELEN_0C
	snd_note $22, NOTELEN_06
	snd_note $26
	snd_note $1D, NOTELEN_0C
	snd_note $22
	snd_note $1A, NOTELEN_06
	snd_note $1D
	snd_note $21
	snd_note $24
	snd_note $1D, NOTELEN_0C
	snd_note $21, NOTELEN_06
	snd_note $24
	snd_note $1D, NOTELEN_0C
	snd_note $22, NOTELEN_06
	snd_note $26
	snd_note $2E, NOTELEN_0C
	snd_note $2D
	snd_note $2C, NOTELEN_06
	snd_note $00, NOTELEN_12
	snd_duty SNDDUTY_25, $00
	snd_note $26, NOTELEN_02
	snd_note $00, NOTELEN_04
	snd_note $28, NOTELEN_06
	snd_note $29, NOTELEN_02
	snd_note $00, NOTELEN_CUSTOM, $0A
	snd_note $2F, NOTELEN_CUSTOM, $1E
	snd_note $00, NOTELEN_06
	snd_note $30
	snd_note $32, NOTELEN_02
	snd_note $00, NOTELEN_04
	snd_note $35, NOTELEN_0C
	snd_note $32, NOTELEN_02
	snd_note $00, NOTELEN_04
	snd_note $2B, NOTELEN_03
	snd_note $2A
	snd_note $29, NOTELEN_CUSTOM, $4E
	snd_note $00, NOTELEN_12
	snd_note $26, NOTELEN_02
	snd_note $00, NOTELEN_04
	snd_note $28, NOTELEN_06
	snd_note $29, NOTELEN_02
	snd_note $00, NOTELEN_CUSTOM, $0A
	snd_note $2F, NOTELEN_CUSTOM, $1E
	snd_note $00, NOTELEN_06
	snd_note $35, NOTELEN_02
	snd_note $00, NOTELEN_04
	snd_note $37, NOTELEN_06
	snd_note $39, NOTELEN_02
	snd_note $00, NOTELEN_04
	snd_note $3C, NOTELEN_2A
	snd_note $3B, NOTELEN_02
	snd_note $3A
	snd_note $39
	snd_note $38, NOTELEN_30
	snd_duty SNDDUTY_25, $00
	snd_var iSndChInfo_24, $02
	.loop1:
		snd_note $1D, NOTELEN_0C
		snd_note $24, NOTELEN_06
		snd_note $1D, NOTELEN_0C
		snd_note $21, NOTELEN_06
		snd_note $24
		snd_note $1D
		snd_note $1D
		snd_note $22
		snd_note $26
		snd_note $1D, NOTELEN_0C
		snd_note $22
		snd_note $1A, NOTELEN_06
		snd_note $1D
		snd_note $21
		snd_note $24
		snd_note $1D, NOTELEN_0C
		snd_note $21, NOTELEN_06
		snd_note $24
		snd_note $1D
		snd_note $1D
		snd_note $22
		snd_note $26
		snd_note $1D, NOTELEN_0C
		snd_note $22, NOTELEN_06
		snd_note $1D
		snd_note $1D
		snd_note $00
		snd_note $29, NOTELEN_0C
		snd_note $21, NOTELEN_06
		snd_note $1D
		snd_note $21
		snd_note $24
		snd_note $1D
		snd_note $1D
		snd_note $22
		snd_note $26
		snd_note $1D, NOTELEN_0C
		snd_note $22
		snd_note $1A, NOTELEN_06
		snd_note $1D
		snd_note $21
		snd_note $24
		snd_note $1D, NOTELEN_0C
		snd_note $21, NOTELEN_06
		snd_note $24
		snd_note $1D
		snd_note $1D
		snd_note $22
		snd_note $26
		snd_note $1D, NOTELEN_0C
		snd_note $22, NOTELEN_06
		snd_note $1B
		snd_note $1C
		snd_djnz iSndChInfo_24, .loop1
	snd_note $1D
	snd_duty SNDDUTY_12, $00
	snd_note $39
	snd_note $39
	snd_note $39, NOTELEN_0C
	snd_note $37, NOTELEN_06
	snd_note $35
	snd_note $37
	snd_note $39
	snd_note $3C
	snd_duty SNDDUTY_25, $00
	snd_note $26
	snd_note $1D, NOTELEN_0C
	snd_note $22
	snd_note $1A, NOTELEN_06
	snd_note $1D
	snd_note $21
	snd_note $24
	snd_note $1D, NOTELEN_0C
	snd_note $21, NOTELEN_06
	snd_note $24
	snd_note $1D
	snd_note $1D
	snd_note $22
	snd_note $26
	snd_note $1D, NOTELEN_0C
	snd_note $22, NOTELEN_06
	snd_note $1D
	snd_note $1D
	snd_note $00
	snd_duty SNDDUTY_12, $00
	snd_note $39
	snd_note $39
	snd_note $39, NOTELEN_0C
	snd_note $37, NOTELEN_06
	snd_note $35
	snd_note $37
	snd_note $39
	snd_note $3C
	snd_duty SNDDUTY_25, $00
	snd_note $26
	snd_note $1D, NOTELEN_0C
	snd_note $22
	snd_note $1A, NOTELEN_06
	snd_note $1D
	snd_note $21
	snd_note $24
	snd_note $1D, NOTELEN_0C
	snd_note $21, NOTELEN_06
	snd_note $24
	snd_note $1D
	snd_note $1D
	snd_note $22
	snd_note $26
	snd_note $29
	snd_duty SNDDUTY_12, $00
	snd_note $2D
	snd_note $2D
	snd_note $2D
	snd_note $2D
	snd_jp SndData_18_Ch2
.sub0:
	snd_note $1D, NOTELEN_0C
	snd_note $24, NOTELEN_06
	snd_note $1D, NOTELEN_0C
	snd_note $21, NOTELEN_06
	snd_note $24
	snd_note $1D, NOTELEN_0C
	snd_note $22, NOTELEN_06
	snd_note $26
	snd_note $1D, NOTELEN_0C
	snd_note $22
	snd_note $1A, NOTELEN_06
	snd_note $1D
	snd_note $21
	snd_note $24
	snd_note $1D, NOTELEN_0C
	snd_note $21, NOTELEN_06
	snd_note $24
	snd_note $1D, NOTELEN_0C
	snd_note $22, NOTELEN_06
	snd_note $26
	snd_note $1D, NOTELEN_0C
	snd_note $22, NOTELEN_06
	snd_note $1D
	snd_note $1D
	snd_ret
SndData_18_Ch1:
	snd_duty SNDDUTY_12, $01
	snd_note $29, NOTELEN_0C
	snd_note $21, NOTELEN_06
	snd_note $29, NOTELEN_0C
	snd_note $2D, NOTELEN_06
	snd_note $30
	snd_note $29
	snd_note $29
	snd_note $2E
	snd_note $32
	snd_note $35, NOTELEN_0C
	snd_note $2B
	snd_note $26, NOTELEN_06
	snd_note $29
	snd_note $2D
	snd_note $30
	snd_note $29, NOTELEN_0C
	snd_note $2D, NOTELEN_06
	snd_note $30
	snd_note $29
	snd_note $29
	snd_note $2E
	snd_note $32
	snd_note $29, NOTELEN_0C
	snd_note $26, NOTELEN_06
	snd_note $29
	snd_note $29
	snd_note $00
	snd_note $35, NOTELEN_0C
	snd_note $30, NOTELEN_06
	snd_note $29
	snd_note $2D
	snd_note $30
	snd_note $29
	snd_note $29
	snd_note $2E
	snd_note $32
	snd_note $29, NOTELEN_0C
	snd_note $2B
	snd_note $26, NOTELEN_06
	snd_note $29
	snd_note $2D
	snd_note $30
	snd_note $29, NOTELEN_0C
	snd_note $2D, NOTELEN_06
	snd_note $30
	snd_note $29
	snd_note $29
	snd_duty SNDDUTY_12, $02
	snd_note $35
	snd_note $32, NOTELEN_02
	snd_note $00, NOTELEN_04
	snd_note $30, NOTELEN_02
	snd_note $00, NOTELEN_04
	snd_note $32, NOTELEN_06
	snd_note $35, NOTELEN_02
	snd_note $00, NOTELEN_04
	snd_note $38, NOTELEN_06
	snd_note $37, NOTELEN_02
	snd_note $00, NOTELEN_04
	snd_duty SNDDUTY_12, $01
	snd_note $11, NOTELEN_12
	snd_note $18, NOTELEN_18
	snd_note $16, NOTELEN_06
	snd_note $16, NOTELEN_12
	snd_note $13
	snd_note $18, NOTELEN_0C
	snd_note $11, NOTELEN_12
	snd_note $18, NOTELEN_18
	snd_note $16, NOTELEN_06
	snd_note $16, NOTELEN_12
	snd_note $1A
	snd_note $1D, NOTELEN_0C
	snd_note $1D, NOTELEN_12
	snd_note $18, NOTELEN_18
	snd_note $16, NOTELEN_06
	snd_note $16, NOTELEN_12
	snd_note $13
	snd_note $18, NOTELEN_0C
	snd_note $11, NOTELEN_12
	snd_note $18, NOTELEN_18
	snd_note $16, NOTELEN_06
	snd_note $16, NOTELEN_12
	snd_note $1A, NOTELEN_0C
	snd_note $1B
	snd_note $1C, NOTELEN_06
	snd_note $11, NOTELEN_12
	snd_note $18, NOTELEN_18
	snd_note $16, NOTELEN_06
	snd_note $16, NOTELEN_12
	snd_note $13
	snd_note $18, NOTELEN_0C
	snd_note $11, NOTELEN_12
	snd_note $18, NOTELEN_18
	snd_note $16, NOTELEN_06
	snd_note $16
	snd_note $1D, NOTELEN_0C
	snd_note $1A
	snd_note $16, NOTELEN_06
	snd_note $11
	snd_note $11
	snd_note $00, NOTELEN_12
	snd_note $11, NOTELEN_06
	snd_note $11
	snd_note $18, NOTELEN_0C
	snd_note $16, NOTELEN_06
	snd_note $16, NOTELEN_12
	snd_note $13
	snd_note $18, NOTELEN_0C
	snd_note $11, NOTELEN_12
	snd_note $18, NOTELEN_18
	snd_note $16, NOTELEN_06
	snd_note $16, NOTELEN_12
	snd_note $1A, NOTELEN_0C
	snd_note $1B
	snd_note $1C, NOTELEN_06
	snd_note $11, NOTELEN_0C
	snd_note $1A, NOTELEN_06
	snd_note $18, NOTELEN_0C
	snd_note $1A
	snd_note $16, NOTELEN_06
	snd_note $16, NOTELEN_12
	snd_note $13, NOTELEN_0C
	snd_note $1A, NOTELEN_06
	snd_note $18
	snd_note $1A
	snd_note $11, NOTELEN_0C
	snd_note $1A, NOTELEN_06
	snd_note $18, NOTELEN_0C
	snd_note $1A
	snd_note $16, NOTELEN_06
	snd_note $16
	snd_note $1D, NOTELEN_0C
	snd_note $1A
	snd_note $16, NOTELEN_06
	snd_note $11
	snd_note $11
	snd_note $00, NOTELEN_12
	snd_note $11, NOTELEN_06
	snd_note $11
	snd_note $18, NOTELEN_0C
	snd_note $16, NOTELEN_06
	snd_note $16, NOTELEN_12
	snd_note $13, NOTELEN_0C
	snd_note $1A, NOTELEN_06
	snd_note $18
	snd_note $1A
	snd_note $11, NOTELEN_0C
	snd_note $1A, NOTELEN_06
	snd_note $18, NOTELEN_0C
	snd_note $1A
	snd_note $16, NOTELEN_06
	snd_note $16, NOTELEN_12
	snd_note $16, NOTELEN_0C
	snd_note $15
	snd_note $14, NOTELEN_06
	snd_note $13
	snd_note $13, NOTELEN_0C
	snd_note $13, NOTELEN_06
	snd_note $1A, NOTELEN_0C
	snd_note $1D
	snd_note $00
	snd_note $1F
	snd_note $13, NOTELEN_12
	snd_note $13, NOTELEN_06
	snd_note $16
	snd_note $16, NOTELEN_0C
	snd_note $16, NOTELEN_06
	snd_note $1D, NOTELEN_0C
	snd_note $20
	snd_note $00, NOTELEN_06
	snd_note $22
	snd_note $22, NOTELEN_0C
	snd_note $16, NOTELEN_12
	snd_note $16, NOTELEN_06
	snd_note $13
	snd_note $13, NOTELEN_0C
	snd_note $13, NOTELEN_06
	snd_note $1A, NOTELEN_0C
	snd_note $1D
	snd_note $00, NOTELEN_06
	snd_note $1F
	snd_note $1F, NOTELEN_0C
	snd_note $13, NOTELEN_12
	snd_note $13, NOTELEN_06
	snd_note $12, NOTELEN_12
	snd_note $12
	snd_note $12, NOTELEN_0C
	snd_note $00
	snd_note $12, NOTELEN_24
	snd_duty SNDDUTY_12, $29
	snd_note $29, NOTELEN_0C
	snd_note $30, NOTELEN_06
	snd_note $29, NOTELEN_0C
	snd_note $2D, NOTELEN_06
	snd_note $30
	snd_note $29
	snd_note $29
	snd_note $2E
	snd_note $32
	snd_note $29, NOTELEN_0C
	snd_note $1F
	snd_note $26, NOTELEN_06
	snd_note $29
	snd_note $2D
	snd_note $30
	snd_note $29, NOTELEN_0C
	snd_note $2D, NOTELEN_06
	snd_note $30
	snd_note $29
	snd_note $29
	snd_note $2E
	snd_note $32
	snd_note $29, NOTELEN_0C
	snd_note $26, NOTELEN_06
	snd_note $29
	snd_note $29
	snd_note $00
	snd_note $1D, NOTELEN_0C
	snd_note $24, NOTELEN_06
	snd_note $29
	snd_note $2D
	snd_note $30
	snd_note $29
	snd_note $29
	snd_note $2E
	snd_note $32
	snd_note $29, NOTELEN_0C
	snd_note $1F
	snd_note $26, NOTELEN_06
	snd_note $29
	snd_note $2D
	snd_note $30
	snd_note $29, NOTELEN_0C
	snd_note $2D, NOTELEN_06
	snd_note $30
	snd_note $29
	snd_note $29
	snd_note $2E
	snd_note $32
	snd_duty SNDDUTY_12, $01
	snd_note $16, NOTELEN_0C
	snd_note $22
	snd_note $16, NOTELEN_06
	snd_note $11, NOTELEN_12
	snd_note $18, NOTELEN_18
	snd_note $16, NOTELEN_06
	snd_note $16, NOTELEN_12
	snd_note $13
	snd_note $18, NOTELEN_0C
	snd_note $11, NOTELEN_12
	snd_note $18, NOTELEN_18
	snd_note $16, NOTELEN_06
	snd_note $16
	snd_note $1D, NOTELEN_0C
	snd_note $1A
	snd_note $16, NOTELEN_06
	snd_note $11
	snd_note $11
	snd_note $00, NOTELEN_12
	snd_note $11, NOTELEN_06
	snd_note $11
	snd_note $18, NOTELEN_0C
	snd_note $16, NOTELEN_06
	snd_note $16, NOTELEN_12
	snd_note $13
	snd_note $18, NOTELEN_0C
	snd_note $11, NOTELEN_12
	snd_note $18, NOTELEN_18
	snd_note $16, NOTELEN_06
	snd_note $16, NOTELEN_12
	snd_note $1A, NOTELEN_0C
	snd_note $1B
	snd_note $1C, NOTELEN_06
	snd_note $11, NOTELEN_0C
	snd_note $1A, NOTELEN_06
	snd_note $18, NOTELEN_0C
	snd_note $1A
	snd_note $16, NOTELEN_06
	snd_note $16, NOTELEN_12
	snd_note $13, NOTELEN_0C
	snd_note $1A, NOTELEN_06
	snd_note $18
	snd_note $1A
	snd_note $11, NOTELEN_0C
	snd_note $1A, NOTELEN_06
	snd_note $18, NOTELEN_0C
	snd_note $1A
	snd_note $16, NOTELEN_06
	snd_note $16
	snd_note $1D, NOTELEN_0C
	snd_note $1A
	snd_note $16, NOTELEN_06
	snd_note $11
	snd_note $11
	snd_note $00, NOTELEN_12
	snd_note $11, NOTELEN_06
	snd_note $11
	snd_note $18, NOTELEN_0C
	snd_note $16, NOTELEN_06
	snd_note $16, NOTELEN_12
	snd_note $13, NOTELEN_0C
	snd_note $1A, NOTELEN_06
	snd_note $18
	snd_note $1A
	snd_note $11, NOTELEN_0C
	snd_note $1A, NOTELEN_06
	snd_note $18, NOTELEN_0C
	snd_note $1A
	snd_note $16, NOTELEN_06
	snd_note $16, NOTELEN_12
	snd_note $11, NOTELEN_06
	snd_note $11
	snd_note $11
	snd_note $11
	snd_note $11
	snd_jp SndData_18_Ch1
SndData_18_Ch4:
	snd_duty SNDDUTY_12, $00
	snd_var iSndChInfo_24, $07
	.loop0:
		snd_noteex PRESET_02, NOTELEN_06
		snd_noteex PRESET_02
		snd_noteex PRESET_02
		snd_noteex PRESET_02
		snd_noteex PRESET_00
		snd_noteex PRESET_02
		snd_noteex PRESET_02
		snd_noteex PRESET_02
		snd_djnz iSndChInfo_24, .loop0
	snd_noteex PRESET_02
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_00
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_00
	snd_noteex PRESET_00, NOTELEN_06
	snd_call .sub0
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_00
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_00
	snd_noteex PRESET_00, NOTELEN_06
	snd_call .sub0
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_00
	snd_var iSndChInfo_24, $03
	snd_noteex PRESET_01, NOTELEN_06
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_02, NOTELEN_03
	snd_noteex PRESET_02
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_02, NOTELEN_03
	snd_noteex PRESET_02
	snd_noteex PRESET_02, NOTELEN_06
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_02, NOTELEN_03
	snd_noteex PRESET_02
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_02, NOTELEN_03
	snd_noteex PRESET_02
	snd_noteex PRESET_02, NOTELEN_06
	snd_noteex PRESET_00
	snd_noteex PRESET_00
	snd_noteex PRESET_01, NOTELEN_0C
	snd_noteex PRESET_02, NOTELEN_06
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_02, NOTELEN_03
	snd_noteex PRESET_02
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_02, NOTELEN_03
	snd_noteex PRESET_02
	snd_noteex PRESET_02, NOTELEN_06
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_00
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_00
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_01
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_02, NOTELEN_03
	snd_noteex PRESET_02
	snd_noteex PRESET_02, NOTELEN_06
	snd_noteex PRESET_00, NOTELEN_0C
	snd_noteex PRESET_02, NOTELEN_06
	snd_noteex PRESET_00
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_00
	snd_noteex PRESET_00, NOTELEN_06
	snd_var iSndChInfo_24, $38
	.loop1:
		snd_noteex PRESET_02
		snd_djnz iSndChInfo_24, .loop1
	snd_noteex PRESET_02
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_00
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_00
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_00
	snd_noteex PRESET_00, NOTELEN_06
	snd_call .sub0
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_00
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_00
	snd_noteex PRESET_00, NOTELEN_06
	snd_call .sub0
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_00
	snd_noteex PRESET_00
	snd_noteex PRESET_00
	snd_noteex PRESET_00
	snd_jp SndData_18_Ch4
.sub0:
	snd_var iSndChInfo_25, $03
	.sub0loop:
		snd_noteex PRESET_01
		snd_noteex PRESET_02
		snd_noteex PRESET_00
		snd_noteex PRESET_01
		snd_noteex PRESET_02
		snd_noteex PRESET_00
		snd_noteex PRESET_02
		snd_noteex PRESET_01
		snd_noteex PRESET_02
		snd_noteex PRESET_02
		snd_noteex PRESET_02
		snd_noteex PRESET_00
		snd_noteex PRESET_02
		snd_noteex PRESET_02
		snd_noteex PRESET_00
		snd_noteex PRESET_02
		snd_djnz iSndChInfo_25, .sub0loop
	snd_ret
	snd_note $00