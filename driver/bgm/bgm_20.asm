SndHeader_BGM_20:
	db 4 ; Number of slots
.slot0:
	db SNDSLOT0 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 14 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -12 ; iSndChInfo_NoteIdBase
	db 102 ; iSndChInfo_Speed
	db SNDCH_PULSE1 ; iSndChInfo_ChId
	dw SndData_20_Ch1 ; Data pointer
	nrx1 SNDDUTY_12, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot1:
	db SNDSLOT1 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 12 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -12 ; iSndChInfo_NoteIdBase
	db 102 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_20_Ch2 ; Data pointer
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
	dw SndData_20_Ch3 ; Data pointer
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
	dw SndData_20_Ch4 ; Data pointer
	nrx1 SNDDUTY_12, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_20_Ch1:
	snd_duty SNDDUTY_50, $00
	snd_instrument INSTR_60
	snd_call .sub0
	snd_call .sub1
	snd_call .sub2
	snd_call .sub3
	snd_call .sub0
	snd_call .sub4
	snd_call .sub2
	snd_call .sub5
	snd_call .sub6
	snd_jp SndData_20_Ch1
.sub0:
	snd_note $31, NOTELEN_03
	snd_note $2C
	snd_note $31, NOTELEN_06
	snd_note $31
	snd_note $2C, NOTELEN_03
	snd_note $31, NOTELEN_06
	snd_note $2C
	snd_note $35
	snd_note $31, NOTELEN_03
	snd_note $2C
	snd_note $29
	snd_ret
.sub1:
	snd_note $38, NOTELEN_09
	snd_note $29
	snd_note $2C
	snd_note $29, NOTELEN_CUSTOM, $15
	snd_ret
.sub2:
	snd_note $31, NOTELEN_03
	snd_note $2C
	snd_note $31, NOTELEN_06
	snd_note $31
	snd_note $2C, NOTELEN_03
	snd_note $2A, NOTELEN_06
	snd_note $29
	snd_note $2A
	snd_note $29, NOTELEN_03
	snd_note $2A
	snd_note $2C
	snd_ret
.sub3:
	snd_note $31
	snd_note $00
	snd_inc_vol -9
	snd_instrument INSTR_NONE
	snd_note $29
	snd_note $2A
	snd_note $2C
	snd_note $31
	snd_inc_vol 9
	snd_instrument INSTR_60
	snd_note $2C
	snd_note $29
	snd_note $31
	snd_note $2E, NOTELEN_06
	snd_note $2C
	snd_note $2A, NOTELEN_03
	snd_note $27
	snd_note $20
	snd_ret
.sub4:
	snd_note $38, NOTELEN_09
	snd_note $29
	snd_note $2C
	snd_note $29, NOTELEN_06
	snd_note $29, NOTELEN_03
	snd_note $2A
	snd_note $29
	snd_note $2A
	snd_note $2C
	snd_ret
.sub5:
	snd_note $31, NOTELEN_03
	snd_note $00
	snd_inc_vol -9
	snd_instrument INSTR_NONE
	snd_note $29
	snd_note $2A
	snd_note $2C
	snd_note $31
	snd_inc_vol 9
	snd_instrument INSTR_60
	snd_note $2C
	snd_note $29
	snd_note $31
	snd_note $33, NOTELEN_06
	snd_note $35
	snd_note $33, NOTELEN_03
	snd_note $35
	snd_note $36
	snd_ret
.sub6:
	snd_note $38, NOTELEN_CUSTOM, $14
	snd_inc_vol -9
	snd_note $2C, NOTELEN_01
	snd_inc_vol 2
	snd_note $33
	snd_inc_vol 3
	snd_note $35
	snd_inc_vol 4
	snd_note $36
	snd_note $38, NOTELEN_03
	snd_note $36, NOTELEN_06
	snd_note $35
	snd_note $33
	snd_note $2C, NOTELEN_03
	snd_note $31
	snd_note $30
	snd_note $31
	snd_note $33, NOTELEN_06
	snd_note $35
	snd_note $36
	snd_note $35
	snd_note $33
	snd_note $35, NOTELEN_03
	snd_note $2C, NOTELEN_06
	snd_note $2E, NOTELEN_03
	snd_note $30
	snd_note $31
	snd_note $2C, NOTELEN_09
	snd_note $2E, NOTELEN_03
	snd_note $30
	snd_note $31
	snd_note $2C, NOTELEN_09
	snd_note $31, NOTELEN_06
	snd_note $30
	snd_note $31, NOTELEN_09
	snd_note $33
	snd_note $35
	snd_note $36
	snd_note $38, NOTELEN_0C
	snd_ret
SndData_20_Ch2:
	snd_duty SNDDUTY_12, $00
	snd_inc_freq_offset -1
	snd_instrument INSTR_61
	snd_note $25, NOTELEN_30
	snd_note $27, NOTELEN_18
	snd_note $2C
	snd_note $25, NOTELEN_24
	snd_instrument INSTR_NONE
	snd_note $27, NOTELEN_02
	snd_note $29
	snd_note $2A
	snd_note $2C
	snd_note $2E
	snd_note $30
	snd_instrument INSTR_5A
	snd_note $31
	snd_note $00, NOTELEN_CUSTOM, $07
	snd_inc_vol -3
	snd_note $31, NOTELEN_02
	snd_note $00, NOTELEN_CUSTOM, $07
	snd_inc_vol -2
	snd_note $31, NOTELEN_02
	snd_note $00, NOTELEN_CUSTOM, $07
	snd_inc_vol -3
	snd_note $31, NOTELEN_02
	snd_note $00, NOTELEN_CUSTOM, $07
	snd_inc_vol 3
	snd_note $31, NOTELEN_02
	snd_note $00, NOTELEN_04
	snd_inc_vol 3
	snd_note $31, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_note $31, NOTELEN_03
	snd_inc_vol 2
	snd_instrument INSTR_61
	snd_note $25, NOTELEN_30
	snd_note $2C, NOTELEN_18
	snd_note $33
	snd_note $31, NOTELEN_30
	snd_note $00
	snd_note $20
	snd_note $25, NOTELEN_18
	snd_note $29
	snd_note $27, NOTELEN_30
	snd_note $2C
	snd_inc_freq_offset 1
	snd_jp SndData_20_Ch2
