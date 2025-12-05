SndHeader_BGM_01:
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
	db $40 ; iSndChInfo_DutyOrWave
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
	db $80 ; iSndChInfo_DutyOrWave
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
	db $80 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_01_Ch3:
	wave_id WAVE_09
	note $00, NOTELEN_09
	note $1E, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $1E, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $22, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $22, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $25, NOTELEN_03
	note $27, NOTELEN_09
	note $2A, NOTELEN_CUSTOM, $03
	volume_add -5
	instrument INSTR_NONE
	fine_tune_value -1
	note $2A, NOTELEN_CUSTOM, $06
	volume_add 5
	instrument INSTR_NONE
	fine_tune_value 1
	note $27, NOTELEN_06
	note $25, NOTELEN_09
	note $22, NOTELEN_CUSTOM, $03
	volume_add -5
	instrument INSTR_NONE
	fine_tune_value -1
	note $22, NOTELEN_CUSTOM, $06
	volume_add 5
	instrument INSTR_NONE
	fine_tune_value 1
	note $25, NOTELEN_06
	note $23
	note $23, NOTELEN_03
	note $23
	note $00
	note $22
	note $00
	note $20
	note $1E, NOTELEN_CUSTOM, $06
	volume_add -5
	instrument INSTR_NONE
	fine_tune_value -1
	note $1E, NOTELEN_CUSTOM, $03
	volume_add 5
	instrument INSTR_NONE
	fine_tune_value 1
	note $1E, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $1E, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $22, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $22, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $25, NOTELEN_03
	note $27, NOTELEN_09
	note $2A, NOTELEN_CUSTOM, $03
	volume_add -5
	instrument INSTR_NONE
	fine_tune_value -1
	note $2A, NOTELEN_CUSTOM, $06
	volume_add 5
	instrument INSTR_NONE
	fine_tune_value 1
	note $27, NOTELEN_06
	note $25, NOTELEN_09
	note $22, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $22, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $23, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $23, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $24, NOTELEN_03
	note $25, NOTELEN_CUSTOM, $03
	volume_add -5
	instrument INSTR_NONE
	fine_tune_value -1
	note $25, NOTELEN_CUSTOM, $06
	volume_add 5
	instrument INSTR_NONE
	fine_tune_value 1
	note $00, NOTELEN_CUSTOM, $0F
	wave_id WAVE_09
	instrument INSTR_30
	note $00, NOTELEN_06
	note $31, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $31, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $31, NOTELEN_CUSTOM, $06
	volume_add -5
	fine_tune_value -1
	note $31, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $31, NOTELEN_09
	note $2F, NOTELEN_06
	note $2E
	note $2F
	note $31, NOTELEN_CUSTOM, $0B
	note $34, NOTELEN_01
	note $35, NOTELEN_09
	note $36, NOTELEN_CUSTOM, $1B
	volume_add -5
	instrument INSTR_NONE
	fine_tune_value -1
	note $36, NOTELEN_CUSTOM, $06
	volume_add 5
	instrument INSTR_30
	fine_tune_value 1
	note $33, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $33, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $31, NOTELEN_03
	note $2F, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $2F, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $2E, NOTELEN_09
	note $2C, NOTELEN_06
	note $2E
	note $2F
	note $31, NOTELEN_CUSTOM, $30
	volume_add -5
	instrument INSTR_NONE
	fine_tune_value -1
	note $31, NOTELEN_CUSTOM, $06
	volume_add 5
	instrument INSTR_30
	fine_tune_value 1
	note $31, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $31, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $31, NOTELEN_CUSTOM, $06
	volume_add -5
	fine_tune_value -1
	note $31, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $31, NOTELEN_09
	note $2F, NOTELEN_06
	note $2E
	note $2F
	note $31, NOTELEN_09
	note $32, NOTELEN_01
	note $33
	note $34
	note $35, NOTELEN_09
	note $36, NOTELEN_CUSTOM, $1B
	volume_add -5
	instrument INSTR_NONE
	fine_tune_value -1
	note $36, NOTELEN_CUSTOM, $06
	volume_add 5
	instrument INSTR_30
	fine_tune_value 1
	note $36, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $36, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $33, NOTELEN_03
	note $2F, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $2F, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $2E, NOTELEN_09
	note $2C, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $2C, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $2A, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $2A, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $2A, NOTELEN_CUSTOM, $36
	volume_add -5
	instrument INSTR_NONE
	fine_tune_value -1
	note $2A, NOTELEN_CUSTOM, $06
	volume_add 5
	instrument INSTR_30
	fine_tune_value 1
	wave_id WAVE_10
	instrument INSTR_30
	fine_tune 12
	vibrato VIBRATO_35
	note $31, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $31, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $31, NOTELEN_CUSTOM, $06
	volume_add -5
	fine_tune_value -1
	note $31, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $31, NOTELEN_09
	note $2F, NOTELEN_06
	note $2E
	note $2F
	note $31, NOTELEN_09
	note $31, NOTELEN_01
	note $33
	note $34
	note $35, NOTELEN_09
	note $36, NOTELEN_CUSTOM, $1B
	volume_add -5
	instrument INSTR_NONE
	fine_tune_value -1
	note $36, NOTELEN_CUSTOM, $06
	volume_add 5
	instrument INSTR_30
	fine_tune_value 1
	note $33, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $33, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $31, NOTELEN_03
	note $2F, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $2F, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $2E, NOTELEN_09
	note $2C, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $2C, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $2E, NOTELEN_06
	note $2F
	note $31, NOTELEN_CUSTOM, $30
	volume_add -5
	instrument INSTR_NONE
	fine_tune_value -1
	note $31, NOTELEN_CUSTOM, $06
	volume_add 5
	instrument INSTR_30
	fine_tune_value 1
	note $31, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $31, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $31, NOTELEN_CUSTOM, $06
	volume_add -5
	fine_tune_value -1
	note $31, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $31, NOTELEN_09
	note $2F, NOTELEN_06
	note $2E
	note $2F
	note $31, NOTELEN_09
	note $31, NOTELEN_01
	note $33
	note $34
	note $35, NOTELEN_09
	note $36, NOTELEN_CUSTOM, $1B
	volume_add -5
	instrument INSTR_NONE
	fine_tune_value -1
	note $36, NOTELEN_CUSTOM, $06
	volume_add 5
	instrument INSTR_30
	fine_tune_value 1
	note $36, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $36, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $33, NOTELEN_03
	note $2F, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $2F, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $2E, NOTELEN_09
	note $2C, NOTELEN_06
	note $2A, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $2A, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $2A, NOTELEN_30
	wave_id WAVE_09
	instrument INSTR_2E
	fine_tune -12
	note $36, NOTELEN_03
	note $36
	note $36, NOTELEN_06
	chan_stop ECH_SAVE
