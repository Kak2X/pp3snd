SndHeader_21:
	db 4 ; Number of slots
.slot0:
	db SNDSLOT0 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 13 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -12 ; iSndChInfo_NoteIdBase
	db 102 ; iSndChInfo_Speed
	db SNDCH_PULSE1 ; iSndChInfo_ChId
	dw SndData_21_Ch1 ; Data pointer
	nrx1 SNDDUTY_12, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot1:
	db SNDSLOT1 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 8 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -12 ; iSndChInfo_NoteIdBase
	db 102 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_21_Ch2 ; Data pointer
	nrx1 SNDDUTY_12, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot2:
	db SNDSLOT2 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db 0 ; iSndChInfo_NoteIdBase
	db 102 ; iSndChInfo_Speed
	db SNDCH_WAVE ; iSndChInfo_ChId
	dw SndData_21_Ch3 ; Data pointer
	db WAVE_00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot3:
	db SNDSLOT3 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db 0 ; iSndChInfo_NoteIdBase
	db 102 ; iSndChInfo_Speed
	db SNDCH_NOISE ; iSndChInfo_ChId
	dw SndData_21_Ch4 ; Data pointer
	nrx1 SNDDUTY_12, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_21_Ch1:
	snd_duty SNDDUTY_25, $00
	snd_inc_vol -1
	snd_vibrato VIBRATO_5F
	snd_note $33, NOTELEN_30
	snd_vibrato VIBRATO_NONE
	snd_pitchbend 30
	snd_inc_vol 2
	snd_note $38, NOTELEN_03
	snd_note $33
	snd_note $00
	snd_note $31
	snd_note $00
	snd_note $30
	snd_note $00
	snd_note $31
	snd_note $00
	snd_note $30
	snd_note $31
	snd_note $33
	snd_pitchbend 0
	snd_inc_vol -2
	snd_vibrato VIBRATO_62
	snd_note $2E, NOTELEN_0C
	snd_vibrato VIBRATO_5F
	snd_instrument INSTR_65
	snd_note $2C, NOTELEN_30
	snd_instrument INSTR_NONE
	snd_vibrato VIBRATO_NONE
	snd_pitchbend 50
	snd_inc_vol 2
	snd_note $38, NOTELEN_03
	snd_note $2C
	snd_note $00
	snd_note $30
	snd_note $00
	snd_note $31
	snd_note $00
	snd_note $33
	snd_note $00
	snd_note $31
	snd_note $00
	snd_note $33
	snd_pitchbend 0
	snd_inc_vol -2
	snd_vibrato VIBRATO_62
	snd_note $31
	snd_vibrato VIBRATO_NONE
	snd_note $30
	snd_note $2E, NOTELEN_06
	snd_vibrato VIBRATO_5F
	snd_instrument INSTR_65
	snd_note $2C, NOTELEN_30
	snd_instrument INSTR_NONE
	snd_vibrato VIBRATO_NONE
	snd_note $2C, NOTELEN_03
	snd_note $31
	snd_note $00
	snd_note $33
	snd_note $00
	snd_note $33
	snd_note $00
	snd_note $35
	snd_note $00
	snd_note $36
	snd_note $35
	snd_note $36
	snd_note $35, NOTELEN_06
	snd_note $33
	snd_note $38, NOTELEN_03
	snd_note $2C
	snd_note $00
	snd_note $2C
	snd_note $00
	snd_note $2C
	snd_note $00
	snd_note $36
	snd_note $35
	snd_note $00
	snd_note $33
	snd_note $00
	snd_note $31
	snd_note $33, NOTELEN_09
	snd_note $33, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $33, NOTELEN_03
	snd_note $00
	snd_note $33
	snd_note $00
	snd_vibrato VIBRATO_63
	snd_note $33, NOTELEN_09
	snd_vibrato VIBRATO_NONE
	snd_note $00, NOTELEN_12
	snd_vibrato VIBRATO_5F
	snd_note $35, NOTELEN_30
	snd_vibrato VIBRATO_62
	snd_note $36, NOTELEN_12
	snd_vibrato VIBRATO_NONE
	snd_note $35
	snd_note $31, NOTELEN_0C
	snd_vibrato VIBRATO_62
	snd_note $33, NOTELEN_12
	snd_vibrato VIBRATO_NONE
	snd_instrument INSTR_65
	snd_note $2C, NOTELEN_CUSTOM, $4E
	snd_instrument INSTR_NONE
	snd_vibrato VIBRATO_5F
	snd_note $35, NOTELEN_30
	snd_vibrato VIBRATO_NONE
	snd_note $36, NOTELEN_12
	snd_note $35
	snd_note $31, NOTELEN_0C
	snd_vibrato VIBRATO_62
	snd_note $33, NOTELEN_12
	snd_vibrato VIBRATO_NONE
	snd_instrument INSTR_65
	snd_note $38, NOTELEN_CUSTOM, $4E
	snd_instrument INSTR_NONE
	snd_vibrato VIBRATO_62
	snd_note $36, NOTELEN_06
	snd_vibrato VIBRATO_NONE
	snd_note $35, NOTELEN_03
	snd_note $33
	snd_note $00, NOTELEN_06
	snd_note $36
	snd_note $35, NOTELEN_03
	snd_note $33
	snd_note $00, NOTELEN_12
	snd_vibrato VIBRATO_62
	snd_note $36, NOTELEN_06
	snd_vibrato VIBRATO_NONE
	snd_note $35, NOTELEN_03
	snd_note $33
	snd_note $31
	snd_note $33
	snd_note $00
	snd_note $33, NOTELEN_06
	snd_note $38, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $38, NOTELEN_03
	snd_note $00, NOTELEN_09
	snd_vibrato VIBRATO_62
	snd_note $36, NOTELEN_06
	snd_vibrato VIBRATO_NONE
	snd_note $35, NOTELEN_03
	snd_note $33
	snd_note $00, NOTELEN_06
	snd_note $36
	snd_note $35, NOTELEN_03
	snd_note $33
	snd_note $00, NOTELEN_12
	snd_note $2C, NOTELEN_03
	snd_note $38, NOTELEN_04
	snd_note $00, NOTELEN_02
	snd_note $38, NOTELEN_03
	snd_note $00, NOTELEN_0C
	snd_vibrato VIBRATO_NONE
	snd_note $36, NOTELEN_09
	snd_vibrato VIBRATO_NONE
	snd_pitchbend 30
	snd_note $35
	snd_note $31, NOTELEN_06
	snd_pitchbend 0
	snd_inc_vol 2
	snd_jp SndData_21_Ch1
