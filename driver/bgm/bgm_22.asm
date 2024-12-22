SndHeader_22:
	db 4 ; Number of slots
.slot0:
	db SNDSLOT0 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_11 ; iSndChInfo_Instrument
	db VIBRATO_0F ; iSndChInfo_Vibrato
	db -12 ; iSndChInfo_NoteIdBase
	db 107 ; iSndChInfo_Speed
	db SNDCH_PULSE1 ; iSndChInfo_ChId
	dw SndData_22_Ch1 ; Data pointer
	nrx1 SNDDUTY_12, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot1:
	db SNDSLOT1 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_1B ; iSndChInfo_Instrument
	db VIBRATO_0F ; iSndChInfo_Vibrato
	db -12 ; iSndChInfo_NoteIdBase
	db 107 ; iSndChInfo_Speed
	db SNDCH_WAVE ; iSndChInfo_ChId
	dw SndData_22_Ch3 ; Data pointer
	db WAVE_00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot2:
	db SNDSLOT2 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 9 ; iSndChInfo_Vol
	db INSTR_18 ; iSndChInfo_Instrument
	db VIBRATO_0F ; iSndChInfo_Vibrato
	db -24 ; iSndChInfo_NoteIdBase
	db 107 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_22_Ch2 ; Data pointer
	nrx1 SNDDUTY_12, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot3:
	db SNDSLOT3 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 13 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db 0 ; iSndChInfo_NoteIdBase
	db 107 ; iSndChInfo_Speed
	db SNDCH_NOISE ; iSndChInfo_ChId
	dw SndData_22_Ch4 ; Data pointer
	nrx1 SNDDUTY_12, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_22_Ch1:
	snd_duty SNDDUTY_25, $00
	snd_note $19, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $19, NOTELEN_03
	snd_note $00, NOTELEN_12
	snd_note $14, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $1D, NOTELEN_03
	snd_note $1B, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $19, NOTELEN_09
	snd_note $1B, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $16, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $20, NOTELEN_03
	snd_note $22
	snd_note $00
	snd_note $1E
	snd_note $00
	snd_note $1D, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $19, NOTELEN_03
	snd_note $16, NOTELEN_09
	snd_note $17, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $1E, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $1E, NOTELEN_03
	snd_note $00, NOTELEN_09
	snd_note $1E, NOTELEN_03
	snd_note $20
	snd_note $16, NOTELEN_06
	snd_note $17, NOTELEN_03
	snd_note $00
	snd_note $17, NOTELEN_09
	snd_note $23, NOTELEN_03
	snd_note $00
	snd_note $1C, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $1C, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_note $1B
	snd_note $1C
	snd_note $14
	snd_note $14, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $14, NOTELEN_09
	snd_note $19, NOTELEN_03
	snd_note $00
	snd_note $19, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $19, NOTELEN_03
	snd_note $00, NOTELEN_12
	snd_note $14, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $1D, NOTELEN_03
	snd_note $1B, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $19, NOTELEN_09
	snd_note $1B, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $16, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $20, NOTELEN_03
	snd_note $22
	snd_note $00
	snd_note $1E
	snd_note $00
	snd_note $1D, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $19, NOTELEN_03
	snd_note $16, NOTELEN_09
	snd_note $17, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $1E, NOTELEN_03
	snd_note $00
	snd_note $17, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $17, NOTELEN_03
	snd_note $00, NOTELEN_09
	snd_note $1E, NOTELEN_03
	snd_note $20
	snd_note $16, NOTELEN_06
	snd_note $17, NOTELEN_03
	snd_note $00
	snd_note $17, NOTELEN_09
	snd_note $23, NOTELEN_03
	snd_note $00
	snd_note $1C, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $1C, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_note $1B
	snd_note $1C, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_note $14, NOTELEN_03
	snd_note $14, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $14, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_note $1A, NOTELEN_06
	snd_note $1A, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $1A, NOTELEN_03
	snd_note $00, NOTELEN_12
	snd_note $14, NOTELEN_03
	snd_note $16
	snd_note $1A, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $1A, NOTELEN_09
	snd_note $1A, NOTELEN_04
	snd_note $00, NOTELEN_CUSTOM, $05
	snd_note $1A, NOTELEN_03
	snd_note $00, NOTELEN_0C
	snd_note $18, NOTELEN_03
	snd_note $1A, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $20, NOTELEN_03
	snd_note $21
	snd_note $19, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $19, NOTELEN_09
	snd_note $1C, NOTELEN_04
	snd_note $00, NOTELEN_02
	snd_note $1C, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $17, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $1B, NOTELEN_03
	snd_note $00, NOTELEN_CUSTOM, $15
	snd_note $1B, NOTELEN_03
	snd_note $1C
	snd_note $1C, NOTELEN_04
	snd_note $00, NOTELEN_CUSTOM, $05
	snd_note $1C, NOTELEN_03
	snd_note $00, NOTELEN_12
	snd_note $22, NOTELEN_03
	snd_note $23
	snd_note $1B, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $1B, NOTELEN_09
	snd_note $15, NOTELEN_06
	snd_note $15, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $19, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $15, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $15, NOTELEN_01
	snd_note $00, NOTELEN_08
	snd_note $1B, NOTELEN_03
	snd_note $1D
	snd_note $15, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $15, NOTELEN_09
	snd_note $15, NOTELEN_04
	snd_note $00, NOTELEN_CUSTOM, $05
	snd_note $19, NOTELEN_03
	snd_note $00, NOTELEN_0C
	snd_note $13, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $15, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $1B, NOTELEN_03
	snd_note $1C
	snd_note $15, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $15, NOTELEN_09
	snd_note $14, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $14, NOTELEN_03
	snd_note $00
	snd_note $14, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $14, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $19, NOTELEN_03
	snd_note $1B, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $22, NOTELEN_03
	snd_note $20
	snd_note $1B, NOTELEN_09
	snd_note $14, NOTELEN_03
	snd_note $00
	snd_note $14, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $14, NOTELEN_03
	snd_note $00
	snd_note $14, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $16, NOTELEN_03
	snd_note $00
	snd_note $16, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $17, NOTELEN_03
	snd_note $12
	snd_note $12
	snd_note $14, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $14, NOTELEN_09
	snd_jp SndData_22_Ch1
