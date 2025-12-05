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
	db $00 ; iSndChInfo_DutyOrWave
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
	db $00 ; iSndChInfo_DutyOrWave
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
	db $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_0F_Ch1:
	duty_cycle $00
	volume_add -6
	fine_tune 12
	snd_call SndData_0F_Ch3.sub0
	fine_tune -12
	volume_add 6
.loop0:
	duty_cycle $40
	fine_tune_value -1
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
	duty_cycle $00
	volume_add -2
	snd_call .sub6
	volume_add 2
	duty_cycle $40
	snd_call .sub7
	fine_tune_value 1
	snd_loop .loop0
.sub0:
	instrument INSTR_5B
	vibrato VIBRATO_0D
	note $00, NOTELEN_06
	note $38
	instrument INSTR_NONE
	note $36
	note $38, NOTELEN_0C
	note $33
	note $2F, NOTELEN_12
	note $2C, NOTELEN_0C
	note $2F
	note $33
	snd_ret
.sub1:
	vibrato VIBRATO_0D
	instrument INSTR_5C
	note $31, NOTELEN_CUSTOM, $5D
	note $00, NOTELEN_03
	instrument INSTR_NONE
	vibrato VIBRATO_NONE
	snd_ret
.sub2:
	vibrato VIBRATO_0D
	instrument INSTR_5D
	note $31, NOTELEN_30
	note $33, NOTELEN_24
	note $33, NOTELEN_0C
	instrument INSTR_NONE
	vibrato VIBRATO_NONE
	snd_ret
.sub3:
	instrument INSTR_5B
	vibrato VIBRATO_5D
	note $38, NOTELEN_1E
	vibrato VIBRATO_NONE
	instrument INSTR_NONE
	note $33, NOTELEN_0C
	note $38, NOTELEN_06
	instrument INSTR_5B
	vibrato VIBRATO_0D
	note $35, NOTELEN_30
	instrument INSTR_NONE
	vibrato VIBRATO_NONE
	note $34, NOTELEN_1E
	note $31, NOTELEN_0C
	note $34, NOTELEN_06
	instrument INSTR_5B
	vibrato VIBRATO_0D
	note $33, NOTELEN_30
	vibrato VIBRATO_NONE
	instrument INSTR_NONE
	note $32, NOTELEN_1E
	note $31, NOTELEN_0C
	note $2F, NOTELEN_06
	note $2E, NOTELEN_1E
	note $2B, NOTELEN_0C
	vibrato VIBRATO_0D
	instrument INSTR_5D
	note $2C, NOTELEN_CUSTOM, $36
	instrument INSTR_NONE
	vibrato VIBRATO_NONE
	snd_ret
.sub5:
	note $2A, NOTELEN_30
	snd_ret
.sub6:
	fine_tune -12
	vibrato VIBRATO_5D
	note $33, NOTELEN_06
	note $00
	note $33, NOTELEN_24
	note $33, NOTELEN_CUSTOM, $07
	volume_add -4
	note $3A, NOTELEN_01
	note $3B
	note $3D
	note $3F
	note $40
	note $3E, NOTELEN_02
	note $3F, NOTELEN_04
	note $00, NOTELEN_03
	note $3F, NOTELEN_02
	note $00, NOTELEN_01
	note $3D, NOTELEN_02
	note $00, NOTELEN_01
	note $3F, NOTELEN_02
	note $00, NOTELEN_CUSTOM, $07
	note $3E, NOTELEN_02
	note $3F, NOTELEN_CUSTOM, $0A
	volume_add 4
	note $33, NOTELEN_06
	note $00
	note $33, NOTELEN_24
	volume_add -4
	note $3D, NOTELEN_02
	note $00, NOTELEN_01
	note $3F, NOTELEN_02
	note $00, NOTELEN_CUSTOM, $07
	note $3E, NOTELEN_02
	note $3F, NOTELEN_CUSTOM, $0A
	note $3D, NOTELEN_02
	note $00, NOTELEN_01
	note $3F, NOTELEN_02
	note $00, NOTELEN_CUSTOM, $07
	note $3E, NOTELEN_02
	note $3F, NOTELEN_CUSTOM, $0A
	note $40, NOTELEN_01
	note $3F
	note $3D
	note $3B
	note $3A
	note $38
	note $36
	note $34
	note $00, NOTELEN_04
	volume_add 4
	note $33, NOTELEN_24
	note $33, NOTELEN_CUSTOM, $07
	volume_add -4
	note $3A, NOTELEN_01
	note $3B
	note $3D
	note $3F
	note $40
	note $3E, NOTELEN_02
	note $3F, NOTELEN_04
	note $00, NOTELEN_03
	note $3F, NOTELEN_02
	note $00, NOTELEN_01
	note $3D, NOTELEN_02
	note $00, NOTELEN_01
	note $3F, NOTELEN_02
	note $00, NOTELEN_CUSTOM, $07
	note $3E, NOTELEN_02
	note $3F, NOTELEN_CUSTOM, $0A
	volume_add 4
	note $33, NOTELEN_06
	note $00
	note $33, NOTELEN_24
	volume_add -4
	note $3D, NOTELEN_02
	note $00, NOTELEN_01
	note $3F, NOTELEN_02
	note $00, NOTELEN_CUSTOM, $07
	note $3E, NOTELEN_02
	note $3F, NOTELEN_CUSTOM, $0A
	note $3D, NOTELEN_02
	note $00, NOTELEN_01
	note $3F, NOTELEN_02
	note $00, NOTELEN_CUSTOM, $07
	note $3F, NOTELEN_06
	note $40, NOTELEN_01
	note $42
	note $44
	note $46
	note $47
	note $49
	volume_add 4
	fine_tune 12
	vibrato VIBRATO_NONE
	snd_ret
