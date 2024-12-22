SndHeader_BGM_0E:
	db 4 ; Number of slots
.slot0:
	db SNDSLOT0 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db 12 ; iSndChInfo_NoteIdBase
	db 119 ; iSndChInfo_Speed
	db SNDCH_WAVE ; iSndChInfo_ChId
	dw SndData_0E_Ch3 ; Data pointer
	db WAVE_00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot1:
	db SNDSLOT1 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 8 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db 0 ; iSndChInfo_NoteIdBase
	db 119 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_0E_Ch2 ; Data pointer
	nrx1 SNDDUTY_12, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot2:
	db SNDSLOT2 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 12 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -12 ; iSndChInfo_NoteIdBase
	db 119 ; iSndChInfo_Speed
	db SNDCH_PULSE1 ; iSndChInfo_ChId
	dw SndData_0E_Ch1 ; Data pointer
	nrx1 SNDDUTY_12, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot3:
	db SNDSLOT3 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db 0 ; iSndChInfo_NoteIdBase
	db 119 ; iSndChInfo_Speed
	db SNDCH_NOISE ; iSndChInfo_ChId
	dw SndData_0E_Ch4 ; Data pointer
	nrx1 SNDDUTY_12, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_0E_Ch3:
	snd_wave WAVE_0D
	snd_inc_vol 5
	snd_call .sub0
	snd_call .sub0
	snd_call .sub0
	snd_call .sub0
	snd_call .sub0
	snd_call .sub0
	snd_call .sub0
	snd_call .sub0
	snd_call .sub1
	snd_call .sub0
	snd_call .sub0
	snd_call .sub0
	snd_call .sub0
	snd_inc_base_note -3
	snd_call .sub0
	snd_call .sub0
	snd_call .sub0
	snd_inc_base_note 3
	snd_call .sub2
	snd_inc_vol -5
	snd_jp SndData_0E_Ch3
.sub0:
	snd_note $10, NOTELEN_CUSTOM, $05
	snd_note $00, NOTELEN_01
	snd_note $09, NOTELEN_CUSTOM, $05
	snd_note $00, NOTELEN_01
	snd_note $0B, NOTELEN_CUSTOM, $05
	snd_note $00, NOTELEN_01
	snd_note $0D, NOTELEN_CUSTOM, $05
	snd_note $00, NOTELEN_01
	snd_note $0E, NOTELEN_CUSTOM, $05
	snd_note $00, NOTELEN_01
	snd_note $10, NOTELEN_CUSTOM, $05
	snd_note $00, NOTELEN_01
	snd_pitchbend 1
	snd_note $12, NOTELEN_CUSTOM, $05
	snd_note $00, NOTELEN_01
	snd_inc_vol 1
	snd_note $10, NOTELEN_0C
	snd_pitchbend 0
	snd_inc_vol -1
	snd_note $09, NOTELEN_CUSTOM, $05
	snd_note $00, NOTELEN_01
	snd_note $0B, NOTELEN_CUSTOM, $05
	snd_note $00, NOTELEN_01
	snd_note $0D, NOTELEN_CUSTOM, $05
	snd_note $00, NOTELEN_01
	snd_note $0E, NOTELEN_CUSTOM, $05
	snd_note $00, NOTELEN_01
	snd_note $10, NOTELEN_CUSTOM, $05
	snd_note $00, NOTELEN_01
	snd_note $12, NOTELEN_CUSTOM, $05
	snd_note $00, NOTELEN_01
	snd_note $0E, NOTELEN_CUSTOM, $05
	snd_note $00, NOTELEN_01
	snd_ret