SndData_22_Ch3:
	snd_wave WAVE_04
	snd_note $00, NOTELEN_0C
	snd_note $4E, NOTELEN_03
	snd_inc_vol -5
	snd_note $4E
	snd_inc_vol 5
	snd_note $4D, NOTELEN_0C
	snd_note $48, NOTELEN_06
	snd_note $49, NOTELEN_03
	snd_inc_vol -5
	snd_note $49
	snd_inc_vol 5
	snd_note $44, NOTELEN_0C
	snd_note $44, NOTELEN_03
	snd_inc_vol -5
	snd_note $44
	snd_inc_vol 5
	snd_note $46, NOTELEN_06
	snd_note $42
	snd_inc_vol -5
	snd_note $42
	snd_inc_vol 5
	snd_note $40, NOTELEN_0C
	snd_note $44, NOTELEN_0C
	snd_note $44, NOTELEN_03
	snd_inc_vol -5
	snd_note $44
	snd_inc_vol 5
	snd_note $46, NOTELEN_06
	snd_note $47, NOTELEN_18
	snd_inc_vol -5
	snd_note $47, NOTELEN_0C
	snd_inc_vol 5
	snd_note $46, NOTELEN_06
	snd_note $47, NOTELEN_03
	snd_note $00
	snd_note $46, NOTELEN_06
	snd_inc_vol -5
	snd_note $46
	snd_inc_vol 5
	snd_note $40
	snd_note $46, NOTELEN_CUSTOM, $05
	snd_note $45, NOTELEN_01
	snd_note $44, NOTELEN_03
	snd_note $00
	snd_note $00, NOTELEN_06
	snd_note $49, NOTELEN_03
	snd_inc_vol -5
	snd_note $49
	snd_inc_vol 5
	snd_note $4E
	snd_inc_vol -5
	snd_note $4E
	snd_inc_vol 5
	snd_note $4D, NOTELEN_0C
	snd_note $4B, NOTELEN_06
	snd_note $49, NOTELEN_03
	snd_inc_vol -5
	snd_note $49
	snd_inc_vol 5
	snd_note $48, NOTELEN_12
	snd_note $49, NOTELEN_03
	snd_inc_vol -5
	snd_note $49
	snd_inc_vol 5
	snd_note $48, NOTELEN_01
	snd_note $49, NOTELEN_CUSTOM, $0E
	snd_inc_vol -5
	snd_note $49, NOTELEN_03
	snd_inc_vol 5
	snd_note $47
	snd_inc_vol -5
	snd_note $47
	snd_inc_vol 5
	snd_note $44
	snd_inc_vol -5
	snd_note $44
	snd_inc_vol 5
	snd_note $47, NOTELEN_0C
	snd_note $3F, NOTELEN_06
	snd_note $47, NOTELEN_03
	snd_note $44
	snd_inc_vol -5
	snd_note $44
	snd_inc_vol 5
	snd_note $44, NOTELEN_06
	snd_inc_vol -5
	snd_note $44, NOTELEN_03
	snd_inc_vol 5
	snd_note $46
	snd_inc_vol -5
	snd_note $46
	snd_inc_vol 5
	snd_note $47
	snd_inc_vol -5
	snd_note $47
	snd_inc_vol 5
	snd_note $49, NOTELEN_02
	snd_note $4A, NOTELEN_06
	snd_note $49, NOTELEN_02
	snd_note $4A
	snd_note $4A, NOTELEN_03
	snd_note $00
	snd_note $49, NOTELEN_18
	snd_inc_vol -5
	snd_note $49, NOTELEN_06
	snd_wave WAVE_06
	snd_note $00, NOTELEN_0C
	snd_inc_vol 5
	snd_note $4C, NOTELEN_06
	snd_note $4E, NOTELEN_03
	snd_inc_vol -5
	snd_note $4E
	snd_inc_vol 5
	snd_note $4C, NOTELEN_06
	snd_note $49, NOTELEN_CUSTOM, $05
	snd_note $4A, NOTELEN_02
	snd_note $49, NOTELEN_CUSTOM, $05
	snd_note $45, NOTELEN_0C
	snd_note $42, NOTELEN_03
	snd_inc_vol -5
	snd_note $42
	snd_note $00, NOTELEN_12
	snd_inc_vol 5
	snd_note $42, NOTELEN_06
	snd_note $43, NOTELEN_03
	snd_inc_vol -5
	snd_note $43
	snd_inc_vol 5
	snd_note $44, NOTELEN_09
	snd_inc_vol -5
	snd_note $44, NOTELEN_03
	snd_inc_vol 5
	snd_note $44
	snd_inc_vol -5
	snd_note $44, NOTELEN_06
	snd_note $00, NOTELEN_09
	snd_wave WAVE_05
	snd_inc_vol 2
	snd_note $47, NOTELEN_06
	snd_note $44, NOTELEN_03
	snd_inc_vol -5
	snd_note $44
	snd_inc_vol 5
	snd_note $40, NOTELEN_06
	snd_note $3F
	snd_inc_vol -5
	snd_note $3F
	snd_inc_vol 5
	snd_note $3B, NOTELEN_12
	snd_inc_vol -5
	snd_note $3B, NOTELEN_06
	snd_inc_vol 3
	snd_wave WAVE_01
	snd_inc_vol -1
	snd_note $3B, NOTELEN_12
	snd_note $3D, NOTELEN_18
	snd_note $3D, NOTELEN_06
	snd_wave WAVE_06
	snd_inc_vol 6
	snd_note $40
	snd_note $44
	snd_note $45, NOTELEN_03
	snd_inc_vol -5
	snd_note $45
	snd_inc_vol 5
	snd_note $3D, NOTELEN_06
	snd_note $40, NOTELEN_03
	snd_inc_vol -5
	snd_note $40, NOTELEN_06
	snd_note $00, NOTELEN_CUSTOM, $0F
	snd_inc_vol 5
	snd_note $3D, NOTELEN_06
	snd_note $44, NOTELEN_03
	snd_inc_vol -5
	snd_note $44
	snd_inc_vol 5
	snd_note $43, NOTELEN_CUSTOM, $36
	snd_inc_vol -5
	snd_note $43, NOTELEN_06
	snd_wave WAVE_01
	snd_inc_vol 3
	snd_note $44, NOTELEN_03
	snd_note $43
	snd_note $3F
	snd_note $3C, NOTELEN_06
	snd_note $38
	snd_note $37
	snd_note $33
	snd_note $30, NOTELEN_09
	snd_inc_vol 2
	snd_jp SndData_22_Ch3
