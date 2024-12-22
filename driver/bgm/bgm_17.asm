SndHeader_17:
	db 4 ; Number of slots
.slot0:
	db SNDSLOT0 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 11 ; iSndChInfo_Vol
	db INSTR_3D ; iSndChInfo_Instrument
	db VIBRATO_35 ; iSndChInfo_Vibrato
	db -11 ; iSndChInfo_NoteIdBase
	db 107 ; iSndChInfo_Speed
	db SNDCH_PULSE1 ; iSndChInfo_ChId
	dw SndData_17_Ch1 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot1:
	db SNDSLOT1 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 13 ; iSndChInfo_Vol
	db INSTR_3D ; iSndChInfo_Instrument
	db VIBRATO_35 ; iSndChInfo_Vibrato
	db -11 ; iSndChInfo_NoteIdBase
	db 107 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_17_Ch2 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot2:
	db SNDSLOT2 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_33 ; iSndChInfo_Instrument
	db VIBRATO_35 ; iSndChInfo_Vibrato
	db 1 ; iSndChInfo_NoteIdBase
	db 107 ; iSndChInfo_Speed
	db SNDCH_WAVE ; iSndChInfo_ChId
	dw SndData_17_Ch3 ; Data pointer
	db $80 ; [PLACEHOLDER] ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot3:
	db SNDSLOT3 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db 1 ; iSndChInfo_NoteIdBase
	db 107 ; iSndChInfo_Speed
	db SNDCH_NOISE ; iSndChInfo_ChId
	dw SndData_17_Ch4 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_17_Ch1:
	snd_duty SNDDUTY_50, $00
	snd_instrument INSTR_30
	snd_note $00, NOTELEN_06
	snd_note $3A, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $3A, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $39, NOTELEN_03
	snd_note $37, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $37, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $35, NOTELEN_09
	snd_note $33, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $33, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $32, NOTELEN_06
	snd_note $33
	snd_note $35, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $35, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_06
	snd_note $37, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $37, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_03
	snd_note $2E, NOTELEN_09
	snd_note $2B, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $2B, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $2E, NOTELEN_06
	snd_note $30
	snd_note $32
	snd_note $33, NOTELEN_03
	snd_note $32, NOTELEN_06
	snd_note $2E, NOTELEN_03
	snd_note $2B
	snd_note $2E, NOTELEN_09
	snd_note $2B, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $2B, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $2E, NOTELEN_06
	snd_note $30
	snd_note $32
	snd_note $33, NOTELEN_03
	snd_note $35, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $35, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $37, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $37, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $2E, NOTELEN_CUSTOM, $1B
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $2E, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_03
	snd_note $3A, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $3A, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $39, NOTELEN_03
	snd_note $37, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $37, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $35, NOTELEN_09
	snd_note $33, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $33, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $32, NOTELEN_06
	snd_note $33
	snd_note $35, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $35, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_06
	snd_note $37, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $37, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_03
	snd_note $2E, NOTELEN_09
	snd_note $2B, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $2B, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $2E, NOTELEN_06
	snd_note $30
	snd_note $32
	snd_note $33, NOTELEN_03
	snd_note $32, NOTELEN_06
	snd_note $2E, NOTELEN_03
	snd_note $2B
	snd_note $2E, NOTELEN_09
	snd_note $2B, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $2B, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $36, NOTELEN_01
	snd_note $37, NOTELEN_CUSTOM, $05
	snd_instrument INSTR_35
	snd_note $35, NOTELEN_CUSTOM, $33
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $35, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_duty SNDDUTY_25, $00
	snd_instrument INSTR_3D
	snd_note $26, NOTELEN_09
	snd_note $22
	snd_note $1F, NOTELEN_06
	snd_note $22, NOTELEN_18
	snd_note $24, NOTELEN_09
	snd_note $26
	snd_note $27, NOTELEN_04
	snd_note $26, NOTELEN_01
	snd_note $25
	snd_note $24, NOTELEN_18
	snd_note $1B
	snd_note $1F
	snd_note $1D, NOTELEN_09
	snd_note $1F
	snd_note $21, NOTELEN_06
	snd_note $22, NOTELEN_0C
	snd_note $24
	snd_note $26, NOTELEN_09
	snd_note $27
	snd_note $29, NOTELEN_06
	snd_note $2B, NOTELEN_09
	snd_note $2D
	snd_note $2E, NOTELEN_06
	snd_note $30, NOTELEN_12
	snd_note $30, NOTELEN_02
	snd_note $2F
	snd_note $2E
	snd_note $2D, NOTELEN_18
	snd_note $2E, NOTELEN_CUSTOM, $4E
	snd_note $30, NOTELEN_06
	snd_note $32
	snd_note $33
	snd_jp SndData_17_Ch1