.sub1:
	snd_note $0D, NOTELEN_09
	snd_note $0D, NOTELEN_03
	snd_note $14, NOTELEN_06
	snd_note $19
	snd_note $0D, NOTELEN_09
	snd_note $0D, NOTELEN_03
	snd_note $14, NOTELEN_06
	snd_note $19
	snd_note $0D, NOTELEN_09
	snd_note $0D, NOTELEN_03
	snd_note $14, NOTELEN_06
	snd_note $19
	snd_note $0D, NOTELEN_09
	snd_note $0D, NOTELEN_03
	snd_note $14, NOTELEN_06
	snd_note $19
	snd_note $0E, NOTELEN_09
	snd_note $0E, NOTELEN_03
	snd_note $15, NOTELEN_06
	snd_note $1A
	snd_note $0E, NOTELEN_09
	snd_note $0E, NOTELEN_03
	snd_note $15, NOTELEN_06
	snd_note $1A
	snd_note $0E, NOTELEN_09
	snd_note $0E, NOTELEN_03
	snd_note $15, NOTELEN_06
	snd_note $1A
	snd_note $0E, NOTELEN_09
	snd_note $0E, NOTELEN_03
	snd_note $15, NOTELEN_06
	snd_note $1A
	snd_note $0D, NOTELEN_09
	snd_note $0D, NOTELEN_03
	snd_note $14, NOTELEN_06
	snd_note $19
	snd_note $0D, NOTELEN_09
	snd_note $0D, NOTELEN_03
	snd_note $14, NOTELEN_06
	snd_note $19
	snd_note $0D, NOTELEN_09
	snd_note $0D, NOTELEN_03
	snd_note $14, NOTELEN_06
	snd_note $19
	snd_note $0D, NOTELEN_09
	snd_note $0D, NOTELEN_03
	snd_note $14, NOTELEN_06
	snd_note $19
	snd_note $0C, NOTELEN_09
	snd_note $0C, NOTELEN_03
	snd_note $13, NOTELEN_06
	snd_note $18
	snd_note $0C, NOTELEN_09
	snd_note $0C, NOTELEN_03
	snd_note $13, NOTELEN_06
	snd_note $18
	snd_note $0B, NOTELEN_09
	snd_note $0B, NOTELEN_03
	snd_note $12, NOTELEN_06
	snd_note $17
	snd_note $0B, NOTELEN_09
	snd_note $0B, NOTELEN_03
	snd_note $12, NOTELEN_06
	snd_note $17
	snd_ret
.sub2:
	snd_note $0D, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_inc_vol -2
	snd_note $0D, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_inc_vol -1
	snd_note $0D, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_inc_vol -1
	snd_note $0D, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_inc_vol -1
	snd_note $0D, NOTELEN_03
	snd_inc_vol 1
	snd_note $00, NOTELEN_06
	snd_note $0D, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_inc_vol 1
	snd_note $0D, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_inc_vol 1
	snd_note $0D, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_inc_vol 2
	snd_note $0D, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_inc_vol 1
	snd_note $0D, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_inc_vol 1
	snd_note $0D, NOTELEN_03
	snd_note $00, NOTELEN_03
	snd_inc_vol -2
	snd_ret
SndData_0E_Ch2:
	snd_duty SNDDUTY_25, $00
	snd_inc_freq_offset -1
	snd_instrument INSTR_5A
	snd_vibrato VIBRATO_60
	snd_inc_vol -2
	snd_call .sub0
	snd_call .sub1
	snd_call .sub0
	snd_call .sub2
	snd_call .sub3
	snd_call .sub3
	snd_inc_base_note -12
	snd_inc_vol 2
	snd_call .sub4
	snd_inc_base_note 12
	snd_inc_vol -2
	snd_call .sub0
	snd_call .sub1
	snd_call .sub0
	snd_call .sub1
	snd_inc_base_note -3
	snd_call .sub0
	snd_call .sub1
	snd_inc_base_note 3
	snd_call .sub5
	snd_inc_vol 2
	snd_inc_freq_offset 1
	snd_jp SndData_0E_Ch2
