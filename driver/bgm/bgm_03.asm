SndHeader_BGM_03:
	db 4 ; Number of slots
.slot0:
	db SNDSLOT0 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -24 ; iSndChInfo_NoteIdBase
	db 104 ; iSndChInfo_Speed
	db SNDCH_PULSE1 ; iSndChInfo_ChId
	dw SndData_03_Ch1 ; Data pointer
	db $80 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot1:
	db SNDSLOT1 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 12 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -12 ; iSndChInfo_NoteIdBase
	db 104 ; iSndChInfo_Speed
	db SNDCH_WAVE ; iSndChInfo_ChId
	dw SndData_03_Ch3 ; Data pointer
	db WAVE_0D ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot2:
	db SNDSLOT2 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 10 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -12 ; iSndChInfo_NoteIdBase
	db 104 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_03_Ch2 ; Data pointer
	db $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot3:
	db SNDSLOT3 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db 0 ; iSndChInfo_NoteIdBase
	db 104 ; iSndChInfo_Speed
	db SNDCH_NOISE ; iSndChInfo_ChId
	dw SndData_03_Ch4 ; Data pointer
	db $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_03_Ch1:
	instrument INSTR_56
	note $3C, NOTELEN_04
	note $00, NOTELEN_02
	instrument INSTR_NONE
	volume_add -13
	note $3C, NOTELEN_04
	note $00, NOTELEN_02
	instrument INSTR_56
	volume_add 13
	note $38, NOTELEN_04
	note $00, NOTELEN_02
	note $3A, NOTELEN_04
	note $00, NOTELEN_02
	instrument INSTR_NONE
	volume_add -13
	note $3A, NOTELEN_04
	note $00, NOTELEN_02
	instrument INSTR_56
	volume_add 13
	note $36, NOTELEN_04
	note $00, NOTELEN_02
	instrument INSTR_NONE
	volume_add -13
	note $36, NOTELEN_04
	note $00, NOTELEN_02
	instrument INSTR_56
	volume_add 13
	note $3C, NOTELEN_04
	note $00, NOTELEN_02
	instrument INSTR_NONE
	volume_add -13
	note $3C, NOTELEN_04
	note $00, NOTELEN_02
	instrument INSTR_56
	volume_add 13
	note $38, NOTELEN_04
	note $00, NOTELEN_02
	instrument INSTR_NONE
	volume_add -13
	note $38, NOTELEN_04
	note $00, NOTELEN_02
	instrument INSTR_56
	volume_add 13
	note $3A, NOTELEN_04
	note $00, NOTELEN_02
	instrument INSTR_NONE
	volume_add -13
	note $3A, NOTELEN_04
	note $00, NOTELEN_02
	instrument INSTR_56
	volume_add 13
	note $36, NOTELEN_04
	note $00, NOTELEN_02
	instrument INSTR_NONE
	volume_add -13
	note $36, NOTELEN_04
	note $00, NOTELEN_02
	instrument INSTR_56
	volume_add 13
	note $3D, NOTELEN_04
	note $00, NOTELEN_02
	note $3C, NOTELEN_04
	note $00, NOTELEN_02
	instrument INSTR_NONE
	volume_add -13
	note $3C, NOTELEN_04
	note $00, NOTELEN_02
	instrument INSTR_56
	volume_add 13
	note $38, NOTELEN_04
	note $00, NOTELEN_02
	note $3A, NOTELEN_04
	note $00, NOTELEN_02
	instrument INSTR_NONE
	volume_add -13
	note $3A, NOTELEN_04
	note $00, NOTELEN_02
	instrument INSTR_56
	volume_add 13
	note $36, NOTELEN_04
	note $00, NOTELEN_02
	instrument INSTR_NONE
	volume_add -13
	note $36, NOTELEN_04
	note $00, NOTELEN_02
	instrument INSTR_56
	volume_add 13
	note $3A, NOTELEN_04
	note $00, NOTELEN_02
	instrument INSTR_NONE
	volume_add -13
	note $3A, NOTELEN_04
	note $00, NOTELEN_02
	instrument INSTR_56
	volume_add 13
	note $36, NOTELEN_04
	note $00, NOTELEN_02
	instrument INSTR_NONE
	volume_add -13
	note $36, NOTELEN_04
	note $00, NOTELEN_02
	instrument INSTR_56
	volume_add 13
	note $38, NOTELEN_04
	note $00, NOTELEN_02
	instrument INSTR_NONE
	volume_add -13
	note $38, NOTELEN_04
	note $00, NOTELEN_02
	instrument INSTR_56
	volume_add 13
	note $35, NOTELEN_04
	note $00, NOTELEN_02
	instrument INSTR_NONE
	volume_add -13
	note $35, NOTELEN_04
	note $00, NOTELEN_02
	instrument INSTR_56
	volume_add 13
	note $38, NOTELEN_04
	note $00, NOTELEN_02
	note $3C, NOTELEN_04
	note $00, NOTELEN_02
	instrument INSTR_NONE
	volume_add -13
	note $3C, NOTELEN_04
	note $00, NOTELEN_02
	instrument INSTR_56
	volume_add 13
	note $38, NOTELEN_04
	note $00, NOTELEN_02
	note $3A, NOTELEN_04
	note $00, NOTELEN_02
	instrument INSTR_NONE
	volume_add -13
	note $3A, NOTELEN_04
	note $00, NOTELEN_02
	instrument INSTR_56
	volume_add 13
	note $36, NOTELEN_04
	note $00, NOTELEN_02
	instrument INSTR_NONE
	volume_add -13
	note $36, NOTELEN_04
	note $00, NOTELEN_02
	instrument INSTR_56
	volume_add 13
	note $3C, NOTELEN_04
	note $00, NOTELEN_02
	instrument INSTR_NONE
	volume_add -13
	note $3C, NOTELEN_04
	note $00, NOTELEN_02
	instrument INSTR_56
	volume_add 13
	note $38, NOTELEN_04
	note $00, NOTELEN_02
	instrument INSTR_NONE
	volume_add -13
	note $38, NOTELEN_04
	note $00, NOTELEN_02
	instrument INSTR_56
	volume_add 13
	note $3A, NOTELEN_04
	note $00, NOTELEN_02
	instrument INSTR_NONE
	volume_add -13
	note $3A, NOTELEN_04
	note $00, NOTELEN_02
	instrument INSTR_56
	volume_add 13
	note $36, NOTELEN_04
	note $00, NOTELEN_02
	instrument INSTR_NONE
	volume_add -13
	note $36, NOTELEN_04
	note $00, NOTELEN_02
	instrument INSTR_56
	volume_add 13
	note $3D, NOTELEN_04
	note $00, NOTELEN_02
	note $3C, NOTELEN_04
	note $00, NOTELEN_02
	instrument INSTR_NONE
	volume_add -13
	note $3C, NOTELEN_04
	note $00, NOTELEN_02
	instrument INSTR_56
	volume_add 13
	note $38, NOTELEN_04
	note $00, NOTELEN_02
	note $3A, NOTELEN_04
	note $00, NOTELEN_02
	instrument INSTR_NONE
	volume_add -13
	note $3A, NOTELEN_04
	note $00, NOTELEN_02
	instrument INSTR_56
	volume_add 13
	note $36, NOTELEN_04
	note $00, NOTELEN_02
	instrument INSTR_NONE
	volume_add -13
	note $36, NOTELEN_04
	note $00, NOTELEN_02
	instrument INSTR_56
	volume_add 13
	note $38, NOTELEN_04
	note $00, NOTELEN_02
	instrument INSTR_NONE
	volume_add -13
	note $38, NOTELEN_04
	note $00, NOTELEN_CUSTOM, $2C
	volume_add 13
	snd_loop SndData_03_Ch1