SndData_21_Ch2:
	snd_duty SNDDUTY_25, $00
	snd_inc_vol -5
	snd_inc_freq_offset -2
	snd_note $00, NOTELEN_09
	snd_vibrato VIBRATO_5F
	snd_note $33, NOTELEN_30
	snd_vibrato VIBRATO_NONE
	snd_pitchbend 30
	snd_inc_vol 2
	snd_note $38, NOTELEN_03
	snd_note $33
	snd_note $00
	snd_note $31
	snd_note $00
	snd_note $30
	snd_note $00
	snd_note $31
	snd_note $00
	snd_note $30
	snd_note $31
	snd_note $33
	snd_pitchbend 0
	snd_inc_vol -2
	snd_vibrato VIBRATO_62
	snd_note $2E, NOTELEN_0C
	snd_vibrato VIBRATO_5F
	snd_instrument INSTR_65
	snd_note $2C, NOTELEN_30
	snd_instrument INSTR_NONE
	snd_vibrato VIBRATO_NONE
	snd_pitchbend 50
	snd_inc_vol 2
	snd_note $38, NOTELEN_03
	snd_note $2C
	snd_note $00
	snd_note $30
	snd_note $00
	snd_note $31
	snd_note $00
	snd_note $33
	snd_note $00
	snd_note $31
	snd_note $00
	snd_note $33
	snd_pitchbend 0
	snd_inc_vol -2
	snd_vibrato VIBRATO_62
	snd_note $31
	snd_vibrato VIBRATO_NONE
	snd_note $30
	snd_note $2E, NOTELEN_06
	snd_vibrato VIBRATO_5F
	snd_instrument INSTR_65
	snd_note $2C, NOTELEN_30
	snd_instrument INSTR_NONE
	snd_vibrato VIBRATO_NONE
	snd_note $2C, NOTELEN_03
	snd_note $31
	snd_note $00
	snd_note $33
	snd_note $00
	snd_note $33
	snd_note $00
	snd_note $35
	snd_note $00
	snd_note $36
	snd_note $35
	snd_note $36
	snd_note $35, NOTELEN_06
	snd_note $33
	snd_note $38, NOTELEN_03
	snd_note $2C
	snd_note $00
	snd_note $2C
	snd_note $00
	snd_note $2C
	snd_note $00
	snd_note $36
	snd_note $35
	snd_note $00
	snd_note $33
	snd_note $00
	snd_note $31
	snd_note $33, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $33, NOTELEN_03
	snd_note $00
	snd_note $33
	snd_note $00
	snd_vibrato VIBRATO_63
	snd_note $33, NOTELEN_09
	snd_vibrato VIBRATO_NONE
	snd_note $00, NOTELEN_CUSTOM, $1B
	snd_vibrato VIBRATO_5F
	snd_note $35, NOTELEN_30
	snd_vibrato VIBRATO_62
	snd_note $36, NOTELEN_12
	snd_vibrato VIBRATO_NONE
	snd_note $35
	snd_note $31, NOTELEN_0C
	snd_vibrato VIBRATO_62
	snd_note $33, NOTELEN_12
	snd_vibrato VIBRATO_NONE
	snd_instrument INSTR_65
	snd_inc_vol -1
	snd_note $2C, NOTELEN_CUSTOM, $4E
	snd_inc_vol 1
	snd_instrument INSTR_NONE
	snd_vibrato VIBRATO_5F
	snd_note $35, NOTELEN_30
	snd_vibrato VIBRATO_NONE
	snd_note $36, NOTELEN_12
	snd_note $35
	snd_note $31, NOTELEN_0C
	snd_vibrato VIBRATO_62
	snd_note $33, NOTELEN_12
	snd_vibrato VIBRATO_NONE
	snd_instrument INSTR_65
	snd_inc_vol -1
	snd_note $38, NOTELEN_CUSTOM, $4E
	snd_inc_vol 1
	snd_instrument INSTR_NONE
	snd_vibrato VIBRATO_62
	snd_note $36, NOTELEN_06
	snd_vibrato VIBRATO_NONE
	snd_note $35, NOTELEN_03
	snd_note $33
	snd_note $00, NOTELEN_06
	snd_note $36
	snd_note $35, NOTELEN_03
	snd_note $33
	snd_note $00, NOTELEN_12
	snd_vibrato VIBRATO_62
	snd_note $36, NOTELEN_06
	snd_vibrato VIBRATO_NONE
	snd_note $35, NOTELEN_03
	snd_note $33
	snd_note $31
	snd_note $33
	snd_note $00
	snd_note $33, NOTELEN_06
	snd_note $38, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $38, NOTELEN_03
	snd_note $00, NOTELEN_09
	snd_vibrato VIBRATO_62
	snd_note $36, NOTELEN_06
	snd_vibrato VIBRATO_NONE
	snd_note $35, NOTELEN_03
	snd_note $33
	snd_note $00, NOTELEN_06
	snd_note $36
	snd_note $35, NOTELEN_03
	snd_note $33
	snd_note $00, NOTELEN_12
	snd_note $2C, NOTELEN_03
	snd_note $38, NOTELEN_04
	snd_note $00, NOTELEN_02
	snd_note $38, NOTELEN_03
	snd_note $00, NOTELEN_0C
	snd_vibrato VIBRATO_NONE
	snd_note $36, NOTELEN_09
	snd_vibrato VIBRATO_NONE
	snd_pitchbend 30
	snd_note $00, NOTELEN_06
	snd_pitchbend 0
	snd_inc_freq_offset 2
	snd_inc_vol 5
	snd_jp SndData_21_Ch2