.sub0:
	snd_note $2D, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $2C, NOTELEN_03
	snd_note $00, NOTELEN_03
	snd_note $2C, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $2C, NOTELEN_03
	snd_note $00, NOTELEN_03
	snd_note $2C, NOTELEN_03
	snd_note $2C
	snd_note $00, NOTELEN_03
	snd_note $2C, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $2D, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $2C, NOTELEN_03
	snd_note $00, NOTELEN_03
	snd_note $2C, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $2C, NOTELEN_03
	snd_note $00, NOTELEN_03
	snd_note $2C, NOTELEN_03
	snd_note $2C
	snd_note $00, NOTELEN_03
	snd_note $2C, NOTELEN_03
	snd_note $00, NOTELEN_03
	snd_note $2C, NOTELEN_03
	snd_ret
.sub1:
	snd_note $28, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $26, NOTELEN_03
	snd_note $00, NOTELEN_03
	snd_note $26, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $26, NOTELEN_03
	snd_note $00, NOTELEN_03
	snd_note $26, NOTELEN_03
	snd_note $26
	snd_note $00, NOTELEN_03
	snd_note $26, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $28, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $26, NOTELEN_03
	snd_note $00, NOTELEN_03
	snd_note $26, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $26, NOTELEN_03
	snd_note $00, NOTELEN_03
	snd_note $26, NOTELEN_03
	snd_note $26
	snd_note $00, NOTELEN_03
	snd_note $26, NOTELEN_03
	snd_note $00, NOTELEN_03
	snd_note $26, NOTELEN_03
	snd_ret
.sub2:
	snd_note $28, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $26, NOTELEN_03
	snd_note $00, NOTELEN_03
	snd_note $26, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $26, NOTELEN_03
	snd_note $00, NOTELEN_03
	snd_note $26, NOTELEN_03
	snd_note $26
	snd_note $00, NOTELEN_03
	snd_note $26, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $28, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $26, NOTELEN_03
	snd_note $00, NOTELEN_03
	snd_note $26, NOTELEN_03
	snd_note $26
	snd_note $00
	snd_note $26
	snd_note $00
	snd_note $26
	snd_note $26
	snd_inc_vol -3
	snd_note $25
	snd_note $26
	snd_note $25
	snd_note $21
	snd_inc_vol 3
	snd_ret
.sub3:
	snd_note $2D, NOTELEN_03
	snd_inc_vol -2
	snd_note $28
	snd_note $00
	snd_inc_vol 2
	snd_note $2C, NOTELEN_03
	snd_note $00
	snd_note $2C
	snd_note $00
	snd_inc_vol -2
	snd_note $28, NOTELEN_03
	snd_inc_vol 2
	snd_note $2C
	snd_note $00
	snd_note $2C
	snd_note $2C
	snd_inc_vol -2
	snd_note $28
	snd_inc_vol 2
	snd_note $2C
	snd_inc_vol -2
	snd_note $28
	snd_note $00
	snd_inc_vol 2
	snd_note $2D, NOTELEN_03
	snd_inc_vol -2
	snd_note $28
	snd_note $00
	snd_inc_vol 2
	snd_note $2C, NOTELEN_03
	snd_note $00
	snd_note $2C
	snd_note $00
	snd_inc_vol -2
	snd_note $28, NOTELEN_03
	snd_inc_vol 2
	snd_note $2C
	snd_note $00
	snd_note $2C
	snd_note $2C
	snd_inc_vol -2
	snd_note $28
	snd_inc_vol 2
	snd_note $2C
	snd_inc_vol -2
	snd_note $28
	snd_note $00
	snd_inc_vol 2
	snd_note $28, NOTELEN_03
	snd_inc_vol -2
	snd_note $21
	snd_note $00
	snd_inc_vol 2
	snd_note $26, NOTELEN_03
	snd_note $00
	snd_note $26
	snd_note $00
	snd_inc_vol -2
	snd_note $21, NOTELEN_03
	snd_inc_vol 2
	snd_note $26
	snd_note $00
	snd_note $26, NOTELEN_03
	snd_note $26
	snd_inc_vol -2
	snd_note $21
	snd_inc_vol 2
	snd_note $26
	snd_inc_vol -2
	snd_note $21
	snd_note $00
	snd_inc_vol 2
	snd_note $28, NOTELEN_03
	snd_inc_vol -2
	snd_note $21
	snd_note $00
	snd_inc_vol 2
	snd_note $26, NOTELEN_03
	snd_note $00
	snd_note $26
	snd_note $00
	snd_inc_vol -2
	snd_note $21, NOTELEN_03
	snd_inc_vol 2
	snd_note $26
	snd_note $00
	snd_note $26
	snd_note $26
	snd_inc_vol -2
	snd_note $21
	snd_inc_vol 2
	snd_note $26
	snd_inc_vol -2
	snd_note $21
	snd_note $00
	snd_inc_vol 2
	snd_ret
