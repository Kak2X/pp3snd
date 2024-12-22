SndHeader_BGM_0F:
	db 4 ; Number of slots
.slot0:
	db SNDSLOT0 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 13 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -12 ; iSndChInfo_NoteIdBase
	db 153 ; iSndChInfo_Speed
	db SNDCH_PULSE1 ; iSndChInfo_ChId
	dw SndData_0F_Ch1 ; Data pointer
	nrx1 SNDDUTY_12, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot1:
	db SNDSLOT1 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db 0 ; iSndChInfo_NoteIdBase
	db 153 ; iSndChInfo_Speed
	db SNDCH_WAVE ; iSndChInfo_ChId
	dw SndData_0F_Ch3 ; Data pointer
	db WAVE_00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot2:
	db SNDSLOT2 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 11 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -12 ; iSndChInfo_NoteIdBase
	db 153 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_0F_Ch2 ; Data pointer
	nrx1 SNDDUTY_12, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot3:
	db SNDSLOT3 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db 0 ; iSndChInfo_NoteIdBase
	db 153 ; iSndChInfo_Speed
	db SNDCH_NOISE ; iSndChInfo_ChId
	dw SndData_0F_Ch4 ; Data pointer
	nrx1 SNDDUTY_12, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_0F_Ch1:
	snd_duty SNDDUTY_12, $00
	snd_inc_vol -6
	snd_inc_base_note 12
	snd_call SndData_0F_Ch3.sub0
	snd_inc_base_note -12
	snd_inc_vol 6
.loop0:
	snd_duty SNDDUTY_25, $00
	snd_inc_freq_offset -1
	snd_call .sub0
	snd_call .sub1
	snd_call .sub0
	snd_call .sub2
	snd_call .sub3
	snd_call .sub4
	snd_call .sub0
	snd_call .sub1
	snd_call .sub0
	snd_call .sub2
	snd_call .sub3
	snd_call .sub5
	snd_duty SNDDUTY_12, $00
	snd_inc_vol -2
	snd_call .sub6
	snd_inc_vol 2
	snd_duty SNDDUTY_25, $00
	snd_call .sub7
	snd_inc_freq_offset 1
	snd_jp .loop0
.sub0:
	snd_instrument INSTR_5B
	snd_vibrato VIBRATO_0D
	snd_note $00, NOTELEN_06
	snd_note $38
	snd_instrument INSTR_NONE
	snd_note $36
	snd_note $38, NOTELEN_0C
	snd_note $33
	snd_note $2F, NOTELEN_12
	snd_note $2C, NOTELEN_0C
	snd_note $2F
	snd_note $33
	snd_ret
.sub1:
	snd_vibrato VIBRATO_0D
	snd_instrument INSTR_5C
	snd_note $31, NOTELEN_CUSTOM, $5D
	snd_note $00, NOTELEN_03
	snd_instrument INSTR_NONE
	snd_vibrato VIBRATO_NONE
	snd_ret
.sub2:
	snd_vibrato VIBRATO_0D
	snd_instrument INSTR_5D
	snd_note $31, NOTELEN_30
	snd_note $33, NOTELEN_24
	snd_note $33, NOTELEN_0C
	snd_instrument INSTR_NONE
	snd_vibrato VIBRATO_NONE
	snd_ret
.sub3:
	snd_instrument INSTR_5B
	snd_vibrato VIBRATO_5D
	snd_note $38, NOTELEN_1E
	snd_vibrato VIBRATO_NONE
	snd_instrument INSTR_NONE
	snd_note $33, NOTELEN_0C
	snd_note $38, NOTELEN_06
	snd_instrument INSTR_5B
	snd_vibrato VIBRATO_0D
	snd_note $35, NOTELEN_30
	snd_instrument INSTR_NONE
	snd_vibrato VIBRATO_NONE
	snd_note $34, NOTELEN_1E
	snd_note $31, NOTELEN_0C
	snd_note $34, NOTELEN_06
	snd_instrument INSTR_5B
	snd_vibrato VIBRATO_0D
	snd_note $33, NOTELEN_30
	snd_vibrato VIBRATO_NONE
	snd_instrument INSTR_NONE
	snd_note $32, NOTELEN_1E
	snd_note $31, NOTELEN_0C
	snd_note $2F, NOTELEN_06
	snd_note $2E, NOTELEN_1E
	snd_note $2B, NOTELEN_0C
	snd_vibrato VIBRATO_0D
	snd_instrument INSTR_5D
	snd_note $2C, NOTELEN_CUSTOM, $36
	snd_instrument INSTR_NONE
	snd_vibrato VIBRATO_NONE
	snd_ret