SndData_17_Ch2:
	snd_duty SNDDUTY_12, $01
	snd_note $18, NOTELEN_03
	snd_note $18, NOTELEN_02
	snd_note $00, NOTELEN_04
	snd_note $13, NOTELEN_09
	snd_note $18, NOTELEN_03
	snd_note $00, NOTELEN_09
	snd_note $18, NOTELEN_03
	snd_note $18
	snd_note $00
	snd_note $13
	snd_note $18, NOTELEN_06
	snd_note $1A, NOTELEN_09
	snd_note $15, NOTELEN_06
	snd_note $1A, NOTELEN_02
	snd_note $00, NOTELEN_04
	snd_note $13, NOTELEN_0C
	snd_note $1A, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $1F, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $1A, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $13, NOTELEN_06
	snd_note $18, NOTELEN_03
	snd_note $18, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_note $18
	snd_note $00, NOTELEN_02
	snd_note $13, NOTELEN_06
	snd_note $13, NOTELEN_03
	snd_note $18
	snd_note $00, NOTELEN_09
	snd_note $18, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $18, NOTELEN_06
	snd_note $13, NOTELEN_03
	snd_note $18, NOTELEN_06
	snd_note $1A, NOTELEN_03
	snd_note $00
	snd_note $1A, NOTELEN_06
	snd_note $1D, NOTELEN_03
	snd_note $1E
	snd_note $00
	snd_note $1F
	snd_note $00
	snd_note $1A
	snd_note $13, NOTELEN_06
	snd_note $1F
	snd_note $19
	snd_note $18, NOTELEN_03
	snd_note $18, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_note $16
	snd_note $00, NOTELEN_02
	snd_note $13, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_note $18
	snd_note $00, NOTELEN_09
	snd_note $18, NOTELEN_03
	snd_note $18
	snd_note $00
	snd_note $13, NOTELEN_06
	snd_note $18, NOTELEN_03
	snd_note $1A, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_note $15, NOTELEN_06
	snd_note $1A, NOTELEN_02
	snd_note $00, NOTELEN_04
	snd_note $13, NOTELEN_0C
	snd_note $1A, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $1F, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $1A, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $13, NOTELEN_06
	snd_note $18, NOTELEN_03
	snd_note $18, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_note $18
	snd_note $00, NOTELEN_02
	snd_note $13, NOTELEN_06
	snd_note $13, NOTELEN_03
	snd_note $18
	snd_note $00, NOTELEN_09
	snd_note $18, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $18, NOTELEN_06
	snd_note $13, NOTELEN_03
	snd_note $18, NOTELEN_06
	snd_note $18, NOTELEN_03
	snd_note $00
	snd_note $18, NOTELEN_06
	snd_note $1B, NOTELEN_03
	snd_note $1C
	snd_note $00
	snd_note $1D
	snd_note $00
	snd_note $18
	snd_note $11, NOTELEN_06
	snd_note $1D, NOTELEN_0C
	snd_note $1B, NOTELEN_09
	snd_note $22, NOTELEN_06
	snd_note $27
	snd_note $22, NOTELEN_03
	snd_note $29, NOTELEN_0C
	snd_note $27
	snd_note $1A, NOTELEN_09
	snd_note $21, NOTELEN_06
	snd_note $26
	snd_note $21, NOTELEN_03
	snd_note $29, NOTELEN_0C
	snd_note $26
	snd_note $18, NOTELEN_09
	snd_note $1A, NOTELEN_06
	snd_note $1B
	snd_note $1D, NOTELEN_03
	snd_note $00
	snd_note $18
	snd_note $11, NOTELEN_06
	snd_note $1D
	snd_note $18
	snd_note $16, NOTELEN_02
	snd_note $00, NOTELEN_04
	snd_note $16, NOTELEN_06
	snd_note $18, NOTELEN_02
	snd_note $00, NOTELEN_04
	snd_note $18, NOTELEN_06
	snd_note $19, NOTELEN_02
	snd_note $00, NOTELEN_04
	snd_note $19, NOTELEN_06
	snd_note $1A, NOTELEN_02
	snd_note $00, NOTELEN_04
	snd_note $1A, NOTELEN_06
	snd_note $1B, NOTELEN_09
	snd_note $22, NOTELEN_06
	snd_note $27
	snd_note $22, NOTELEN_03
	snd_note $29, NOTELEN_0C
	snd_note $27
	snd_note $1A, NOTELEN_09
	snd_note $21, NOTELEN_06
	snd_note $26
	snd_note $21, NOTELEN_03
	snd_note $29, NOTELEN_0C
	snd_note $26
	snd_note $18, NOTELEN_30
	snd_note $18, NOTELEN_03
	snd_note $00
	snd_note $18, NOTELEN_06
	snd_note $18, NOTELEN_03
	snd_note $1B
	snd_note $1C
	snd_note $1D
	snd_note $00
	snd_note $18
	snd_note $11, NOTELEN_06
	snd_note $1D
	snd_note $11
	snd_jp SndData_17_Ch2
