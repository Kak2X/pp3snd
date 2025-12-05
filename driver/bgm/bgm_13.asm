SndHeader_BGM_13:
	db 4 ; Number of slots
.slot0:
	db SNDSLOT0 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_08 ; iSndChInfo_Instrument
	db VIBRATO_0F ; iSndChInfo_Vibrato
	db -8 ; iSndChInfo_NoteIdBase
	db 99 ; iSndChInfo_Speed
	db SNDCH_WAVE ; iSndChInfo_ChId
	dw SndData_13_Ch3 ; Data pointer
	db WAVE_00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot1:
	db SNDSLOT1 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_0F ; iSndChInfo_Vibrato
	db -20 ; iSndChInfo_NoteIdBase
	db 99 ; iSndChInfo_Speed
	db SNDCH_PULSE1 ; iSndChInfo_ChId
	dw SndData_13_Ch1 ; Data pointer
	db $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot2:
	db SNDSLOT2 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 9 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_0F ; iSndChInfo_Vibrato
	db -20 ; iSndChInfo_NoteIdBase
	db 99 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_13_Ch2 ; Data pointer
	db $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot3:
	db SNDSLOT3 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db 4 ; iSndChInfo_NoteIdBase
	db 99 ; iSndChInfo_Speed
	db SNDCH_NOISE ; iSndChInfo_ChId
	dw SndData_13_Ch4 ; Data pointer
	db $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_13_Ch3:
	wave_id WAVE_0D
	note $16, NOTELEN_06
	note $16, NOTELEN_02
	note $16
	note $00, NOTELEN_04
	note $18, NOTELEN_03
	note $00
	note $18
	note $00
	note $19
	note $00, NOTELEN_09
	note $1D, NOTELEN_CUSTOM, $0A
	note $1B, NOTELEN_02
	note $00, NOTELEN_10
	note $1B, NOTELEN_02
	note $1C, NOTELEN_04
	note $1D, NOTELEN_02
	note $00, NOTELEN_04
	note $18, NOTELEN_02
	note $11, NOTELEN_06
	note $1D
	note $17, NOTELEN_06
	note $16, NOTELEN_04
	note $16, NOTELEN_02
	note $16
	note $00, NOTELEN_04
	note $18, NOTELEN_03
	note $00
	note $18
	note $00
	note $19
	note $00, NOTELEN_09
	note $1D, NOTELEN_CUSTOM, $0A
	note $1B, NOTELEN_02
	note $00, NOTELEN_10
	note $1B, NOTELEN_02
	note $1C, NOTELEN_04
	note $1D, NOTELEN_02
	note $00, NOTELEN_04
	note $18, NOTELEN_02
	note $11, NOTELEN_06
	note $1D, NOTELEN_04
	note $17, NOTELEN_06
	note $16
	note $16, NOTELEN_02
	note $16
	note $00, NOTELEN_04
	note $18, NOTELEN_03
	note $00
	note $18
	note $00
	note $19
	note $00, NOTELEN_09
	note $1D, NOTELEN_CUSTOM, $0A
	note $1B, NOTELEN_02
	note $00, NOTELEN_10
	note $1B, NOTELEN_02
	note $1C, NOTELEN_04
	note $1D, NOTELEN_02
	note $00, NOTELEN_04
	note $18, NOTELEN_02
	note $11, NOTELEN_06
	note $1D
	note $17, NOTELEN_06
	note $16, NOTELEN_04
	note $16, NOTELEN_02
	note $14, NOTELEN_04
	note $11, NOTELEN_02
	note $16
	note $00, NOTELEN_08
	note $18, NOTELEN_06
	note $18, NOTELEN_02
	note $16, NOTELEN_04
	note $13, NOTELEN_02
	note $18
	note $00, NOTELEN_08
	note $19, NOTELEN_06
	note $19, NOTELEN_02
	note $14, NOTELEN_04
	note $16, NOTELEN_02
	note $19, NOTELEN_04
	note $1B, NOTELEN_02
	note $1D, NOTELEN_04
	note $1B, NOTELEN_08
	note $1B, NOTELEN_02
	note $00, NOTELEN_04
	note $1A, NOTELEN_02
	note $00, NOTELEN_04
	note $1A, NOTELEN_02
	note $00
	note $00
	note $19, NOTELEN_10
	note $14, NOTELEN_02
	note $16, NOTELEN_04
	note $14, NOTELEN_02
	note $00, NOTELEN_04
	note $19, NOTELEN_02
	note $00, NOTELEN_04
	note $19, NOTELEN_06
	note $14, NOTELEN_02
	note $16, NOTELEN_04
	note $14, NOTELEN_02
	note $19, NOTELEN_10
	note $14, NOTELEN_02
	note $16, NOTELEN_04
	note $14, NOTELEN_02
	note $00, NOTELEN_04
	note $19, NOTELEN_06
	note $14, NOTELEN_02
	note $19, NOTELEN_04
	note $00, NOTELEN_02
	note $19, NOTELEN_06
	note $18, NOTELEN_10
	note $13, NOTELEN_02
	note $16, NOTELEN_04
	note $18, NOTELEN_02
	note $00, NOTELEN_04
	note $18, NOTELEN_02
	note $00, NOTELEN_04
	note $18, NOTELEN_06
	note $13, NOTELEN_02
	note $18, NOTELEN_06
	note $1D, NOTELEN_06
	note $29, NOTELEN_02
	note $00, NOTELEN_04
	note $1B, NOTELEN_06
	note $27, NOTELEN_02
	note $00, NOTELEN_04
	note $19, NOTELEN_06
	note $25, NOTELEN_02
	note $00, NOTELEN_04
	note $18, NOTELEN_06
	note $24, NOTELEN_02
	note $00
	note $00
	note $16, NOTELEN_CUSTOM, $0A
	note $11, NOTELEN_02
	note $14, NOTELEN_04
	note $16, NOTELEN_02
	note $00, NOTELEN_04
	note $16, NOTELEN_02
	note $00, NOTELEN_04
	note $16, NOTELEN_02
	note $00, NOTELEN_04
	note $11, NOTELEN_02
	note $14, NOTELEN_06
	note $16, NOTELEN_06
	note $1B, NOTELEN_CUSTOM, $0A
	note $16, NOTELEN_02
	note $18, NOTELEN_04
	note $1B, NOTELEN_02
	note $00, NOTELEN_04
	note $1B, NOTELEN_02
	note $00, NOTELEN_04
	note $1B, NOTELEN_02
	note $00, NOTELEN_04
	note $1B, NOTELEN_02
	note $1D, NOTELEN_06
	note $1B, NOTELEN_06
	note $14, NOTELEN_06
	note $20, NOTELEN_03
	note $00
	note $20, NOTELEN_04
	note $1B, NOTELEN_02
	note $1C, NOTELEN_04
	note $1D, NOTELEN_06
	note $1D, NOTELEN_02
	note $1B, NOTELEN_04
	note $1C, NOTELEN_02
	note $1D, NOTELEN_04
	note $1B, NOTELEN_02
	note $18, NOTELEN_06
	note $16, NOTELEN_04
	note $19, NOTELEN_02
	note $1D, NOTELEN_04
	note $20, NOTELEN_02
	note $24, NOTELEN_06
	note $22
	note $25, NOTELEN_0C
	note $24, NOTELEN_CUSTOM, $0A
	note $20, NOTELEN_24
	volume_add -3
	instrument INSTR_NONE
	set_var iSndChInfo_LoopTimer0, $0C
	.loop0:
		note $20, NOTELEN_01
		volume_add -1
		snd_loop .loop0, iSndChInfo_LoopTimer0
	chan_stop ECH_SAVE