.sub5:
	snd_note $2A, NOTELEN_30
	snd_ret
.sub6:
	snd_inc_base_note -12
	snd_vibrato VIBRATO_5D
	snd_note $33, NOTELEN_06
	snd_note $00
	snd_note $33, NOTELEN_24
	snd_note $33, NOTELEN_CUSTOM, $07
	snd_inc_vol -4
	snd_note $3A, NOTELEN_01
	snd_note $3B
	snd_note $3D
	snd_note $3F
	snd_note $40
	snd_note $3E, NOTELEN_02
	snd_note $3F, NOTELEN_04
	snd_note $00, NOTELEN_03
	snd_note $3F, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_note $3D, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_note $3F, NOTELEN_02
	snd_note $00, NOTELEN_CUSTOM, $07
	snd_note $3E, NOTELEN_02
	snd_note $3F, NOTELEN_CUSTOM, $0A
	snd_inc_vol 4
	snd_note $33, NOTELEN_06
	snd_note $00
	snd_note $33, NOTELEN_24
	snd_inc_vol -4
	snd_note $3D, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_note $3F, NOTELEN_02
	snd_note $00, NOTELEN_CUSTOM, $07
	snd_note $3E, NOTELEN_02
	snd_note $3F, NOTELEN_CUSTOM, $0A
	snd_note $3D, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_note $3F, NOTELEN_02
	snd_note $00, NOTELEN_CUSTOM, $07
	snd_note $3E, NOTELEN_02
	snd_note $3F, NOTELEN_CUSTOM, $0A
	snd_note $40, NOTELEN_01
	snd_note $3F
	snd_note $3D
	snd_note $3B
	snd_note $3A
	snd_note $38
	snd_note $36
	snd_note $34
	snd_note $00, NOTELEN_04
	snd_inc_vol 4
	snd_note $33, NOTELEN_24
	snd_note $33, NOTELEN_CUSTOM, $07
	snd_inc_vol -4
	snd_note $3A, NOTELEN_01
	snd_note $3B
	snd_note $3D
	snd_note $3F
	snd_note $40
	snd_note $3E, NOTELEN_02
	snd_note $3F, NOTELEN_04
	snd_note $00, NOTELEN_03
	snd_note $3F, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_note $3D, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_note $3F, NOTELEN_02
	snd_note $00, NOTELEN_CUSTOM, $07
	snd_note $3E, NOTELEN_02
	snd_note $3F, NOTELEN_CUSTOM, $0A
	snd_inc_vol 4
	snd_note $33, NOTELEN_06
	snd_note $00
	snd_note $33, NOTELEN_24
	snd_inc_vol -4
	snd_note $3D, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_note $3F, NOTELEN_02
	snd_note $00, NOTELEN_CUSTOM, $07
	snd_note $3E, NOTELEN_02
	snd_note $3F, NOTELEN_CUSTOM, $0A
	snd_note $3D, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_note $3F, NOTELEN_02
	snd_note $00, NOTELEN_CUSTOM, $07
	snd_note $3F, NOTELEN_06
	snd_note $40, NOTELEN_01
	snd_note $42
	snd_note $44
	snd_note $46
	snd_note $47
	snd_note $49
	snd_inc_vol 4
	snd_inc_base_note 12
	snd_vibrato VIBRATO_NONE
	snd_ret
.sub7:
	snd_note $27, NOTELEN_06
	snd_note $28, NOTELEN_0C
	snd_note $27
	snd_note $2A
	snd_note $28, NOTELEN_0C
	snd_note $27
	snd_note $25
	snd_note $23
	snd_note $22, NOTELEN_06
	snd_ret
.sub4:
	snd_note $00, NOTELEN_30
	snd_ret
SndData_0F_Ch3:
	snd_wave WAVE_09
	snd_inc_freq_offset -2
	snd_call .sub0
	snd_inc_freq_offset 2
.loop:
	snd_call .sub1
	snd_call .sub2
	snd_call .sub3
	snd_call .sub1
	snd_call .sub2
	snd_call .sub4
	snd_call .sub5
	snd_call .sub5
	snd_call .sub5
	snd_call .sub5
	snd_call .sub6
	snd_jp .loop
