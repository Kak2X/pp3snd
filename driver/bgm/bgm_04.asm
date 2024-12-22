SndHeader_04:
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
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_DutyOrWave
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
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_DutyOrWave
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
	nrx1 SNDDUTY_12, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_04_Ch3:
	snd_wave WAVE_08
	snd_note $38, NOTELEN_09
	snd_note $38
	snd_note $39, NOTELEN_06
	snd_note $3B, NOTELEN_09
	snd_note $39
	snd_note $39
	snd_note $38, NOTELEN_03
	snd_note $36, NOTELEN_09
	snd_note $34
	snd_note $38
	snd_note $38
	snd_note $39, NOTELEN_06
	snd_note $3B, NOTELEN_09
	snd_note $39, NOTELEN_CUSTOM, $0F
	snd_note $00, NOTELEN_18
	snd_note $38, NOTELEN_09
	snd_note $38
	snd_note $39, NOTELEN_06
	snd_note $3B, NOTELEN_09
	snd_note $39
	snd_note $39
	snd_note $38, NOTELEN_03
	snd_note $36, NOTELEN_09
	snd_note $34
	snd_note $38
	snd_note $38
	snd_note $39, NOTELEN_06
	snd_note $3B, NOTELEN_09
	snd_note $39, NOTELEN_CUSTOM, $0F
	snd_note $00, NOTELEN_0C
	snd_note $36
	snd_note $38, NOTELEN_09
	snd_note $38
	snd_note $39, NOTELEN_06
	snd_note $3B, NOTELEN_09
	snd_note $39
	snd_note $39
	snd_note $38, NOTELEN_03
	snd_note $36, NOTELEN_09
	snd_note $34
	snd_note $38
	snd_note $38
	snd_note $39, NOTELEN_06
	snd_note $3B, NOTELEN_09
	snd_note $39, NOTELEN_CUSTOM, $0F
	snd_note $00, NOTELEN_18
	snd_note $38, NOTELEN_09
	snd_note $38
	snd_note $39, NOTELEN_06
	snd_note $3B, NOTELEN_09
	snd_note $39
	snd_note $39
	snd_note $38, NOTELEN_03
	snd_note $36, NOTELEN_09
	snd_note $34
	snd_note $38
	snd_note $38
	snd_note $39, NOTELEN_06
	snd_note $3B, NOTELEN_09
	snd_note $39, NOTELEN_CUSTOM, $0F
	snd_note $00, NOTELEN_03
	snd_note $2F, NOTELEN_0C
	snd_note $32, NOTELEN_09
	snd_jp SndData_04_Ch3
SndData_04_Ch1:
	snd_duty SNDDUTY_25, $00
	snd_note $1C, NOTELEN_CUSTOM, $0F
	snd_note $23, NOTELEN_03
	snd_note $28, NOTELEN_06
	snd_note $1C, NOTELEN_09
	snd_note $1A, NOTELEN_0C
	snd_note $00, NOTELEN_06
	snd_note $21, NOTELEN_03
	snd_note $26, NOTELEN_09
	snd_note $1A
	snd_note $1C, NOTELEN_CUSTOM, $0F
	snd_note $23, NOTELEN_03
	snd_note $28, NOTELEN_06
	snd_note $1C, NOTELEN_09
	snd_note $1A, NOTELEN_03
	snd_note $00, NOTELEN_0C
	snd_note $00, NOTELEN_18
	snd_note $1C, NOTELEN_CUSTOM, $0F
	snd_note $23, NOTELEN_03
	snd_note $28, NOTELEN_06
	snd_note $1C, NOTELEN_09
	snd_note $1A, NOTELEN_0C
	snd_note $00, NOTELEN_06
	snd_note $21, NOTELEN_03
	snd_note $26, NOTELEN_09
	snd_note $1A
	snd_note $1C, NOTELEN_CUSTOM, $0F
	snd_note $23, NOTELEN_03
	snd_note $28, NOTELEN_06
	snd_note $1C, NOTELEN_09
	snd_note $1A
	snd_note $19, NOTELEN_03
	snd_note $17
	snd_note $17
	snd_note $1A
	snd_note $00, NOTELEN_06
	snd_note $1A, NOTELEN_0C
	snd_note $1C, NOTELEN_CUSTOM, $0F
	snd_note $23, NOTELEN_03
	snd_note $28, NOTELEN_06
	snd_note $1C, NOTELEN_09
	snd_note $1A, NOTELEN_0C
	snd_note $00, NOTELEN_06
	snd_note $21, NOTELEN_03
	snd_note $26, NOTELEN_09
	snd_note $1A
	snd_note $1C, NOTELEN_CUSTOM, $0F
	snd_note $23, NOTELEN_03
	snd_note $28, NOTELEN_06
	snd_note $1C, NOTELEN_09
	snd_note $1A, NOTELEN_03
	snd_note $00, NOTELEN_0C
	snd_note $00, NOTELEN_18
	snd_note $1C, NOTELEN_CUSTOM, $0F
	snd_note $23, NOTELEN_03
	snd_note $28, NOTELEN_06
	snd_note $1C, NOTELEN_09
	snd_note $1A, NOTELEN_0C
	snd_note $00, NOTELEN_06
	snd_note $21, NOTELEN_03
	snd_note $26, NOTELEN_09
	snd_note $21
	snd_note $15, NOTELEN_0C
	snd_note $00, NOTELEN_03
	snd_note $1C
	snd_note $21, NOTELEN_06
	snd_note $15, NOTELEN_09
	snd_note $13
	snd_note $1A, NOTELEN_03
	snd_note $1F
	snd_note $1F
	snd_note $13, NOTELEN_09
	snd_note $00, NOTELEN_03
	snd_note $1F, NOTELEN_09
	snd_jp SndData_04_Ch1