SndData_21_Ch3:
	snd_wave WAVE_0D
	snd_inc_vol 5
	snd_note $14, NOTELEN_03
	snd_note $00
	snd_note $19
	snd_note $1B, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_note $14
	snd_note $00
	snd_note $19
	snd_note $1B, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_note $1B, NOTELEN_06
	snd_note $20
	snd_note $14, NOTELEN_03
	snd_note $00
	snd_note $19
	snd_note $1B, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_note $14
	snd_note $00
	snd_note $19
	snd_note $1B, NOTELEN_06
	snd_note $1E
	snd_note $00, NOTELEN_09
	snd_note $14, NOTELEN_03
	snd_note $00
	snd_note $19
	snd_note $1B, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_note $14
	snd_note $00
	snd_note $20
	snd_note $14
	snd_note $20, NOTELEN_06
	snd_note $1E
	snd_note $1D
	snd_note $0F, NOTELEN_03
	snd_note $1B
	snd_note $00
	snd_note $0F
	snd_note $1B
	snd_note $00
	snd_note $0F
	snd_note $1B
	snd_note $00, NOTELEN_18
	snd_note $14, NOTELEN_03
	snd_note $00
	snd_note $19
	snd_note $1B, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_note $14
	snd_note $00
	snd_note $19
	snd_note $1B, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_note $1B, NOTELEN_06
	snd_note $20
	snd_note $14, NOTELEN_03
	snd_note $00
	snd_note $19
	snd_note $1B, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_note $14
	snd_note $00
	snd_note $19
	snd_note $1B, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_note $1B, NOTELEN_06
	snd_note $20
	snd_note $20, NOTELEN_03
	snd_note $14
	snd_note $14
	snd_note $18
	snd_note $00
	snd_note $19
	snd_note $00
	snd_note $1B
	snd_note $00
	snd_note $1E
	snd_note $00
	snd_note $1E
	snd_note $1D
	snd_note $1D
	snd_note $1B, NOTELEN_06
	snd_note $38, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $38, NOTELEN_03
	snd_note $00
	snd_note $38
	snd_note $00
	snd_note $38, NOTELEN_09
	snd_note $00, NOTELEN_12
	snd_note $0D, NOTELEN_06
	snd_note $00, NOTELEN_0C
	snd_note $19, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_note $19, NOTELEN_09
	snd_note $0D, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $0D
	snd_note $00, NOTELEN_03
	snd_note $0D, NOTELEN_09
	snd_note $19, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $14
	snd_note $0F
	snd_note $00, NOTELEN_03
	snd_note $11, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_note $12, NOTELEN_06
	snd_note $0C, NOTELEN_09
	snd_note $08, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $08
	snd_note $00, NOTELEN_0C
	snd_note $08, NOTELEN_03
	snd_note $12
	snd_note $11
	snd_note $12
	snd_note $14, NOTELEN_06
	snd_note $12, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_note $11, NOTELEN_03
	snd_note $00
	snd_note $0F, NOTELEN_02
	snd_note $00, NOTELEN_04
	snd_note $14, NOTELEN_0C
	snd_note $00, NOTELEN_CUSTOM, $0F
	snd_note $0D, NOTELEN_06
	snd_note $00, NOTELEN_0C
	snd_note $19, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_note $19, NOTELEN_09
	snd_note $0D, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $0D
	snd_note $00, NOTELEN_03
	snd_note $0D, NOTELEN_06
	snd_note $00, NOTELEN_0C
	snd_note $19, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_note $19, NOTELEN_09
	snd_note $0D, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $0D
	snd_note $00, NOTELEN_03
	snd_note $18
	snd_note $08, NOTELEN_06
	snd_note $08
	snd_note $00, NOTELEN_0C
	snd_note $0F, NOTELEN_03
	snd_note $08
	snd_note $00
	snd_note $08
	snd_note $00, NOTELEN_09
	snd_note $08, NOTELEN_03
	snd_note $00
	snd_note $14
	snd_note $08
	snd_note $00
	snd_note $14
	snd_note $08
	snd_note $00
	snd_note $14, NOTELEN_09
	snd_note $0F
	snd_note $08, NOTELEN_06
	snd_note $14, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $0F, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $08, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $0F, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $1B, NOTELEN_03
	snd_vibrato VIBRATO_63
	snd_note $0F, NOTELEN_09
	snd_vibrato VIBRATO_62
	snd_note $18, NOTELEN_06
	snd_vibrato VIBRATO_NONE
	snd_note $19, NOTELEN_03
	snd_note $1B
	snd_note $18
	snd_note $14
	snd_note $00
	snd_note $14
	snd_note $00
	snd_note $2C
	snd_note $00, NOTELEN_06
	snd_note $2C, NOTELEN_03
	snd_note $00, NOTELEN_09
	snd_note $14, NOTELEN_06
	snd_note $20, NOTELEN_03
	snd_note $0F
	snd_note $00, NOTELEN_06
	snd_note $14, NOTELEN_03
	snd_note $00
	snd_note $1B
	snd_note $20
	snd_note $00, NOTELEN_12
	snd_note $08, NOTELEN_03
	snd_note $08
	snd_note $00
	snd_note $08, NOTELEN_02
	snd_note $00, NOTELEN_CUSTOM, $0D
	snd_note $12, NOTELEN_09
	snd_note $11
	snd_note $0D, NOTELEN_06
	snd_inc_vol -5
	snd_jp SndData_21_Ch3