SndData_03_Ch3:
	instrument INSTR_56
	note $20, NOTELEN_03
	note $00, NOTELEN_09
	note $27, NOTELEN_03
	note $00
	note $1E
	note $00, NOTELEN_09
	note $25, NOTELEN_03
	note $00, NOTELEN_09
	note $20, NOTELEN_03
	note $00
	note $00, NOTELEN_06
	note $27, NOTELEN_03
	note $00, NOTELEN_09
	note $1E, NOTELEN_03
	note $00, NOTELEN_09
	note $25, NOTELEN_03
	note $00, NOTELEN_09
	note $1E, NOTELEN_03
	note $00
	note $20
	note $00, NOTELEN_09
	note $27, NOTELEN_03
	note $00
	note $1E
	note $00, NOTELEN_09
	note $25, NOTELEN_03
	note $00, NOTELEN_09
	note $23, NOTELEN_03
	note $00
	note $00, NOTELEN_06
	note $27, NOTELEN_03
	note $00, NOTELEN_09
	note $22, NOTELEN_03
	note $00, NOTELEN_09
	note $24, NOTELEN_03
	note $00
	note $25
	note $00
	note $27
	note $00
	note $20
	note $00, NOTELEN_09
	note $27, NOTELEN_03
	note $00
	note $1E
	note $00, NOTELEN_09
	note $25, NOTELEN_03
	note $00, NOTELEN_09
	note $20, NOTELEN_03
	note $00
	note $00, NOTELEN_06
	note $27, NOTELEN_03
	note $00, NOTELEN_09
	note $1E, NOTELEN_03
	note $00, NOTELEN_09
	note $25, NOTELEN_03
	note $00, NOTELEN_09
	note $1E, NOTELEN_03
	note $00
	note $20
	note $00, NOTELEN_09
	note $27, NOTELEN_03
	note $00
	note $1E
	note $00, NOTELEN_09
	note $25, NOTELEN_03
	note $00, NOTELEN_09
	note $20, NOTELEN_03
	note $00
	note $00, NOTELEN_30
	snd_loop SndData_03_Ch3