.sub4:
	snd_inc_vol 2
	snd_note $27, NOTELEN_03
	snd_note $2F
	snd_note $2A
	snd_note $27
	snd_note $2F
	snd_note $2A
	snd_note $27
	snd_note $2F
	snd_note $2A
	snd_note $27
	snd_note $2F
	snd_note $2A
	snd_note $27
	snd_note $2F
	snd_note $2A
	snd_note $27
	snd_note $2F
	snd_note $2A
	snd_note $27
	snd_note $2F
	snd_note $2A
	snd_note $27
	snd_note $2F
	snd_note $2A
	snd_note $27
	snd_note $2F
	snd_note $2A
	snd_note $27
	snd_note $2F
	snd_note $2A
	snd_note $27
	snd_note $2F
	snd_note $25
	snd_note $2D
	snd_note $2A
	snd_note $25
	snd_note $2D
	snd_note $2A
	snd_note $25
	snd_note $2D
	snd_note $2A
	snd_note $25
	snd_note $2D
	snd_note $2A
	snd_note $25
	snd_note $2D
	snd_note $2A
	snd_note $25
	snd_note $2D
	snd_note $2A
	snd_note $25
	snd_note $2D
	snd_note $2A
	snd_note $25
	snd_note $2D
	snd_note $2A
	snd_note $25
	snd_note $2D
	snd_note $2A
	snd_note $25
	snd_note $2D
	snd_note $2A
	snd_note $25
	snd_note $2D
	snd_note $27
	snd_note $2F
	snd_note $2A
	snd_note $27
	snd_note $2F
	snd_note $2A
	snd_note $27
	snd_note $2F
	snd_note $2A
	snd_note $27
	snd_note $2F
	snd_note $2A
	snd_note $27
	snd_note $2F
	snd_note $2A
	snd_note $27
	snd_note $2F
	snd_note $2A
	snd_note $27
	snd_note $2F
	snd_note $2A
	snd_note $27
	snd_note $2F
	snd_note $2A
	snd_note $27
	snd_note $2F
	snd_note $2A
	snd_note $27
	snd_note $2F
	snd_note $2A
	snd_note $27
	snd_note $2F
	snd_note $28
	snd_note $2F
	snd_note $2B
	snd_note $28
	snd_note $2F
	snd_note $2B
	snd_note $28
	snd_note $2F
	snd_note $2B
	snd_note $28
	snd_note $2F
	snd_note $2B
	snd_note $28
	snd_note $2F
	snd_note $2B
	snd_note $28
	snd_note $28
	snd_note $31
	snd_note $2D
	snd_note $28
	snd_note $31
	snd_note $2D
	snd_note $28
	snd_note $31
	snd_note $2D
	snd_note $28
	snd_note $31
	snd_note $2D
	snd_inc_vol -3
	snd_note $3D
	snd_note $3E
	snd_note $3D
	snd_note $2D
	snd_inc_vol 1
	snd_ret