SndData_01_Ch2:
	note $1E, NOTELEN_09
	note $22
	note $25, NOTELEN_06
	note $23, NOTELEN_09
	note $27
	note $2A, NOTELEN_06
	note $22, NOTELEN_09
	note $25
	note $29, NOTELEN_06
	note $20, NOTELEN_03
	note $20, NOTELEN_06
	note $19
	note $1D
	note $20, NOTELEN_03
	note $1E, NOTELEN_09
	note $1E, NOTELEN_06
	note $22, NOTELEN_03
	note $25, NOTELEN_06
	note $23, NOTELEN_09
	note $27
	note $2A, NOTELEN_06
	note $22, NOTELEN_03
	note $22, NOTELEN_06
	note $22
	note $1E
	note $1B, NOTELEN_03
	note $19, NOTELEN_0C
	note $25
	note $1E, NOTELEN_09
	note $22
	note $25, NOTELEN_06
	note $23, NOTELEN_09
	note $27
	note $2A, NOTELEN_06
	note $22, NOTELEN_09
	note $25
	note $29, NOTELEN_06
	note $21, NOTELEN_09
	note $24
	note $27, NOTELEN_06
	note $20, NOTELEN_09
	note $23
	note $27, NOTELEN_06
	note $25, NOTELEN_09
	note $20
	note $1D, NOTELEN_06
	note $22, NOTELEN_0C
	note $21
	note $20, NOTELEN_09
	note $25, NOTELEN_03
	note $25, NOTELEN_06
	note $25
	note $1E, NOTELEN_09
	note $22
	note $25, NOTELEN_06
	note $23, NOTELEN_09
	note $27
	note $2A, NOTELEN_06
	note $22, NOTELEN_09
	note $25
	note $29, NOTELEN_06
	note $21, NOTELEN_09
	note $24
	note $27, NOTELEN_06
	note $20, NOTELEN_09
	note $23
	note $27, NOTELEN_06
	note $25, NOTELEN_09
	note $20
	note $25, NOTELEN_06
	note $1E, NOTELEN_09
	note $1E
	note $1E, NOTELEN_06
	note $25, NOTELEN_09
	note $20
	note $25, NOTELEN_06
	note $1E, NOTELEN_09
	note $22
	note $25, NOTELEN_06
	note $23, NOTELEN_09
	note $27
	note $2A, NOTELEN_06
	note $22, NOTELEN_09
	note $25
	note $29, NOTELEN_06
	note $21, NOTELEN_09
	note $24
	note $27, NOTELEN_06
	note $20, NOTELEN_09
	note $23
	note $27, NOTELEN_06
	note $25, NOTELEN_09
	note $20
	note $1D, NOTELEN_06
	note $22, NOTELEN_0C
	note $21
	note $20, NOTELEN_09
	note $25, NOTELEN_03
	note $25, NOTELEN_06
	note $25
	note $1E, NOTELEN_09
	note $22
	note $25, NOTELEN_06
	note $23, NOTELEN_09
	note $27
	note $2A, NOTELEN_06
	note $22, NOTELEN_09
	note $25
	note $29, NOTELEN_06
	note $21, NOTELEN_09
	note $24
	note $27, NOTELEN_06
	note $20, NOTELEN_09
	note $23
	note $27, NOTELEN_06
	note $25, NOTELEN_09
	note $20
	note $25, NOTELEN_06
	note $1E, NOTELEN_09
	note $1E
	note $19
	note $1E
	note $1E, NOTELEN_06
	note $19
	note $1E, NOTELEN_06
	chan_stop