SndData_13_Ch1:
	duty_cycle $00
	instrument INSTR_11
	note $00, NOTELEN_06
	note $00, NOTELEN_02
	note $00
	note $00
	note $00
	note $38, NOTELEN_03
	volume_add -10
	instrument INSTR_NONE
	note $38
	note $36, NOTELEN_01
	note $35
	note $33
	note $31
	note $30
	note $2E
	note $00, NOTELEN_0C
	volume_add 10
	instrument INSTR_11
	duty_cycle $40
	note $33, NOTELEN_04
	note $35, NOTELEN_03
	note $00
	note $38
	volume_add -12
	instrument INSTR_NONE
	note $38
	note $00, NOTELEN_0C
	volume_add 12
	instrument INSTR_11
	note $3A, NOTELEN_02
	note $3C, NOTELEN_04
	note $38, NOTELEN_03
	volume_add -12
	instrument INSTR_NONE
	note $38
	note $00, NOTELEN_08
	volume_add 12
	instrument INSTR_11
	note $35, NOTELEN_04
	note $33, NOTELEN_02
	note $35, NOTELEN_04
	note $38, NOTELEN_03
	volume_add -12
	instrument INSTR_NONE
	note $38
	volume_add 12
	instrument INSTR_11
	note $00, NOTELEN_02
	note $00, NOTELEN_03
	note $00
	note $38
	duty_cycle $00
	volume_add -10
	instrument INSTR_NONE
	note $38
	note $36, NOTELEN_01
	note $35
	note $33
	note $31
	note $30
	note $2E
	note $00, NOTELEN_0C
	duty_cycle $40
	volume_add 10
	instrument INSTR_11
	note $33, NOTELEN_04
	note $35, NOTELEN_03
	note $00
	note $3F, NOTELEN_CUSTOM, $0F
	volume_add -12
	instrument INSTR_NONE
	note $3F, NOTELEN_03
	volume_add 12
	instrument INSTR_11
	note $3F, NOTELEN_02
	note $41, NOTELEN_04
	volume_add -5
	note $3B, NOTELEN_01
	volume_add 5
	note $3C, NOTELEN_CUSTOM, $05
	note $3C, NOTELEN_02
	note $3A, NOTELEN_03
	volume_add -12
	instrument INSTR_NONE
	note $3A
	volume_add 12
	instrument INSTR_11
	note $38, NOTELEN_04
	note $35, NOTELEN_06
	note $00, NOTELEN_03
	note $00, NOTELEN_03
	note $00, NOTELEN_02
	note $00, NOTELEN_03
	note $00
	note $38
	duty_cycle $00
	volume_add -10
	instrument INSTR_NONE
	note $38
	note $36, NOTELEN_01
	note $35
	note $33
	note $31
	note $30
	note $2E
	note $00, NOTELEN_0C
	duty_cycle $40
	volume_add 10
	instrument INSTR_11
	note $33, NOTELEN_04
	note $35, NOTELEN_03
	note $00
	note $38
	volume_add -12
	instrument INSTR_NONE
	note $38
	note $00, NOTELEN_0C
	volume_add 12
	instrument INSTR_11
	note $3A, NOTELEN_02
	note $3C, NOTELEN_04
	note $38, NOTELEN_03
	volume_add -12
	instrument INSTR_NONE
	note $38
	note $00, NOTELEN_08
	volume_add 12
	instrument INSTR_11
	note $35, NOTELEN_04
	note $33, NOTELEN_02
	note $35, NOTELEN_04
	note $38, NOTELEN_CUSTOM, $0F
	volume_add -12
	instrument INSTR_NONE
	panning SNDOUT_CHL
	note $38, NOTELEN_03
	panning SNDOUT_CHALL
	volume_add 12
	instrument INSTR_11
	note $33, NOTELEN_02
	note $35, NOTELEN_04
	note $38, NOTELEN_CUSTOM, $0B
	volume_add -12
	instrument INSTR_NONE
	panning SNDOUT_CHR
	note $38, NOTELEN_03
	panning SNDOUT_CHALL
	volume_add 12
	instrument INSTR_11
	note $38, NOTELEN_04
	note $3A, NOTELEN_02
	note $3C, NOTELEN_04
	note $38, NOTELEN_CUSTOM, $16
	volume_add -12
	instrument INSTR_NONE
	panning SNDOUT_CHL
	note $38, NOTELEN_04
	panning SNDOUT_CHALL
	volume_add 12
	instrument INSTR_11
	note $3A, NOTELEN_09
	volume_add -12
	instrument INSTR_NONE
	panning SNDOUT_CHR
	note $3A, NOTELEN_03
	panning SNDOUT_CHALL
	volume_add 12
	instrument INSTR_11
	note $3A, NOTELEN_CUSTOM, $0A
	volume_add -12
	instrument INSTR_NONE
	panning SNDOUT_CHL
	note $3A, NOTELEN_08
	panning SNDOUT_CHALL
	duty_cycle $80
	instrument INSTR_15
	volume_add 8
	note $3C, NOTELEN_04
	note $3D, NOTELEN_02
	note $00, NOTELEN_04
	note $3C, NOTELEN_02
	note $00, NOTELEN_04
	note $38, NOTELEN_08
	note $35, NOTELEN_02
	note $00, NOTELEN_04
	note $38, NOTELEN_02
	note $00, NOTELEN_04
	note $3A, NOTELEN_02
	note $00
	note $00
	note $3C, NOTELEN_06
	note $3D, NOTELEN_04
	note $3C, NOTELEN_02
	note $00, NOTELEN_04
	note $3A, NOTELEN_02
	note $00, NOTELEN_04
	note $38, NOTELEN_08
	note $35, NOTELEN_06
	note $38
	vibrato VIBRATO_13
	note $3A, NOTELEN_06
	vibrato VIBRATO_0F
	note $37, NOTELEN_CUSTOM, $0F
	volume_add -10
	instrument INSTR_NONE
	note $37, NOTELEN_03
	volume_add 3
	note $37, NOTELEN_02
	volume_add 3
	note $38
	volume_add 3
	note $39
	volume_add 3
	instrument INSTR_15
	note $3A, NOTELEN_09
	note $38
	note $37, NOTELEN_06
	note $36, NOTELEN_CUSTOM, $15
	volume_add -10
	instrument INSTR_NONE
	note $36, NOTELEN_03
	volume_add 10
	instrument INSTR_15
	note $35, NOTELEN_09
	note $34
	note $35, NOTELEN_06
	note $3C, NOTELEN_CUSTOM, $0F
	volume_add -10
	instrument INSTR_NONE
	note $3C, NOTELEN_03
	volume_add 10
	instrument INSTR_15
	note $35, NOTELEN_CUSTOM, $0F
	volume_add -10
	instrument INSTR_NONE
	note $35, NOTELEN_03
	volume_add 10
	instrument INSTR_15
	note $34, NOTELEN_06
	note $35, NOTELEN_06
	note $3C, NOTELEN_10
	volume_add -10
	instrument INSTR_NONE
	note $3C, NOTELEN_01
	volume_add 3
	note $3D
	volume_add 4
	note $3E
	volume_add 5
	instrument INSTR_15
	note $3F, NOTELEN_CUSTOM, $11
	note $3C, NOTELEN_0C
	note $38, NOTELEN_CUSTOM, $82
	volume_add -3
	instrument INSTR_NONE
	set_var iSndChInfo_LoopTimer0, $0C
	.loop0:
		note $38, NOTELEN_01
		volume_add -1
		snd_loop .loop0, iSndChInfo_LoopTimer0
	chan_stop
