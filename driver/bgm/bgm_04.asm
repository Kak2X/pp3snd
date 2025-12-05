SndHeader_BGM_04:
	db 4 ; Number of slots
.slot0:
	db SNDSLOT0 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_40 ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db 0 ; iSndChInfo_NoteIdBase
	db 102 ; iSndChInfo_Speed
	db SNDCH_WAVE ; iSndChInfo_ChId
	dw SndData_04_Ch3 ; Data pointer
	db $80 ; [PLACEHOLDER] ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot1:
	db SNDSLOT1 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 13 ; iSndChInfo_Vol
	db INSTR_2E ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -12 ; iSndChInfo_NoteIdBase
	db 102 ; iSndChInfo_Speed
	db SNDCH_PULSE1 ; iSndChInfo_ChId
	dw SndData_04_Ch1 ; Data pointer
	db $80 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot2:
	db SNDSLOT2 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 11 ; iSndChInfo_Vol
	db INSTR_40 ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -12 ; iSndChInfo_NoteIdBase
	db 102 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_04_Ch2 ; Data pointer
	db $80 ; iSndChInfo_DutyOrWave
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
	dw SndData_04_Ch4 ; Data pointer
	db $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_04_Ch3:
	wave_id WAVE_08
	note $38, NOTELEN_09
	note $38
	note $39, NOTELEN_06
	note $3B, NOTELEN_09
	note $39
	note $39
	note $38, NOTELEN_03
	note $36, NOTELEN_09
	note $34
	note $38
	note $38
	note $39, NOTELEN_06
	note $3B, NOTELEN_09
	note $39, NOTELEN_CUSTOM, $0F
	note $00, NOTELEN_18
	note $38, NOTELEN_09
	note $38
	note $39, NOTELEN_06
	note $3B, NOTELEN_09
	note $39
	note $39
	note $38, NOTELEN_03
	note $36, NOTELEN_09
	note $34
	note $38
	note $38
	note $39, NOTELEN_06
	note $3B, NOTELEN_09
	note $39, NOTELEN_CUSTOM, $0F
	note $00, NOTELEN_0C
	note $36
	note $38, NOTELEN_09
	note $38
	note $39, NOTELEN_06
	note $3B, NOTELEN_09
	note $39
	note $39
	note $38, NOTELEN_03
	note $36, NOTELEN_09
	note $34
	note $38
	note $38
	note $39, NOTELEN_06
	note $3B, NOTELEN_09
	note $39, NOTELEN_CUSTOM, $0F
	note $00, NOTELEN_18
	note $38, NOTELEN_09
	note $38
	note $39, NOTELEN_06
	note $3B, NOTELEN_09
	note $39
	note $39
	note $38, NOTELEN_03
	note $36, NOTELEN_09
	note $34
	note $38
	note $38
	note $39, NOTELEN_06
	note $3B, NOTELEN_09
	note $39, NOTELEN_CUSTOM, $0F
	note $00, NOTELEN_03
	note $2F, NOTELEN_0C
	note $32, NOTELEN_09
	snd_loop SndData_04_Ch3