.sub7:
	note $27, NOTELEN_06
	note $28, NOTELEN_0C
	note $27
	note $2A
	note $28, NOTELEN_0C
	note $27
	note $25
	note $23
	note $22, NOTELEN_06
	snd_ret
.sub4:
	note $00, NOTELEN_30
	snd_ret
SndData_0F_Ch3:
	wave_id WAVE_09
	fine_tune_value -2
	snd_call .sub0
	fine_tune_value 2
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
	snd_loop .loop
.sub0:
	note $14, NOTELEN_06
	note $1B
	note $1B, NOTELEN_04
	note $00, NOTELEN_02
	note $14, NOTELEN_06
	note $1B
	note $1B, NOTELEN_04
	note $00, NOTELEN_02
	note $14, NOTELEN_06
	note $1B
	note $1B, NOTELEN_06
	note $1B
	note $19
	note $19
	note $17
	note $17
	note $16
	note $16
	snd_ret
.sub1:
	note $14, NOTELEN_12
	note $17
	note $1B, NOTELEN_0C
	note $14, NOTELEN_12
	note $17
	note $1B, NOTELEN_0C
	note $19, NOTELEN_12
	note $1D
	note $20, NOTELEN_0C
	note $19, NOTELEN_12
	note $1D
	note $19, NOTELEN_0C
	note $14, NOTELEN_12
	note $17
	note $1B, NOTELEN_0C
	note $14, NOTELEN_12
	note $17
	note $1B, NOTELEN_0C
	note $19, NOTELEN_12
	note $1D
	note $20, NOTELEN_0C
	note $1B, NOTELEN_12
	note $1F
	note $16, NOTELEN_0C
	snd_ret
.sub2:
	note $14, NOTELEN_12
	note $17
	note $1B, NOTELEN_0C
	note $19, NOTELEN_12
	note $1D
	note $20, NOTELEN_0C
	note $19, NOTELEN_12
	note $1C
	note $19, NOTELEN_0C
	note $14, NOTELEN_12
	note $17
	note $1B, NOTELEN_0C
	snd_ret
.sub3:
	note $16, NOTELEN_12
	note $1A
	note $1D, NOTELEN_0C
	note $1B, NOTELEN_12
	note $1F
	note $22, NOTELEN_0C
	note $14, NOTELEN_12
	note $17
	note $1B, NOTELEN_0C
	note $00, NOTELEN_06
	note $1B, NOTELEN_0C
	note $1B
	note $1B
	note $1B, NOTELEN_06
	snd_ret
.sub4:
	note $16, NOTELEN_12
	note $1A
	note $1D, NOTELEN_0C
	note $1B, NOTELEN_03
	note $00, NOTELEN_09
	note $1B, NOTELEN_24
	note $14, NOTELEN_12
	note $17
	note $1B, NOTELEN_0C
	note $1E, NOTELEN_12
	note $1E, NOTELEN_0C
	note $1C, NOTELEN_06
	note $1E, NOTELEN_0C
	snd_ret