SndData_03_Ch2:
	note $00, NOTELEN_30
	note $00
	note $00
	note $00
	note $00
	note $00
	note $00
	note $00
	instrument INSTR_05
	note $3F, NOTELEN_02
	note $00, NOTELEN_01
	volume_add -10
	note $3F, NOTELEN_02
	note $00, NOTELEN_01
	volume_add 10
	note $3C, NOTELEN_02
	note $00, NOTELEN_01
	volume_add -10
	note $3C, NOTELEN_02
	note $00, NOTELEN_01
	volume_add 10
	note $3F, NOTELEN_02
	note $00, NOTELEN_01
	volume_add -10
	note $3F, NOTELEN_02
	note $00, NOTELEN_01
	volume_add 10
	note $3D, NOTELEN_02
	note $00, NOTELEN_01
	volume_add -10
	note $3D, NOTELEN_02
	note $00, NOTELEN_01
	volume_add 10
	note $3F, NOTELEN_02
	note $00, NOTELEN_01
	volume_add -10
	note $3F, NOTELEN_02
	note $00, NOTELEN_01
	volume_add 10
	note $3D, NOTELEN_02
	note $00, NOTELEN_01
	volume_add -10
	note $3D, NOTELEN_02
	note $00, NOTELEN_01
	volume_add 10
	note $3F, NOTELEN_02
	note $00, NOTELEN_01
	volume_add -10
	note $3F, NOTELEN_02
	note $00, NOTELEN_01
	volume_add 10
	note $3C, NOTELEN_02
	note $00, NOTELEN_01
	volume_add -10
	note $3C, NOTELEN_02
	note $00, NOTELEN_01
	volume_add 10
	note $3F, NOTELEN_02
	note $00, NOTELEN_01
	volume_add -10
	note $3F, NOTELEN_02
	note $00, NOTELEN_01
	volume_add 10
	note $3C, NOTELEN_02
	note $00, NOTELEN_01
	volume_add -10
	note $3C, NOTELEN_02
	note $00, NOTELEN_01
	volume_add 10
	note $3F, NOTELEN_02
	note $00, NOTELEN_01
	volume_add -10
	note $3F, NOTELEN_02
	note $00, NOTELEN_01
	volume_add 10
	note $3D, NOTELEN_02
	note $00, NOTELEN_01
	volume_add -10
	note $3D, NOTELEN_02
	note $00, NOTELEN_01
	volume_add 10
	note $3A, NOTELEN_02
	note $00, NOTELEN_01
	volume_add -10
	note $3A, NOTELEN_02
	note $00, NOTELEN_01
	volume_add 10
	note $3D, NOTELEN_02
	note $00, NOTELEN_01
	volume_add -10
	note $3D, NOTELEN_02
	note $00, NOTELEN_01
	volume_add 10
	note $3A, NOTELEN_02
	note $00, NOTELEN_01
	volume_add -10
	note $3A, NOTELEN_02
	note $00, NOTELEN_01
	volume_add 10
	note $3D, NOTELEN_02
	note $00, NOTELEN_01
	volume_add -10
	note $3D, NOTELEN_02
	note $00, NOTELEN_01
	volume_add 10
	note $3C, NOTELEN_02
	note $00, NOTELEN_01
	volume_add -10
	note $3C, NOTELEN_02
	note $00, NOTELEN_01
	volume_add 10
	note $3F, NOTELEN_02
	note $00, NOTELEN_01
	volume_add -10
	note $3F, NOTELEN_02
	note $00, NOTELEN_01
	volume_add 10
	note $3C, NOTELEN_02
	note $00, NOTELEN_01
	volume_add -10
	note $3C, NOTELEN_02
	note $00, NOTELEN_01
	volume_add 10
	note $3D, NOTELEN_02
	note $00, NOTELEN_01
	volume_add -10
	note $3D, NOTELEN_02
	note $00, NOTELEN_01
	volume_add 10
	note $3F, NOTELEN_02
	note $00, NOTELEN_01
	volume_add -10
	note $3F, NOTELEN_02
	note $00, NOTELEN_01
	volume_add 10
	note $3D, NOTELEN_02
	note $00, NOTELEN_01
	volume_add -10
	note $3D, NOTELEN_02
	note $00, NOTELEN_01
	volume_add 10
	note $3F, NOTELEN_02
	note $00, NOTELEN_01
	volume_add -10
	note $3F, NOTELEN_02
	note $00, NOTELEN_01
	volume_add 10
	note $3F, NOTELEN_02
	note $00, NOTELEN_01
	volume_add -10
	note $3F, NOTELEN_02
	note $00, NOTELEN_01
	volume_add 10
	note $3A, NOTELEN_02
	note $00, NOTELEN_01
	volume_add -10
	note $3A, NOTELEN_02
	note $00, NOTELEN_01
	volume_add 10
	note $3F, NOTELEN_02
	note $00, NOTELEN_01
	volume_add -10
	note $3F, NOTELEN_02
	note $00, NOTELEN_01
	volume_add 10
	note $3A, NOTELEN_02
	note $00, NOTELEN_01
	volume_add -10
	note $3A, NOTELEN_02
	note $00, NOTELEN_01
	volume_add 10
	note $3D, NOTELEN_02
	note $00, NOTELEN_01
	volume_add -10
	note $3D, NOTELEN_02
	note $00, NOTELEN_01
	volume_add 10
	note $3A, NOTELEN_02
	note $00, NOTELEN_01
	volume_add -10
	note $3A, NOTELEN_02
	note $00, NOTELEN_01
	volume_add 10
	note $3D, NOTELEN_02
	note $00, NOTELEN_01
	volume_add -10
	note $3D, NOTELEN_02
	note $00, NOTELEN_01
	volume_add 10
	note $3A, NOTELEN_02
	note $00, NOTELEN_01
	volume_add -10
	note $3A, NOTELEN_02
	note $00, NOTELEN_01
	volume_add 10
	note $3D, NOTELEN_02
	note $00, NOTELEN_01
	volume_add -10
	note $3D, NOTELEN_02
	note $00, NOTELEN_01
	volume_add 10
	note $3C, NOTELEN_02
	note $00, NOTELEN_01
	volume_add -10
	note $3C, NOTELEN_02
	note $00, NOTELEN_01
	volume_add 10
	note $3F, NOTELEN_02
	note $00, NOTELEN_01
	volume_add -10
	note $3F, NOTELEN_02
	note $00, NOTELEN_01
	volume_add 10
	note $3C, NOTELEN_02
	note $00, NOTELEN_01
	volume_add -10
	note $3C, NOTELEN_02
	note $00, NOTELEN_01
	volume_add 10
	note $3F, NOTELEN_02
	note $00, NOTELEN_01
	volume_add -10
	note $3F, NOTELEN_02
	note $00, NOTELEN_01
	volume_add 10
	note $3D, NOTELEN_02
	note $00, NOTELEN_01
	volume_add -10
	note $3D, NOTELEN_02
	note $00, NOTELEN_01
	volume_add 10
	note $3F, NOTELEN_02
	note $00, NOTELEN_01
	volume_add -10
	note $3F, NOTELEN_02
	note $00, NOTELEN_01
	volume_add 10
	note $3D, NOTELEN_02
	note $00, NOTELEN_01
	volume_add -10
	note $3D, NOTELEN_02
	note $00, NOTELEN_01
	volume_add 10
	note $3F, NOTELEN_02
	note $00, NOTELEN_01
	volume_add -10
	note $3F, NOTELEN_02
	note $00, NOTELEN_01
	volume_add 10
	note $3C, NOTELEN_02
	note $00, NOTELEN_01
	volume_add -10
	note $3C, NOTELEN_02
	note $00, NOTELEN_01
	volume_add 10
	note $3F, NOTELEN_02
	note $00, NOTELEN_01
	volume_add -10
	note $3F, NOTELEN_02
	note $00, NOTELEN_01
	volume_add 10
	note $3C, NOTELEN_02
	note $00, NOTELEN_01
	volume_add -10
	note $3C, NOTELEN_02
	note $00, NOTELEN_01
	volume_add 10
	note $3D, NOTELEN_02
	note $00, NOTELEN_01
	volume_add -10
	note $3D, NOTELEN_02
	note $00, NOTELEN_01
	volume_add 10
	note $3A, NOTELEN_02
	note $00, NOTELEN_01
	volume_add -10
	note $3A, NOTELEN_02
	note $00, NOTELEN_01
	volume_add 10
	note $3D, NOTELEN_02
	note $00, NOTELEN_01
	volume_add -10
	note $3D, NOTELEN_02
	note $00, NOTELEN_01
	volume_add 10
	note $3A, NOTELEN_02
	note $00, NOTELEN_01
	volume_add -10
	note $3A, NOTELEN_02
	note $00, NOTELEN_01
	volume_add 10
	note $3D, NOTELEN_02
	note $00, NOTELEN_01
	volume_add -10
	note $3D, NOTELEN_02
	note $00, NOTELEN_01
	volume_add 10
	note $3C, NOTELEN_02
	note $00, NOTELEN_01
	volume_add -10
	note $3C, NOTELEN_02
	note $00, NOTELEN_01
	volume_add 10
	note $3F, NOTELEN_02
	note $00, NOTELEN_01
	volume_add -10
	note $3F, NOTELEN_02
	note $00, NOTELEN_01
	volume_add 10
	note $3C, NOTELEN_02
	note $00, NOTELEN_01
	volume_add -10
	note $3C, NOTELEN_02
	note $00, NOTELEN_01
	volume_add 10
	note $3F, NOTELEN_02
	note $00, NOTELEN_01
	volume_add -10
	note $3F, NOTELEN_02
	note $00, NOTELEN_01
	volume_add 10
	note $3D, NOTELEN_02
	note $00, NOTELEN_01
	volume_add -10
	note $3D, NOTELEN_02
	note $00, NOTELEN_01
	volume_add 10
	note $3F, NOTELEN_02
	note $00, NOTELEN_01
	volume_add -10
	note $3F, NOTELEN_02
	note $00, NOTELEN_01
	volume_add 10
	note $3D, NOTELEN_02
	note $00, NOTELEN_01
	volume_add -10
	note $3D, NOTELEN_02
	note $00, NOTELEN_01
	volume_add 10
	note $3C, NOTELEN_02
	note $00, NOTELEN_01
	volume_add -10
	note $3C, NOTELEN_02
	note $00, NOTELEN_01
	note $00, NOTELEN_30
	volume_add 10
	snd_loop SndData_03_Ch2