.sub0:
	snd_note $14, NOTELEN_06
	snd_note $1B
	snd_note $1B, NOTELEN_04
	snd_note $00, NOTELEN_02
	snd_note $14, NOTELEN_06
	snd_note $1B
	snd_note $1B, NOTELEN_04
	snd_note $00, NOTELEN_02
	snd_note $14, NOTELEN_06
	snd_note $1B
	snd_note $1B, NOTELEN_06
	snd_note $1B
	snd_note $19
	snd_note $19
	snd_note $17
	snd_note $17
	snd_note $16
	snd_note $16
	snd_ret
.sub1:
	snd_note $14, NOTELEN_12
	snd_note $17
	snd_note $1B, NOTELEN_0C
	snd_note $14, NOTELEN_12
	snd_note $17
	snd_note $1B, NOTELEN_0C
	snd_note $19, NOTELEN_12
	snd_note $1D
	snd_note $20, NOTELEN_0C
	snd_note $19, NOTELEN_12
	snd_note $1D
	snd_note $19, NOTELEN_0C
	snd_note $14, NOTELEN_12
	snd_note $17
	snd_note $1B, NOTELEN_0C
	snd_note $14, NOTELEN_12
	snd_note $17
	snd_note $1B, NOTELEN_0C
	snd_note $19, NOTELEN_12
	snd_note $1D
	snd_note $20, NOTELEN_0C
	snd_note $1B, NOTELEN_12
	snd_note $1F
	snd_note $16, NOTELEN_0C
	snd_ret
.sub2:
	snd_note $14, NOTELEN_12
	snd_note $17
	snd_note $1B, NOTELEN_0C
	snd_note $19, NOTELEN_12
	snd_note $1D
	snd_note $20, NOTELEN_0C
	snd_note $19, NOTELEN_12
	snd_note $1C
	snd_note $19, NOTELEN_0C
	snd_note $14, NOTELEN_12
	snd_note $17
	snd_note $1B, NOTELEN_0C
	snd_ret
.sub3:
	snd_note $16, NOTELEN_12
	snd_note $1A
	snd_note $1D, NOTELEN_0C
	snd_note $1B, NOTELEN_12
	snd_note $1F
	snd_note $22, NOTELEN_0C
	snd_note $14, NOTELEN_12
	snd_note $17
	snd_note $1B, NOTELEN_0C
	snd_note $00, NOTELEN_06
	snd_note $1B, NOTELEN_0C
	snd_note $1B
	snd_note $1B
	snd_note $1B, NOTELEN_06
	snd_ret
.sub4:
	snd_note $16, NOTELEN_12
	snd_note $1A
	snd_note $1D, NOTELEN_0C
	snd_note $1B, NOTELEN_03
	snd_note $00, NOTELEN_09
	snd_note $1B, NOTELEN_24
	snd_note $14, NOTELEN_12
	snd_note $17
	snd_note $1B, NOTELEN_0C
	snd_note $1E, NOTELEN_12
	snd_note $1E, NOTELEN_0C
	snd_note $1C, NOTELEN_06
	snd_note $1E, NOTELEN_0C
	snd_ret
.sub5:
	snd_inc_base_note -12
	snd_note $17, NOTELEN_03
	snd_note $00, NOTELEN_09
	snd_note $23
	snd_note $21, NOTELEN_03
	snd_note $1E, NOTELEN_06
	snd_note $1E
	snd_note $15
	snd_note $16
	snd_note $17
	snd_note $17
	snd_note $23, NOTELEN_09
	snd_note $21, NOTELEN_03
	snd_note $1E, NOTELEN_06
	snd_note $1E
	snd_note $15
	snd_note $16
	snd_inc_base_note 12
	snd_ret
.sub6:
	snd_note $1B, NOTELEN_06
	snd_note $1C, NOTELEN_0C
	snd_note $1B
	snd_note $1E
	snd_note $1C, NOTELEN_0C
	snd_note $1B
	snd_note $19
	snd_note $17
	snd_note $16, NOTELEN_06
	snd_ret
SndData_0F_Ch2:
	snd_duty SNDDUTY_12, $00
	snd_note $00, NOTELEN_30
	snd_note $00
