SndHeader_BGM_16:
	db 4 ; Number of slots
.slot0:
	db SNDSLOT0 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db 0 ; iSndChInfo_NoteIdBase
	db 145 ; iSndChInfo_Speed
	db SNDCH_NOISE ; iSndChInfo_ChId
	dw SndData_16_Ch4 ; Data pointer
	db $80 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot1:
	db SNDSLOT1 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_32 ; iSndChInfo_Instrument
	db VIBRATO_37 ; iSndChInfo_Vibrato
	db 0 ; iSndChInfo_NoteIdBase
	db 145 ; iSndChInfo_Speed
	db SNDCH_WAVE ; iSndChInfo_ChId
	dw SndData_16_Ch3 ; Data pointer
	db WAVE_07 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot2:
	db SNDSLOT2 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 9 ; iSndChInfo_Vol
	db INSTR_41 ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -12 ; iSndChInfo_NoteIdBase
	db 145 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_16_Ch2 ; Data pointer
	db $80 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot3:
	db SNDSLOT3 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 11 ; iSndChInfo_Vol
	db INSTR_41 ; iSndChInfo_Instrument
	db VIBRATO_37 ; iSndChInfo_Vibrato
	db -14 ; iSndChInfo_NoteIdBase
	db 145 ; iSndChInfo_Speed
	db SNDCH_PULSE1 ; iSndChInfo_ChId
	dw SndData_16_Ch1 ; Data pointer
	db $80 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_16_Ch4:
	note_ex PRESET_00, NOTELEN_0C
	note_ex PRESET_01, NOTELEN_06
	note_ex PRESET_00, NOTELEN_0C
	note_ex PRESET_01, NOTELEN_06
	note_ex PRESET_00, NOTELEN_0C
	snd_loop SndData_16_Ch4
SndData_16_Ch3:
	note $34, NOTELEN_12
	note $34
	note $34, NOTELEN_0C
	snd_loop SndData_16_Ch3
SndData_16_Ch2:
	note $42, NOTELEN_06
	note $42
	note $3F
	note $3F
	note $42, NOTELEN_09
	note $42, NOTELEN_03
	note $3F, NOTELEN_06
	note $3F
	note $42, NOTELEN_06
	note $42
	note $3F
	note $3F, NOTELEN_03
	note $42, NOTELEN_06
	note $42
	note $42, NOTELEN_03
	note $3F, NOTELEN_06
	note $3F
	snd_loop SndData_16_Ch2
SndData_16_Ch1:
	snd_call .sub0
	note $2A
	volume_add -6
	note $2A
	note $2A
	note $2A
	volume_add 6
	note $2A
	volume_add -6
	note $2A
	volume_add 6
	note $2A
	volume_add -6
	note $2A
	note $2A
	note $2A
	volume_add 6
	note $2A
	volume_add -6
	note $2A
	note $2A
	note $2A
	volume_add 6
	note $2A
	volume_add -6
	note $2A
	volume_add 6
	snd_call .sub0
	fine_tune -17
	note $3A, NOTELEN_02
	note $3A
	note $3A
	note $3A, NOTELEN_03
	note $3A
	note $35, NOTELEN_02
	note $35
	note $35
	note $35, NOTELEN_03
	note $35
	note $30, NOTELEN_02
	note $30
	note $30
	note $30, NOTELEN_03
	note $30
	note $29, NOTELEN_02
	note $29
	note $29
	note $29, NOTELEN_03
	note $29
	fine_tune 17
	snd_loop SndData_16_Ch1
.sub0:
	set_var iSndChInfo_LoopTimer0, $04
	.sub0loop:
		note $2A, NOTELEN_03
		volume_add -6
		note $2A
		note $2A
		note $2A
		volume_add 6
		snd_loop .sub0loop, iSndChInfo_LoopTimer0
	snd_ret
