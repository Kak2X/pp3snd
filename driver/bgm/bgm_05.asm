SndHeader_BGM_05:
	db 4 ; Number of slots
.slot0:
	db SNDSLOT0 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 12 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_0F ; iSndChInfo_Vibrato
	db -24 ; iSndChInfo_NoteIdBase
	db 74 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_05_Ch2 ; Data pointer
	db $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot1:
	db SNDSLOT1 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 10 ; iSndChInfo_Vol
	db INSTR_06 ; iSndChInfo_Instrument
	db VIBRATO_0F ; iSndChInfo_Vibrato
	db -24 ; iSndChInfo_NoteIdBase
	db 74 ; iSndChInfo_Speed
	db SNDCH_PULSE1 ; iSndChInfo_ChId
	dw SndData_05_Ch1 ; Data pointer
	db $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot2:
	db SNDSLOT2 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_0F ; iSndChInfo_Vibrato
	db -12 ; iSndChInfo_NoteIdBase
	db 74 ; iSndChInfo_Speed
	db SNDCH_WAVE ; iSndChInfo_ChId
	dw SndData_05_Ch3 ; Data pointer
	db WAVE_00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot3:
	db SNDSLOT3 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 10 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db 0 ; iSndChInfo_NoteIdBase
	db 74 ; iSndChInfo_Speed
	db SNDCH_NOISE ; iSndChInfo_ChId
	dw SndData_05_Ch4 ; Data pointer
	db $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_05_Ch2:
	duty_cycle $80
	instrument INSTR_19
	note $3E, NOTELEN_24
	note $3D, NOTELEN_0C
	note $39, NOTELEN_24
	note $37, NOTELEN_0C
	note $36, NOTELEN_24
	note $34, NOTELEN_0C
	note $36, NOTELEN_18
	note $37, NOTELEN_0C
	note $39
	note $3E, NOTELEN_24
	note $3D, NOTELEN_0C
	note $39, NOTELEN_24
	note $37, NOTELEN_0C
	note $36, NOTELEN_24
	note $31, NOTELEN_0C
	note $32, NOTELEN_24
	note $34, NOTELEN_02
	note $36
	note $37
	note $39
	note $3B
	note $3D
	snd_loop SndData_05_Ch2
SndData_05_Ch1:
	duty_cycle $80
	set_var iSndChInfo_LoopTimer0, $04
	.loop0:
		note $1A, NOTELEN_09
		note $1E
		note $21, NOTELEN_06
		note $1F, NOTELEN_09
		note $23
		note $26, NOTELEN_06
		note $1A, NOTELEN_09
		note $1E
		note $21, NOTELEN_06
		note $1F
		note $1F
		note $19, NOTELEN_09
		note $19, NOTELEN_03
		snd_loop .loop0, iSndChInfo_LoopTimer0
	snd_loop SndData_05_Ch1
SndData_05_Ch3:
	wave_id WAVE_06
	instrument INSTR_18
	set_var iSndChInfo_LoopTimer0, $04
	.loop0:
		panning SNDOUT_CHALL
		note $00, NOTELEN_06
		note $36, NOTELEN_03
		volume_add -9
		instrument INSTR_NONE
		panning SNDOUT_CHL
		note $36
		volume_add 9
		instrument INSTR_18
		panning SNDOUT_CHALL
		note $39
		note $36
		volume_add -9
		instrument INSTR_NONE
		panning SNDOUT_CHR
		note $36
		volume_add 9
		instrument INSTR_18
		panning SNDOUT_CHALL
		note $3B
		volume_add -9
		instrument INSTR_NONE
		panning SNDOUT_CHL
		note $3B
		volume_add 9
		instrument INSTR_18
		panning SNDOUT_CHALL
		note $3E
		volume_add -9
		instrument INSTR_NONE
		panning SNDOUT_CHR
		note $3E
		volume_add 9
		instrument INSTR_18
		panning SNDOUT_CHALL
		note $3B
		note $39
		volume_add -9
		instrument INSTR_NONE
		panning SNDOUT_CHL
		note $39
		volume_add 9
		instrument INSTR_18
		panning SNDOUT_CHALL
		note $37
		volume_add -9
		instrument INSTR_NONE
		panning SNDOUT_CHR
		note $37
		note $00, NOTELEN_06
		volume_add 9
		instrument INSTR_18
		panning SNDOUT_CHALL
		note $36, NOTELEN_03
		volume_add -9
		instrument INSTR_NONE
		panning SNDOUT_CHL
		note $36
		volume_add 9
		instrument INSTR_18
		panning SNDOUT_CHALL
		note $39
		note $36
		volume_add -9
		instrument INSTR_NONE
		panning SNDOUT_CHR
		note $36
		volume_add 9
		instrument INSTR_18
		panning SNDOUT_CHALL
		note $37
		volume_add -9
		instrument INSTR_NONE
		panning SNDOUT_CHL
		note $37
		volume_add 9
		instrument INSTR_18
		panning SNDOUT_CHALL
		note $37
		volume_add -9
		instrument INSTR_NONE
		panning SNDOUT_CHR
		note $37, NOTELEN_06
		volume_add 9
		instrument INSTR_18
		panning SNDOUT_CHALL
		note $39, NOTELEN_03
		volume_add -9
		instrument INSTR_NONE
		panning SNDOUT_CHL
		note $39
		volume_add 9
		instrument INSTR_18
		panning SNDOUT_CHALL
		note $37
		volume_add -9
		instrument INSTR_NONE
		panning SNDOUT_CHR
		note $37
		volume_add 9
		instrument INSTR_18
		snd_loop .loop0, iSndChInfo_LoopTimer0
	snd_loop SndData_05_Ch3