SndData_04_Ch1:
	duty_cycle $40
	note $1C, NOTELEN_CUSTOM, $0F
	note $23, NOTELEN_03
	note $28, NOTELEN_06
	note $1C, NOTELEN_09
	note $1A, NOTELEN_0C
	note $00, NOTELEN_06
	note $21, NOTELEN_03
	note $26, NOTELEN_09
	note $1A
	note $1C, NOTELEN_CUSTOM, $0F
	note $23, NOTELEN_03
	note $28, NOTELEN_06
	note $1C, NOTELEN_09
	note $1A, NOTELEN_03
	note $00, NOTELEN_0C
	note $00, NOTELEN_18
	note $1C, NOTELEN_CUSTOM, $0F
	note $23, NOTELEN_03
	note $28, NOTELEN_06
	note $1C, NOTELEN_09
	note $1A, NOTELEN_0C
	note $00, NOTELEN_06
	note $21, NOTELEN_03
	note $26, NOTELEN_09
	note $1A
	note $1C, NOTELEN_CUSTOM, $0F
	note $23, NOTELEN_03
	note $28, NOTELEN_06
	note $1C, NOTELEN_09
	note $1A
	note $19, NOTELEN_03
	note $17
	note $17
	note $1A
	note $00, NOTELEN_06
	note $1A, NOTELEN_0C
	note $1C, NOTELEN_CUSTOM, $0F
	note $23, NOTELEN_03
	note $28, NOTELEN_06
	note $1C, NOTELEN_09
	note $1A, NOTELEN_0C
	note $00, NOTELEN_06
	note $21, NOTELEN_03
	note $26, NOTELEN_09
	note $1A
	note $1C, NOTELEN_CUSTOM, $0F
	note $23, NOTELEN_03
	note $28, NOTELEN_06
	note $1C, NOTELEN_09
	note $1A, NOTELEN_03
	note $00, NOTELEN_0C
	note $00, NOTELEN_18
	note $1C, NOTELEN_CUSTOM, $0F
	note $23, NOTELEN_03
	note $28, NOTELEN_06
	note $1C, NOTELEN_09
	note $1A, NOTELEN_0C
	note $00, NOTELEN_06
	note $21, NOTELEN_03
	note $26, NOTELEN_09
	note $21
	note $15, NOTELEN_0C
	note $00, NOTELEN_03
	note $1C
	note $21, NOTELEN_06
	note $15, NOTELEN_09
	note $13
	note $1A, NOTELEN_03
	note $1F
	note $1F
	note $13, NOTELEN_09
	note $00, NOTELEN_03
	note $1F, NOTELEN_09
	snd_loop SndData_04_Ch1
SndData_04_Ch2:
	duty_cycle $01
	instrument INSTR_41
	note $38, NOTELEN_03
	note $34
	note $31
	note $2F
	note $00
	instrument INSTR_40
	note $1C
	note $28, NOTELEN_06
	note $00, NOTELEN_0C
	note $2A, NOTELEN_CUSTOM, $0F
	note $26, NOTELEN_0C
	note $2A, NOTELEN_09
	note $1C, NOTELEN_06
	note $28, NOTELEN_09
	note $1C, NOTELEN_03
	note $28, NOTELEN_CUSTOM, $0F
	note $2A, NOTELEN_CUSTOM, $0F
	note $00, NOTELEN_18
	note $1C, NOTELEN_06
	note $28, NOTELEN_09
	note $1C, NOTELEN_03
	note $2C, NOTELEN_06
	note $00, NOTELEN_0C
	note $2A, NOTELEN_CUSTOM, $0F
	note $26, NOTELEN_0C
	note $2A, NOTELEN_09
	note $1C, NOTELEN_06
	note $28, NOTELEN_09
	note $1C, NOTELEN_03
	note $28, NOTELEN_CUSTOM, $0F
	note $2A, NOTELEN_CUSTOM, $0F
	note $00, NOTELEN_0C
	note $2D
	note $1C, NOTELEN_06
	note $28, NOTELEN_09
	note $1C, NOTELEN_03
	note $2C, NOTELEN_06
	note $00, NOTELEN_0C
	note $2A, NOTELEN_CUSTOM, $0F
	note $26, NOTELEN_0C
	note $2A, NOTELEN_09
	note $1C, NOTELEN_06
	note $28, NOTELEN_09
	note $1C, NOTELEN_03
	note $2C, NOTELEN_CUSTOM, $0F
	note $2A, NOTELEN_CUSTOM, $0F
	note $00, NOTELEN_18
	note $1C, NOTELEN_06
	note $28, NOTELEN_09
	note $1C, NOTELEN_03
	note $2C, NOTELEN_06
	note $00, NOTELEN_0C
	note $2A, NOTELEN_CUSTOM, $0F
	note $2A, NOTELEN_0C
	note $26, NOTELEN_09
	note $15, NOTELEN_06
	note $31, NOTELEN_09
	note $15, NOTELEN_03
	note $2D, NOTELEN_06
	note $15, NOTELEN_09
	note $2B, NOTELEN_CUSTOM, $0F
	note $00, NOTELEN_03
	note $2A, NOTELEN_0C
	note $2B, NOTELEN_09
	snd_loop SndData_04_Ch2