SndData_03_Ch4:
	set_var iSndChInfo_LoopTimer1, $02
	.loop0:
		set_var iSndChInfo_LoopTimer0, $03
		.loop1:
			note_ex PRESET_04, NOTELEN_06
			note_ex PRESET_02
			note_ex PRESET_04
			note_ex PRESET_02
			note_ex PRESET_04
			note_ex PRESET_02
			note_ex PRESET_04
			note_ex PRESET_02
			note_ex PRESET_04
			note_ex PRESET_02
			note_ex PRESET_04
			note_ex PRESET_02
			note_ex PRESET_04
			note_ex PRESET_02
			note_ex PRESET_04
			note_ex PRESET_02, NOTELEN_03
			note_ex PRESET_02
			snd_loop .loop1, iSndChInfo_LoopTimer0
		note_ex PRESET_04, NOTELEN_0C
		note_ex PRESET_04
		note_ex PRESET_04
		note_ex PRESET_04
		note_ex PRESET_04
		note_ex PRESET_04, NOTELEN_06
		note_ex PRESET_02
		note_ex PRESET_04
		note_ex PRESET_02
		note_ex PRESET_04, NOTELEN_0C
	snd_loop .loop0, iSndChInfo_LoopTimer1
	snd_loop SndData_03_Ch4
	