.sub5:
	snd_inc_vol 3
	snd_note $2A, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $29, NOTELEN_03
	snd_note $00, NOTELEN_03
	snd_note $29, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $29, NOTELEN_03
	snd_note $00
	snd_note $29, NOTELEN_03
	snd_note $29
	snd_note $00, NOTELEN_03
	snd_note $29, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $2A, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $29, NOTELEN_03
	snd_note $00
	snd_note $29, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $29, NOTELEN_03
	snd_note $00
	snd_note $29, NOTELEN_03
	snd_note $29
	snd_note $00
	snd_note $29, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_inc_vol -3
	snd_note $31, NOTELEN_02
	snd_note $00, NOTELEN_CUSTOM, $07
	snd_instrument INSTR_63
	snd_vibrato VIBRATO_0F
	snd_inc_vol -2
	snd_note $2F, NOTELEN_CUSTOM, $57
	snd_inc_vol 2
	snd_instrument INSTR_NONE
	snd_vibrato VIBRATO_NONE
	snd_ret
SndData_0E_Ch1:
	snd_duty SNDDUTY_12, $00
	snd_vibrato VIBRATO_5D
	snd_pitchbend 40
	snd_note $2A, NOTELEN_03
	snd_note $00, NOTELEN_CUSTOM, $06
	snd_inc_vol -2
	snd_instrument INSTR_5E
	snd_vibrato VIBRATO_5B
	snd_note $28, NOTELEN_CUSTOM, $57
	snd_vibrato VIBRATO_NONE
	snd_instrument INSTR_NONE
	snd_inc_vol 2
	snd_note $25, NOTELEN_03
	snd_note $00, NOTELEN_CUSTOM, $06
	snd_inc_vol -2
	snd_instrument INSTR_5E
	snd_vibrato VIBRATO_5B
	snd_note $23, NOTELEN_CUSTOM, $57
	snd_vibrato VIBRATO_NONE
	snd_instrument INSTR_NONE
	snd_inc_vol 2
	snd_note $2A, NOTELEN_03
	snd_note $00, NOTELEN_CUSTOM, $06
	snd_inc_vol -2
	snd_instrument INSTR_5E
	snd_vibrato VIBRATO_5B
	snd_note $28, NOTELEN_CUSTOM, $57
	snd_vibrato VIBRATO_NONE
	snd_instrument INSTR_NONE
	snd_inc_vol 2
	snd_note $25, NOTELEN_03
	snd_note $00, NOTELEN_CUSTOM, $06
	snd_inc_vol -2
	snd_instrument INSTR_5E
	snd_vibrato VIBRATO_5B
	snd_note $23, NOTELEN_CUSTOM, $4B
	snd_vibrato VIBRATO_NONE
	snd_inc_vol 2
	snd_instrument INSTR_NONE
	snd_duty SNDDUTY_12, $00
	snd_vibrato VIBRATO_5D
	snd_pitchbend 20
	snd_duty SNDDUTY_25, $00
	snd_note $31, NOTELEN_03
	snd_note $32
	snd_note $31
	snd_note $2D
	snd_note $31, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_instrument INSTR_5E
	snd_vibrato VIBRATO_5B
	snd_note $2F, NOTELEN_CUSTOM, $4B
	snd_vibrato VIBRATO_NONE
	snd_instrument INSTR_NONE
	snd_note $2C, NOTELEN_03
	snd_note $2D
	snd_note $2C
	snd_note $28
	snd_note $2C, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_instrument INSTR_5E
	snd_vibrato VIBRATO_5B
	snd_note $2A, NOTELEN_CUSTOM, $4B
	snd_vibrato VIBRATO_NONE
	snd_instrument INSTR_NONE
	snd_note $31, NOTELEN_03
	snd_note $32
	snd_note $31
	snd_note $2D
	snd_note $31, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_instrument INSTR_5E
	snd_vibrato VIBRATO_5B
	snd_note $2F, NOTELEN_CUSTOM, $4B
	snd_vibrato VIBRATO_NONE
	snd_instrument INSTR_NONE
	snd_note $2C, NOTELEN_03
	snd_note $2D
	snd_note $2C
	snd_note $28
	snd_note $2C, NOTELEN_02
	snd_note $00, NOTELEN_CUSTOM, $07
	snd_instrument INSTR_5E
	snd_vibrato VIBRATO_5B
	snd_note $2A, NOTELEN_CUSTOM, $57
	snd_vibrato VIBRATO_NONE
	snd_instrument INSTR_NONE
	snd_inc_vol -4
	snd_pitchbend 0
	snd_vibrato VIBRATO_5C
	snd_instrument INSTR_5B
	snd_note $36, NOTELEN_CUSTOM, $60
	snd_instrument INSTR_NONE
	snd_vibrato VIBRATO_5B
	snd_note $36, NOTELEN_CUSTOM, $90
	snd_vibrato VIBRATO_NONE
	snd_instrument INSTR_5C
	snd_note $36, NOTELEN_30
	snd_inc_vol 5
	snd_instrument INSTR_58
	snd_note $37, NOTELEN_30
	snd_vibrato VIBRATO_61
	snd_instrument INSTR_5F
	snd_note $39, NOTELEN_24
	snd_vibrato VIBRATO_NONE
	snd_instrument INSTR_NONE
	snd_inc_vol -1
	snd_pitchbend 20
	snd_note $31, NOTELEN_03
	snd_note $32
	snd_note $31
	snd_note $2D
	snd_note $31, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_instrument INSTR_5E
	snd_vibrato VIBRATO_5B
	snd_note $2F, NOTELEN_CUSTOM, $4B
	snd_vibrato VIBRATO_NONE
	snd_instrument INSTR_NONE
	snd_note $2C, NOTELEN_03
	snd_note $2D
	snd_note $2C
	snd_note $28
	snd_note $2C, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_instrument INSTR_5E
	snd_vibrato VIBRATO_5B
	snd_note $2A, NOTELEN_CUSTOM, $4B
	snd_vibrato VIBRATO_NONE
	snd_instrument INSTR_NONE
	snd_note $31, NOTELEN_03
	snd_note $32
	snd_note $31
	snd_note $2D
	snd_note $31, NOTELEN_02
	snd_note $00, NOTELEN_CUSTOM, $07
	snd_instrument INSTR_5E
	snd_vibrato VIBRATO_5B
	snd_note $2F, NOTELEN_CUSTOM, $4B
	snd_vibrato VIBRATO_NONE
	snd_instrument INSTR_NONE
	snd_note $2C, NOTELEN_03
	snd_note $2D
	snd_note $2C
	snd_note $28
	snd_note $2C, NOTELEN_02
	snd_note $00, NOTELEN_CUSTOM, $07
	snd_instrument INSTR_5E
	snd_vibrato VIBRATO_5B
	snd_note $2A, NOTELEN_CUSTOM, $57
	snd_vibrato VIBRATO_NONE
	snd_instrument INSTR_NONE
	snd_pitchbend 30
	snd_note $27, NOTELEN_02
	snd_note $00, NOTELEN_CUSTOM, $07
	snd_instrument INSTR_5E
	snd_vibrato VIBRATO_5B
	snd_note $25, NOTELEN_CUSTOM, $57
	snd_vibrato VIBRATO_NONE
	snd_instrument INSTR_NONE
	snd_note $22, NOTELEN_02
	snd_note $00, NOTELEN_CUSTOM, $07
	snd_instrument INSTR_5E
	snd_vibrato VIBRATO_5B
	snd_note $20, NOTELEN_CUSTOM, $57
	snd_vibrato VIBRATO_NONE
	snd_instrument INSTR_NONE
	snd_note $27, NOTELEN_02
	snd_note $00, NOTELEN_CUSTOM, $07
	snd_instrument INSTR_5E
	snd_vibrato VIBRATO_5B
	snd_note $25, NOTELEN_CUSTOM, $57
	snd_vibrato VIBRATO_NONE
	snd_instrument INSTR_NONE
	snd_note $22, NOTELEN_02
	snd_note $00, NOTELEN_CUSTOM, $07
	snd_vibrato VIBRATO_60
	snd_inc_vol -5
	snd_instrument INSTR_5B
	snd_note $20, NOTELEN_CUSTOM, $57
	snd_inc_vol 5
	snd_vibrato VIBRATO_NONE
	snd_pitchbend 0
	snd_jp SndData_0E_Ch1