SndData_05_Ch4:
	volume 12
	note_ex PRESET_01, NOTELEN_09
	note_ex PRESET_01, NOTELEN_03
	volume_add 5
	note_ex PRESET_00, NOTELEN_09
	volume_add -7
	note_ex PRESET_00, NOTELEN_03
	volume_add 2
	note_ex PRESET_01
	volume_add -3
	note_ex PRESET_00, NOTELEN_01
	volume_add -1
	note_ex PRESET_00
	volume_add -1
	note_ex PRESET_00, NOTELEN_04
	volume_add 5
	note_ex PRESET_01, NOTELEN_03
	volume_add 5
	note_ex PRESET_00, NOTELEN_09
	volume_add -7
	note_ex PRESET_00, NOTELEN_01
	volume_add -1
	note_ex PRESET_00
	volume_add -1
	note_ex PRESET_00
	volume_add 4
	note_ex PRESET_01, NOTELEN_03
	volume_add -5
	note_ex PRESET_00, NOTELEN_01
	volume_add -2
	note_ex PRESET_00
	volume_add -1
	note_ex PRESET_00, NOTELEN_04
	volume_add 8
	note_ex PRESET_01, NOTELEN_03
	volume_add 5
	note_ex PRESET_00, NOTELEN_09
	volume_add -7
	note_ex PRESET_00, NOTELEN_03
	volume_add 2
	note_ex PRESET_01
	volume_add -3
	note_ex PRESET_00, NOTELEN_01
	volume_add -1
	note_ex PRESET_00
	volume_add -1
	note_ex PRESET_00
	volume_add 5
	note_ex PRESET_01, NOTELEN_03
	volume_add -7
	note_ex PRESET_00, NOTELEN_01
	volume_add 2
	note_ex PRESET_00
	volume_add 1
	note_ex PRESET_00
	volume_add 9
	note_ex PRESET_00, NOTELEN_09
	volume_add -8
	note_ex PRESET_01, NOTELEN_03
	volume_add 3
	note_ex PRESET_01, NOTELEN_09
	note_ex PRESET_01, NOTELEN_03
	volume_add 5
	note_ex PRESET_00, NOTELEN_09
	volume_add -7
	note_ex PRESET_00, NOTELEN_03
	volume_add 2
	note_ex PRESET_01
	volume_add -3
	note_ex PRESET_00, NOTELEN_01
	volume_add -1
	note_ex PRESET_00
	volume_add -1
	note_ex PRESET_00, NOTELEN_04
	volume_add 5
	note_ex PRESET_01, NOTELEN_03
	volume_add 5
	note_ex PRESET_00, NOTELEN_09
	volume_add -7
	note_ex PRESET_00, NOTELEN_01
	volume_add -1
	note_ex PRESET_00
	volume_add -1
	note_ex PRESET_00
	volume_add 4
	note_ex PRESET_01, NOTELEN_03
	volume_add -5
	note_ex PRESET_00, NOTELEN_01
	volume_add -2
	note_ex PRESET_00
	volume_add -1
	note_ex PRESET_00, NOTELEN_04
	volume_add 8
	note_ex PRESET_01, NOTELEN_03
	volume_add 5
	note_ex PRESET_00, NOTELEN_09
	volume_add -7
	note_ex PRESET_00, NOTELEN_03
	volume_add 2
	note_ex PRESET_01
	volume_add 1
	note_ex PRESET_00, NOTELEN_01
	volume_add -4
	note_ex PRESET_00
	volume_add -1
	note_ex PRESET_00
	volume_add 4
	note_ex PRESET_01, NOTELEN_03
	volume_add -7
	note_ex PRESET_00, NOTELEN_01
	volume_add 2
	note_ex PRESET_00
	volume_add 1
	note_ex PRESET_00
	volume_add 9
	note_ex PRESET_00, NOTELEN_06
	note_ex PRESET_00, NOTELEN_03
	volume_add -8
	note_ex PRESET_01
	volume_add 3
	note_ex PRESET_01, NOTELEN_09
	note_ex PRESET_01, NOTELEN_03
	volume_add 5
	note_ex PRESET_00, NOTELEN_09
	volume_add -7
	note_ex PRESET_00, NOTELEN_03
	volume_add 2
	note_ex PRESET_01
	volume_add -3
	note_ex PRESET_00, NOTELEN_01
	volume_add -1
	note_ex PRESET_00
	volume_add -1
	note_ex PRESET_00, NOTELEN_04
	volume_add 5
	note_ex PRESET_01, NOTELEN_03
	volume_add 5
	note_ex PRESET_00, NOTELEN_09
	volume_add -7
	note_ex PRESET_00, NOTELEN_01
	volume_add -1
	note_ex PRESET_00
	volume_add -1
	note_ex PRESET_00
	volume_add 4
	note_ex PRESET_01, NOTELEN_03
	volume_add -5
	note_ex PRESET_00, NOTELEN_01
	volume_add -2
	note_ex PRESET_00
	volume_add -1
	note_ex PRESET_00, NOTELEN_04
	volume_add 8
	note_ex PRESET_01, NOTELEN_03
	volume_add 5
	note_ex PRESET_00, NOTELEN_09
	volume_add -7
	note_ex PRESET_00, NOTELEN_03
	volume_add 2
	note_ex PRESET_01
	volume_add -3
	note_ex PRESET_00, NOTELEN_01
	volume_add -1
	note_ex PRESET_00
	volume_add -1
	note_ex PRESET_00
	volume_add 5
	note_ex PRESET_01, NOTELEN_03
	volume_add -7
	note_ex PRESET_00, NOTELEN_01
	volume_add 2
	note_ex PRESET_00
	volume_add 1
	note_ex PRESET_00
	volume_add 9
	note_ex PRESET_00, NOTELEN_09
	volume_add -8
	note_ex PRESET_01, NOTELEN_03
	volume_add 3
	note_ex PRESET_01, NOTELEN_09
	note_ex PRESET_01, NOTELEN_03
	volume_add 5
	note_ex PRESET_00, NOTELEN_09
	volume_add -7
	note_ex PRESET_00, NOTELEN_03
	volume_add 2
	note_ex PRESET_01
	volume_add -3
	note_ex PRESET_00, NOTELEN_01
	volume_add -1
	note_ex PRESET_00
	volume_add -1
	note_ex PRESET_00, NOTELEN_04
	volume_add 5
	note_ex PRESET_01, NOTELEN_03
	volume_add 5
	note_ex PRESET_00, NOTELEN_09
	volume_add -7
	note_ex PRESET_00, NOTELEN_01
	volume_add -1
	note_ex PRESET_00
	volume_add -1
	note_ex PRESET_00
	volume_add 4
	note_ex PRESET_01, NOTELEN_03
	volume_add -3
	note_ex PRESET_00, NOTELEN_01
	volume_add -1
	note_ex PRESET_00
	volume_add -1
	note_ex PRESET_00, NOTELEN_04
	volume_add 5
	note_ex PRESET_01, NOTELEN_03
	volume_add 5
	note_ex PRESET_00, NOTELEN_06
	volume_add -3
	note_ex PRESET_00, NOTELEN_03
	volume_add 1
	note_ex PRESET_00
	volume_add -3
	note_ex PRESET_01
	volume_add 2
	note_ex PRESET_00, NOTELEN_01
	volume_add -4
	note_ex PRESET_00
	volume_add -1
	note_ex PRESET_00
	volume_add 3
	note_ex PRESET_01, NOTELEN_03
	volume_add -5
	note_ex PRESET_00, NOTELEN_01
	volume_add 1
	note_ex PRESET_00
	volume_add 1
	note_ex PRESET_00
	volume_add 8
	note_ex PRESET_00, NOTELEN_06
	note_ex PRESET_00, NOTELEN_03
	volume_add -8
	note_ex PRESET_01
	volume_add 8
	snd_loop SndData_05_Ch4