SndData_01_Ch1:
	duty_cycle $40
	fine_tune_value -2
	note $00, NOTELEN_09
	note $2A, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $2A, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $2E, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $2E, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $31, NOTELEN_03
	note $33, NOTELEN_09
	note $36, NOTELEN_CUSTOM, $03
	volume_add -5
	instrument INSTR_NONE
	fine_tune_value -1
	note $36, NOTELEN_CUSTOM, $06
	volume_add 5
	instrument INSTR_NONE
	fine_tune_value 1
	note $33, NOTELEN_06
	note $31, NOTELEN_09
	note $2E, NOTELEN_CUSTOM, $03
	volume_add -5
	instrument INSTR_NONE
	fine_tune_value -1
	note $2E, NOTELEN_CUSTOM, $06
	volume_add 5
	instrument INSTR_NONE
	fine_tune_value 1
	note $31, NOTELEN_06
	note $2F
	note $2F, NOTELEN_03
	note $2F, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $2F, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $2E, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $2E, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $2C, NOTELEN_03
	note $2A, NOTELEN_09
	note $2A, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $2A, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $2E, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $2E, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $31, NOTELEN_03
	note $33, NOTELEN_09
	note $36, NOTELEN_CUSTOM, $03
	volume_add -5
	instrument INSTR_NONE
	fine_tune_value -1
	note $36, NOTELEN_CUSTOM, $06
	volume_add 5
	instrument INSTR_NONE
	fine_tune_value 1
	note $33, NOTELEN_06
	note $31, NOTELEN_09
	note $2E, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $2E, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $2F, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $2F, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $30, NOTELEN_03
	note $31, NOTELEN_CUSTOM, $03
	volume_add -5
	instrument INSTR_NONE
	fine_tune_value -1
	note $31, NOTELEN_CUSTOM, $06
	volume_add 5
	instrument INSTR_NONE
	fine_tune_value 1
	note $00, NOTELEN_CUSTOM, $0F
	fine_tune_value 2
	duty_cycle $40
	instrument INSTR_3B
	note $2E, NOTELEN_CUSTOM, $15
	volume_add -5
	fine_tune_value -1
	note $2E, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $2F, NOTELEN_CUSTOM, $15
	volume_add -5
	fine_tune_value -1
	note $2F, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $2E, NOTELEN_CUSTOM, $15
	volume_add -5
	fine_tune_value -1
	note $2E, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $2D, NOTELEN_CUSTOM, $15
	volume_add -5
	fine_tune_value -1
	note $2D, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $2C, NOTELEN_CUSTOM, $15
	volume_add -5
	fine_tune_value -1
	note $2C, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $29, NOTELEN_CUSTOM, $15
	volume_add -5
	fine_tune_value -1
	note $29, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	duty_cycle $80
	instrument INSTR_33
	fine_tune 12
	note $35, NOTELEN_0C
	note $34
	note $33
	note $2C
	duty_cycle $40
	instrument INSTR_3B
	fine_tune -12
	note $2E, NOTELEN_CUSTOM, $15
	volume_add -5
	fine_tune_value -1
	note $2E, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $2F, NOTELEN_CUSTOM, $15
	volume_add -5
	fine_tune_value -1
	note $2F, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $2E, NOTELEN_CUSTOM, $15
	volume_add -5
	fine_tune_value -1
	note $2E, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $2D, NOTELEN_CUSTOM, $15
	volume_add -5
	fine_tune_value -1
	note $2D, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $2C, NOTELEN_CUSTOM, $15
	volume_add -5
	fine_tune_value -1
	note $2C, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $29, NOTELEN_CUSTOM, $15
	volume_add -5
	fine_tune_value -1
	note $29, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $2E, NOTELEN_CUSTOM, $15
	volume_add -5
	fine_tune_value -1
	note $2E, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $2F, NOTELEN_CUSTOM, $15
	volume_add -5
	fine_tune_value -1
	note $2F, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $2E, NOTELEN_CUSTOM, $15
	volume_add -5
	fine_tune_value -1
	note $2E, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $2F, NOTELEN_CUSTOM, $15
	volume_add -5
	fine_tune_value -1
	note $2F, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $2E, NOTELEN_CUSTOM, $15
	volume_add -5
	fine_tune_value -1
	note $2E, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $2D, NOTELEN_CUSTOM, $15
	volume_add -5
	fine_tune_value -1
	note $2D, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $2C, NOTELEN_CUSTOM, $15
	volume_add -5
	fine_tune_value -1
	note $2C, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $29, NOTELEN_CUSTOM, $15
	volume_add -5
	fine_tune_value -1
	note $29, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	duty_cycle $00
	instrument INSTR_NONE
	note $00, NOTELEN_02
	note $24, NOTELEN_01
	note $25, NOTELEN_03
	note $27, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $27, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $2A, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $2A, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $27, NOTELEN_06
	note $2A, NOTELEN_03
	note $2B
	note $2C
	note $2D, NOTELEN_CUSTOM, $03
	volume_add -5
	fine_tune_value -1
	note $2D, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $2F, NOTELEN_09
	note $31
	note $30, NOTELEN_01
	note $2F
	note $2E
	note $2D
	note $2C
	note $2B
	note $00, NOTELEN_02
	volume_add -4
	note $30, NOTELEN_01
	note $2F
	note $2E
	note $2D
	volume_add -1
	note $2C
	note $2B
	note $00, NOTELEN_01
	volume_add 5
	duty_cycle $40
	instrument INSTR_3B
	note $2F, NOTELEN_CUSTOM, $15
	volume_add -5
	fine_tune_value -1
	note $2F, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $2E, NOTELEN_CUSTOM, $15
	volume_add -5
	fine_tune_value -1
	note $2E, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $2D, NOTELEN_CUSTOM, $15
	volume_add -5
	fine_tune_value -1
	note $2D, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $2C, NOTELEN_CUSTOM, $15
	volume_add -5
	fine_tune_value -1
	note $2C, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $29, NOTELEN_CUSTOM, $15
	volume_add -5
	fine_tune_value -1
	note $29, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $2F, NOTELEN_CUSTOM, $06
	volume_add -5
	fine_tune_value -1
	note $2F, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $2F, NOTELEN_CUSTOM, $06
	volume_add -5
	fine_tune_value -1
	note $2F, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $2F, NOTELEN_CUSTOM, $06
	volume_add -5
	fine_tune_value -1
	note $2F, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $2F, NOTELEN_CUSTOM, $06
	volume_add -5
	fine_tune_value -1
	note $2F, NOTELEN_03
	volume_add 5
	fine_tune_value 1
	note $2F, NOTELEN_06
	duty_cycle $40
	instrument INSTR_2E
	note $2F, NOTELEN_03
	note $2F
	note $2E, NOTELEN_06
	chan_stop
