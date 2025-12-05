SndHeader_BGM_1A:
	db 4 ; Number of slots
.slot0:
	db SNDSLOT0 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_0B ; iSndChInfo_Vibrato
	db -24 ; iSndChInfo_NoteIdBase
	db 102 ; iSndChInfo_Speed
	db SNDCH_PULSE1 ; iSndChInfo_ChId
	dw SndData_1A_Ch1 ; Data pointer
	db $01 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot1:
	db SNDSLOT1 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 13 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_0B ; iSndChInfo_Vibrato
	db -24 ; iSndChInfo_NoteIdBase
	db 102 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_1A_Ch2 ; Data pointer
	db $01 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot2:
	db SNDSLOT2 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_08 ; iSndChInfo_Instrument
	db VIBRATO_0B ; iSndChInfo_Vibrato
	db 0 ; iSndChInfo_NoteIdBase
	db 102 ; iSndChInfo_Speed
	db SNDCH_WAVE ; iSndChInfo_ChId
	dw SndData_1A_Ch3 ; Data pointer
	db WAVE_01 ; iSndChInfo_DutyOrWave
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
	dw SndData_1A_Ch4 ; Data pointer
	db $01 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_1A_Ch1:
	duty_cycle $80
	instrument INSTR_07
	set_var iSndChInfo_LoopTimer0, $02
	.loop0:
		note $38, NOTELEN_18
		volume_add -12
		instrument INSTR_NONE
		note $38, NOTELEN_03
		volume_add 12
		instrument INSTR_07
		note $3F, NOTELEN_0C
		note $41, NOTELEN_09
		note $3F, NOTELEN_03
		volume_add -12
		instrument INSTR_NONE
		note $3F
		note $00, NOTELEN_09
		volume_add 12
		instrument INSTR_07
		note $3C, NOTELEN_0C
		note $38
		note $3A, NOTELEN_09
		note $3C, NOTELEN_03
		volume_add -12
		instrument INSTR_NONE
		note $3C
		duty_cycle $40
		instrument INSTR_09
		note $00
		volume_add 10
		note $33
		note $00
		note $33
		note $00
		note $33
		note $00
		note $33, NOTELEN_0C
		note $33, NOTELEN_09
		note $33
		note $33, NOTELEN_03
		note $00
		note $33
		note $00
		note $33
		note $00
		note $33, NOTELEN_0C
		note $33, NOTELEN_09
		duty_cycle $80
		instrument INSTR_07
		volume_add 2
		snd_loop .loop0, iSndChInfo_LoopTimer0
	note $3A, NOTELEN_0C
	volume_add -12
	instrument INSTR_NONE
	panning SNDOUT_CHR
	note $3A, NOTELEN_03
	panning SNDOUT_CHALL
	volume_add 12
	instrument INSTR_07
	note $3A
	note $00
	note $3C
	note $00
	note $3D, NOTELEN_0C
	note $41, NOTELEN_09
	note $3F, NOTELEN_03
	volume_add -12
	instrument INSTR_NONE
	panning SNDOUT_CHL
	note $3F, NOTELEN_06
	panning SNDOUT_CHALL
	volume_add 5
	note $3B, NOTELEN_01
	volume_add 5
	note $3C, NOTELEN_CUSTOM, $05
	note $3A, NOTELEN_06
	note $38, NOTELEN_09
	volume_add -12
	instrument INSTR_NONE
	panning SNDOUT_CHR
	note $38, NOTELEN_03
	panning SNDOUT_CHALL
	volume_add 12
	instrument INSTR_07
	note $35, NOTELEN_09
	note $37, NOTELEN_09
	note $38, NOTELEN_12
	volume_add -12
	instrument INSTR_NONE
	panning SNDOUT_CHL
	note $38, NOTELEN_06
	panning SNDOUT_CHALL
	volume_add 12
	instrument INSTR_07
	note $38, NOTELEN_02
	note $00, NOTELEN_04
	note $3A, NOTELEN_02
	note $00, NOTELEN_03
	volume_add -5
	note $3A, NOTELEN_01
	volume_add 5
	note $3C, NOTELEN_09
	note $3A, NOTELEN_03
	volume_add -12
	instrument INSTR_NONE
	panning SNDOUT_CHR
	note $3A, NOTELEN_06
	note $00, NOTELEN_CUSTOM, $27
	panning SNDOUT_CHALL
	volume_add 12
	instrument INSTR_07
	snd_loop SndData_1A_Ch1