SndData_17_Ch3:
	snd_wave WAVE_09
	snd_instrument INSTR_42
	snd_inc_vol -2
	snd_note $00, NOTELEN_0C
	snd_note $27, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $27, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $22, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $22, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $29, NOTELEN_09
	snd_note $27, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $27, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_09
	snd_note $00, NOTELEN_0C
	snd_note $29, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $29, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $24, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $24, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $2B, NOTELEN_09
	snd_note $29, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $29, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_09
	snd_note $00, NOTELEN_0C
	snd_note $27, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $27, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $22, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $22, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $29, NOTELEN_09
	snd_note $27, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $27, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_09
	snd_note $24, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $24, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_06
	snd_note $24, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $24, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_03
	snd_note $26, NOTELEN_CUSTOM, $18
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $26, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_0C
	snd_note $27, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $27, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $22, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $22, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $29, NOTELEN_09
	snd_note $27, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $27, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_09
	snd_note $00, NOTELEN_0C
	snd_note $29, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $29, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $24, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $24, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $2B, NOTELEN_09
	snd_note $29, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $29, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_09
	snd_note $00, NOTELEN_0C
	snd_note $27, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $27, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $22, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $22, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $29, NOTELEN_09
	snd_note $27, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $27, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_09
	snd_note $27, NOTELEN_18
	snd_wave WAVE_08
	snd_instrument INSTR_30
	snd_inc_vol 2
	snd_note $30, NOTELEN_09
	snd_note $32
	snd_note $33, NOTELEN_06
	snd_note $35, NOTELEN_CUSTOM, $21
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $35, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $37, NOTELEN_0C
	snd_note $35, NOTELEN_1E
	snd_note $33, NOTELEN_06
	snd_note $32
	snd_note $33
	snd_note $32, NOTELEN_09
	snd_note $2E
	snd_note $2B, NOTELEN_06
	snd_note $2E, NOTELEN_0C
	snd_note $30
	snd_note $32, NOTELEN_CUSTOM, $1E
	snd_inc_vol -5
	snd_instrument INSTR_NONE
	snd_inc_freq_offset -1
	snd_note $32, NOTELEN_CUSTOM, $06
	snd_inc_vol 5
	snd_instrument INSTR_30
	snd_inc_freq_offset 1
	snd_note $32, NOTELEN_06
	snd_note $33
	snd_note $35, NOTELEN_1E
	snd_note $37, NOTELEN_06
	snd_note $32
	snd_note $37
	snd_note $35, NOTELEN_CUSTOM, $1B
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $35, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $33, NOTELEN_06
	snd_note $32
	snd_note $33
	snd_note $35, NOTELEN_CUSTOM, $5A
	snd_inc_vol -5
	snd_instrument INSTR_NONE
	snd_inc_freq_offset -1
	snd_note $35, NOTELEN_CUSTOM, $06
	snd_inc_vol 5
	snd_instrument INSTR_NONE
	snd_inc_freq_offset 1
	snd_jp SndData_17_Ch3
SndData_17_Ch4:
	snd_duty SNDDUTY_12, $00
	snd_noteex PRESET_01, NOTELEN_03
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_01, NOTELEN_02
	snd_noteex PRESET_00, NOTELEN_CUSTOM, $07
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_01, NOTELEN_06
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_02, NOTELEN_03
	snd_noteex PRESET_01
	snd_noteex PRESET_02, NOTELEN_06
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_02, NOTELEN_03
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_01, NOTELEN_06
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_02, NOTELEN_03
	snd_noteex PRESET_01
	snd_noteex PRESET_02, NOTELEN_06
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_02, NOTELEN_03
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_01, NOTELEN_06
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_02, NOTELEN_03
	snd_noteex PRESET_01
	snd_noteex PRESET_02, NOTELEN_06
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_02, NOTELEN_03
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_01, NOTELEN_06
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_02, NOTELEN_03
	snd_noteex PRESET_01
	snd_noteex PRESET_02, NOTELEN_06
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_01, NOTELEN_03
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_01, NOTELEN_02
	snd_noteex PRESET_00, NOTELEN_CUSTOM, $07
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_00
	snd_noteex PRESET_00
	snd_jp SndData_17_Ch4