SndData_20_Ch3:
	snd_wave WAVE_0D
	snd_instrument INSTR_62
	snd_call .sub0
	snd_call .sub0
	snd_call .sub1
	snd_jp SndData_20_Ch3
.sub0:
	snd_note $0D, NOTELEN_09
	snd_note $14
	snd_note $0D, NOTELEN_06
	snd_note $0D, NOTELEN_09
	snd_note $0D, NOTELEN_03
	snd_note $14
	snd_note $0D
	snd_note $0D, NOTELEN_0C
	snd_note $14, NOTELEN_06
	snd_note $0D
	snd_note $0D, NOTELEN_03
	snd_note $0D, NOTELEN_06
	snd_note $14
	snd_note $1B, NOTELEN_09
	snd_note $0D, NOTELEN_06
	snd_note $0D, NOTELEN_09
	snd_note $14
	snd_note $0D, NOTELEN_06
	snd_note $0D, NOTELEN_09
	snd_note $0D, NOTELEN_03
	snd_note $14
	snd_note $0D
	snd_note $0D, NOTELEN_06
	snd_note $19
	snd_note $00, NOTELEN_0C
	snd_note $14, NOTELEN_03
	snd_note $16
	snd_note $17
	snd_note $16
	snd_note $00
	snd_note $14
	snd_note $00
	snd_note $12
	snd_note $11, NOTELEN_06
	snd_ret
.sub1:
	snd_note $14, NOTELEN_06
	snd_note $00, NOTELEN_CUSTOM, $0F
	snd_note $14, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $14, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $14, NOTELEN_09
	snd_note $19, NOTELEN_06
	snd_note $00, NOTELEN_CUSTOM, $0F
	snd_note $14, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $19, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $14, NOTELEN_09
	snd_note $1B, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $14, NOTELEN_09
	snd_note $1B, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $14, NOTELEN_09
	snd_note $00, NOTELEN_0C
	snd_note $14, NOTELEN_03
	snd_note $14
	snd_note $14
	snd_note $1B
	snd_note $00, NOTELEN_06
	snd_note $14, NOTELEN_03
	snd_note $14
	snd_note $00, NOTELEN_18
	snd_ret
SndData_20_Ch4:
	snd_call .sub0
	snd_call .sub1
	snd_call .sub2
	snd_call .sub1
	snd_call .sub3
	snd_jp SndData_20_Ch4
.sub0:
	snd_noteex PRESET_01, NOTELEN_03
	snd_note $00
	snd_noteex PRESET_02
	snd_note $00
	snd_noteex PRESET_00
	snd_note $00
	snd_noteex PRESET_01
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_note $00
	snd_noteex PRESET_01
	snd_note $00
	snd_noteex PRESET_00
	snd_note $00
	snd_noteex PRESET_02
	snd_note $00
	snd_ret
.sub1:
	snd_noteex PRESET_02
	snd_note $00
	snd_noteex PRESET_01
	snd_note $00
	snd_noteex PRESET_00
	snd_note $00
	snd_noteex PRESET_01
	snd_note $00
	snd_noteex PRESET_02
	snd_note $00
	snd_noteex PRESET_01
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_note $00
	snd_noteex PRESET_03
	snd_note $00
	snd_noteex PRESET_01
	snd_note $00
	snd_noteex PRESET_01
	snd_note $00
	snd_noteex PRESET_00
	snd_note $00
	snd_noteex PRESET_01
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_note $00
	snd_noteex PRESET_01
	snd_note $00
	snd_noteex PRESET_00
	snd_note $00
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_08
	snd_note $00, NOTELEN_CUSTOM, $0F
	snd_noteex PRESET_01, NOTELEN_03
	snd_note $00
	snd_noteex PRESET_02
	snd_note $00
	snd_noteex PRESET_01
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_note $00
	snd_noteex PRESET_03
	snd_note $00
	snd_ret
.sub2:
	snd_noteex PRESET_01
	snd_note $00
	snd_noteex PRESET_02
	snd_note $00
	snd_noteex PRESET_00
	snd_note $00
	snd_noteex PRESET_01
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_note $00
	snd_noteex PRESET_01
	snd_note $00
	snd_noteex PRESET_00
	snd_note $00
	snd_noteex PRESET_02
	snd_note $00
	snd_ret
.sub3:
	snd_noteex PRESET_01, NOTELEN_03
	snd_note $00
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_note $00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_03
	snd_note $00
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_note $00
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_note $00
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_note $00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_03
	snd_note $00
	snd_noteex PRESET_01
	snd_note $00
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_00
	snd_noteex PRESET_08
	snd_note $00
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_note $00, NOTELEN_06
	snd_noteex PRESET_00, NOTELEN_03
	snd_note $00
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_note $00, NOTELEN_06
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_00
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_note $00, NOTELEN_06
	snd_noteex PRESET_01, NOTELEN_03
	snd_note $00
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_note $00, NOTELEN_06
	snd_noteex PRESET_01, NOTELEN_03
	snd_note $00
	snd_noteex PRESET_01
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_ret