SndData_22_Ch2:
	snd_inc_freq_offset -1
.loop0:
	snd_duty SNDDUTY_25, $00
	snd_note $00, NOTELEN_0C
	snd_note $31, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $31, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $30, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $31, NOTELEN_01
	snd_note $00, NOTELEN_CUSTOM, $05
	snd_note $31, NOTELEN_06
	snd_note $31, NOTELEN_01
	snd_note $00, NOTELEN_08
	snd_note $31, NOTELEN_06
	snd_note $33, NOTELEN_09
	snd_note $35, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $36, NOTELEN_09
	snd_note $36, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $34, NOTELEN_0C
	snd_note $00
	snd_note $34, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $34, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $33, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $34, NOTELEN_01
	snd_note $00, NOTELEN_CUSTOM, $05
	snd_note $36, NOTELEN_03
	snd_note $00
	snd_note $36
	snd_note $00, NOTELEN_06
	snd_note $34, NOTELEN_03
	snd_note $00
	snd_note $39, NOTELEN_09
	snd_note $39, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $38, NOTELEN_09
	snd_note $38, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $38, NOTELEN_0C
	snd_note $31, NOTELEN_06
	snd_inc_vol -5
	snd_note $31
	snd_inc_vol 5
	snd_note $31, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $31, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $30, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $31, NOTELEN_01
	snd_note $00, NOTELEN_CUSTOM, $05
	snd_note $31, NOTELEN_06
	snd_note $31, NOTELEN_01
	snd_note $00, NOTELEN_08
	snd_note $31, NOTELEN_06
	snd_note $33, NOTELEN_09
	snd_note $35, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $36, NOTELEN_09
	snd_note $36, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $34, NOTELEN_0C
	snd_note $34, NOTELEN_06
	snd_inc_vol -5
	snd_note $34
	snd_inc_vol 5
	snd_note $34, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $34, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $33, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $34, NOTELEN_01
	snd_note $00, NOTELEN_CUSTOM, $05
	snd_note $36, NOTELEN_03
	snd_note $00
	snd_note $36
	snd_note $00, NOTELEN_06
	snd_note $34, NOTELEN_03
	snd_note $00
	snd_note $39, NOTELEN_09
	snd_note $39, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $38, NOTELEN_CUSTOM, $14
	snd_inc_vol -5
	snd_note $38, NOTELEN_06
	snd_inc_vol 3
	snd_note $3D, NOTELEN_03
	snd_note $39, NOTELEN_01
	snd_inc_vol 2
	snd_note $36, NOTELEN_CUSTOM, $36
	snd_inc_vol -5
	snd_note $36, NOTELEN_06
	snd_inc_vol 5
	snd_note $36
	snd_note $36, NOTELEN_03
	snd_inc_vol -5
	snd_note $36, NOTELEN_09
	snd_inc_vol 5
	snd_note $36, NOTELEN_06
	snd_inc_vol -5
	snd_note $36
	snd_inc_vol 5
	snd_note $34, NOTELEN_0C
	snd_note $34, NOTELEN_03
	snd_inc_vol -5
	snd_note $34, NOTELEN_09
	snd_note $00, NOTELEN_06
	snd_inc_vol 5
	snd_note $47
	snd_note $44, NOTELEN_03
	snd_inc_vol -5
	snd_note $44
	snd_inc_vol 5
	snd_note $40, NOTELEN_06
	snd_note $3F
	snd_inc_vol -5
	snd_note $3F
	snd_inc_vol 5
	snd_note $3B, NOTELEN_12
	snd_inc_vol -5
	snd_note $3B, NOTELEN_06
	snd_inc_vol 5
	snd_note $34, NOTELEN_12
	snd_note $39, NOTELEN_18
	snd_inc_vol -5
	snd_note $39, NOTELEN_06
	snd_inc_vol 5
	snd_note $39, NOTELEN_09
	snd_inc_vol -5
	snd_note $39
	snd_inc_vol 5
	snd_note $39, NOTELEN_18
	snd_inc_vol -5
	snd_note $39, NOTELEN_06
	snd_inc_vol 5
	snd_note $3B
	snd_note $3D, NOTELEN_03
	snd_inc_vol -5
	snd_note $3D
	snd_inc_vol 5
	snd_note $3F, NOTELEN_CUSTOM, $36
	snd_inc_vol -5
	snd_note $3F, NOTELEN_06
	snd_note $00
	snd_inc_vol 5
	snd_note $44, NOTELEN_03
	snd_note $43
	snd_note $3F
	snd_note $3C, NOTELEN_06
	snd_note $38
	snd_note $37
	snd_note $33
	snd_note $30, NOTELEN_03
	snd_jp .loop0