SndData_21_Ch4:
	snd_call .sub0
	snd_call .sub1
	snd_call .sub0
	snd_call .sub2
	snd_call .sub3
	snd_call .sub3
	snd_call .sub3
	snd_call .sub3
	snd_call .sub3
	snd_call .sub3
	snd_call .sub3
	snd_call .sub4
	snd_call .sub5
	snd_jp SndData_21_Ch4
.sub0:
	snd_noteex PRESET_01, NOTELEN_03
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_01
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_01
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_ret
.sub1:
	snd_noteex PRESET_01, NOTELEN_03
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_01
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_01
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_04
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_ret
.sub2:
	snd_noteex PRESET_01, NOTELEN_03
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_01
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_01
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_04
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_ret
.sub3:
	snd_noteex PRESET_01, NOTELEN_03
	snd_noteex PRESET_02
	snd_noteex PRESET_03
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_03
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_03
	snd_noteex PRESET_01
	snd_ret
.sub4:
	snd_noteex PRESET_01, NOTELEN_03
	snd_noteex PRESET_04
	snd_noteex PRESET_00
	snd_noteex PRESET_01
	snd_noteex PRESET_04
	snd_noteex PRESET_00
	snd_noteex PRESET_03
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_04
	snd_noteex PRESET_01
	snd_noteex PRESET_01
	snd_ret
.sub5:
	snd_noteex PRESET_00
	snd_note $00
	snd_noteex PRESET_01
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_04
	snd_noteex PRESET_01
	snd_noteex PRESET_04
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
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_04
	snd_noteex PRESET_01
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_03
	snd_noteex PRESET_02
	snd_noteex PRESET_04
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_04
	snd_noteex PRESET_02
	snd_noteex PRESET_04
	snd_noteex PRESET_00
	snd_ret