SndData_13_Ch2:
	duty_cycle $40
	instrument INSTR_07
	note $2C, NOTELEN_30
	note $2E, NOTELEN_18
	note $30
	note $31, NOTELEN_CUSTOM, $1A
	note $30, NOTELEN_CUSTOM, $16
	note $2E, NOTELEN_18
	note $30
	note $2C, NOTELEN_CUSTOM, $1A
	note $2E, NOTELEN_CUSTOM, $16
	note $30, NOTELEN_18
	note $33
	volume_add 4
	instrument INSTR_11
	note $31, NOTELEN_CUSTOM, $15
	volume_add -10
	instrument INSTR_NONE
	panning SNDOUT_CHR
	note $31, NOTELEN_03
	panning SNDOUT_CHALL
	volume_add 10
	instrument INSTR_11
	note $33, NOTELEN_CUSTOM, $15
	volume_add -10
	instrument INSTR_NONE
	panning SNDOUT_CHL
	note $33, NOTELEN_03
	panning SNDOUT_CHALL
	volume_add 10
	instrument INSTR_11
	note $35, NOTELEN_CUSTOM, $16
	volume_add -10
	instrument INSTR_NONE
	panning SNDOUT_CHR
	note $35, NOTELEN_04
	panning SNDOUT_CHALL
	volume_add 10
	instrument INSTR_11
	note $37, NOTELEN_09
	volume_add -10
	instrument INSTR_NONE
	panning SNDOUT_CHL
	note $37, NOTELEN_03
	panning SNDOUT_CHALL
	volume_add 10
	instrument INSTR_11
	note $37, NOTELEN_06
	duty_cycle $80
	instrument INSTR_15
	volume_add -5
	note $29, NOTELEN_02
	note $2A
	note $2B
	note $2C, NOTELEN_24
	note $29, NOTELEN_06
	note $2B, NOTELEN_06
	note $2C, NOTELEN_09
	note $2E
	note $30, NOTELEN_06
	note $31, NOTELEN_09
	note $33
	note $35, NOTELEN_06
	note $33, NOTELEN_18
	note $33, NOTELEN_09
	note $31
	note $30, NOTELEN_06
	note $2E, NOTELEN_CUSTOM, $15
	volume_add -5
	instrument INSTR_NONE
	note $2E, NOTELEN_03
	volume_add 5
	instrument INSTR_15
	note $30, NOTELEN_18
	note $35, NOTELEN_CUSTOM, $0F
	volume_add -5
	instrument INSTR_NONE
	note $35, NOTELEN_03
	volume_add 5
	instrument INSTR_15
	note $31, NOTELEN_CUSTOM, $0F
	volume_add -5
	instrument INSTR_NONE
	note $31, NOTELEN_03
	volume_add 5
	instrument INSTR_15
	note $30, NOTELEN_06
	note $31, NOTELEN_06
	note $35, NOTELEN_CUSTOM, $0F
	volume_add -5
	instrument INSTR_NONE
	note $35, NOTELEN_03
	volume_add 5
	instrument INSTR_15
	note $34, NOTELEN_12
	note $31, NOTELEN_0C
	note $30, NOTELEN_CUSTOM, $2D
	volume_add -5
	instrument INSTR_NONE
	note $30, NOTELEN_03
	volume_add 5
	instrument INSTR_15
	note $31, NOTELEN_CUSTOM, $15
	volume_add -5
	instrument INSTR_NONE
	note $31, NOTELEN_03
	volume_add 5
	instrument INSTR_15
	note $31, NOTELEN_09
	volume_add -5
	instrument INSTR_NONE
	note $31, NOTELEN_03
	volume_add 5
	instrument INSTR_15
	note $34, NOTELEN_CUSTOM, $0A
	note $33, NOTELEN_24
	volume_add -3
	instrument INSTR_NONE
	set_var iSndChInfo_LoopTimer0, $0C
	.loop0:
		note $33, NOTELEN_01
		volume_add -1
		snd_loop .loop0, iSndChInfo_LoopTimer0
	chan_stop