SndData_22_Ch4:
	snd_noteex PRESET_01, NOTELEN_06
	snd_inc_vol -3
	snd_noteex PRESET_02, NOTELEN_03
	snd_inc_vol 1
	snd_noteex PRESET_02
	snd_inc_vol 2
	snd_noteex PRESET_00
	snd_inc_vol -2
	snd_noteex PRESET_02
	snd_inc_vol 1
	snd_noteex PRESET_02
	snd_inc_vol -1
	snd_noteex PRESET_02
	snd_inc_vol 2
	snd_noteex PRESET_01
	snd_inc_vol -3
	snd_noteex PRESET_02
	snd_inc_vol 3
	snd_noteex PRESET_01
	snd_inc_vol -3
	snd_noteex PRESET_02
	snd_inc_vol 3
	snd_noteex PRESET_00, NOTELEN_03
	snd_inc_vol -3
	snd_noteex PRESET_02, NOTELEN_03
	snd_inc_vol 1
	snd_noteex PRESET_02
	snd_inc_vol -1
	snd_noteex PRESET_02, NOTELEN_01
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_inc_vol 3
	snd_noteex PRESET_01, NOTELEN_03
	snd_inc_vol -2
	snd_noteex PRESET_02
	snd_inc_vol 2
	snd_noteex PRESET_01
	snd_inc_vol -2
	snd_noteex PRESET_02
	snd_inc_vol 2
	snd_noteex PRESET_00
	snd_inc_vol -2
	snd_noteex PRESET_02
	snd_inc_vol 1
	snd_noteex PRESET_02
	snd_inc_vol 1
	snd_noteex PRESET_03
	snd_noteex PRESET_02, NOTELEN_01
	snd_inc_vol -1
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_inc_vol -1
	snd_noteex PRESET_02, NOTELEN_03
	snd_inc_vol 2
	snd_noteex PRESET_01
	snd_inc_vol -3
	snd_noteex PRESET_02
	snd_inc_vol 3
	snd_noteex PRESET_00, NOTELEN_03
	snd_inc_vol -3
	snd_noteex PRESET_02, NOTELEN_03
	snd_inc_vol 1
	snd_noteex PRESET_02
	snd_inc_vol -1
	snd_noteex PRESET_02, NOTELEN_01
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_inc_vol 3
	snd_noteex PRESET_01, NOTELEN_03
	snd_inc_vol -2
	snd_noteex PRESET_02
	snd_inc_vol -1
	snd_noteex PRESET_02
	snd_inc_vol 1
	snd_noteex PRESET_02
	snd_inc_vol 2
	snd_noteex PRESET_00
	snd_inc_vol -2
	snd_noteex PRESET_02
	snd_inc_vol 2
	snd_noteex PRESET_04
	snd_noteex PRESET_04
	snd_noteex PRESET_01
	snd_noteex PRESET_04
	snd_noteex PRESET_01
	snd_inc_vol -3
	snd_noteex PRESET_02
	snd_inc_vol 3
	snd_noteex PRESET_00, NOTELEN_03
	snd_inc_vol -3
	snd_noteex PRESET_02, NOTELEN_03
	snd_inc_vol 1
	snd_noteex PRESET_02
	snd_inc_vol -1
	snd_noteex PRESET_02, NOTELEN_01
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_inc_vol 3
	snd_noteex PRESET_01, NOTELEN_03
	snd_inc_vol -2
	snd_noteex PRESET_02
	snd_inc_vol 2
	snd_noteex PRESET_01
	snd_inc_vol -2
	snd_noteex PRESET_02
	snd_inc_vol 2
	snd_noteex PRESET_00
	snd_inc_vol -2
	snd_noteex PRESET_02
	snd_inc_vol 2
	snd_noteex PRESET_04
	snd_noteex PRESET_04, NOTELEN_01
	snd_inc_vol -1
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_inc_vol -1
	snd_noteex PRESET_02, NOTELEN_03
	snd_inc_vol 2
	snd_noteex PRESET_04
	snd_noteex PRESET_01
	snd_inc_vol -3
	snd_noteex PRESET_02
	snd_inc_vol 3
	snd_noteex PRESET_02, NOTELEN_01
	snd_inc_vol -3
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_inc_vol 3
	snd_noteex PRESET_01, NOTELEN_03
	snd_noteex PRESET_00
	snd_inc_vol -1
	snd_noteex PRESET_02, NOTELEN_01
	snd_inc_vol -2
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_inc_vol 3
	snd_noteex PRESET_01, NOTELEN_06
	snd_inc_vol -3
	snd_noteex PRESET_02, NOTELEN_03
	snd_inc_vol 1
	snd_noteex PRESET_02
	snd_inc_vol 2
	snd_noteex PRESET_00
	snd_inc_vol -2
	snd_noteex PRESET_02
	snd_inc_vol 2
	snd_noteex PRESET_04
	snd_noteex PRESET_04
	snd_noteex PRESET_01
	snd_noteex PRESET_04
	snd_noteex PRESET_01
	snd_inc_vol -3
	snd_noteex PRESET_02
	snd_inc_vol 3
	snd_noteex PRESET_00, NOTELEN_03
	snd_inc_vol -3
	snd_noteex PRESET_02, NOTELEN_03
	snd_inc_vol 1
	snd_noteex PRESET_02
	snd_inc_vol -1
	snd_noteex PRESET_02, NOTELEN_01
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_inc_vol 3
	snd_noteex PRESET_01, NOTELEN_03
	snd_inc_vol -2
	snd_noteex PRESET_02
	snd_inc_vol 2
	snd_noteex PRESET_01
	snd_inc_vol -2
	snd_noteex PRESET_02
	snd_inc_vol 2
	snd_noteex PRESET_00
	snd_inc_vol -2
	snd_noteex PRESET_02
	snd_inc_vol 2
	snd_noteex PRESET_04
	snd_noteex PRESET_04
	snd_noteex PRESET_02, NOTELEN_01
	snd_inc_vol -1
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_inc_vol 1
	snd_noteex PRESET_04, NOTELEN_03
	snd_noteex PRESET_01
	snd_inc_vol -3
	snd_noteex PRESET_02
	snd_inc_vol 3
	snd_noteex PRESET_00, NOTELEN_03
	snd_inc_vol -3
	snd_noteex PRESET_02, NOTELEN_03
	snd_inc_vol 1
	snd_noteex PRESET_02
	snd_inc_vol -1
	snd_noteex PRESET_02, NOTELEN_01
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_inc_vol 3
	snd_noteex PRESET_01, NOTELEN_03
	snd_inc_vol -2
	snd_noteex PRESET_02
	snd_inc_vol -1
	snd_noteex PRESET_02
	snd_inc_vol 1
	snd_noteex PRESET_02
	snd_inc_vol 2
	snd_noteex PRESET_00
	snd_inc_vol -2
	snd_noteex PRESET_02
	snd_inc_vol 1
	snd_noteex PRESET_02
	snd_inc_vol -1
	snd_noteex PRESET_02
	snd_inc_vol 2
	snd_noteex PRESET_01
	snd_noteex PRESET_04
	snd_noteex PRESET_01
	snd_inc_vol -3
	snd_noteex PRESET_02
	snd_inc_vol 3
	snd_noteex PRESET_00, NOTELEN_03
	snd_inc_vol -3
	snd_noteex PRESET_02, NOTELEN_03
	snd_inc_vol 1
	snd_noteex PRESET_02
	snd_inc_vol -1
	snd_noteex PRESET_02, NOTELEN_01
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_inc_vol 3
	snd_noteex PRESET_01, NOTELEN_03
	snd_inc_vol -2
	snd_noteex PRESET_02
	snd_inc_vol 2
	snd_noteex PRESET_01
	snd_inc_vol -2
	snd_noteex PRESET_02
	snd_inc_vol 2
	snd_noteex PRESET_00
	snd_inc_vol -2
	snd_noteex PRESET_02
	snd_inc_vol 2
	snd_noteex PRESET_04
	snd_note $00, NOTELEN_01
	snd_inc_vol -1
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_inc_vol -1
	snd_noteex PRESET_02, NOTELEN_03
	snd_inc_vol 2
	snd_noteex PRESET_04
	snd_noteex PRESET_01
	snd_inc_vol -3
	snd_noteex PRESET_02
	snd_inc_vol 3
	snd_noteex PRESET_04, NOTELEN_01
	snd_noteex PRESET_04
	snd_noteex PRESET_04
	snd_noteex PRESET_01, NOTELEN_03
	snd_noteex PRESET_00
	snd_inc_vol -1
	snd_noteex PRESET_02, NOTELEN_01
	snd_inc_vol -2
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_inc_vol 3
	snd_noteex PRESET_01, NOTELEN_06
	snd_inc_vol -3
	snd_noteex PRESET_02, NOTELEN_03
	snd_inc_vol 1
	snd_noteex PRESET_02
	snd_inc_vol 2
	snd_noteex PRESET_00
	snd_inc_vol -2
	snd_noteex PRESET_02
	snd_inc_vol 2
	snd_noteex PRESET_04
	snd_noteex PRESET_04
	snd_noteex PRESET_01
	snd_noteex PRESET_04
	snd_noteex PRESET_01
	snd_inc_vol -3
	snd_noteex PRESET_02
	snd_inc_vol 3
	snd_noteex PRESET_00, NOTELEN_03
	snd_inc_vol -3
	snd_noteex PRESET_02, NOTELEN_03
	snd_inc_vol 1
	snd_noteex PRESET_02
	snd_inc_vol -1
	snd_noteex PRESET_02, NOTELEN_01
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_inc_vol 3
	snd_noteex PRESET_01, NOTELEN_03
	snd_inc_vol -2
	snd_noteex PRESET_02
	snd_inc_vol 2
	snd_noteex PRESET_01
	snd_inc_vol -2
	snd_noteex PRESET_02
	snd_inc_vol 2
	snd_noteex PRESET_00
	snd_inc_vol -2
	snd_noteex PRESET_02
	snd_inc_vol 2
	snd_noteex PRESET_04
	snd_noteex PRESET_04
	snd_noteex PRESET_02, NOTELEN_01
	snd_inc_vol -1
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_inc_vol 1
	snd_noteex PRESET_04, NOTELEN_03
	snd_noteex PRESET_01
	snd_inc_vol -3
	snd_noteex PRESET_02
	snd_inc_vol 3
	snd_noteex PRESET_00, NOTELEN_03
	snd_inc_vol -3
	snd_noteex PRESET_02, NOTELEN_03
	snd_inc_vol 1
	snd_noteex PRESET_02
	snd_inc_vol -1
	snd_noteex PRESET_02, NOTELEN_01
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_inc_vol 3
	snd_noteex PRESET_01, NOTELEN_03
	snd_inc_vol -2
	snd_noteex PRESET_02
	snd_inc_vol 2
	snd_noteex PRESET_04
	snd_inc_vol -2
	snd_noteex PRESET_02
	snd_inc_vol 2
	snd_noteex PRESET_00
	snd_inc_vol -2
	snd_noteex PRESET_02
	snd_inc_vol 2
	snd_noteex PRESET_04
	snd_noteex PRESET_04
	snd_noteex PRESET_01
	snd_noteex PRESET_04
	snd_noteex PRESET_01
	snd_inc_vol -3
	snd_noteex PRESET_02
	snd_inc_vol 3
	snd_noteex PRESET_00, NOTELEN_03
	snd_inc_vol -3
	snd_noteex PRESET_02, NOTELEN_03
	snd_inc_vol 1
	snd_noteex PRESET_02
	snd_inc_vol -1
	snd_noteex PRESET_02, NOTELEN_01
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_inc_vol 3
	snd_noteex PRESET_01, NOTELEN_03
	snd_inc_vol -2
	snd_noteex PRESET_02
	snd_inc_vol 2
	snd_noteex PRESET_01
	snd_inc_vol -2
	snd_noteex PRESET_02
	snd_inc_vol 2
	snd_noteex PRESET_00
	snd_inc_vol -2
	snd_noteex PRESET_02
	snd_inc_vol 2
	snd_noteex PRESET_04
	snd_noteex PRESET_04, NOTELEN_01
	snd_inc_vol -1
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_inc_vol -1
	snd_noteex PRESET_02, NOTELEN_03
	snd_inc_vol 2
	snd_noteex PRESET_04
	snd_noteex PRESET_01
	snd_inc_vol -3
	snd_noteex PRESET_02
	snd_inc_vol 3
	snd_noteex PRESET_02, NOTELEN_01
	snd_inc_vol -3
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_inc_vol 3
	snd_noteex PRESET_01, NOTELEN_03
	snd_noteex PRESET_00
	snd_inc_vol -1
	snd_noteex PRESET_02, NOTELEN_01
	snd_inc_vol -2
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_inc_vol 3
	snd_noteex PRESET_01, NOTELEN_06
	snd_noteex PRESET_04, NOTELEN_03
	snd_inc_vol -2
	snd_noteex PRESET_02
	snd_inc_vol 2
	snd_noteex PRESET_00
	snd_inc_vol -2
	snd_noteex PRESET_02
	snd_inc_vol 2
	snd_noteex PRESET_04
	snd_noteex PRESET_04
	snd_noteex PRESET_01
	snd_noteex PRESET_04
	snd_noteex PRESET_01
	snd_inc_vol -3
	snd_noteex PRESET_02
	snd_inc_vol 3
	snd_noteex PRESET_00, NOTELEN_03
	snd_inc_vol -3
	snd_noteex PRESET_02, NOTELEN_03
	snd_inc_vol 1
	snd_noteex PRESET_02
	snd_inc_vol -1
	snd_noteex PRESET_02, NOTELEN_01
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_inc_vol 3
	snd_noteex PRESET_01, NOTELEN_03
	snd_noteex PRESET_04
	snd_noteex PRESET_01
	snd_inc_vol -2
	snd_noteex PRESET_02
	snd_inc_vol 2
	snd_noteex PRESET_00
	snd_inc_vol -2
	snd_noteex PRESET_02
	snd_inc_vol 2
	snd_noteex PRESET_04
	snd_noteex PRESET_04
	snd_noteex PRESET_02, NOTELEN_01
	snd_inc_vol -1
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_inc_vol 1
	snd_noteex PRESET_04, NOTELEN_03
	snd_noteex PRESET_01
	snd_inc_vol -3
	snd_noteex PRESET_02
	snd_inc_vol 3
	snd_noteex PRESET_00, NOTELEN_03
	snd_inc_vol -3
	snd_noteex PRESET_02, NOTELEN_03
	snd_inc_vol 1
	snd_noteex PRESET_02
	snd_inc_vol -1
	snd_noteex PRESET_02, NOTELEN_01
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_inc_vol 3
	snd_noteex PRESET_01, NOTELEN_03
	snd_inc_vol -2
	snd_noteex PRESET_02
	snd_inc_vol 2
	snd_noteex PRESET_04
	snd_inc_vol -2
	snd_noteex PRESET_02
	snd_inc_vol 2
	snd_noteex PRESET_00
	snd_inc_vol -2
	snd_noteex PRESET_02
	snd_inc_vol 2
	snd_noteex PRESET_04
	snd_noteex PRESET_04
	snd_noteex PRESET_01
	snd_noteex PRESET_04
	snd_noteex PRESET_01
	snd_inc_vol -3
	snd_noteex PRESET_02
	snd_inc_vol 3
	snd_noteex PRESET_00, NOTELEN_03
	snd_inc_vol -3
	snd_noteex PRESET_02, NOTELEN_03
	snd_inc_vol 1
	snd_noteex PRESET_02
	snd_inc_vol -1
	snd_noteex PRESET_02, NOTELEN_01
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_inc_vol 3
	snd_noteex PRESET_01, NOTELEN_03
	snd_noteex PRESET_04
	snd_noteex PRESET_01
	snd_noteex PRESET_04
	snd_noteex PRESET_00
	snd_inc_vol -2
	snd_noteex PRESET_02
	snd_inc_vol 2
	snd_noteex PRESET_00
	snd_noteex PRESET_04, NOTELEN_01
	snd_inc_vol -1
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_inc_vol -1
	snd_noteex PRESET_02, NOTELEN_03
	snd_inc_vol 2
	snd_noteex PRESET_04
	snd_noteex PRESET_01
	snd_noteex PRESET_04
	snd_noteex PRESET_04
	snd_noteex PRESET_04
	snd_noteex PRESET_00
	snd_noteex PRESET_04, NOTELEN_01
	snd_noteex PRESET_04
	snd_noteex PRESET_04
	snd_jp SndData_22_Ch4