.loop:
	snd_inc_base_note -12
	snd_note $00, NOTELEN_30
	snd_note $00, NOTELEN_2A
	snd_note $2F, NOTELEN_02
	snd_note $31
	snd_note $33
	snd_note $35, NOTELEN_12
	snd_note $36, NOTELEN_03
	snd_note $37
	snd_note $38, NOTELEN_12
	snd_note $37, NOTELEN_03
	snd_note $36
	snd_note $35, NOTELEN_12
	snd_note $36, NOTELEN_03
	snd_note $37
	snd_note $38, NOTELEN_12
	snd_note $39, NOTELEN_03
	snd_note $3A
	snd_instrument INSTR_5B
	snd_vibrato VIBRATO_5B
	snd_note $3B, NOTELEN_CUSTOM, $60
	snd_vibrato VIBRATO_NONE
	snd_note $35, NOTELEN_12
	snd_note $36, NOTELEN_03
	snd_note $37
	snd_note $38, NOTELEN_18
	snd_note $37, NOTELEN_12
	snd_note $38, NOTELEN_03
	snd_note $39
	snd_note $3A, NOTELEN_18
	snd_vibrato VIBRATO_5B
	snd_note $3B, NOTELEN_CUSTOM, $90
	snd_vibrato VIBRATO_5D
	snd_note $38, NOTELEN_30
	snd_note $35
	snd_vibrato VIBRATO_5B
	snd_note $37, NOTELEN_CUSTOM, $2A
	snd_vibrato VIBRATO_NONE
	snd_note $38, NOTELEN_CUSTOM, $2A
	snd_note $3B, NOTELEN_02
	snd_note $3C
	snd_note $3D
	snd_note $3F
	snd_note $40
	snd_note $41
	snd_vibrato VIBRATO_0C
	snd_instrument INSTR_57
	snd_inc_vol 1
	snd_pitchbend 20
	snd_note $42, NOTELEN_18
	snd_vibrato VIBRATO_5D
	snd_note $40
	snd_pitchbend 0
	snd_instrument INSTR_5C
	snd_inc_vol -1
	snd_vibrato VIBRATO_NONE
	snd_note $3F, NOTELEN_CUSTOM, $44
	snd_note $40, NOTELEN_02
	snd_note $41
	snd_note $42, NOTELEN_18
	snd_instrument INSTR_5A
	snd_inc_vol 2
	snd_note $35, NOTELEN_06
	snd_note $3D
	snd_note $38
	snd_note $35
	snd_note $41
	snd_note $3D
	snd_note $38
	snd_note $3D
	snd_note $38
	snd_note $35
	snd_note $38
	snd_note $35
	snd_note $31
	snd_note $35
	snd_note $31
	snd_note $2C
	snd_inc_vol -2
	snd_instrument INSTR_NONE
	snd_note $3F, NOTELEN_CUSTOM, $44
	snd_note $40, NOTELEN_02
	snd_note $41
	snd_note $42, NOTELEN_18
	snd_instrument INSTR_5A
	snd_inc_vol 2
	snd_note $35, NOTELEN_06
	snd_note $3D
	snd_note $38
	snd_note $35
	snd_note $41
	snd_note $38
	snd_note $35
	snd_note $3D
	snd_note $37
	snd_note $3F
	snd_note $3A
	snd_note $37
	snd_note $43
	snd_note $3F
	snd_note $3A
	snd_note $3F
	snd_inc_vol -2
	snd_instrument INSTR_NONE
	snd_vibrato VIBRATO_5B
	snd_note $3B, NOTELEN_CUSTOM, $BA
	snd_inc_vol 0
	snd_note $3A, NOTELEN_02
	snd_note $38
	snd_note $36
	snd_note $35, NOTELEN_12
	snd_note $3A, NOTELEN_02
	snd_note $3B
	snd_note $3D
	snd_note $3E, NOTELEN_18
	snd_note $3D, NOTELEN_30
	snd_note $3B
	snd_note $3A, NOTELEN_CUSTOM, $28
	snd_note $38, NOTELEN_02
	snd_note $36
	snd_note $33
	snd_note $2F
	snd_vibrato VIBRATO_5D
	snd_note $39, NOTELEN_06
	snd_note $00
	snd_note $39, NOTELEN_24
	snd_note $39, NOTELEN_0C
	snd_inc_vol -4
	snd_note $42, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_note $42, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_note $40, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_note $42, NOTELEN_02
	snd_note $00, NOTELEN_CUSTOM, $07
	snd_note $42, NOTELEN_0C
	snd_inc_vol 4
	snd_note $39, NOTELEN_06
	snd_note $00
	snd_note $39, NOTELEN_24
	snd_inc_vol -4
	snd_note $40, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_note $42, NOTELEN_02
	snd_note $00, NOTELEN_CUSTOM, $07
	snd_note $42, NOTELEN_0C
	snd_note $40, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_note $42, NOTELEN_02
	snd_note $00, NOTELEN_CUSTOM, $07
	snd_note $42, NOTELEN_0C
	snd_inc_vol 4
	snd_note $39, NOTELEN_06
	snd_note $00
	snd_note $39, NOTELEN_24
	snd_note $39, NOTELEN_0C
	snd_inc_vol -4
	snd_note $42, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_note $42, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_note $40, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_note $42, NOTELEN_02
	snd_note $00, NOTELEN_CUSTOM, $07
	snd_note $42, NOTELEN_0C
	snd_inc_vol 4
	snd_note $39, NOTELEN_06
	snd_note $00
	snd_note $39, NOTELEN_24
	snd_inc_vol -4
	snd_note $40, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_note $42, NOTELEN_02
	snd_note $00, NOTELEN_CUSTOM, $07
	snd_note $42, NOTELEN_0C
	snd_note $40, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_note $42, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol 4
	snd_note $2F, NOTELEN_02
	snd_note $31
	snd_note $33
	snd_note $34
	snd_note $36
	snd_note $38
	snd_note $39
	snd_note $3B
	snd_note $3D
	snd_vibrato VIBRATO_NONE
	snd_note $3F, NOTELEN_06
	snd_note $40, NOTELEN_0C
	snd_note $3F
	snd_note $42
	snd_note $40, NOTELEN_0C
	snd_note $3F
	snd_note $3D
	snd_note $3B
	snd_note $3A, NOTELEN_06
	snd_inc_base_note 12
	snd_jp .loop