.sub5:
	fine_tune -12
	note $17, NOTELEN_03
	note $00, NOTELEN_09
	note $23
	note $21, NOTELEN_03
	note $1E, NOTELEN_06
	note $1E
	note $15
	note $16
	note $17
	note $17
	note $23, NOTELEN_09
	note $21, NOTELEN_03
	note $1E, NOTELEN_06
	note $1E
	note $15
	note $16
	fine_tune 12
	snd_ret
.sub6:
	note $1B, NOTELEN_06
	note $1C, NOTELEN_0C
	note $1B
	note $1E
	note $1C, NOTELEN_0C
	note $1B
	note $19
	note $17
	note $16, NOTELEN_06
	snd_ret
SndData_0F_Ch2:
	duty_cycle $00
	note $00, NOTELEN_30
	note $00
.loop:
	fine_tune -12
	note $00, NOTELEN_30
	note $00, NOTELEN_2A
	note $2F, NOTELEN_02
	note $31
	note $33
	note $35, NOTELEN_12
	note $36, NOTELEN_03
	note $37
	note $38, NOTELEN_12
	note $37, NOTELEN_03
	note $36
	note $35, NOTELEN_12
	note $36, NOTELEN_03
	note $37
	note $38, NOTELEN_12
	note $39, NOTELEN_03
	note $3A
	instrument INSTR_5B
	vibrato VIBRATO_5B
	note $3B, NOTELEN_CUSTOM, $60
	vibrato VIBRATO_NONE
	note $35, NOTELEN_12
	note $36, NOTELEN_03
	note $37
	note $38, NOTELEN_18
	note $37, NOTELEN_12
	note $38, NOTELEN_03
	note $39
	note $3A, NOTELEN_18
	vibrato VIBRATO_5B
	note $3B, NOTELEN_CUSTOM, $90
	vibrato VIBRATO_5D
	note $38, NOTELEN_30
	note $35
	vibrato VIBRATO_5B
	note $37, NOTELEN_CUSTOM, $2A
	vibrato VIBRATO_NONE
	note $38, NOTELEN_CUSTOM, $2A
	note $3B, NOTELEN_02
	note $3C
	note $3D
	note $3F
	note $40
	note $41
	vibrato VIBRATO_0C
	instrument INSTR_57
	volume_add 1
	pitch_bend 20
	note $42, NOTELEN_18
	vibrato VIBRATO_5D
	note $40
	pitch_bend 0
	instrument INSTR_5C
	volume_add -1
	vibrato VIBRATO_NONE
	note $3F, NOTELEN_CUSTOM, $44
	note $40, NOTELEN_02
	note $41
	note $42, NOTELEN_18
	instrument INSTR_5A
	volume_add 2
	note $35, NOTELEN_06
	note $3D
	note $38
	note $35
	note $41
	note $3D
	note $38
	note $3D
	note $38
	note $35
	note $38
	note $35
	note $31
	note $35
	note $31
	note $2C
	volume_add -2
	instrument INSTR_NONE
	note $3F, NOTELEN_CUSTOM, $44
	note $40, NOTELEN_02
	note $41
	note $42, NOTELEN_18
	instrument INSTR_5A
	volume_add 2
	note $35, NOTELEN_06
	note $3D
	note $38
	note $35
	note $41
	note $38
	note $35
	note $3D
	note $37
	note $3F
	note $3A
	note $37
	note $43
	note $3F
	note $3A
	note $3F
	volume_add -2
	instrument INSTR_NONE
	vibrato VIBRATO_5B
	note $3B, NOTELEN_CUSTOM, $BA
	volume_add 0
	note $3A, NOTELEN_02
	note $38
	note $36
	note $35, NOTELEN_12
	note $3A, NOTELEN_02
	note $3B
	note $3D
	note $3E, NOTELEN_18
	note $3D, NOTELEN_30
	note $3B
	note $3A, NOTELEN_CUSTOM, $28
	note $38, NOTELEN_02
	note $36
	note $33
	note $2F
	vibrato VIBRATO_5D
	note $39, NOTELEN_06
	note $00
	note $39, NOTELEN_24
	note $39, NOTELEN_0C
	volume_add -4
	note $42, NOTELEN_06
	note $00, NOTELEN_03
	note $42, NOTELEN_02
	note $00, NOTELEN_01
	note $40, NOTELEN_02
	note $00, NOTELEN_01
	note $42, NOTELEN_02
	note $00, NOTELEN_CUSTOM, $07
	note $42, NOTELEN_0C
	volume_add 4
	note $39, NOTELEN_06
	note $00
	note $39, NOTELEN_24
	volume_add -4
	note $40, NOTELEN_02
	note $00, NOTELEN_01
	note $42, NOTELEN_02
	note $00, NOTELEN_CUSTOM, $07
	note $42, NOTELEN_0C
	note $40, NOTELEN_02
	note $00, NOTELEN_01
	note $42, NOTELEN_02
	note $00, NOTELEN_CUSTOM, $07
	note $42, NOTELEN_0C
	volume_add 4
	note $39, NOTELEN_06
	note $00
	note $39, NOTELEN_24
	note $39, NOTELEN_0C
	volume_add -4
	note $42, NOTELEN_06
	note $00, NOTELEN_03
	note $42, NOTELEN_02
	note $00, NOTELEN_01
	note $40, NOTELEN_02
	note $00, NOTELEN_01
	note $42, NOTELEN_02
	note $00, NOTELEN_CUSTOM, $07
	note $42, NOTELEN_0C
	volume_add 4
	note $39, NOTELEN_06
	note $00
	note $39, NOTELEN_24
	volume_add -4
	note $40, NOTELEN_02
	note $00, NOTELEN_01
	note $42, NOTELEN_02
	note $00, NOTELEN_CUSTOM, $07
	note $42, NOTELEN_0C
	note $40, NOTELEN_02
	note $00, NOTELEN_01
	note $42, NOTELEN_02
	note $00, NOTELEN_01
	volume_add 4
	note $2F, NOTELEN_02
	note $31
	note $33
	note $34
	note $36
	note $38
	note $39
	note $3B
	note $3D
	vibrato VIBRATO_NONE
	note $3F, NOTELEN_06
	note $40, NOTELEN_0C
	note $3F
	note $42
	note $40, NOTELEN_0C
	note $3F
	note $3D
	note $3B
	note $3A, NOTELEN_06
	fine_tune 12
	snd_loop .loop