SndData_04_Ch2:
	snd_duty SNDDUTY_12, $01
	snd_instrument INSTR_41
	snd_note $38, NOTELEN_03
	snd_note $34
	snd_note $31
	snd_note $2F
	snd_note $00
	snd_instrument INSTR_40
	snd_note $1C
	snd_note $28, NOTELEN_06
	snd_note $00, NOTELEN_0C
	snd_note $2A, NOTELEN_CUSTOM, $0F
	snd_note $26, NOTELEN_0C
	snd_note $2A, NOTELEN_09
	snd_note $1C, NOTELEN_06
	snd_note $28, NOTELEN_09
	snd_note $1C, NOTELEN_03
	snd_note $28, NOTELEN_CUSTOM, $0F
	snd_note $2A, NOTELEN_CUSTOM, $0F
	snd_note $00, NOTELEN_18
	snd_note $1C, NOTELEN_06
	snd_note $28, NOTELEN_09
	snd_note $1C, NOTELEN_03
	snd_note $2C, NOTELEN_06
	snd_note $00, NOTELEN_0C
	snd_note $2A, NOTELEN_CUSTOM, $0F
	snd_note $26, NOTELEN_0C
	snd_note $2A, NOTELEN_09
	snd_note $1C, NOTELEN_06
	snd_note $28, NOTELEN_09
	snd_note $1C, NOTELEN_03
	snd_note $28, NOTELEN_CUSTOM, $0F
	snd_note $2A, NOTELEN_CUSTOM, $0F
	snd_note $00, NOTELEN_0C
	snd_note $2D
	snd_note $1C, NOTELEN_06
	snd_note $28, NOTELEN_09
	snd_note $1C, NOTELEN_03
	snd_note $2C, NOTELEN_06
	snd_note $00, NOTELEN_0C
	snd_note $2A, NOTELEN_CUSTOM, $0F
	snd_note $26, NOTELEN_0C
	snd_note $2A, NOTELEN_09
	snd_note $1C, NOTELEN_06
	snd_note $28, NOTELEN_09
	snd_note $1C, NOTELEN_03
	snd_note $2C, NOTELEN_CUSTOM, $0F
	snd_note $2A, NOTELEN_CUSTOM, $0F
	snd_note $00, NOTELEN_18
	snd_note $1C, NOTELEN_06
	snd_note $28, NOTELEN_09
	snd_note $1C, NOTELEN_03
	snd_note $2C, NOTELEN_06
	snd_note $00, NOTELEN_0C
	snd_note $2A, NOTELEN_CUSTOM, $0F
	snd_note $2A, NOTELEN_0C
	snd_note $26, NOTELEN_09
	snd_note $15, NOTELEN_06
	snd_note $31, NOTELEN_09
	snd_note $15, NOTELEN_03
	snd_note $2D, NOTELEN_06
	snd_note $15, NOTELEN_09
	snd_note $2B, NOTELEN_CUSTOM, $0F
	snd_note $00, NOTELEN_03
	snd_note $2A, NOTELEN_0C
	snd_note $2B, NOTELEN_09
	snd_jp SndData_04_Ch2
SndData_04_Ch4:
	snd_noteex PRESET_01, NOTELEN_09
	snd_noteex PRESET_00
	snd_noteex PRESET_01, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_01, NOTELEN_09
	snd_noteex PRESET_01, NOTELEN_03
	snd_noteex PRESET_00, NOTELEN_09
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_01
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_01, NOTELEN_09
	snd_noteex PRESET_01, NOTELEN_03
	snd_noteex PRESET_00
	snd_note $00
	snd_noteex PRESET_01, NOTELEN_09
	snd_noteex PRESET_01, NOTELEN_03
	snd_noteex PRESET_00, NOTELEN_09
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_01, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_01, NOTELEN_09
	snd_noteex PRESET_01, NOTELEN_03
	snd_noteex PRESET_00, NOTELEN_09
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_01
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_01, NOTELEN_09
	snd_noteex PRESET_01, NOTELEN_03
	snd_noteex PRESET_00
	snd_note $00
	snd_noteex PRESET_01, NOTELEN_09
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_01, NOTELEN_09
	snd_noteex PRESET_00
	snd_noteex PRESET_01, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_01, NOTELEN_09
	snd_noteex PRESET_01, NOTELEN_03
	snd_noteex PRESET_00, NOTELEN_09
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_01
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_01, NOTELEN_09
	snd_noteex PRESET_01, NOTELEN_03
	snd_noteex PRESET_00
	snd_note $00
	snd_noteex PRESET_01, NOTELEN_09
	snd_noteex PRESET_01, NOTELEN_03
	snd_noteex PRESET_00, NOTELEN_09
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_01, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_01, NOTELEN_09
	snd_noteex PRESET_01, NOTELEN_03
	snd_noteex PRESET_00, NOTELEN_09
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_01
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_01, NOTELEN_09
	snd_noteex PRESET_01, NOTELEN_03
	snd_noteex PRESET_00
	snd_note $00
	snd_noteex PRESET_01, NOTELEN_09
	snd_inc_vol -6
	snd_noteex PRESET_00, NOTELEN_01
	snd_inc_vol 2
	snd_noteex PRESET_00
	snd_inc_vol 2
	snd_noteex PRESET_00
	snd_inc_vol 2
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_00
	snd_noteex PRESET_00
	snd_jp SndData_04_Ch4