SndData_0E_Ch4:
	snd_call .sub0
	snd_call .sub1
	snd_call .sub2
	snd_call .sub1
	snd_call .sub1
	snd_call .sub1
	snd_call .sub1
	snd_call .sub1
	snd_call .sub1
	snd_call .sub1
	snd_call .sub3
	snd_call .sub4
	snd_call .sub4
	snd_call .sub4
	snd_call .sub4
	snd_call .sub4
	snd_call .sub4
	snd_call .sub4
	snd_call .sub4
	snd_call .sub1
	snd_call .sub1
	snd_call .sub1
	snd_jp SndData_0E_Ch4
.sub0:
	snd_noteex PRESET_01, NOTELEN_0C
	snd_noteex PRESET_01
	snd_noteex PRESET_01, NOTELEN_09
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_00, NOTELEN_0C
	snd_noteex PRESET_01
	snd_noteex PRESET_01
	snd_noteex PRESET_01, NOTELEN_09
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_00, NOTELEN_0C
	snd_noteex PRESET_01
	snd_noteex PRESET_01
	snd_noteex PRESET_01, NOTELEN_09
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_00, NOTELEN_0C
	snd_noteex PRESET_01, NOTELEN_09
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_01, NOTELEN_06
	snd_noteex PRESET_00
	snd_noteex PRESET_01, NOTELEN_09
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_02
	snd_ret