SndData_1A_Ch2:
	fine_tune_value -1
.loop0:
	duty_cycle $40
	instrument INSTR_09
	set_var iSndChInfo_LoopTimer0, $04
	.loop1:
		note $3C, NOTELEN_06
		note $3C, NOTELEN_02
		note $00, NOTELEN_01
		note $3A, NOTELEN_03
		note $00
		note $3C
		note $00
		note $3A
		note $00
		note $3C, NOTELEN_0C
		note $3A, NOTELEN_09
		note $3C
		note $3A, NOTELEN_03
		note $00
		note $3C
		note $00
		note $3A
		note $00
		note $3C, NOTELEN_0C
		note $3A, NOTELEN_09
		snd_loop .loop1, iSndChInfo_LoopTimer0
	duty_cycle $80
	instrument INSTR_07
	note $35, NOTELEN_18
	volume_add -12
	instrument INSTR_NONE
	note $35, NOTELEN_03
	volume_add 12
	instrument INSTR_07
	note $38, NOTELEN_0C
	note $3C, NOTELEN_09
	note $33, NOTELEN_18
	volume_add -12
	instrument INSTR_NONE
	note $33, NOTELEN_03
	volume_add 12
	instrument INSTR_07
	note $3C, NOTELEN_0C
	note $3A, NOTELEN_0C
	note $35, NOTELEN_12
	volume_add -12
	instrument INSTR_NONE
	panning SNDOUT_CHR
	note $35, NOTELEN_06
	panning SNDOUT_CHALL
	volume_add 12
	instrument INSTR_07
	note $35
	volume_add -12
	instrument INSTR_NONE
	panning SNDOUT_CHL
	note $35
	panning SNDOUT_CHALL
	volume_add 12
	instrument INSTR_07
	note $38
	volume_add -12
	instrument INSTR_NONE
	panning SNDOUT_CHR
	note $38, NOTELEN_03
	panning SNDOUT_CHALL
	volume_add 12
	instrument INSTR_07
	note $37
	volume_add -12
	instrument INSTR_NONE
	panning SNDOUT_CHL
	note $37, NOTELEN_06
	note $00, NOTELEN_CUSTOM, $27
	panning SNDOUT_CHALL
	volume_add 12
	instrument INSTR_07
	snd_loop .loop0