SndData_0F_Ch4:
	snd_call .sub0
.loop:
	snd_inc_vol 7
	snd_call .sub1
	snd_call .sub1
	snd_call .sub1
	snd_call .sub1
	snd_call .sub1
	snd_call .sub1
	snd_call .sub1
	snd_call .sub1
	snd_call .sub1
	snd_call .sub1
	snd_call .sub1
	snd_call .sub1
	snd_call .sub1
	snd_call .sub1
	snd_call .sub1
	snd_call .sub6
	snd_call .sub1
	snd_call .sub1
	snd_call .sub1
	snd_call .sub1
	snd_call .sub1
	snd_call .sub1
	snd_call .sub1
	snd_call .sub1
	snd_call .sub1
	snd_call .sub1
	snd_call .sub1
	snd_call .sub1
	snd_call .sub1
	snd_call .sub2
	snd_call .sub1
	snd_call .sub7
	snd_call .sub3
	snd_call .sub3
	snd_call .sub3
	snd_call .sub4
	snd_call .sub5
	snd_inc_vol -7
	snd_jp .loop
.sub0:
	snd_inc_vol -2
	snd_noteex PRESET_04, NOTELEN_01
	snd_inc_vol 4
	snd_noteex PRESET_00, NOTELEN_06
	snd_inc_vol -4
	snd_noteex PRESET_04
	snd_noteex PRESET_04, NOTELEN_CUSTOM, $05
	snd_inc_vol 2
	snd_noteex PRESET_00, NOTELEN_01
	snd_inc_vol -2
	snd_noteex PRESET_04, NOTELEN_06
	snd_noteex PRESET_04
	snd_noteex PRESET_04, NOTELEN_CUSTOM, $05
	snd_inc_vol 4
	snd_noteex PRESET_00, NOTELEN_01
	snd_inc_vol -4
	snd_noteex PRESET_04, NOTELEN_06
	snd_inc_vol 2
	snd_noteex PRESET_00, NOTELEN_CUSTOM, $05
	snd_inc_vol -2
	snd_noteex PRESET_04, NOTELEN_01
	snd_inc_vol 2
	snd_noteex PRESET_00, NOTELEN_03
	snd_inc_vol -4
	snd_noteex PRESET_04, NOTELEN_01
	snd_inc_vol 2
	snd_noteex PRESET_00
	snd_inc_vol -2
	snd_noteex PRESET_04
	snd_inc_vol 4
	snd_noteex PRESET_00, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol 2
	snd_noteex PRESET_00, NOTELEN_02
	snd_noteex PRESET_01, NOTELEN_01
	snd_inc_vol -2
	snd_noteex PRESET_00, NOTELEN_03
	snd_note $00, NOTELEN_03
	snd_noteex PRESET_01, NOTELEN_CUSTOM, $03
	snd_note $00, NOTELEN_02
	snd_inc_vol -2
	snd_noteex PRESET_01, NOTELEN_CUSTOM, $01
	snd_inc_vol 2
	snd_noteex PRESET_00, NOTELEN_CUSTOM, $03
	snd_note $00, NOTELEN_02
	snd_inc_vol -3
	snd_noteex PRESET_01, NOTELEN_01
	snd_inc_vol 3
	snd_noteex PRESET_00, NOTELEN_04
	snd_inc_vol -2
	snd_noteex PRESET_04, NOTELEN_01
	snd_inc_vol 2
	snd_inc_vol 2
	snd_noteex PRESET_00, NOTELEN_03
	snd_inc_vol -2
	snd_noteex PRESET_04, NOTELEN_03
	snd_inc_vol 3
	snd_noteex PRESET_00, NOTELEN_03
	snd_inc_vol -3
	snd_noteex PRESET_04, NOTELEN_03
	snd_ret