SndData_0F_Ch4:
	snd_call .sub0
.loop:
	volume_add 7
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
	volume_add -7
	snd_loop .loop
.sub0:
	volume_add -2
	note_ex PRESET_04, NOTELEN_01
	volume_add 4
	note_ex PRESET_00, NOTELEN_06
	volume_add -4
	note_ex PRESET_04
	note_ex PRESET_04, NOTELEN_CUSTOM, $05
	volume_add 2
	note_ex PRESET_00, NOTELEN_01
	volume_add -2
	note_ex PRESET_04, NOTELEN_06
	note_ex PRESET_04
	note_ex PRESET_04, NOTELEN_CUSTOM, $05
	volume_add 4
	note_ex PRESET_00, NOTELEN_01
	volume_add -4
	note_ex PRESET_04, NOTELEN_06
	volume_add 2
	note_ex PRESET_00, NOTELEN_CUSTOM, $05
	volume_add -2
	note_ex PRESET_04, NOTELEN_01
	volume_add 2
	note_ex PRESET_00, NOTELEN_03
	volume_add -4
	note_ex PRESET_04, NOTELEN_01
	volume_add 2
	note_ex PRESET_00
	volume_add -2
	note_ex PRESET_04
	volume_add 4
	note_ex PRESET_00, NOTELEN_02
	note $00, NOTELEN_01
	volume_add 2
	note_ex PRESET_00, NOTELEN_02
	note_ex PRESET_01, NOTELEN_01
	volume_add -2
	note_ex PRESET_00, NOTELEN_03
	note $00, NOTELEN_03
	note_ex PRESET_01, NOTELEN_CUSTOM, $03
	note $00, NOTELEN_02
	volume_add -2
	note_ex PRESET_01, NOTELEN_CUSTOM, $01
	volume_add 2
	note_ex PRESET_00, NOTELEN_CUSTOM, $03
	note $00, NOTELEN_02
	volume_add -3
	note_ex PRESET_01, NOTELEN_01
	volume_add 3
	note_ex PRESET_00, NOTELEN_04
	volume_add -2
	note_ex PRESET_04, NOTELEN_01
	volume_add 2
	volume_add 2
	note_ex PRESET_00, NOTELEN_03
	volume_add -2
	note_ex PRESET_04, NOTELEN_03
	volume_add 3
	note_ex PRESET_00, NOTELEN_03
	volume_add -3
	note_ex PRESET_04, NOTELEN_03
	snd_ret