SndData_1A_Ch3:
	wave_id WAVE_04
	set_var iSndChInfo_LoopTimer0, $03
	.loop0:
		note $14, NOTELEN_CUSTOM, $0F
		note $14, NOTELEN_02
		note $00, NOTELEN_04
		note $1B, NOTELEN_02
		note $00, NOTELEN_04
		note $1D, NOTELEN_0C
		note $1B, NOTELEN_06
		note $00, NOTELEN_03
		note $20, NOTELEN_CUSTOM, $0F
		note $20, NOTELEN_02
		note $00, NOTELEN_04
		note $1B, NOTELEN_02
		note $00, NOTELEN_04
		note $1D, NOTELEN_0C
		note $1B, NOTELEN_09
		snd_loop .loop0, iSndChInfo_LoopTimer0
	note $14, NOTELEN_CUSTOM, $0F
	note $14, NOTELEN_02
	note $00, NOTELEN_04
	note $1B, NOTELEN_02
	note $00, NOTELEN_04
	note $1D, NOTELEN_0C
	note $1B, NOTELEN_06
	note $00, NOTELEN_03
	note $20, NOTELEN_CUSTOM, $0F
	note $20, NOTELEN_02
	note $00, NOTELEN_04
	note $1B, NOTELEN_02
	note $00, NOTELEN_04
	note $1D, NOTELEN_0C
	note $1B, NOTELEN_06
	note $18, NOTELEN_02
	note $00, NOTELEN_01
	note $19, NOTELEN_CUSTOM, $0F
	note $19, NOTELEN_02
	note $00, NOTELEN_04
	note $14, NOTELEN_02
	note $00, NOTELEN_04
	note $19, NOTELEN_03
	note $00
	note $1B
	note $00
	note $1D, NOTELEN_06
	note $20, NOTELEN_03
	note $14, NOTELEN_09
	note $14, NOTELEN_01
	note $00, NOTELEN_CUSTOM, $05
	note $14, NOTELEN_06
	note $12, NOTELEN_01
	note $00, NOTELEN_02
	note $11, NOTELEN_06
	note $11, NOTELEN_03
	note $13, NOTELEN_06
	note $14
	note $18, NOTELEN_03
	note $18
	note $16, NOTELEN_06
	note $00
	note $16
	note $00
	note $16, NOTELEN_03
	note $00
	note $18
	note $00
	note $19, NOTELEN_06
	note $00, NOTELEN_03
	note $1B
	note $00
	note $00
	vibrato VIBRATO_11
	instrument INSTR_13
	panning SNDOUT_CHL
	note $24, NOTELEN_03
	note $24, NOTELEN_06
	panning SNDOUT_CHALL
	note $1E, NOTELEN_03
	note $1E, NOTELEN_06
	panning SNDOUT_CHL
	note $24, NOTELEN_03
	note $24, NOTELEN_06
	note $19, NOTELEN_03
	panning SNDOUT_CHL
	note $24
	panning SNDOUT_CHALL
	note $1E
	panning SNDOUT_CHR
	note $19
	panning SNDOUT_CHALL
	vibrato VIBRATO_0B
	instrument INSTR_08
	snd_loop SndData_1A_Ch3
SndData_1A_Ch4:
	set_var iSndChInfo_LoopTimer0, $03
	.loop0:
		note_ex PRESET_01, NOTELEN_03
		note $00
		note_ex PRESET_02
		note_ex PRESET_02
		note_ex PRESET_02
		note_ex PRESET_00
		note_ex PRESET_02
		note_ex PRESET_02
		note_ex PRESET_02
		note_ex PRESET_01
		note_ex PRESET_02
		note_ex PRESET_02
		note_ex PRESET_02
		note_ex PRESET_00
		note_ex PRESET_02
		note_ex PRESET_02
		note_ex PRESET_01
		note $00
		note_ex PRESET_02
		note_ex PRESET_02
		note_ex PRESET_02
		note_ex PRESET_00
		note_ex PRESET_02
		note_ex PRESET_02
		note_ex PRESET_02
		note_ex PRESET_01
		note_ex PRESET_02
		note_ex PRESET_02
		note_ex PRESET_02
		note_ex PRESET_00
		note_ex PRESET_03
		note_ex PRESET_02
		snd_loop .loop0, iSndChInfo_LoopTimer0
	note_ex PRESET_01, NOTELEN_03
	note $00
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_01
	note $00
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_01, NOTELEN_02
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_02, NOTELEN_03
	note_ex PRESET_02
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_01, NOTELEN_03
	note $00
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_01, NOTELEN_03
	note $00
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_01
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_00
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_01, NOTELEN_09
	note_ex PRESET_05, NOTELEN_03
	note_ex PRESET_05, NOTELEN_06
	note_ex PRESET_06, NOTELEN_03
	note_ex PRESET_06, NOTELEN_06
	note_ex PRESET_05, NOTELEN_03
	note_ex PRESET_05, NOTELEN_06
	note_ex PRESET_01, NOTELEN_03
	note_ex PRESET_05
	note_ex PRESET_06
	note_ex PRESET_07
	snd_loop SndData_1A_Ch4