SndData_01_Ch4:
	set_var iSndChInfo_LoopTimer0, $03
	.loop0:
		note_ex PRESET_01, NOTELEN_03
		note_ex PRESET_02
		note_ex PRESET_02
		note_ex PRESET_00
		note_ex PRESET_01, NOTELEN_06
		note_ex PRESET_02, NOTELEN_03
		note_ex PRESET_02
		note_ex PRESET_01
		note_ex PRESET_02
		note_ex PRESET_02
		note_ex PRESET_00
		note_ex PRESET_01
		note_ex PRESET_02
		note_ex PRESET_00
		note_ex PRESET_02
		snd_loop .loop0, iSndChInfo_LoopTimer0
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_00, NOTELEN_06
	note_ex PRESET_02, NOTELEN_03
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_00, NOTELEN_09
	note_ex PRESET_00, NOTELEN_01
	note_ex PRESET_00
	note_ex PRESET_00
	note_ex PRESET_00, NOTELEN_03
	note_ex PRESET_00
	note_ex PRESET_01
	note_ex PRESET_00
	set_var iSndChInfo_LoopTimer0, $03
	.loop1:
		note_ex PRESET_01
		note_ex PRESET_02
		note_ex PRESET_02
		note_ex PRESET_00
		note_ex PRESET_01, NOTELEN_06
		note_ex PRESET_02, NOTELEN_03
		note_ex PRESET_02
		note_ex PRESET_01
		note_ex PRESET_02
		note_ex PRESET_02
		note_ex PRESET_00
		note_ex PRESET_01, NOTELEN_06
		note_ex PRESET_02, NOTELEN_03
		note_ex PRESET_02
		snd_loop .loop1, iSndChInfo_LoopTimer0
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_00
	note_ex PRESET_01, NOTELEN_06
	note_ex PRESET_02, NOTELEN_03
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_00
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_00
	note_ex PRESET_02
	set_var iSndChInfo_LoopTimer0, $02
	.loop2a:
		set_var iSndChInfo_LoopTimer1, $03
		.loop2b:
			note_ex PRESET_01
			note_ex PRESET_02
			note_ex PRESET_02
			note_ex PRESET_00
			note_ex PRESET_01, NOTELEN_06
			note_ex PRESET_02, NOTELEN_03
			note_ex PRESET_02
			note_ex PRESET_01
			note_ex PRESET_02
			note_ex PRESET_02
			note_ex PRESET_00
			note_ex PRESET_01, NOTELEN_06
			note_ex PRESET_02, NOTELEN_03
			note_ex PRESET_02
			snd_loop .loop2b, iSndChInfo_LoopTimer1
		note_ex PRESET_01
		note_ex PRESET_02
		note_ex PRESET_02
		note_ex PRESET_00
		note_ex PRESET_01, NOTELEN_06
		note_ex PRESET_02, NOTELEN_03
		note_ex PRESET_02
		note_ex PRESET_01
		note_ex PRESET_02
		note_ex PRESET_02
		note_ex PRESET_00
		note_ex PRESET_01
		note_ex PRESET_02
		note_ex PRESET_00
		note_ex PRESET_02
		snd_loop .loop2a, iSndChInfo_LoopTimer0
	set_var iSndChInfo_LoopTimer0, $03
	.loop3:
		note_ex PRESET_01
		note_ex PRESET_02
		note_ex PRESET_02
		note_ex PRESET_00
		note_ex PRESET_01, NOTELEN_06
		note_ex PRESET_02, NOTELEN_03
		note_ex PRESET_02
		note_ex PRESET_01
		note_ex PRESET_02
		note_ex PRESET_02
		note_ex PRESET_00
		note_ex PRESET_01, NOTELEN_06
		note_ex PRESET_02, NOTELEN_03
		note_ex PRESET_02
		snd_loop .loop3, iSndChInfo_LoopTimer0
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_00
	note_ex PRESET_01, NOTELEN_06
	note_ex PRESET_02, NOTELEN_03
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_00, NOTELEN_30
	chan_stop