SndData_13_Ch4:
	note_ex PRESET_01, NOTELEN_02
	note $00, NOTELEN_04
	note_ex PRESET_02, NOTELEN_02
	note_ex PRESET_01, NOTELEN_06
	note_ex PRESET_00, NOTELEN_04
	note_ex PRESET_02, NOTELEN_02
	note_ex PRESET_01, NOTELEN_06
	note_ex PRESET_01, NOTELEN_04
	note_ex PRESET_03, NOTELEN_02
	note_ex PRESET_02, NOTELEN_06
	note_ex PRESET_00
	note_ex PRESET_01, NOTELEN_04
	note_ex PRESET_01, NOTELEN_02
	note $00, NOTELEN_04
	note_ex PRESET_02, NOTELEN_02
	note_ex PRESET_01, NOTELEN_06
	note_ex PRESET_00, NOTELEN_04
	note_ex PRESET_02, NOTELEN_02
	note_ex PRESET_01, NOTELEN_04
	note_ex PRESET_01, NOTELEN_02
	note_ex PRESET_02, NOTELEN_04
	note_ex PRESET_01, NOTELEN_02
	note_ex PRESET_01, NOTELEN_04
	note_ex PRESET_04, NOTELEN_02
	note_ex PRESET_00, NOTELEN_06
	note_ex PRESET_01
	note_ex PRESET_01, NOTELEN_04
	note_ex PRESET_02, NOTELEN_02
	note_ex PRESET_01, NOTELEN_06
	note_ex PRESET_00, NOTELEN_04
	note_ex PRESET_02, NOTELEN_02
	note_ex PRESET_01, NOTELEN_06
	note_ex PRESET_01, NOTELEN_04
	note_ex PRESET_02, NOTELEN_02
	note_ex PRESET_01, NOTELEN_06
	note_ex PRESET_00
	note_ex PRESET_01, NOTELEN_04
	note_ex PRESET_01, NOTELEN_02
	note $00, NOTELEN_04
	note_ex PRESET_02, NOTELEN_02
	note_ex PRESET_01, NOTELEN_04
	note_ex PRESET_02, NOTELEN_02
	note_ex PRESET_00, NOTELEN_06
	note_ex PRESET_01, NOTELEN_04
	note_ex PRESET_01
	note_ex PRESET_02, NOTELEN_02
	note_ex PRESET_01
	note_ex PRESET_01, NOTELEN_04
	note_ex PRESET_04, NOTELEN_02
	note_ex PRESET_00, NOTELEN_04
	note_ex PRESET_00, NOTELEN_06
	note_ex PRESET_01, NOTELEN_02
	note $00, NOTELEN_04
	note_ex PRESET_02, NOTELEN_02
	note_ex PRESET_01, NOTELEN_06
	note_ex PRESET_00, NOTELEN_04
	note_ex PRESET_02, NOTELEN_02
	note_ex PRESET_01, NOTELEN_06
	note_ex PRESET_01, NOTELEN_04
	note_ex PRESET_03, NOTELEN_02
	note_ex PRESET_02, NOTELEN_06
	note_ex PRESET_00
	note_ex PRESET_01, NOTELEN_04
	note_ex PRESET_01, NOTELEN_02
	note $00, NOTELEN_04
	note_ex PRESET_02, NOTELEN_02
	note_ex PRESET_01, NOTELEN_06
	note_ex PRESET_00, NOTELEN_04
	note_ex PRESET_02, NOTELEN_02
	note_ex PRESET_01, NOTELEN_04
	note_ex PRESET_01, NOTELEN_02
	note_ex PRESET_02, NOTELEN_04
	note_ex PRESET_01, NOTELEN_02
	note_ex PRESET_01, NOTELEN_04
	note_ex PRESET_04, NOTELEN_02
	note_ex PRESET_00, NOTELEN_06
	note_ex PRESET_01, NOTELEN_04
	note_ex PRESET_01, NOTELEN_02
	note $00, NOTELEN_04
	note_ex PRESET_02, NOTELEN_02
	note_ex PRESET_01, NOTELEN_06
	note_ex PRESET_00, NOTELEN_04
	note_ex PRESET_02, NOTELEN_02
	note_ex PRESET_01, NOTELEN_06
	note_ex PRESET_01, NOTELEN_04
	note_ex PRESET_03, NOTELEN_02
	note_ex PRESET_02, NOTELEN_06
	note_ex PRESET_00
	note_ex PRESET_01, NOTELEN_04
	note_ex PRESET_01, NOTELEN_02
	note $00, NOTELEN_04
	note_ex PRESET_02, NOTELEN_02
	note_ex PRESET_01, NOTELEN_06
	note_ex PRESET_00
	note_ex PRESET_00, NOTELEN_04
	note_ex PRESET_01, NOTELEN_06
	note_ex PRESET_04, NOTELEN_02
	note_ex PRESET_00, NOTELEN_06
	note_ex PRESET_00
	note_ex PRESET_00, NOTELEN_04
	note_ex PRESET_04, NOTELEN_02
	set_var iSndChInfo_LoopTimer0, $08
	.loop0:
		note_ex PRESET_01, NOTELEN_04
		note_ex PRESET_02, NOTELEN_02
		note_ex PRESET_03, NOTELEN_04
		note_ex PRESET_02, NOTELEN_02
		note_ex PRESET_00, NOTELEN_04
		note_ex PRESET_02, NOTELEN_02
		note_ex PRESET_03, NOTELEN_04
		note_ex PRESET_02, NOTELEN_02
		snd_loop .loop0, iSndChInfo_LoopTimer0
	note_ex PRESET_01, NOTELEN_04
	note_ex PRESET_02, NOTELEN_02
	note_ex PRESET_03, NOTELEN_04
	note_ex PRESET_02, NOTELEN_02
	note_ex PRESET_00, NOTELEN_04
	note_ex PRESET_02, NOTELEN_02
	note_ex PRESET_03, NOTELEN_04
	note_ex PRESET_01, NOTELEN_02
	note_ex PRESET_02, NOTELEN_04
	note_ex PRESET_01, NOTELEN_02
	note_ex PRESET_01, NOTELEN_04
	note_ex PRESET_02, NOTELEN_02
	note_ex PRESET_00, NOTELEN_04
	note_ex PRESET_02, NOTELEN_02
	note_ex PRESET_03, NOTELEN_04
	note_ex PRESET_02, NOTELEN_02
	note_ex PRESET_01, NOTELEN_04
	note_ex PRESET_02, NOTELEN_02
	note_ex PRESET_03, NOTELEN_04
	note_ex PRESET_02, NOTELEN_02
	note_ex PRESET_00, NOTELEN_04
	note_ex PRESET_02, NOTELEN_02
	note_ex PRESET_03, NOTELEN_04
	note_ex PRESET_01, NOTELEN_02
	note_ex PRESET_02, NOTELEN_04
	note_ex PRESET_02, NOTELEN_02
	note_ex PRESET_01, NOTELEN_04
	note_ex PRESET_02, NOTELEN_02
	note_ex PRESET_00, NOTELEN_04
	note_ex PRESET_02, NOTELEN_02
	note_ex PRESET_03, NOTELEN_04
	note_ex PRESET_02, NOTELEN_02
	note_ex PRESET_01, NOTELEN_04
	note_ex PRESET_02, NOTELEN_02
	note_ex PRESET_01, NOTELEN_04
	note_ex PRESET_02, NOTELEN_02
	note_ex PRESET_00, NOTELEN_04
	note_ex PRESET_02, NOTELEN_02
	note_ex PRESET_03, NOTELEN_04
	note_ex PRESET_01, NOTELEN_02
	note_ex PRESET_02, NOTELEN_04
	note_ex PRESET_02, NOTELEN_02
	note_ex PRESET_01, NOTELEN_04
	note_ex PRESET_02, NOTELEN_02
	note_ex PRESET_00, NOTELEN_04
	note_ex PRESET_02, NOTELEN_02
	note_ex PRESET_03
	note_ex PRESET_02
	note_ex PRESET_02
	note_ex PRESET_01, NOTELEN_04
	note_ex PRESET_02, NOTELEN_02
	note_ex PRESET_03, NOTELEN_04
	note_ex PRESET_02, NOTELEN_02
	note_ex PRESET_00, NOTELEN_04
	note_ex PRESET_02, NOTELEN_02
	note_ex PRESET_03, NOTELEN_04
	note_ex PRESET_02, NOTELEN_02
	note_ex PRESET_00, NOTELEN_08
	note_ex PRESET_02, NOTELEN_02
	note_ex PRESET_02
	note_ex PRESET_00, NOTELEN_CUSTOM, $08
	note_ex PRESET_02, NOTELEN_02
	note_ex PRESET_01
	set_var iSndChInfo_LoopTimer0, $0F
	.loop1:
		note_ex PRESET_04, NOTELEN_02
		note_ex PRESET_04
		volume_add -1
		snd_loop .loop1, iSndChInfo_LoopTimer0
	chan_stop