SndData_04_Ch4:
	note_ex PRESET_01, NOTELEN_09
	note_ex PRESET_00
	note_ex PRESET_01, NOTELEN_06
	note $00, NOTELEN_03
	note_ex PRESET_00, NOTELEN_06
	note_ex PRESET_01, NOTELEN_09
	note_ex PRESET_01, NOTELEN_03
	note_ex PRESET_00, NOTELEN_09
	note_ex PRESET_01
	note_ex PRESET_00
	note_ex PRESET_01
	note_ex PRESET_00
	note_ex PRESET_01
	note_ex PRESET_00, NOTELEN_06
	note_ex PRESET_01, NOTELEN_09
	note_ex PRESET_01, NOTELEN_03
	note_ex PRESET_00
	note $00
	note_ex PRESET_01, NOTELEN_09
	note_ex PRESET_01, NOTELEN_03
	note_ex PRESET_00, NOTELEN_09
	note_ex PRESET_01
	note_ex PRESET_00
	note_ex PRESET_01, NOTELEN_06
	note $00, NOTELEN_03
	note_ex PRESET_00, NOTELEN_06
	note_ex PRESET_01, NOTELEN_09
	note_ex PRESET_01, NOTELEN_03
	note_ex PRESET_00, NOTELEN_09
	note_ex PRESET_01
	note_ex PRESET_00
	note_ex PRESET_01
	note_ex PRESET_00
	note_ex PRESET_01
	note_ex PRESET_00, NOTELEN_06
	note_ex PRESET_01, NOTELEN_09
	note_ex PRESET_01, NOTELEN_03
	note_ex PRESET_00
	note $00
	note_ex PRESET_01, NOTELEN_09
	note_ex PRESET_00, NOTELEN_03
	note_ex PRESET_00, NOTELEN_06
	note_ex PRESET_00, NOTELEN_03
	note_ex PRESET_01, NOTELEN_09
	note_ex PRESET_00
	note_ex PRESET_01, NOTELEN_06
	note $00, NOTELEN_03
	note_ex PRESET_00, NOTELEN_06
	note_ex PRESET_01, NOTELEN_09
	note_ex PRESET_01, NOTELEN_03
	note_ex PRESET_00, NOTELEN_09
	note_ex PRESET_01
	note_ex PRESET_00
	note_ex PRESET_01
	note_ex PRESET_00
	note_ex PRESET_01
	note_ex PRESET_00, NOTELEN_06
	note_ex PRESET_01, NOTELEN_09
	note_ex PRESET_01, NOTELEN_03
	note_ex PRESET_00
	note $00
	note_ex PRESET_01, NOTELEN_09
	note_ex PRESET_01, NOTELEN_03
	note_ex PRESET_00, NOTELEN_09
	note_ex PRESET_01
	note_ex PRESET_00
	note_ex PRESET_01, NOTELEN_06
	note $00, NOTELEN_03
	note_ex PRESET_00, NOTELEN_06
	note_ex PRESET_01, NOTELEN_09
	note_ex PRESET_01, NOTELEN_03
	note_ex PRESET_00, NOTELEN_09
	note_ex PRESET_01
	note_ex PRESET_00
	note_ex PRESET_01
	note_ex PRESET_00
	note_ex PRESET_01
	note_ex PRESET_00, NOTELEN_06
	note_ex PRESET_01, NOTELEN_09
	note_ex PRESET_01, NOTELEN_03
	note_ex PRESET_00
	note $00
	note_ex PRESET_01, NOTELEN_09
	volume_add -6
	note_ex PRESET_00, NOTELEN_01
	volume_add 2
	note_ex PRESET_00
	volume_add 2
	note_ex PRESET_00
	volume_add 2
	note_ex PRESET_00, NOTELEN_03
	note_ex PRESET_00
	note_ex PRESET_00
	snd_loop SndData_04_Ch4