.sub1:
	snd_noteex PRESET_01, NOTELEN_09
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_01, NOTELEN_0C
	snd_noteex PRESET_01, NOTELEN_09
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_02
	snd_noteex PRESET_01, NOTELEN_09
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_01, NOTELEN_0C
	snd_noteex PRESET_01, NOTELEN_09
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_02
	snd_ret
.sub2:
	snd_noteex PRESET_01, NOTELEN_09
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_01, NOTELEN_0C
	snd_noteex PRESET_01, NOTELEN_09
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_02
	snd_noteex PRESET_01, NOTELEN_09
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_01, NOTELEN_06
	snd_noteex PRESET_00
	snd_noteex PRESET_01, NOTELEN_09
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_02, NOTELEN_03
	snd_noteex PRESET_00
	snd_ret
.sub3:
	snd_noteex PRESET_01, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_01
	snd_note $00, NOTELEN_09
	snd_noteex PRESET_01, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_00
	snd_note $00
	snd_noteex PRESET_02
	snd_note $00
	snd_noteex PRESET_01
	snd_note $00, NOTELEN_06
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_01
	snd_note $00
	snd_noteex PRESET_00
	snd_noteex PRESET_00
	snd_noteex PRESET_01
	snd_note $00, NOTELEN_06
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_00
	snd_note $00
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_ret
.sub4:
	snd_noteex PRESET_01
	snd_note $00, NOTELEN_06
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_01
	snd_note $00
	snd_noteex PRESET_00
	snd_note $00
	snd_noteex PRESET_01
	snd_note $00, NOTELEN_06
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_00
	snd_note $00
	snd_noteex PRESET_02
	snd_note $00
	snd_ret