.sub1:
	snd_noteex PRESET_01, NOTELEN_06
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_ret
.sub2:
	snd_noteex PRESET_01, NOTELEN_06
	snd_noteex PRESET_02
	snd_noteex PRESET_08, NOTELEN_0C
	snd_noteex PRESET_00, NOTELEN_09
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_00
	snd_ret
.sub3:
	snd_noteex PRESET_01, NOTELEN_06
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_ret
.sub4:
	snd_noteex PRESET_01, NOTELEN_06
	snd_noteex PRESET_02
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_02
	snd_noteex PRESET_02, NOTELEN_06
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_02
	snd_noteex PRESET_01, NOTELEN_06
	snd_noteex PRESET_02
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_02
	snd_noteex PRESET_01, NOTELEN_06
	snd_noteex PRESET_01
	snd_noteex PRESET_08
	snd_noteex PRESET_02
	snd_noteex PRESET_01, NOTELEN_03
	snd_noteex PRESET_00
	snd_noteex PRESET_04, NOTELEN_06
	snd_noteex PRESET_00
	snd_noteex PRESET_04, NOTELEN_03
	snd_noteex PRESET_00
	snd_ret
.sub5:
	snd_noteex PRESET_01, NOTELEN_06
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_01
	snd_noteex PRESET_02, NOTELEN_03
	snd_noteex PRESET_00, NOTELEN_01
	snd_noteex PRESET_04
	snd_noteex PRESET_00
	snd_noteex PRESET_04, NOTELEN_06
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_02, NOTELEN_03
	snd_inc_vol -7
	snd_noteex PRESET_04, NOTELEN_01
	snd_noteex PRESET_04
	snd_noteex PRESET_04
	snd_inc_vol 7
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_04
	snd_noteex PRESET_02, NOTELEN_06
	snd_noteex PRESET_00
	snd_note $00, NOTELEN_03
	snd_inc_vol -7
	snd_noteex PRESET_04, NOTELEN_01
	snd_noteex PRESET_04
	snd_noteex PRESET_04
	snd_inc_vol 7
	snd_noteex PRESET_08, NOTELEN_03
	snd_noteex PRESET_00
	snd_noteex PRESET_04, NOTELEN_06
	snd_noteex PRESET_00
	snd_ret
.sub6:
	snd_inc_vol -7
	snd_noteex PRESET_00, NOTELEN_06
	snd_inc_vol 7
	snd_noteex PRESET_04, NOTELEN_03
	snd_noteex PRESET_04
	snd_noteex PRESET_00, NOTELEN_06
	snd_inc_vol -7
	snd_noteex PRESET_00
	snd_inc_vol 7
	snd_noteex PRESET_04, NOTELEN_03
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_04, NOTELEN_03
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_00
	snd_ret
.sub7:
	snd_inc_vol -7
	snd_noteex PRESET_00, NOTELEN_06
	snd_inc_vol 7
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_00
	snd_noteex PRESET_04, NOTELEN_06
	snd_inc_vol -7
	snd_noteex PRESET_00
	snd_inc_vol 7
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_04
	snd_inc_vol -7
	snd_noteex PRESET_00, NOTELEN_06
	snd_inc_vol 7
	snd_noteex PRESET_00
	snd_noteex PRESET_04
	snd_ret