.sub1:
	note_ex PRESET_01, NOTELEN_06
	note_ex PRESET_02
	note_ex PRESET_00
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_00
	note_ex PRESET_02
	snd_ret
.sub2:
	note_ex PRESET_01, NOTELEN_06
	note_ex PRESET_02
	note_ex PRESET_08, NOTELEN_0C
	note_ex PRESET_00, NOTELEN_09
	note_ex PRESET_00, NOTELEN_03
	note_ex PRESET_00, NOTELEN_06
	note_ex PRESET_00
	snd_ret
.sub3:
	note_ex PRESET_01, NOTELEN_06
	note_ex PRESET_02
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_01
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_01
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_01
	note_ex PRESET_00
	note_ex PRESET_02
	snd_ret
.sub4:
	note_ex PRESET_01, NOTELEN_06
	note_ex PRESET_02
	note_ex PRESET_00, NOTELEN_03
	note_ex PRESET_02
	note_ex PRESET_02, NOTELEN_06
	note_ex PRESET_00, NOTELEN_03
	note_ex PRESET_02
	note_ex PRESET_01, NOTELEN_06
	note_ex PRESET_02
	note_ex PRESET_00, NOTELEN_03
	note_ex PRESET_02
	note_ex PRESET_01, NOTELEN_06
	note_ex PRESET_01
	note_ex PRESET_08
	note_ex PRESET_02
	note_ex PRESET_01, NOTELEN_03
	note_ex PRESET_00
	note_ex PRESET_04, NOTELEN_06
	note_ex PRESET_00
	note_ex PRESET_04, NOTELEN_03
	note_ex PRESET_00
	snd_ret
.sub5:
	note_ex PRESET_01, NOTELEN_06
	note_ex PRESET_01
	note_ex PRESET_00
	note_ex PRESET_01
	note_ex PRESET_02, NOTELEN_03
	note_ex PRESET_00, NOTELEN_01
	note_ex PRESET_04
	note_ex PRESET_00
	note_ex PRESET_04, NOTELEN_06
	note_ex PRESET_02
	note_ex PRESET_00
	note_ex PRESET_02, NOTELEN_03
	volume_add -7
	note_ex PRESET_04, NOTELEN_01
	note_ex PRESET_04
	note_ex PRESET_04
	volume_add 7
	note_ex PRESET_00, NOTELEN_03
	note_ex PRESET_04
	note_ex PRESET_02, NOTELEN_06
	note_ex PRESET_00
	note $00, NOTELEN_03
	volume_add -7
	note_ex PRESET_04, NOTELEN_01
	note_ex PRESET_04
	note_ex PRESET_04
	volume_add 7
	note_ex PRESET_08, NOTELEN_03
	note_ex PRESET_00
	note_ex PRESET_04, NOTELEN_06
	note_ex PRESET_00
	snd_ret
.sub6:
	volume_add -7
	note_ex PRESET_00, NOTELEN_06
	volume_add 7
	note_ex PRESET_04, NOTELEN_03
	note_ex PRESET_04
	note_ex PRESET_00, NOTELEN_06
	volume_add -7
	note_ex PRESET_00
	volume_add 7
	note_ex PRESET_04, NOTELEN_03
	note_ex PRESET_00, NOTELEN_06
	note_ex PRESET_04, NOTELEN_03
	note_ex PRESET_00, NOTELEN_06
	note_ex PRESET_00
	snd_ret
.sub7:
	volume_add -7
	note_ex PRESET_00, NOTELEN_06
	volume_add 7
	note_ex PRESET_00, NOTELEN_03
	note_ex PRESET_00
	note_ex PRESET_04, NOTELEN_06
	volume_add -7
	note_ex PRESET_00
	volume_add 7
	note_ex PRESET_00, NOTELEN_03
	note_ex PRESET_04
	volume_add -7
	note_ex PRESET_00, NOTELEN_06
	volume_add 7
	note_ex PRESET_00
	note_ex PRESET_04
	snd_ret
