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
SndHeader_19:
	db 4 ; Number of slots
.slot0:
	db SNDSLOT0 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_35 ; iSndChInfo_Vibrato
	db 0 ; iSndChInfo_NoteIdBase
	db 107 ; iSndChInfo_Speed
	db SNDCH_WAVE ; iSndChInfo_ChId
	dw SndData_19_Ch3 ; Data pointer
	db $80 ; [PLACEHOLDER] ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot1:
	db SNDSLOT1 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 13 ; iSndChInfo_Vol
	db INSTR_2E ; iSndChInfo_Instrument
	db VIBRATO_33 ; iSndChInfo_Vibrato
	db -12 ; iSndChInfo_NoteIdBase
	db 107 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_19_Ch2 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot2:
	db SNDSLOT2 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 10 ; iSndChInfo_Vol
	db INSTR_33 ; iSndChInfo_Instrument
	db VIBRATO_33 ; iSndChInfo_Vibrato
	db -12 ; iSndChInfo_NoteIdBase
	db 107 ; iSndChInfo_Speed
	db SNDCH_PULSE1 ; iSndChInfo_ChId
	dw SndData_19_Ch1 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot3:
	db SNDSLOT3 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db 0 ; iSndChInfo_NoteIdBase
	db 107 ; iSndChInfo_Speed
	db SNDCH_NOISE ; iSndChInfo_ChId
	dw SndData_19_Ch4 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_19_Ch3:
	snd_wave WAVE_06
	snd_instrument INSTR_30
	snd_inc_vol -1
	snd_note $36, NOTELEN_12
	snd_note $38, NOTELEN_CUSTOM, $1E
	snd_inc_vol -5
	snd_instrument INSTR_NONE
	snd_inc_freq_offset -1
	snd_note $38, NOTELEN_CUSTOM, $06
	snd_inc_vol 5
	snd_instrument INSTR_30
	snd_inc_freq_offset 1
	snd_note $39, NOTELEN_06
	snd_note $38
	snd_note $34, NOTELEN_0C
	snd_note $36
	snd_note $34, NOTELEN_06
	snd_note $36, NOTELEN_12
	snd_note $38, NOTELEN_CUSTOM, $1B
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $38, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $2F, NOTELEN_12
	snd_note $2D, NOTELEN_CUSTOM, $1E
	snd_inc_vol -5
	snd_instrument INSTR_NONE
	snd_inc_freq_offset -1
	snd_note $2D, NOTELEN_CUSTOM, $06
	snd_inc_vol 5
	snd_instrument INSTR_NONE
	snd_inc_freq_offset 1
	snd_wave WAVE_09
	snd_instrument INSTR_NONE
	snd_inc_vol 1
	snd_note $38, NOTELEN_03
	snd_note $39
	snd_note $38
	snd_note $34
	snd_note $31, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $31, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $38, NOTELEN_03
	snd_note $39
	snd_note $38
	snd_note $34
	snd_note $31, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_instrument INSTR_NONE
	snd_inc_freq_offset -1
	snd_note $31, NOTELEN_CUSTOM, $06
	snd_inc_vol 5
	snd_instrument INSTR_NONE
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_09
	snd_note $38, NOTELEN_03
	snd_note $39
	snd_note $38
	snd_note $34
	snd_note $31, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $31, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $38, NOTELEN_03
	snd_note $39
	snd_note $38
	snd_note $34
	snd_note $31, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_instrument INSTR_NONE
	snd_inc_freq_offset -1
	snd_note $31, NOTELEN_CUSTOM, $06
	snd_inc_vol 5
	snd_instrument INSTR_NONE
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_09
	snd_note $38, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $38, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $36, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $36, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $38, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $38, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $34, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $34, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $38, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $38, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $33, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $33, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $38, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $38, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $31, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $31, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $38, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $38, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $36, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $36, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $38, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $38, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $34, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $34, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $38, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $38, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $33, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $33, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $38, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $38, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_jp SndData_19_Ch3
SndData_19_Ch2:
	snd_duty SNDDUTY_12, $00
	snd_note $1C, NOTELEN_0C
	snd_note $19, NOTELEN_09
	snd_note $17, NOTELEN_06
	snd_note $17, NOTELEN_03
	snd_note $19, NOTELEN_06
	snd_note $12
	snd_note $14
	snd_note $15
	snd_note $15
	snd_note $19
	snd_note $15, NOTELEN_03
	snd_note $1C, NOTELEN_06
	snd_note $19, NOTELEN_03
	snd_note $1E, NOTELEN_06
	snd_note $1C
	snd_note $19
	snd_note $1C, NOTELEN_0C
	snd_note $19, NOTELEN_09
	snd_note $17, NOTELEN_06
	snd_note $17, NOTELEN_03
	snd_note $19, NOTELEN_06
	snd_note $12
	snd_note $14
	snd_note $15
	snd_note $15
	snd_note $19
	snd_note $15, NOTELEN_03
	snd_note $1C, NOTELEN_06
	snd_note $19, NOTELEN_03
	snd_note $1E, NOTELEN_06
	snd_note $21
	snd_note $20
	snd_note $1E, NOTELEN_0C
	snd_note $1E, NOTELEN_09
	snd_note $19, NOTELEN_06
	snd_note $19, NOTELEN_03
	snd_note $1C, NOTELEN_06
	snd_note $14
	snd_note $15
	snd_note $17
	snd_note $17
	snd_note $19
	snd_note $1C, NOTELEN_03
	snd_note $1E, NOTELEN_06
	snd_note $1E, NOTELEN_03
	snd_note $1C, NOTELEN_06
	snd_note $20
	snd_note $1E
	snd_note $1C, NOTELEN_0C
	snd_note $19, NOTELEN_09
	snd_note $17, NOTELEN_06
	snd_note $17, NOTELEN_03
	snd_note $19, NOTELEN_06
	snd_note $12
	snd_note $14
	snd_note $15
	snd_note $15
	snd_note $19
	snd_note $15, NOTELEN_03
	snd_note $1C, NOTELEN_06
	snd_note $15, NOTELEN_03
	snd_note $1E, NOTELEN_06
	snd_note $1C
	snd_note $19
	snd_jp SndData_19_Ch2
SndData_19_Ch1:
	snd_instrument INSTR_39
	snd_var iSndChInfo_LoopTimer0, $18
	.loop0:
		snd_note $40, NOTELEN_03
		snd_note $40
		snd_note $34
		snd_note $34
		snd_djnz iSndChInfo_LoopTimer0, .loop0
	snd_note $40
	snd_note $40
	snd_instrument INSTR_30
	snd_duty SNDDUTY_25, $00
	snd_note $2F
	snd_instrument INSTR_39
	snd_duty SNDDUTY_50, $00
	snd_note $34
	snd_instrument INSTR_30
	snd_duty SNDDUTY_25, $00
	snd_note $2F
	snd_instrument INSTR_39
	snd_duty SNDDUTY_50, $00
	snd_note $40
	snd_instrument INSTR_30
	snd_duty SNDDUTY_25, $00
	snd_note $2F
	snd_instrument INSTR_39
	snd_duty SNDDUTY_50, $00
	snd_note $34
	snd_instrument INSTR_30
	snd_duty SNDDUTY_25, $00
	snd_note $2F
	snd_instrument INSTR_39
	snd_duty SNDDUTY_50, $00
	snd_note $40
	snd_instrument INSTR_30
	snd_duty SNDDUTY_25, $00
	snd_note $2F
	snd_instrument INSTR_39
	snd_duty SNDDUTY_50, $00
	snd_note $34
	snd_instrument INSTR_30
	snd_duty SNDDUTY_25, $00
	snd_note $2F
	snd_instrument INSTR_39
	snd_duty SNDDUTY_50, $00
	snd_note $40
	snd_instrument INSTR_30
	snd_duty SNDDUTY_25, $00
	snd_note $2F
	snd_instrument INSTR_39
	snd_duty SNDDUTY_50, $00
	snd_note $34
	snd_instrument INSTR_30
	snd_duty SNDDUTY_25, $00
	snd_note $2C
	snd_instrument INSTR_39
	snd_duty SNDDUTY_50, $00
	snd_note $40
	snd_instrument INSTR_30
	snd_duty SNDDUTY_25, $00
	snd_note $31
	snd_instrument INSTR_39
	snd_duty SNDDUTY_50, $00
	snd_note $34
	snd_instrument INSTR_30
	snd_duty SNDDUTY_25, $00
	snd_note $31
	snd_instrument INSTR_39
	snd_duty SNDDUTY_50, $00
	snd_note $40
	snd_instrument INSTR_30
	snd_duty SNDDUTY_25, $00
	snd_note $31
	snd_instrument INSTR_39
	snd_duty SNDDUTY_50, $00
	snd_note $34
	snd_instrument INSTR_30
	snd_duty SNDDUTY_25, $00
	snd_note $31
	snd_instrument INSTR_39
	snd_duty SNDDUTY_50, $00
	snd_note $40
	snd_instrument INSTR_30
	snd_duty SNDDUTY_25, $00
	snd_note $31
	snd_instrument INSTR_39
	snd_duty SNDDUTY_50, $00
	snd_note $34
	snd_instrument INSTR_30
	snd_duty SNDDUTY_25, $00
	snd_note $31
	snd_instrument INSTR_39
	snd_duty SNDDUTY_50, $00
	snd_note $40
	snd_instrument INSTR_30
	snd_duty SNDDUTY_25, $00
	snd_note $31
	snd_instrument INSTR_39
	snd_duty SNDDUTY_50, $00
	snd_note $34
	snd_jp SndData_19_Ch1
SndData_19_Ch4:
	snd_duty SNDDUTY_12, $00
	snd_noteex PRESET_01, NOTELEN_03
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_02
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
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_jp SndData_19_Ch4
SndHeader_10:
	db 4 ; Number of slots
.slot0:
	db SNDSLOT0 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_08 ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -12 ; iSndChInfo_NoteIdBase
	db 111 ; iSndChInfo_Speed
	db SNDCH_WAVE ; iSndChInfo_ChId
	dw SndData_10_Ch3 ; Data pointer
	db $40 ; [PLACEHOLDER] ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot1:
	db SNDSLOT1 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_0B ; iSndChInfo_Vibrato
	db -24 ; iSndChInfo_NoteIdBase
	db 111 ; iSndChInfo_Speed
	db SNDCH_PULSE1 ; iSndChInfo_ChId
	dw SndData_10_Ch1 ; Data pointer
	nrx1 SNDDUTY_12, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot2:
	db SNDSLOT2 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 12 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_0B ; iSndChInfo_Vibrato
	db -24 ; iSndChInfo_NoteIdBase
	db 111 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_10_Ch2 ; Data pointer
	nrx1 SNDDUTY_12, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot3:
	db SNDSLOT3 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db 0 ; iSndChInfo_NoteIdBase
	db 111 ; iSndChInfo_Speed
	db SNDCH_NOISE ; iSndChInfo_ChId
	dw SndData_10_Ch4 ; Data pointer
	nrx1 SNDDUTY_12, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_10_Ch3:
	snd_wave WAVE_0D
	snd_note $1D, NOTELEN_09
	snd_note $1D, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $18, NOTELEN_03
	snd_note $1A
	snd_note $00
	snd_note $1D
	snd_note $00
	snd_note $1F
	snd_note $21
	snd_note $1D
	snd_note $18
	snd_note $1A
	snd_note $1B, NOTELEN_09
	snd_note $1B, NOTELEN_02
	snd_note $00, NOTELEN_CUSTOM, $07
	snd_note $1A, NOTELEN_0C
	snd_note $1A, NOTELEN_03
	snd_note $00
	snd_note $18
	snd_note $1A
	snd_note $1D
	snd_note $1A
	snd_note $1D, NOTELEN_09
	snd_note $1D, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $18, NOTELEN_03
	snd_note $1A
	snd_note $00
	snd_note $1D
	snd_note $00
	snd_note $1F
	snd_note $21
	snd_note $1D
	snd_note $18
	snd_note $1A
	snd_note $1B, NOTELEN_09
	snd_note $1B, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $1A, NOTELEN_12
	snd_note $18, NOTELEN_03
	snd_note $1A
	snd_note $1D
	snd_note $1F
	snd_note $1D, NOTELEN_09
	snd_note $1D, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $18, NOTELEN_03
	snd_note $1A
	snd_note $00
	snd_note $1D
	snd_note $00
	snd_note $1F
	snd_note $21
	snd_note $1D
	snd_note $18
	snd_note $1A
	snd_note $1B, NOTELEN_09
	snd_note $1B, NOTELEN_02
	snd_note $00, NOTELEN_CUSTOM, $07
	snd_note $1A, NOTELEN_0C
	snd_note $1A, NOTELEN_03
	snd_note $00
	snd_note $18
	snd_note $1A
	snd_note $1D
	snd_note $1A
	snd_note $1D, NOTELEN_09
	snd_note $1D, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $18, NOTELEN_03
	snd_note $1A
	snd_note $00
	snd_note $1D
	snd_note $00
	snd_note $1F
	snd_note $21
	snd_note $1D
	snd_note $18
	snd_note $1A
	snd_note $1B, NOTELEN_09
	snd_note $1B, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $1A, NOTELEN_12
	snd_note $18, NOTELEN_03
	snd_note $1A
	snd_note $1D
	snd_note $1F
	snd_note $1D
	snd_note $00, NOTELEN_09
	snd_note $1D, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $1D, NOTELEN_03
	snd_note $00
	snd_note $1D
	snd_note $00
	snd_note $18
	snd_note $1D, NOTELEN_06
	snd_note $18
	snd_note $1B, NOTELEN_03
	snd_note $00, NOTELEN_09
	snd_note $1B, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $16, NOTELEN_03
	snd_note $00
	snd_note $16
	snd_note $1A, NOTELEN_06
	snd_note $1B
	snd_note $1C
	snd_note $1D, NOTELEN_03
	snd_note $00, NOTELEN_09
	snd_note $1D, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $1D, NOTELEN_03
	snd_note $00
	snd_note $1D
	snd_note $00
	snd_note $18
	snd_note $1D, NOTELEN_06
	snd_note $18
	snd_note $1B, NOTELEN_03
	snd_note $00, NOTELEN_09
	snd_note $1B, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $16, NOTELEN_03
	snd_note $00
	snd_note $16
	snd_note $1A, NOTELEN_06
	snd_note $1B
	snd_note $1C
	snd_note $1D, NOTELEN_03
	snd_note $00, NOTELEN_09
	snd_note $1D, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $1D, NOTELEN_03
	snd_note $00
	snd_note $1D
	snd_note $00
	snd_note $18
	snd_note $1D, NOTELEN_06
	snd_note $18
	snd_note $1B, NOTELEN_03
	snd_note $00, NOTELEN_09
	snd_note $1B, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $16, NOTELEN_03
	snd_note $00
	snd_note $16
	snd_note $1A, NOTELEN_06
	snd_note $1B
	snd_note $1C
	snd_note $1D, NOTELEN_03
	snd_note $00, NOTELEN_09
	snd_note $1D, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $1D, NOTELEN_03
	snd_note $00
	snd_note $1D, NOTELEN_06
	snd_note $1F, NOTELEN_03
	snd_note $21
	snd_note $1D
	snd_note $18
	snd_note $1A
	snd_note $1B
	snd_note $00, NOTELEN_CUSTOM, $2D
	snd_note $1D, NOTELEN_09
	snd_note $1D, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $18, NOTELEN_03
	snd_note $1A
	snd_note $00
	snd_note $1D
	snd_note $00
	snd_note $1F
	snd_note $21
	snd_note $1D
	snd_note $18
	snd_note $1A
	snd_note $1B, NOTELEN_09
	snd_note $1B, NOTELEN_02
	snd_note $00, NOTELEN_CUSTOM, $07
	snd_note $1A, NOTELEN_12
	snd_note $18, NOTELEN_03
	snd_note $1A
	snd_note $1D
	snd_note $1A
	snd_note $1D, NOTELEN_09
	snd_note $1D, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $18, NOTELEN_03
	snd_note $1A
	snd_note $00
	snd_note $1D
	snd_note $00
	snd_note $1F
	snd_note $21
	snd_note $1D
	snd_note $18
	snd_note $1A
	snd_note $1B, NOTELEN_09
	snd_note $1B, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $1A, NOTELEN_12
	snd_note $18, NOTELEN_03
	snd_note $1A
	snd_note $1D
	snd_note $1F
	snd_note $1D, NOTELEN_09
	snd_note $1D, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $18, NOTELEN_03
	snd_note $1A
	snd_note $00
	snd_note $1D
	snd_note $00
	snd_note $1F
	snd_note $21
	snd_note $1D
	snd_note $18
	snd_note $1A
	snd_note $1B, NOTELEN_09
	snd_note $1B, NOTELEN_02
	snd_note $00, NOTELEN_CUSTOM, $07
	snd_note $1A, NOTELEN_12
	snd_note $18, NOTELEN_03
	snd_note $1A
	snd_note $1D
	snd_note $1A
	snd_note $1D, NOTELEN_09
	snd_note $1D, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $18, NOTELEN_03
	snd_note $1A
	snd_note $00
	snd_note $1D
	snd_note $00
	snd_note $1F
	snd_note $21
	snd_note $1D
	snd_note $18
	snd_note $1A
	snd_note $1B, NOTELEN_09
	snd_note $1B, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $1A, NOTELEN_12
	snd_note $18, NOTELEN_03
	snd_note $1A
	snd_note $1D
	snd_note $1F
	snd_note $18
	snd_note $00, NOTELEN_12
	snd_note $18, NOTELEN_02
	snd_note $00, NOTELEN_04
	snd_note $18, NOTELEN_03
	snd_note $1C, NOTELEN_06
	snd_note $1D
	snd_note $1F
	snd_note $16, NOTELEN_03
	snd_note $00, NOTELEN_CUSTOM, $0F
	snd_note $16, NOTELEN_02
	snd_note $00, NOTELEN_CUSTOM, $07
	snd_note $16, NOTELEN_03
	snd_note $1A, NOTELEN_06
	snd_note $1B
	snd_note $1D
	snd_note $1D, NOTELEN_03
	snd_note $00, NOTELEN_12
	snd_note $1D, NOTELEN_03
	snd_note $00, NOTELEN_18
	snd_note $1D, NOTELEN_03
	snd_note $00, NOTELEN_CUSTOM, $0F
	snd_note $1D, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $1D, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_note $15, NOTELEN_06
	snd_note $16
	snd_note $17
	snd_note $18, NOTELEN_03
	snd_note $00, NOTELEN_12
	snd_note $18, NOTELEN_02
	snd_note $00, NOTELEN_04
	snd_note $18, NOTELEN_03
	snd_note $1C, NOTELEN_06
	snd_note $1D
	snd_note $1F
	snd_note $16, NOTELEN_03
	snd_note $00, NOTELEN_CUSTOM, $0F
	snd_note $16, NOTELEN_02
	snd_note $00, NOTELEN_CUSTOM, $07
	snd_note $16, NOTELEN_03
	snd_note $1A, NOTELEN_06
	snd_note $1B
	snd_note $1D
	snd_note $1D, NOTELEN_03
	snd_note $00, NOTELEN_12
	snd_note $1D, NOTELEN_03
	snd_note $00, NOTELEN_18
	snd_note $1D, NOTELEN_03
	snd_note $00, NOTELEN_CUSTOM, $0F
	snd_note $1D, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $1D, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_note $15, NOTELEN_06
	snd_note $16
	snd_note $17
	snd_note $18, NOTELEN_03
	snd_note $00, NOTELEN_12
	snd_note $18, NOTELEN_02
	snd_note $00, NOTELEN_04
	snd_note $18, NOTELEN_03
	snd_note $1C, NOTELEN_06
	snd_note $1D
	snd_note $1F
	snd_note $16, NOTELEN_03
	snd_note $00, NOTELEN_CUSTOM, $0F
	snd_note $16, NOTELEN_02
	snd_note $00, NOTELEN_CUSTOM, $07
	snd_note $16, NOTELEN_03
	snd_note $1A, NOTELEN_06
	snd_note $1B
	snd_note $1D
	snd_note $1D, NOTELEN_03
	snd_note $00, NOTELEN_12
	snd_note $1D, NOTELEN_03
	snd_note $00, NOTELEN_18
	snd_note $1D, NOTELEN_03
	snd_note $00, NOTELEN_CUSTOM, $0F
	snd_note $1D, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $1D, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_note $15, NOTELEN_06
	snd_note $16
	snd_note $17
	snd_note $18, NOTELEN_0C
	snd_note $24, NOTELEN_09
	snd_note $18, NOTELEN_04
	snd_note $00, NOTELEN_02
	snd_note $18, NOTELEN_03
	snd_note $1C, NOTELEN_06
	snd_note $1D
	snd_note $1F, NOTELEN_04
	snd_note $00, NOTELEN_02
	snd_note $16, NOTELEN_0C
	snd_note $22, NOTELEN_09
	snd_note $16, NOTELEN_03
	snd_note $00
	snd_note $16
	snd_note $1A, NOTELEN_06
	snd_note $1B
	snd_note $1C, NOTELEN_04
	snd_note $00, NOTELEN_02
	snd_note $1D, NOTELEN_03
	snd_note $00
	snd_note $21, NOTELEN_04
	snd_note $00, NOTELEN_08
	snd_note $22, NOTELEN_04
	snd_note $00, NOTELEN_08
	snd_note $23, NOTELEN_04
	snd_note $00, NOTELEN_08
	snd_note $24, NOTELEN_06
	snd_note $24
	snd_note $18
	snd_note $1A, NOTELEN_03
	snd_note $00
	snd_note $1A
	snd_note $00
	snd_note $1B
	snd_note $00
	snd_note $1B
	snd_note $00
	snd_note $1C
	snd_note $00
	snd_note $1C
	snd_note $00
	snd_jp SndData_10_Ch3
SndData_10_Ch1:
	snd_duty SNDDUTY_25, $00
	snd_instrument INSTR_07
	snd_note $35, NOTELEN_18
	snd_inc_vol -11
	snd_instrument INSTR_NONE
	snd_note $35, NOTELEN_06
	snd_inc_vol 11
	snd_instrument INSTR_07
	snd_note $38, NOTELEN_02
	snd_note $00, NOTELEN_04
	snd_note $39, NOTELEN_03
	snd_note $3C
	snd_note $41
	snd_note $00
	snd_note $3F, NOTELEN_06
	snd_inc_vol -11
	snd_instrument INSTR_NONE
	snd_note $3F
	snd_inc_vol 11
	snd_instrument INSTR_07
	snd_note $3E
	snd_inc_vol -11
	snd_instrument INSTR_NONE
	snd_note $3E
	snd_inc_vol 11
	snd_instrument INSTR_07
	snd_note $3A
	snd_inc_vol -11
	snd_instrument INSTR_NONE
	snd_note $3A
	snd_inc_vol 11
	snd_instrument INSTR_07
	snd_note $3C
	snd_inc_vol -11
	snd_instrument INSTR_NONE
	snd_note $3C
	snd_inc_vol 11
	snd_instrument INSTR_07
	snd_note $39, NOTELEN_09
	snd_note $3A, NOTELEN_02
	snd_inc_vol -11
	snd_instrument INSTR_NONE
	snd_note $3A, NOTELEN_04
	snd_note $00, NOTELEN_03
	snd_inc_vol 11
	snd_instrument INSTR_07
	snd_note $3C
	snd_note $00, NOTELEN_09
	snd_note $35, NOTELEN_0C
	snd_note $37, NOTELEN_02
	snd_note $00, NOTELEN_04
	snd_note $38, NOTELEN_06
	snd_note $37, NOTELEN_02
	snd_note $00, NOTELEN_04
	snd_note $35, NOTELEN_03
	snd_note $32, NOTELEN_09
	snd_note $35, NOTELEN_06
	snd_inc_vol -11
	snd_instrument INSTR_NONE
	snd_note $35
	snd_inc_vol 11
	snd_instrument INSTR_07
	snd_note $37
	snd_inc_vol -11
	snd_instrument INSTR_NONE
	snd_note $37
	snd_inc_vol 11
	snd_instrument INSTR_07
	snd_note $35, NOTELEN_18
	snd_inc_vol -11
	snd_instrument INSTR_NONE
	snd_note $35, NOTELEN_06
	snd_inc_vol 11
	snd_instrument INSTR_07
	snd_note $38, NOTELEN_02
	snd_note $00, NOTELEN_04
	snd_note $39, NOTELEN_03
	snd_note $3C
	snd_note $41
	snd_note $00
	snd_note $3F, NOTELEN_06
	snd_inc_vol -11
	snd_instrument INSTR_NONE
	snd_note $3F
	snd_inc_vol 11
	snd_instrument INSTR_07
	snd_note $3E
	snd_inc_vol -11
	snd_instrument INSTR_NONE
	snd_note $3E
	snd_inc_vol 11
	snd_instrument INSTR_07
	snd_note $3A
	snd_inc_vol -11
	snd_instrument INSTR_NONE
	snd_note $3A
	snd_inc_vol 11
	snd_instrument INSTR_07
	snd_note $3C
	snd_inc_vol -11
	snd_instrument INSTR_NONE
	snd_note $3C
	snd_inc_vol 11
	snd_instrument INSTR_07
	snd_note $39, NOTELEN_09
	snd_note $3A, NOTELEN_02
	snd_inc_vol -11
	snd_instrument INSTR_NONE
	snd_note $3A, NOTELEN_04
	snd_note $00, NOTELEN_03
	snd_inc_vol 11
	snd_instrument INSTR_07
	snd_note $3C
	snd_note $00, NOTELEN_09
	snd_note $35, NOTELEN_0C
	snd_note $37, NOTELEN_02
	snd_note $00, NOTELEN_04
	snd_note $38, NOTELEN_06
	snd_note $37, NOTELEN_02
	snd_note $00, NOTELEN_04
	snd_note $35, NOTELEN_03
	snd_note $32, NOTELEN_09
	snd_note $35, NOTELEN_06
	snd_inc_vol -11
	snd_instrument INSTR_NONE
	snd_note $35
	snd_inc_vol 11
	snd_instrument INSTR_07
	snd_note $32
	snd_inc_vol -11
	snd_instrument INSTR_NONE
	snd_note $32
	snd_inc_vol 11
	snd_var iSndChInfo_LoopTimer0, $03
	.loop0:
		snd_duty SNDDUTY_50, $00
		snd_instrument INSTR_0B
		snd_note $3C, NOTELEN_03
		snd_note $00
		snd_note $44
		snd_note $45
		snd_note $00
		snd_note $41
		snd_note $00
		snd_note $45
		snd_note $00
		snd_note $43
		snd_note $46
		snd_note $44
		snd_note $47
		snd_note $45
		snd_note $48
		snd_note $45
		snd_duty SNDDUTY_25, $00
		snd_note $3A
		snd_note $41
		snd_note $44
		snd_note $3A
		snd_note $3F
		snd_note $43
		snd_note $3A
		snd_note $3E
		snd_note $41
		snd_note $3A
		snd_note $3E
		snd_note $41
		snd_note $3A
		snd_note $3E
		snd_note $41
		snd_note $3A
		snd_djnz iSndChInfo_LoopTimer0, .loop0
	snd_duty SNDDUTY_50, $00
	snd_note $3C
	snd_note $00
	snd_note $44
	snd_note $45
	snd_note $00
	snd_note $41
	snd_note $00
	snd_note $45
	snd_note $00
	snd_note $43
	snd_note $46
	snd_note $44
	snd_note $47
	snd_note $45
	snd_note $48
	snd_note $45
	snd_duty SNDDUTY_25, $00
	snd_note $3A
	snd_note $41
	snd_note $44
	snd_note $3A
	snd_note $3F
	snd_note $43
	snd_note $3A
	snd_note $3E
	snd_note $41
	snd_note $3A
	snd_note $3E
	snd_note $41
	snd_note $43
	snd_note $46
	snd_note $4A
	snd_note $4D
	snd_duty SNDDUTY_25, $00
	snd_instrument INSTR_07
	snd_note $35, NOTELEN_18
	snd_inc_vol -11
	snd_instrument INSTR_NONE
	snd_note $35, NOTELEN_06
	snd_inc_vol 11
	snd_instrument INSTR_07
	snd_note $38, NOTELEN_02
	snd_note $00, NOTELEN_04
	snd_note $39, NOTELEN_03
	snd_note $3C
	snd_note $41
	snd_note $00
	snd_note $3F, NOTELEN_06
	snd_inc_vol -11
	snd_instrument INSTR_NONE
	snd_note $3F
	snd_inc_vol 11
	snd_instrument INSTR_07
	snd_note $3E
	snd_inc_vol -11
	snd_instrument INSTR_NONE
	snd_note $3E
	snd_inc_vol 11
	snd_instrument INSTR_07
	snd_note $3A
	snd_inc_vol -11
	snd_instrument INSTR_NONE
	snd_note $3A
	snd_inc_vol 11
	snd_instrument INSTR_07
	snd_note $3C
	snd_inc_vol -11
	snd_instrument INSTR_NONE
	snd_note $3C
	snd_inc_vol 11
	snd_instrument INSTR_07
	snd_note $39, NOTELEN_09
	snd_note $3A, NOTELEN_02
	snd_inc_vol -11
	snd_instrument INSTR_NONE
	snd_note $3A, NOTELEN_04
	snd_note $00, NOTELEN_03
	snd_inc_vol 11
	snd_instrument INSTR_07
	snd_note $3C
	snd_note $00, NOTELEN_09
	snd_note $35, NOTELEN_0C
	snd_note $37, NOTELEN_02
	snd_note $00, NOTELEN_04
	snd_note $38, NOTELEN_06
	snd_note $37, NOTELEN_02
	snd_note $00, NOTELEN_04
	snd_note $35, NOTELEN_03
	snd_note $32, NOTELEN_09
	snd_note $35, NOTELEN_06
	snd_inc_vol -11
	snd_instrument INSTR_NONE
	snd_note $35
	snd_inc_vol 11
	snd_instrument INSTR_07
	snd_note $37
	snd_inc_vol -11
	snd_instrument INSTR_NONE
	snd_note $37
	snd_inc_vol 11
	snd_instrument INSTR_07
	snd_note $35, NOTELEN_18
	snd_inc_vol -11
	snd_instrument INSTR_NONE
	snd_note $35, NOTELEN_06
	snd_inc_vol 11
	snd_instrument INSTR_07
	snd_note $38, NOTELEN_02
	snd_note $00, NOTELEN_04
	snd_note $39, NOTELEN_03
	snd_note $3C
	snd_note $41
	snd_note $00
	snd_note $3F, NOTELEN_06
	snd_inc_vol -11
	snd_instrument INSTR_NONE
	snd_note $3F
	snd_inc_vol 11
	snd_instrument INSTR_07
	snd_note $3E
	snd_inc_vol -11
	snd_instrument INSTR_NONE
	snd_note $3E
	snd_inc_vol 11
	snd_instrument INSTR_07
	snd_note $3A
	snd_inc_vol -11
	snd_instrument INSTR_NONE
	snd_note $3A
	snd_inc_vol 11
	snd_instrument INSTR_07
	snd_note $3C
	snd_inc_vol -11
	snd_instrument INSTR_NONE
	snd_note $3C
	snd_inc_vol 11
	snd_instrument INSTR_07
	snd_note $39, NOTELEN_09
	snd_note $3A, NOTELEN_02
	snd_inc_vol -11
	snd_instrument INSTR_NONE
	snd_note $3A, NOTELEN_04
	snd_note $00, NOTELEN_03
	snd_inc_vol 11
	snd_instrument INSTR_07
	snd_note $3C
	snd_note $00, NOTELEN_09
	snd_note $35, NOTELEN_0C
	snd_note $37, NOTELEN_02
	snd_note $00, NOTELEN_04
	snd_note $38, NOTELEN_06
	snd_note $37, NOTELEN_02
	snd_note $00, NOTELEN_04
	snd_note $35, NOTELEN_03
	snd_note $32, NOTELEN_09
	snd_note $35, NOTELEN_06
	snd_inc_vol -11
	snd_instrument INSTR_NONE
	snd_note $35
	snd_inc_vol 11
	snd_instrument INSTR_07
	snd_note $32
	snd_inc_vol -11
	snd_instrument INSTR_NONE
	snd_note $32
	snd_instrument INSTR_09
	snd_inc_vol 11
	snd_note $43, NOTELEN_03
	snd_note $43
	snd_note $41
	snd_note $40
	snd_inc_vol -11
	snd_instrument INSTR_NONE
	snd_note $40
	snd_note $00
	snd_note $00, NOTELEN_18
	snd_inc_vol 11
	snd_instrument INSTR_09
	snd_note $40, NOTELEN_03
	snd_note $40
	snd_note $3E
	snd_note $40
	snd_note $00
	snd_note $41
	snd_inc_vol -11
	snd_instrument INSTR_NONE
	snd_note $41
	snd_note $00
	snd_note $00, NOTELEN_18
	snd_inc_vol 11
	snd_instrument INSTR_09
	snd_note $3A, NOTELEN_03
	snd_note $00
	snd_note $3C
	snd_note $3C
	snd_note $3A
	snd_note $39
	snd_inc_vol -11
	snd_instrument INSTR_NONE
	snd_note $39
	snd_note $00
	snd_note $00, NOTELEN_18
	snd_inc_vol 11
	snd_instrument INSTR_09
	snd_note $3C, NOTELEN_03
	snd_note $00
	snd_note $3F, NOTELEN_03
	snd_note $3F
	snd_note $3E
	snd_note $3C
	snd_inc_vol -11
	snd_instrument INSTR_NONE
	snd_note $3C
	snd_note $00
	snd_note $00, NOTELEN_18
	snd_inc_vol 11
	snd_instrument INSTR_09
	snd_note $41, NOTELEN_03
	snd_note $00
	snd_note $43
	snd_note $43
	snd_note $41
	snd_note $40
	snd_inc_vol -11
	snd_instrument INSTR_NONE
	snd_note $40
	snd_note $00
	snd_note $00, NOTELEN_18
	snd_inc_vol 11
	snd_instrument INSTR_09
	snd_note $40, NOTELEN_03
	snd_note $40
	snd_note $3E
	snd_note $40
	snd_note $00
	snd_note $41
	snd_inc_vol -11
	snd_instrument INSTR_NONE
	snd_note $41
	snd_note $00
	snd_note $00, NOTELEN_18
	snd_inc_vol 11
	snd_instrument INSTR_09
	snd_note $3A, NOTELEN_03
	snd_note $00
	snd_note $3C, NOTELEN_03
	snd_note $3C
	snd_note $3A
	snd_note $39
	snd_inc_vol -11
	snd_instrument INSTR_NONE
	snd_note $39
	snd_note $00
	snd_note $00, NOTELEN_18
	snd_inc_vol 11
	snd_instrument INSTR_09
	snd_note $3C, NOTELEN_03
	snd_note $00
	snd_note $3F
	snd_note $3F
	snd_note $3E
	snd_note $3C
	snd_inc_vol -11
	snd_instrument INSTR_NONE
	snd_note $3C
	snd_note $00
	snd_note $00, NOTELEN_18
	snd_inc_vol 11
	snd_instrument INSTR_09
	snd_note $41, NOTELEN_03
	snd_note $00
	snd_note $40
	snd_note $40
	snd_note $3E
	snd_note $3C
	snd_inc_vol -11
	snd_instrument INSTR_NONE
	snd_note $3C
	snd_note $00
	snd_note $00, NOTELEN_18
	snd_inc_vol 11
	snd_instrument INSTR_09
	snd_note $3C, NOTELEN_03
	snd_note $3C
	snd_note $3A
	snd_note $3C
	snd_note $00
	snd_note $3E
	snd_inc_vol -11
	snd_instrument INSTR_NONE
	snd_note $3E
	snd_note $00
	snd_note $00, NOTELEN_18
	snd_inc_vol 11
	snd_instrument INSTR_09
	snd_note $37, NOTELEN_03
	snd_note $00
	snd_note $39, NOTELEN_03
	snd_note $39
	snd_note $37
	snd_note $35
	snd_inc_vol -11
	snd_instrument INSTR_NONE
	snd_note $35
	snd_note $00
	snd_note $00, NOTELEN_18
	snd_inc_vol 11
	snd_instrument INSTR_09
	snd_note $39, NOTELEN_03
	snd_note $00
	snd_note $3C, NOTELEN_03
	snd_note $3C
	snd_note $3A
	snd_note $39
	snd_inc_vol -11
	snd_instrument INSTR_NONE
	snd_note $39
	snd_note $00
	snd_note $00, NOTELEN_18
	snd_inc_vol 11
	snd_instrument INSTR_09
	snd_note $3C, NOTELEN_03
	snd_note $00
	snd_note $48
	snd_note $48
	snd_note $48
	snd_note $43
	snd_note $00, NOTELEN_06
	snd_duty SNDDUTY_50, $00
	snd_instrument INSTR_0A
	snd_inc_vol -2
	snd_note $43, NOTELEN_03
	snd_note $43
	snd_note $48
	snd_note $48
	snd_note $48
	snd_note $43
	snd_note $00
	snd_note $00
	snd_duty SNDDUTY_25, $00
	snd_instrument INSTR_09
	snd_inc_vol 2
	snd_note $43, NOTELEN_03
	snd_note $43
	snd_note $41
	snd_note $46
	snd_note $00
	snd_note $46
	snd_duty SNDDUTY_50, $00
	snd_instrument INSTR_0A
	snd_inc_vol -2
	snd_note $41, NOTELEN_03
	snd_note $46
	snd_note $00
	snd_note $46
	snd_note $41
	snd_note $46
	snd_note $00
	snd_note $46
	snd_note $41
	snd_note $46
	snd_note $00
	snd_note $46
	snd_duty SNDDUTY_25, $00
	snd_instrument INSTR_09
	snd_inc_vol 2
	snd_note $41, NOTELEN_06
	snd_note $3F
	snd_inc_vol -11
	snd_instrument INSTR_NONE
	snd_note $3F
	snd_inc_vol 11
	snd_instrument INSTR_09
	snd_note $3E, NOTELEN_04
	snd_inc_vol -11
	snd_instrument INSTR_NONE
	snd_note $3E, NOTELEN_08
	snd_inc_vol 11
	snd_instrument INSTR_09
	snd_note $3D, NOTELEN_04
	snd_inc_vol -11
	snd_instrument INSTR_NONE
	snd_note $3D, NOTELEN_08
	snd_inc_vol 11
	snd_instrument INSTR_09
	snd_note $3C, NOTELEN_06
	snd_inc_vol -11
	snd_instrument INSTR_NONE
	snd_note $3C
	snd_inc_vol 11
	snd_instrument INSTR_09
	snd_note $3C, NOTELEN_02
	snd_note $00, NOTELEN_04
	snd_note $3F, NOTELEN_0C
	snd_note $3C, NOTELEN_02
	snd_note $00, NOTELEN_04
	snd_note $3F, NOTELEN_12
	snd_jp SndData_10_Ch1
SndData_10_Ch2:
	snd_inc_freq_offset -1
.loop0:
	snd_duty SNDDUTY_25, $00
	snd_instrument INSTR_07
	snd_var iSndChInfo_LoopTimer0, $03
	.loop1:
		snd_note $39, NOTELEN_2A
		snd_inc_vol -6
		snd_instrument INSTR_NONE
		snd_note $39, NOTELEN_06
		snd_inc_vol 6
		snd_instrument INSTR_07
		snd_note $3A
		snd_note $00, NOTELEN_03
		snd_note $3A
		snd_inc_vol -6
		snd_instrument INSTR_NONE
		snd_note $3A, NOTELEN_06
		snd_inc_vol 6
		snd_instrument INSTR_07
		snd_note $3A, NOTELEN_18
		snd_inc_vol -6
		snd_instrument INSTR_NONE
		snd_note $3A, NOTELEN_06
		snd_inc_vol 6
		snd_instrument INSTR_07
		snd_djnz iSndChInfo_LoopTimer0, .loop1
	snd_note $39, NOTELEN_2A
	snd_inc_vol -6
	snd_instrument INSTR_NONE
	snd_note $39, NOTELEN_06
	snd_inc_vol 6
	snd_instrument INSTR_07
	snd_note $3A
	snd_note $00, NOTELEN_03
	snd_note $3A
	snd_inc_vol -6
	snd_instrument INSTR_NONE
	snd_note $3A, NOTELEN_06
	snd_inc_vol 6
	snd_instrument INSTR_07
	snd_note $3A, NOTELEN_0C
	snd_inc_vol -6
	snd_instrument INSTR_NONE
	snd_note $3A, NOTELEN_06
	snd_duty SNDDUTY_50, $00
	snd_note $4D, NOTELEN_01
	snd_note $4C
	snd_note $4A
	snd_note $48
	snd_note $46
	snd_note $45
	snd_note $43
	snd_note $41
	snd_note $40
	snd_note $3E
	snd_note $3D
	snd_note $3C
	snd_duty SNDDUTY_25, $00
	snd_instrument INSTR_0B
	snd_note $00, NOTELEN_06
	snd_inc_vol 6
	snd_note $41, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $41, NOTELEN_03
	snd_note $00
	snd_note $41
	snd_note $00
	snd_note $43
	snd_note $00, NOTELEN_06
	snd_note $44, NOTELEN_03
	snd_note $00
	snd_note $45
	snd_note $00
	snd_note $00, NOTELEN_06
	snd_inc_vol -2
	snd_note $4D, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $4B, NOTELEN_03
	snd_note $00
	snd_note $4A
	snd_note $00
	snd_note $4A
	snd_note $46
	snd_note $00
	snd_note $45
	snd_note $46
	snd_note $00, NOTELEN_06
	snd_note $00
	snd_inc_vol 2
	snd_note $41, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $41, NOTELEN_03
	snd_note $00
	snd_note $41
	snd_note $00
	snd_note $43
	snd_note $00, NOTELEN_06
	snd_note $44, NOTELEN_03
	snd_note $00
	snd_note $45
	snd_note $00
	snd_note $00, NOTELEN_06
	snd_inc_vol -2
	snd_note $4D, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $4B, NOTELEN_03
	snd_note $00
	snd_note $4A
	snd_note $00
	snd_note $45
	snd_note $46
	snd_note $45
	snd_note $4A
	snd_note $4A
	snd_note $00, NOTELEN_06
	snd_note $00
	snd_inc_vol 2
	snd_note $41, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $41, NOTELEN_03
	snd_note $00
	snd_note $41
	snd_note $00
	snd_note $43
	snd_note $00, NOTELEN_06
	snd_note $44, NOTELEN_03
	snd_note $00
	snd_note $45
	snd_note $00
	snd_note $00, NOTELEN_06
	snd_inc_vol -2
	snd_note $4D, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $4B, NOTELEN_03
	snd_note $00
	snd_note $4A
	snd_note $00
	snd_note $4A
	snd_note $46
	snd_note $00
	snd_note $45
	snd_note $46
	snd_note $00, NOTELEN_06
	snd_note $00
	snd_inc_vol 2
	snd_note $41, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $41, NOTELEN_03
	snd_note $00
	snd_note $41
	snd_note $00
	snd_note $43
	snd_note $00, NOTELEN_06
	snd_note $44, NOTELEN_03
	snd_note $00
	snd_note $45
	snd_note $00
	snd_note $00, NOTELEN_06
	snd_inc_vol -2
	snd_note $4D, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $4B, NOTELEN_03
	snd_note $00
	snd_note $4A
	snd_note $00
	snd_note $45
	snd_note $46
	snd_note $45
	snd_note $4A
	snd_note $4A
	snd_note $00, NOTELEN_06
	snd_inc_vol 2
	snd_instrument INSTR_07
	snd_var iSndChInfo_LoopTimer0, $03
	.loop2:
		snd_note $39, NOTELEN_2A
		snd_inc_vol -6
		snd_instrument INSTR_NONE
		snd_note $39, NOTELEN_06
		snd_inc_vol 6
		snd_instrument INSTR_07
		snd_note $3A
		snd_note $00, NOTELEN_03
		snd_note $3A
		snd_inc_vol -6
		snd_instrument INSTR_NONE
		snd_note $3A, NOTELEN_06
		snd_inc_vol 6
		snd_instrument INSTR_07
		snd_note $3A, NOTELEN_18
		snd_inc_vol -6
		snd_instrument INSTR_NONE
		snd_note $3A, NOTELEN_06
		snd_inc_vol 6
		snd_instrument INSTR_07
		snd_djnz iSndChInfo_LoopTimer0, .loop2
	snd_note $39, NOTELEN_2A
	snd_inc_vol -6
	snd_instrument INSTR_NONE
	snd_note $39, NOTELEN_06
	snd_inc_vol 6
	snd_instrument INSTR_07
	snd_note $3A
	snd_note $00, NOTELEN_03
	snd_note $3A
	snd_inc_vol -6
	snd_instrument INSTR_NONE
	snd_note $3A, NOTELEN_06
	snd_inc_vol 6
	snd_instrument INSTR_07
	snd_note $3A, NOTELEN_0C
	snd_note $46, NOTELEN_03
	snd_inc_vol -6
	snd_instrument INSTR_NONE
	snd_note $46, NOTELEN_06
	snd_inc_vol 6
	snd_instrument INSTR_07
	snd_note $46, NOTELEN_09
	snd_duty SNDDUTY_25, $00
	snd_instrument INSTR_09
	snd_note $40, NOTELEN_03
	snd_note $40
	snd_note $3E
	snd_note $3C
	snd_inc_vol -6
	snd_instrument INSTR_NONE
	snd_note $3C
	snd_note $00
	snd_note $00, NOTELEN_18
	snd_inc_vol 6
	snd_instrument INSTR_09
	snd_note $3C, NOTELEN_03
	snd_note $3C
	snd_note $3A
	snd_note $3C
	snd_note $00
	snd_note $3E
	snd_inc_vol -6
	snd_instrument INSTR_NONE
	snd_note $3E
	snd_note $00
	snd_note $00, NOTELEN_18
	snd_inc_vol 6
	snd_instrument INSTR_09
	snd_note $37, NOTELEN_03
	snd_note $00
	snd_note $39
	snd_note $39
	snd_note $37
	snd_note $35
	snd_inc_vol -6
	snd_instrument INSTR_NONE
	snd_note $35
	snd_note $00
	snd_note $00, NOTELEN_18
	snd_inc_vol 6
	snd_instrument INSTR_09
	snd_note $39, NOTELEN_03
	snd_note $00
	snd_note $3C
	snd_note $3C
	snd_note $3A
	snd_note $39
	snd_inc_vol -6
	snd_instrument INSTR_NONE
	snd_note $39
	snd_note $00
	snd_note $00, NOTELEN_18
	snd_inc_vol 6
	snd_instrument INSTR_09
	snd_note $3C, NOTELEN_03
	snd_note $00
	snd_note $40
	snd_note $40
	snd_note $3E
	snd_note $3C
	snd_inc_vol -6
	snd_instrument INSTR_NONE
	snd_note $3C
	snd_note $00
	snd_note $00, NOTELEN_18
	snd_inc_vol 6
	snd_instrument INSTR_09
	snd_note $3C, NOTELEN_03
	snd_note $3C
	snd_note $3A
	snd_note $3C
	snd_note $00
	snd_note $3E
	snd_inc_vol -6
	snd_instrument INSTR_NONE
	snd_note $3E
	snd_note $00
	snd_note $00, NOTELEN_18
	snd_inc_vol 6
	snd_instrument INSTR_09
	snd_note $37, NOTELEN_03
	snd_note $00
	snd_note $39
	snd_note $39
	snd_note $37
	snd_note $35
	snd_inc_vol -6
	snd_instrument INSTR_NONE
	snd_note $35
	snd_note $00
	snd_note $00, NOTELEN_18
	snd_inc_vol 6
	snd_instrument INSTR_09
	snd_note $39, NOTELEN_03
	snd_note $00
	snd_note $3C
	snd_note $3C
	snd_note $3A
	snd_note $39
	snd_inc_vol -6
	snd_instrument INSTR_NONE
	snd_note $39
	snd_note $00
	snd_note $00, NOTELEN_18
	snd_inc_vol 6
	snd_instrument INSTR_09
	snd_note $3C, NOTELEN_03
	snd_note $00
	snd_note $3C
	snd_note $3C
	snd_note $3C
	snd_note $37, NOTELEN_03
	snd_inc_vol -6
	snd_instrument INSTR_NONE
	snd_note $37
	snd_note $00
	snd_note $00, NOTELEN_18
	snd_inc_vol 6
	snd_instrument INSTR_09
	snd_note $37, NOTELEN_03
	snd_note $37
	snd_note $35
	snd_note $3A
	snd_note $00
	snd_note $3A
	snd_inc_vol -6
	snd_instrument INSTR_NONE
	snd_note $3A
	snd_note $00
	snd_note $00, NOTELEN_18
	snd_inc_vol 6
	snd_instrument INSTR_09
	snd_note $32, NOTELEN_03
	snd_note $00
	snd_note $35
	snd_note $35
	snd_note $35
	snd_note $30
	snd_inc_vol -6
	snd_instrument INSTR_NONE
	snd_note $30
	snd_note $00
	snd_note $00, NOTELEN_18
	snd_inc_vol 6
	snd_instrument INSTR_09
	snd_note $35, NOTELEN_03
	snd_note $00
	snd_note $39
	snd_note $39
	snd_note $37
	snd_note $35
	snd_inc_vol -6
	snd_instrument INSTR_NONE
	snd_note $35
	snd_note $00
	snd_note $00, NOTELEN_18
	snd_inc_vol 6
	snd_instrument INSTR_09
	snd_note $39, NOTELEN_03
	snd_note $00
	snd_note $40
	snd_note $40
	snd_note $40
	snd_note $3E
	snd_inc_vol -6
	snd_instrument INSTR_NONE
	snd_note $3E
	snd_note $00
	snd_inc_vol 6
	snd_duty SNDDUTY_50, $00
	snd_instrument INSTR_0A
	snd_inc_vol -2
	snd_note $5B, NOTELEN_03
	snd_note $5B
	snd_note $60
	snd_note $60
	snd_note $60
	snd_note $5B
	snd_note $00
	snd_note $00
	snd_duty SNDDUTY_25, $00
	snd_instrument INSTR_09
	snd_inc_vol 2
	snd_note $3C, NOTELEN_03
	snd_note $3C
	snd_note $3A
	snd_note $3C
	snd_note $00
	snd_note $3E
	snd_duty SNDDUTY_50, $00
	snd_instrument INSTR_0A
	snd_inc_vol -2
	snd_note $59
	snd_note $5E
	snd_note $00
	snd_note $5E
	snd_note $59
	snd_note $5E
	snd_note $00
	snd_note $5E
	snd_note $59
	snd_note $5E
	snd_note $00
	snd_note $5E
	snd_duty SNDDUTY_25, $00
	snd_instrument INSTR_09
	snd_inc_vol 2
	snd_note $39, NOTELEN_06
	snd_note $35
	snd_inc_vol -6
	snd_instrument INSTR_NONE
	snd_note $35
	snd_inc_vol 6
	snd_instrument INSTR_09
	snd_note $35, NOTELEN_04
	snd_inc_vol -6
	snd_instrument INSTR_NONE
	snd_note $35, NOTELEN_08
	snd_inc_vol 6
	snd_instrument INSTR_09
	snd_note $38, NOTELEN_04
	snd_inc_vol -6
	snd_instrument INSTR_NONE
	snd_note $38, NOTELEN_08
	snd_inc_vol 6
	snd_instrument INSTR_09
	snd_note $34, NOTELEN_06
	snd_inc_vol -6
	snd_instrument INSTR_NONE
	snd_note $34
	snd_inc_vol 6
	snd_instrument INSTR_09
	snd_note $34, NOTELEN_02
	snd_note $00, NOTELEN_04
	snd_note $37, NOTELEN_0C
	snd_note $34, NOTELEN_02
	snd_note $00, NOTELEN_04
	snd_note $37, NOTELEN_12
	snd_jp .loop0
SndData_10_Ch4:
	snd_var iSndChInfo_LoopTimer0, $03
	.loop0:
		snd_noteex PRESET_01, NOTELEN_03
		snd_note $00
		snd_noteex PRESET_02
		snd_noteex PRESET_01
		snd_noteex PRESET_00
		snd_noteex PRESET_02
		snd_noteex PRESET_01
		snd_note $00
		snd_noteex PRESET_02
		snd_noteex PRESET_02
		snd_noteex PRESET_01
		snd_note $00
		snd_noteex PRESET_00
		snd_noteex PRESET_03
		snd_noteex PRESET_02
		snd_noteex PRESET_02
		snd_noteex PRESET_01
		snd_note $00
		snd_noteex PRESET_02
		snd_noteex PRESET_01
		snd_noteex PRESET_00, NOTELEN_06
		snd_noteex PRESET_01, NOTELEN_03
		snd_noteex PRESET_02
		snd_note $00
		snd_noteex PRESET_02
		snd_noteex PRESET_01
		snd_note $00
		snd_noteex PRESET_00
		snd_noteex PRESET_02
		snd_noteex PRESET_02
		snd_noteex PRESET_03
		snd_djnz iSndChInfo_LoopTimer0, .loop0
	snd_noteex PRESET_01, NOTELEN_03
	snd_note $00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_note $00
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_note $00
	snd_noteex PRESET_00
	snd_noteex PRESET_03
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_note $00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_note $00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_note $00
	snd_noteex PRESET_00
	snd_noteex PRESET_04, NOTELEN_06
	snd_noteex PRESET_00, NOTELEN_03
	snd_var iSndChInfo_LoopTimer0, $03
	.loop1:
		snd_noteex PRESET_01
		snd_noteex PRESET_02
		snd_noteex PRESET_01
		snd_note $00
		snd_noteex PRESET_00
		snd_noteex PRESET_02
		snd_noteex PRESET_03
		snd_noteex PRESET_01
		snd_note $00
		snd_noteex PRESET_01
		snd_noteex PRESET_01
		snd_note $00
		snd_noteex PRESET_00, NOTELEN_06
		snd_noteex PRESET_02, NOTELEN_03
		snd_noteex PRESET_03
		snd_noteex PRESET_01
		snd_noteex PRESET_02
		snd_noteex PRESET_01
		snd_note $00
		snd_noteex PRESET_00
		snd_noteex PRESET_03
		snd_noteex PRESET_02
		snd_noteex PRESET_01
		snd_noteex PRESET_02
		snd_noteex PRESET_00
		snd_noteex PRESET_01
		snd_note $00
		snd_noteex PRESET_00
		snd_noteex PRESET_02
		snd_noteex PRESET_03
		snd_noteex PRESET_02
		snd_djnz iSndChInfo_LoopTimer0, .loop1
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_note $00
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_02, NOTELEN_03
	snd_noteex PRESET_01
	snd_note $00
	snd_noteex PRESET_01
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_00
	snd_noteex PRESET_04, NOTELEN_01
	snd_noteex PRESET_00, NOTELEN_CUSTOM, $05
	snd_noteex PRESET_02, NOTELEN_0C
	snd_noteex PRESET_02
	snd_noteex PRESET_01, NOTELEN_03
	snd_noteex PRESET_04, NOTELEN_01
	snd_noteex PRESET_04
	snd_noteex PRESET_04
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_00
	snd_noteex PRESET_01
	snd_note $00
	snd_var iSndChInfo_LoopTimer0, $03
	.loop2:
		snd_noteex PRESET_01, NOTELEN_03
		snd_note $00
		snd_noteex PRESET_02
		snd_noteex PRESET_01
		snd_noteex PRESET_00
		snd_noteex PRESET_02
		snd_noteex PRESET_01
		snd_note $00
		snd_noteex PRESET_02
		snd_noteex PRESET_02
		snd_noteex PRESET_01
		snd_note $00
		snd_noteex PRESET_00
		snd_noteex PRESET_03
		snd_noteex PRESET_02
		snd_noteex PRESET_02
		snd_noteex PRESET_01
		snd_note $00
		snd_noteex PRESET_02
		snd_noteex PRESET_01
		snd_noteex PRESET_00, NOTELEN_06
		snd_noteex PRESET_01, NOTELEN_03
		snd_noteex PRESET_02
		snd_note $00
		snd_noteex PRESET_02
		snd_noteex PRESET_01
		snd_note $00
		snd_noteex PRESET_00
		snd_noteex PRESET_02
		snd_noteex PRESET_02
		snd_noteex PRESET_03
		snd_djnz iSndChInfo_LoopTimer0, .loop2
	snd_noteex PRESET_01, NOTELEN_03
	snd_note $00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_note $00
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_note $00
	snd_noteex PRESET_00
	snd_noteex PRESET_03
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_note $00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_note $00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_note $00
	snd_noteex PRESET_00
	snd_noteex PRESET_04, NOTELEN_06
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_01
	snd_note $00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_03
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_02, NOTELEN_03
	snd_noteex PRESET_03
	snd_noteex PRESET_01
	snd_note $00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_note $00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_note $00
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_03
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_note $00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_03
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_02, NOTELEN_03
	snd_noteex PRESET_03
	snd_noteex PRESET_01
	snd_note $00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_note $00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_note $00
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_03
	snd_noteex PRESET_00
	snd_noteex PRESET_01
	snd_note $00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_03
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_02, NOTELEN_03
	snd_noteex PRESET_03
	snd_noteex PRESET_01
	snd_note $00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_note $00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_note $00
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_03
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_note $00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_03
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_02, NOTELEN_03
	snd_noteex PRESET_03
	snd_noteex PRESET_01
	snd_note $00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_note $00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_note $00
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_00
	snd_var iSndChInfo_LoopTimer0, $02
	.loop3:
		snd_noteex PRESET_01
		snd_note $00
		snd_noteex PRESET_02
		snd_noteex PRESET_01
		snd_noteex PRESET_00
		snd_noteex PRESET_02
		snd_noteex PRESET_01
		snd_noteex PRESET_03
		snd_noteex PRESET_02
		snd_noteex PRESET_02
		snd_noteex PRESET_01
		snd_noteex PRESET_02
		snd_noteex PRESET_00, NOTELEN_06
		snd_noteex PRESET_02, NOTELEN_03
		snd_noteex PRESET_03
		snd_noteex PRESET_01
		snd_note $00
		snd_noteex PRESET_02
		snd_noteex PRESET_01
		snd_noteex PRESET_00
		snd_noteex PRESET_02
		snd_noteex PRESET_01
		snd_noteex PRESET_02
		snd_note $00
		snd_noteex PRESET_02
		snd_noteex PRESET_01
		snd_note $00
		snd_noteex PRESET_00
		snd_noteex PRESET_02
		snd_noteex PRESET_03
		snd_noteex PRESET_02
		snd_djnz iSndChInfo_LoopTimer0, .loop3
	snd_noteex PRESET_01
	snd_note $00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_03
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_02, NOTELEN_03
	snd_noteex PRESET_03
	snd_noteex PRESET_01
	snd_note $00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_note $00
	snd_noteex PRESET_01
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_03
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_02, NOTELEN_03
	snd_noteex PRESET_02
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_01
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_03
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_01, NOTELEN_03
	snd_noteex PRESET_02
	snd_inc_vol -12
	snd_var iSndChInfo_LoopTimer0, $06
	.loop4:
		snd_noteex PRESET_00, NOTELEN_06
		snd_inc_vol 2
		snd_djnz iSndChInfo_LoopTimer0, .loop4
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_04
	snd_noteex PRESET_01
	snd_note $00
	snd_jp SndData_10_Ch4
SndHeader_0A:
	db 4 ; Number of slots
.slot0:
	db SNDSLOT0 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_08 ; iSndChInfo_Instrument
	db VIBRATO_0B ; iSndChInfo_Vibrato
	db -11 ; iSndChInfo_NoteIdBase
	db 115 ; iSndChInfo_Speed
	db SNDCH_WAVE ; iSndChInfo_ChId
	dw SndData_0A_Ch3 ; Data pointer
	db WAVE_00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot1:
	db SNDSLOT1 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_0B ; iSndChInfo_Vibrato
	db -23 ; iSndChInfo_NoteIdBase
	db 115 ; iSndChInfo_Speed
	db SNDCH_PULSE1 ; iSndChInfo_ChId
	dw SndData_0A_Ch1 ; Data pointer
	nrx1 SNDDUTY_12, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot2:
	db SNDSLOT2 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 13 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_0B ; iSndChInfo_Vibrato
	db -23 ; iSndChInfo_NoteIdBase
	db 115 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_0A_Ch2 ; Data pointer
	nrx1 SNDDUTY_12, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot3:
	db SNDSLOT3 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db 0 ; iSndChInfo_NoteIdBase
	db 115 ; iSndChInfo_Speed
	db SNDCH_NOISE ; iSndChInfo_ChId
	dw SndData_0A_Ch4 ; Data pointer
	nrx1 SNDDUTY_12, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_0A_Ch3:
	snd_wave WAVE_0D
	snd_var iSndChInfo_LoopTimer0, $03
	.loop0:
		snd_note $1D, NOTELEN_0C
		snd_note $1D, NOTELEN_06
		snd_note $00, NOTELEN_03
		snd_note $21
		snd_note $00
		snd_note $21
		snd_note $00, NOTELEN_06
		snd_note $21, NOTELEN_0C
		snd_note $22
		snd_note $22, NOTELEN_06
		snd_note $00, NOTELEN_03
		snd_note $24
		snd_note $00
		snd_note $24
		snd_note $00, NOTELEN_06
		snd_note $24, NOTELEN_0C
		snd_djnz iSndChInfo_LoopTimer0, .loop0
	snd_note $1D
	snd_note $1D, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_note $21
	snd_note $00
	snd_note $21
	snd_note $00, NOTELEN_06
	snd_note $21, NOTELEN_09
	snd_note $22, NOTELEN_03
	snd_note $00
	snd_note $22
	snd_note $00, NOTELEN_06
	snd_note $22, NOTELEN_09
	snd_note $24, NOTELEN_03
	snd_note $00
	snd_note $24
	snd_note $00, NOTELEN_06
	snd_note $24
	snd_note $1F
	snd_note $1D, NOTELEN_0C
	snd_note $1D, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_note $21
	snd_note $00
	snd_note $21
	snd_note $00, NOTELEN_06
	snd_note $21, NOTELEN_0C
	snd_note $22
	snd_note $22, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_note $24
	snd_note $00
	snd_note $24
	snd_note $00, NOTELEN_06
	snd_note $24
	snd_note $1F
	snd_note $1D, NOTELEN_0C
	snd_note $1D, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_note $21
	snd_note $00
	snd_note $21
	snd_note $00, NOTELEN_06
	snd_note $21, NOTELEN_09
	snd_note $22, NOTELEN_03
	snd_note $00
	snd_note $22
	snd_note $00, NOTELEN_06
	snd_note $22
	snd_note $00, NOTELEN_03
	snd_note $24, NOTELEN_09
	snd_note $24, NOTELEN_03
	snd_note $2B
	snd_note $30
	snd_note $2B
	snd_note $24, NOTELEN_06
	snd_note $00
	snd_note $22, NOTELEN_03
	snd_note $1D, NOTELEN_09
	snd_note $22, NOTELEN_03
	snd_note $00, NOTELEN_09
	snd_note $22, NOTELEN_03
	snd_note $22
	snd_note $29, NOTELEN_06
	snd_note $22
	snd_note $00
	snd_note $1D, NOTELEN_03
	snd_note $18, NOTELEN_09
	snd_note $1D, NOTELEN_03
	snd_note $00, NOTELEN_09
	snd_note $1D, NOTELEN_03
	snd_note $1D
	snd_note $24, NOTELEN_06
	snd_note $1D
	snd_note $00
	snd_note $24, NOTELEN_03
	snd_note $1F, NOTELEN_09
	snd_note $24, NOTELEN_03
	snd_note $00, NOTELEN_09
	snd_note $24, NOTELEN_03
	snd_note $24
	snd_note $2B, NOTELEN_06
	snd_note $24
	snd_note $00
	snd_note $1D, NOTELEN_03
	snd_note $18, NOTELEN_09
	snd_note $1D, NOTELEN_03
	snd_note $00, NOTELEN_09
	snd_note $1D, NOTELEN_03
	snd_note $1D
	snd_note $24, NOTELEN_06
	snd_note $29
	snd_note $00
	snd_note $22, NOTELEN_03
	snd_note $1D, NOTELEN_09
	snd_note $22, NOTELEN_03
	snd_note $00, NOTELEN_09
	snd_note $22, NOTELEN_03
	snd_note $22
	snd_note $29, NOTELEN_06
	snd_note $22
	snd_note $00
	snd_note $1D, NOTELEN_03
	snd_note $18, NOTELEN_09
	snd_note $1D, NOTELEN_03
	snd_note $00, NOTELEN_09
	snd_note $1D, NOTELEN_03
	snd_note $1D
	snd_note $24, NOTELEN_06
	snd_note $1D
	snd_note $00
	snd_note $24, NOTELEN_03
	snd_note $1F, NOTELEN_09
	snd_note $24, NOTELEN_03
	snd_note $00, NOTELEN_09
	snd_note $24, NOTELEN_03
	snd_note $24
	snd_note $2B, NOTELEN_06
	snd_note $24
	snd_note $24
	snd_note $00
	snd_note $24, NOTELEN_24
	snd_var iSndChInfo_LoopTimer0, $02
	.loop1:
		snd_note $1D, NOTELEN_0C
		snd_note $1D, NOTELEN_06
		snd_note $00, NOTELEN_03
		snd_note $21
		snd_note $00
		snd_note $21
		snd_note $00, NOTELEN_06
		snd_note $21, NOTELEN_0C
		snd_note $22
		snd_note $22, NOTELEN_06
		snd_note $00, NOTELEN_03
		snd_note $24
		snd_note $00
		snd_note $24
		snd_note $00, NOTELEN_06
		snd_note $24, NOTELEN_0C
		snd_djnz iSndChInfo_LoopTimer0, .loop1
	snd_jp SndData_0A_Ch3
SndData_0A_Ch1:
	snd_duty SNDDUTY_25, $00
	snd_instrument INSTR_09
	snd_var iSndChInfo_LoopTimer0, $02
	.loop0:
		snd_note $41, NOTELEN_09
		snd_inc_vol -12
		snd_instrument INSTR_NONE
		snd_note $41, NOTELEN_03
		snd_inc_vol 12
		snd_instrument INSTR_09
		snd_note $3C
		snd_inc_vol -12
		snd_instrument INSTR_NONE
		snd_note $3C
		snd_inc_vol 12
		snd_instrument INSTR_09
		snd_note $3E
		snd_inc_vol -12
		snd_instrument INSTR_NONE
		snd_note $3E
		snd_inc_vol 12
		snd_instrument INSTR_09
		snd_note $41
		snd_note $43
		snd_inc_vol -12
		snd_instrument INSTR_NONE
		snd_note $43
		snd_inc_vol 12
		snd_instrument INSTR_09
		snd_note $45
		snd_inc_vol -12
		snd_instrument INSTR_NONE
		snd_note $45, NOTELEN_06
		snd_inc_vol 12
		snd_instrument INSTR_09
		snd_note $41, NOTELEN_03
		snd_inc_vol -12
		snd_instrument INSTR_NONE
		snd_note $41, NOTELEN_06
		snd_inc_vol 12
		snd_instrument INSTR_09
		snd_note $41, NOTELEN_03
		snd_inc_vol -12
		snd_instrument INSTR_NONE
		snd_note $41
		snd_inc_vol 12
		snd_instrument INSTR_09
		snd_note $41
		snd_note $3C
		snd_inc_vol -12
		snd_instrument INSTR_NONE
		snd_note $3C
		snd_inc_vol 12
		snd_instrument INSTR_09
		snd_note $3E
		snd_inc_vol -12
		snd_instrument INSTR_NONE
		snd_note $3E
		snd_inc_vol 12
		snd_instrument INSTR_09
		snd_note $41
		snd_note $43
		snd_inc_vol -12
		snd_instrument INSTR_NONE
		snd_note $43
		snd_inc_vol 12
		snd_instrument INSTR_09
		snd_note $45
		snd_inc_vol -12
		snd_instrument INSTR_NONE
		snd_note $45, NOTELEN_0C
		snd_inc_vol 12
		snd_instrument INSTR_09
		snd_djnz iSndChInfo_LoopTimer0, .loop0
	snd_duty SNDDUTY_50, $00
	snd_instrument INSTR_12
	snd_note $39, NOTELEN_06
	snd_note $3A
	snd_note $3C
	snd_note $41
	snd_note $40, NOTELEN_09
	snd_note $41
	snd_note $3E, NOTELEN_06
	snd_inc_vol -12
	snd_instrument INSTR_NONE
	snd_note $3E
	snd_inc_vol 12
	snd_instrument INSTR_12
	snd_note $3C
	snd_note $3A
	snd_note $39
	snd_note $37
	snd_note $35
	snd_note $34
	snd_note $37
	snd_note $35
	snd_note $37, NOTELEN_03
	snd_note $39
	snd_duty SNDDUTY_25, $00
	snd_instrument INSTR_09
	snd_note $3C
	snd_inc_vol -12
	snd_instrument INSTR_NONE
	snd_note $3C
	snd_inc_vol 12
	snd_instrument INSTR_09
	snd_note $3E
	snd_inc_vol -12
	snd_instrument INSTR_NONE
	snd_note $3E
	snd_inc_vol 12
	snd_instrument INSTR_09
	snd_note $41
	snd_note $43
	snd_inc_vol -12
	snd_instrument INSTR_NONE
	snd_note $43
	snd_inc_vol 12
	snd_instrument INSTR_09
	snd_note $45
	snd_inc_vol -12
	snd_instrument INSTR_NONE
	snd_note $45, NOTELEN_18
	snd_inc_vol 12
	snd_instrument INSTR_09
	snd_note $3C, NOTELEN_03
	snd_inc_vol -12
	snd_instrument INSTR_NONE
	snd_note $3C
	snd_inc_vol 12
	snd_instrument INSTR_09
	snd_note $3E
	snd_inc_vol -12
	snd_instrument INSTR_NONE
	snd_note $3E
	snd_inc_vol 12
	snd_instrument INSTR_09
	snd_note $41
	snd_note $43
	snd_inc_vol -12
	snd_instrument INSTR_NONE
	snd_note $43
	snd_inc_vol 12
	snd_instrument INSTR_09
	snd_note $45
	snd_inc_vol -12
	snd_instrument INSTR_NONE
	snd_note $45, NOTELEN_06
	snd_inc_vol 12
	snd_instrument INSTR_09
	snd_note $41, NOTELEN_03
	snd_inc_vol -12
	snd_instrument INSTR_NONE
	snd_note $41
	snd_duty SNDDUTY_50, $00
	snd_instrument INSTR_12
	snd_inc_vol 12
	snd_note $39, NOTELEN_06
	snd_note $3A
	snd_note $3C
	snd_note $41
	snd_note $40, NOTELEN_09
	snd_note $41
	snd_note $3C, NOTELEN_06
	snd_note $3E, NOTELEN_09
	snd_note $3A
	snd_note $39, NOTELEN_06
	snd_note $37
	snd_note $35
	snd_note $34
	snd_note $37
	snd_note $35
	snd_note $37, NOTELEN_03
	snd_note $39
	snd_duty SNDDUTY_25, $00
	snd_instrument INSTR_09
	snd_note $3C
	snd_inc_vol -12
	snd_instrument INSTR_NONE
	snd_note $3C
	snd_inc_vol 12
	snd_instrument INSTR_09
	snd_note $3E
	snd_inc_vol -12
	snd_instrument INSTR_NONE
	snd_note $3E
	snd_inc_vol 12
	snd_instrument INSTR_09
	snd_note $41
	snd_note $43
	snd_inc_vol -12
	snd_instrument INSTR_NONE
	snd_note $43
	snd_inc_vol 12
	snd_instrument INSTR_09
	snd_note $45
	snd_inc_vol -12
	snd_instrument INSTR_NONE
	snd_note $45, NOTELEN_18
	snd_inc_vol 12
	snd_instrument INSTR_09
	snd_note $3C, NOTELEN_03
	snd_inc_vol -12
	snd_instrument INSTR_NONE
	snd_note $3C
	snd_inc_vol 12
	snd_instrument INSTR_09
	snd_note $3E
	snd_inc_vol -12
	snd_instrument INSTR_NONE
	snd_note $3E
	snd_inc_vol 12
	snd_instrument INSTR_09
	snd_note $41
	snd_note $43
	snd_inc_vol -12
	snd_instrument INSTR_NONE
	snd_note $43
	snd_inc_vol 12
	snd_instrument INSTR_09
	snd_note $45
	snd_inc_vol -12
	snd_instrument INSTR_NONE
	snd_note $45, NOTELEN_0C
	snd_duty SNDDUTY_50, $00
	snd_instrument INSTR_11
	snd_inc_vol 12
	snd_note $00, NOTELEN_06
	snd_note $32
	snd_note $35
	snd_note $3A
	snd_note $3E, NOTELEN_09
	snd_note $3C
	snd_note $3A, NOTELEN_06
	snd_note $3C, NOTELEN_09
	snd_note $3C
	snd_note $3C, NOTELEN_06
	snd_note $3C, NOTELEN_09
	snd_note $39
	snd_note $35, NOTELEN_06
	snd_note $3A, NOTELEN_09
	snd_note $3A
	snd_note $3A, NOTELEN_06
	snd_note $3A, NOTELEN_09
	snd_note $39
	snd_note $37, NOTELEN_06
	snd_note $39, NOTELEN_09
	snd_note $3C
	snd_note $35, NOTELEN_01
	snd_inc_vol -7
	snd_instrument INSTR_12
	snd_var iSndChInfo_LoopTimer0, $0E
	.loop1:
		snd_note $35, NOTELEN_02
		snd_djnz iSndChInfo_LoopTimer0, .loop1
	snd_note $00, NOTELEN_01
	snd_note $00, NOTELEN_06
	snd_inc_vol 7
	snd_instrument INSTR_11
	snd_note $32
	snd_note $35
	snd_note $3A
	snd_note $3E, NOTELEN_09
	snd_note $3C
	snd_note $3A, NOTELEN_06
	snd_note $3C, NOTELEN_09
	snd_note $39
	snd_note $3A, NOTELEN_06
	snd_note $39, NOTELEN_09
	snd_note $3C
	snd_note $39, NOTELEN_06
	snd_note $3A, NOTELEN_09
	snd_note $34
	snd_note $37, NOTELEN_06
	snd_note $3A, NOTELEN_09
	snd_note $39
	snd_note $37, NOTELEN_06
	snd_duty SNDDUTY_25, $00
	snd_instrument INSTR_09
	snd_note $3A, NOTELEN_09
	snd_note $34
	snd_note $37, NOTELEN_06
	snd_note $3A, NOTELEN_09
	snd_note $39
	snd_note $37, NOTELEN_06
	snd_note $39
	snd_duty SNDDUTY_12, $00
	snd_instrument INSTR_NONE
	snd_inc_vol -3
	snd_note $39, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol -4
	snd_note $30
	snd_note $00, NOTELEN_02
	snd_note $29, NOTELEN_01
	snd_note $00, NOTELEN_CUSTOM, $05
	snd_inc_vol 4
	snd_note $39, NOTELEN_02
	snd_inc_vol -10
	snd_pan SNDOUT_CHR
	snd_note $39, NOTELEN_CUSTOM, $0A
	snd_inc_vol 10
	snd_pan SNDOUT_CHALL
	snd_note $39, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol -4
	snd_note $30
	snd_note $00, NOTELEN_02
	snd_note $29, NOTELEN_01
	snd_note $00, NOTELEN_CUSTOM, $05
	snd_inc_vol 4
	snd_note $39, NOTELEN_02
	snd_inc_vol -10
	snd_pan SNDOUT_CHL
	snd_note $39, NOTELEN_04
	snd_inc_vol 6
	snd_pan SNDOUT_CHALL
	snd_note $2B, NOTELEN_01
	snd_note $00, NOTELEN_CUSTOM, $05
	snd_inc_vol 4
	snd_note $3A, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol -4
	snd_note $32
	snd_note $00, NOTELEN_02
	snd_note $2B, NOTELEN_01
	snd_note $00, NOTELEN_CUSTOM, $05
	snd_inc_vol 4
	snd_note $3A, NOTELEN_02
	snd_inc_vol -10
	snd_pan SNDOUT_CHR
	snd_note $3A, NOTELEN_CUSTOM, $0A
	snd_inc_vol 10
	snd_pan SNDOUT_CHALL
	snd_note $3C, NOTELEN_02
	snd_inc_vol -10
	snd_pan SNDOUT_CHL
	snd_note $3C, NOTELEN_CUSTOM, $0A
	snd_inc_vol 10
	snd_pan SNDOUT_CHALL
	snd_note $3C, NOTELEN_02
	snd_inc_vol -10
	snd_pan SNDOUT_CHR
	snd_note $3C, NOTELEN_04
	snd_inc_vol 6
	snd_pan SNDOUT_CHALL
	snd_note $29, NOTELEN_01
	snd_note $00, NOTELEN_CUSTOM, $05
	snd_inc_vol 4
	snd_note $39, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol -4
	snd_note $30
	snd_note $00, NOTELEN_02
	snd_note $29, NOTELEN_01
	snd_note $00, NOTELEN_CUSTOM, $05
	snd_inc_vol 4
	snd_note $39, NOTELEN_02
	snd_inc_vol -10
	snd_pan SNDOUT_CHL
	snd_note $39, NOTELEN_CUSTOM, $0A
	snd_inc_vol 10
	snd_pan SNDOUT_CHALL
	snd_note $39, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol -4
	snd_note $30
	snd_note $00, NOTELEN_02
	snd_note $29, NOTELEN_01
	snd_note $00, NOTELEN_CUSTOM, $05
	snd_inc_vol 4
	snd_note $39, NOTELEN_02
	snd_inc_vol -10
	snd_pan SNDOUT_CHR
	snd_note $39, NOTELEN_04
	snd_inc_vol 6
	snd_pan SNDOUT_CHALL
	snd_note $2B, NOTELEN_01
	snd_note $00, NOTELEN_CUSTOM, $05
	snd_inc_vol 4
	snd_note $3A, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol -4
	snd_note $32
	snd_note $00, NOTELEN_02
	snd_note $2B, NOTELEN_01
	snd_note $00, NOTELEN_CUSTOM, $05
	snd_inc_vol 4
	snd_note $3A, NOTELEN_02
	snd_inc_vol -10
	snd_pan SNDOUT_CHL
	snd_note $3A, NOTELEN_CUSTOM, $0A
	snd_inc_vol 10
	snd_pan SNDOUT_CHALL
	snd_note $3C, NOTELEN_02
	snd_inc_vol -10
	snd_pan SNDOUT_CHR
	snd_note $3C, NOTELEN_CUSTOM, $0A
	snd_inc_vol 10
	snd_pan SNDOUT_CHALL
	snd_note $3C, NOTELEN_02
	snd_inc_vol -10
	snd_pan SNDOUT_CHL
	snd_note $3C, NOTELEN_04
	snd_pan SNDOUT_CHALL
	snd_inc_vol 13
	snd_jp SndData_0A_Ch1
SndData_0A_Ch2:
	snd_duty SNDDUTY_25, $00
	snd_instrument INSTR_09
	snd_var iSndChInfo_LoopTimer0, $02
	.loop0:
		snd_note $3C, NOTELEN_09
		snd_inc_vol -12
		snd_instrument INSTR_NONE
		snd_note $3C, NOTELEN_03
		snd_inc_vol 12
		snd_instrument INSTR_09
		snd_note $39
		snd_inc_vol -12
		snd_instrument INSTR_NONE
		snd_note $39
		snd_inc_vol 12
		snd_instrument INSTR_09
		snd_note $3A
		snd_inc_vol -12
		snd_instrument INSTR_NONE
		snd_note $3A
		snd_inc_vol 12
		snd_instrument INSTR_09
		snd_note $3C
		snd_note $3E
		snd_inc_vol -12
		snd_instrument INSTR_NONE
		snd_note $3E
		snd_inc_vol 12
		snd_instrument INSTR_09
		snd_note $41
		snd_inc_vol -12
		snd_instrument INSTR_NONE
		snd_note $41, NOTELEN_06
		snd_inc_vol 12
		snd_instrument INSTR_09
		snd_note $3C, NOTELEN_03
		snd_inc_vol -12
		snd_instrument INSTR_NONE
		snd_note $3C, NOTELEN_06
		snd_inc_vol 12
		snd_instrument INSTR_09
		snd_note $3C, NOTELEN_03
		snd_inc_vol -12
		snd_instrument INSTR_NONE
		snd_note $3C
		snd_inc_vol 12
		snd_instrument INSTR_09
		snd_note $3C
		snd_note $39
		snd_inc_vol -12
		snd_instrument INSTR_NONE
		snd_note $39
		snd_inc_vol 12
		snd_instrument INSTR_09
		snd_note $3A
		snd_inc_vol -12
		snd_instrument INSTR_NONE
		snd_note $3A
		snd_inc_vol 12
		snd_instrument INSTR_09
		snd_note $3C
		snd_note $3E
		snd_inc_vol -12
		snd_instrument INSTR_NONE
		snd_note $3E
		snd_inc_vol 12
		snd_instrument INSTR_09
		snd_note $41
		snd_inc_vol -12
		snd_instrument INSTR_NONE
		snd_note $41, NOTELEN_0C
		snd_inc_vol 12
		snd_instrument INSTR_09
		snd_djnz iSndChInfo_LoopTimer0, .loop0
	snd_duty SNDDUTY_50, $00
	snd_instrument INSTR_12
	snd_note $35, NOTELEN_06
	snd_note $37
	snd_note $39
	snd_note $3C
	snd_note $3C, NOTELEN_09
	snd_note $3C
	snd_note $3A, NOTELEN_06
	snd_inc_vol -12
	snd_instrument INSTR_NONE
	snd_note $3A
	snd_inc_vol 12
	snd_instrument INSTR_12
	snd_note $39
	snd_note $37
	snd_note $35
	snd_note $34
	snd_note $32
	snd_note $30
	snd_note $34
	snd_note $30
	snd_note $34, NOTELEN_03
	snd_note $35
	snd_duty SNDDUTY_25, $00
	snd_instrument INSTR_09
	snd_note $39
	snd_inc_vol -12
	snd_instrument INSTR_NONE
	snd_note $39
	snd_inc_vol 12
	snd_instrument INSTR_09
	snd_note $3A
	snd_inc_vol -12
	snd_instrument INSTR_NONE
	snd_note $3A
	snd_inc_vol 12
	snd_instrument INSTR_09
	snd_note $3C
	snd_note $3E
	snd_inc_vol -12
	snd_instrument INSTR_NONE
	snd_note $3E
	snd_inc_vol 12
	snd_instrument INSTR_09
	snd_note $41
	snd_inc_vol -12
	snd_instrument INSTR_NONE
	snd_note $41, NOTELEN_18
	snd_inc_vol 12
	snd_instrument INSTR_09
	snd_note $39, NOTELEN_03
	snd_inc_vol -12
	snd_instrument INSTR_NONE
	snd_note $39
	snd_inc_vol 12
	snd_instrument INSTR_09
	snd_note $3A
	snd_inc_vol -12
	snd_instrument INSTR_NONE
	snd_note $3A
	snd_inc_vol 12
	snd_instrument INSTR_09
	snd_note $3C
	snd_note $3E
	snd_inc_vol -12
	snd_instrument INSTR_NONE
	snd_note $3E
	snd_inc_vol 12
	snd_instrument INSTR_09
	snd_note $41
	snd_inc_vol -12
	snd_instrument INSTR_NONE
	snd_note $41, NOTELEN_06
	snd_inc_vol 12
	snd_instrument INSTR_09
	snd_note $3C, NOTELEN_03
	snd_inc_vol -12
	snd_instrument INSTR_NONE
	snd_note $3C
	snd_duty SNDDUTY_50, $00
	snd_instrument INSTR_12
	snd_inc_vol 12
	snd_note $35, NOTELEN_06
	snd_note $37
	snd_note $39
	snd_note $3C
	snd_note $3C, NOTELEN_09
	snd_note $3C
	snd_note $39, NOTELEN_06
	snd_note $3A, NOTELEN_09
	snd_note $37
	snd_note $35, NOTELEN_06
	snd_note $34
	snd_note $32
	snd_note $30
	snd_note $34
	snd_note $30
	snd_note $34, NOTELEN_03
	snd_note $35
	snd_duty SNDDUTY_25, $00
	snd_instrument INSTR_09
	snd_note $39
	snd_inc_vol -12
	snd_instrument INSTR_NONE
	snd_note $39
	snd_inc_vol 12
	snd_instrument INSTR_09
	snd_note $3A
	snd_inc_vol -12
	snd_instrument INSTR_NONE
	snd_note $3A
	snd_inc_vol 12
	snd_instrument INSTR_09
	snd_note $3C
	snd_note $3E
	snd_inc_vol -12
	snd_instrument INSTR_NONE
	snd_note $3E
	snd_inc_vol 12
	snd_instrument INSTR_09
	snd_note $41
	snd_inc_vol -12
	snd_instrument INSTR_NONE
	snd_note $41, NOTELEN_18
	snd_inc_vol 12
	snd_instrument INSTR_09
	snd_note $39, NOTELEN_03
	snd_inc_vol -12
	snd_instrument INSTR_NONE
	snd_note $39
	snd_inc_vol 12
	snd_instrument INSTR_09
	snd_note $3A
	snd_inc_vol -12
	snd_instrument INSTR_NONE
	snd_note $3A
	snd_inc_vol 12
	snd_instrument INSTR_09
	snd_note $3C
	snd_note $3E
	snd_inc_vol -12
	snd_instrument INSTR_NONE
	snd_note $3E
	snd_inc_vol 12
	snd_instrument INSTR_09
	snd_note $41
	snd_inc_vol -12
	snd_instrument INSTR_NONE
	snd_note $41, NOTELEN_0C
	snd_duty SNDDUTY_50, $00
	snd_instrument INSTR_11
	snd_inc_vol 12
	snd_note $00, NOTELEN_06
	snd_note $2E
	snd_note $32
	snd_note $35
	snd_note $3A, NOTELEN_09
	snd_note $39
	snd_note $37, NOTELEN_06
	snd_note $39, NOTELEN_09
	snd_note $39
	snd_note $39, NOTELEN_06
	snd_note $39, NOTELEN_09
	snd_note $35
	snd_note $30, NOTELEN_06
	snd_note $37, NOTELEN_09
	snd_note $37
	snd_note $37, NOTELEN_06
	snd_note $37, NOTELEN_09
	snd_note $35
	snd_note $34, NOTELEN_06
	snd_note $35, NOTELEN_09
	snd_note $39
	snd_note $30, NOTELEN_01
	snd_inc_vol -7
	snd_instrument INSTR_12
	snd_note $00
	snd_var iSndChInfo_LoopTimer0, $0E
	.loop1:
		snd_note $30, NOTELEN_02
		snd_djnz iSndChInfo_LoopTimer0, .loop1
	snd_note $00, NOTELEN_06
	snd_inc_vol 7
	snd_instrument INSTR_11
	snd_note $2E
	snd_note $32
	snd_note $35
	snd_note $3A, NOTELEN_09
	snd_note $39
	snd_note $37, NOTELEN_06
	snd_note $39, NOTELEN_09
	snd_note $35
	snd_note $32, NOTELEN_06
	snd_note $30, NOTELEN_09
	snd_note $39
	snd_note $35, NOTELEN_06
	snd_note $37, NOTELEN_09
	snd_note $30
	snd_note $34, NOTELEN_06
	snd_note $37, NOTELEN_09
	snd_note $35
	snd_note $34, NOTELEN_06
	snd_duty SNDDUTY_25, $00
	snd_instrument INSTR_09
	snd_note $37, NOTELEN_09
	snd_note $30
	snd_note $34, NOTELEN_06
	snd_note $37, NOTELEN_09
	snd_note $35
	snd_note $34, NOTELEN_06
	snd_note $35
	snd_duty SNDDUTY_12, $00
	snd_instrument INSTR_NONE
	snd_inc_vol -3
	snd_note $35, NOTELEN_02
	snd_inc_vol -10
	snd_pan SNDOUT_CHR
	snd_note $35, NOTELEN_CUSTOM, $0A
	snd_inc_vol 10
	snd_note $35, NOTELEN_02
	snd_inc_vol -10
	snd_pan SNDOUT_CHL
	snd_note $35, NOTELEN_CUSTOM, $0A
	snd_inc_vol 10
	snd_note $35, NOTELEN_02
	snd_inc_vol -10
	snd_pan SNDOUT_CHR
	snd_note $35, NOTELEN_CUSTOM, $0A
	snd_inc_vol 10
	snd_note $35, NOTELEN_02
	snd_inc_vol -10
	snd_pan SNDOUT_CHL
	snd_note $35, NOTELEN_CUSTOM, $0A
	snd_inc_vol 10
	snd_note $35, NOTELEN_02
	snd_inc_vol -10
	snd_pan SNDOUT_CHR
	snd_note $35, NOTELEN_CUSTOM, $0A
	snd_inc_vol 10
	snd_note $35, NOTELEN_02
	snd_inc_vol -10
	snd_pan SNDOUT_CHL
	snd_note $35, NOTELEN_CUSTOM, $0A
	snd_inc_vol 10
	snd_note $37, NOTELEN_02
	snd_inc_vol -10
	snd_pan SNDOUT_CHR
	snd_note $37, NOTELEN_CUSTOM, $0A
	snd_inc_vol 10
	snd_note $37, NOTELEN_02
	snd_inc_vol -10
	snd_pan SNDOUT_CHL
	snd_note $37, NOTELEN_04
	snd_note $00, NOTELEN_06
	snd_inc_vol 10
	snd_note $35, NOTELEN_02
	snd_inc_vol -10
	snd_pan SNDOUT_CHR
	snd_note $35, NOTELEN_CUSTOM, $0A
	snd_inc_vol 10
	snd_note $35, NOTELEN_02
	snd_inc_vol -10
	snd_pan SNDOUT_CHL
	snd_note $35, NOTELEN_CUSTOM, $0A
	snd_inc_vol 10
	snd_note $35, NOTELEN_02
	snd_inc_vol -10
	snd_pan SNDOUT_CHR
	snd_note $35, NOTELEN_CUSTOM, $0A
	snd_inc_vol 10
	snd_note $35, NOTELEN_02
	snd_inc_vol -10
	snd_pan SNDOUT_CHL
	snd_note $35, NOTELEN_CUSTOM, $0A
	snd_inc_vol 10
	snd_note $35, NOTELEN_02
	snd_inc_vol -10
	snd_pan SNDOUT_CHR
	snd_note $35, NOTELEN_CUSTOM, $0A
	snd_inc_vol 10
	snd_note $35, NOTELEN_02
	snd_inc_vol -10
	snd_pan SNDOUT_CHL
	snd_note $35, NOTELEN_CUSTOM, $0A
	snd_inc_vol 10
	snd_note $37, NOTELEN_02
	snd_inc_vol -10
	snd_pan SNDOUT_CHR
	snd_note $37, NOTELEN_CUSTOM, $0A
	snd_inc_vol 10
	snd_note $37, NOTELEN_02
	snd_inc_vol -10
	snd_pan SNDOUT_CHL
	snd_note $37, NOTELEN_04
	snd_pan SNDOUT_CHALL
	snd_inc_vol 13
	snd_jp SndData_0A_Ch2
SndData_0A_Ch4:
	snd_call .sub0
	snd_call .sub1
	snd_call .sub0
	snd_noteex PRESET_01, NOTELEN_03
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_note $00
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_03
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_01
	snd_noteex PRESET_04
	snd_noteex PRESET_00
	snd_noteex PRESET_01
	snd_inc_vol -5
	snd_noteex PRESET_04, NOTELEN_01
	snd_noteex PRESET_04
	snd_noteex PRESET_04
	snd_inc_vol 5
	snd_call .sub0
	snd_call .sub2
	snd_call .sub3
	snd_note $00
	snd_note $00
	snd_noteex PRESET_01, NOTELEN_06
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_02
	snd_noteex PRESET_03
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_04
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_00, NOTELEN_06
	snd_call .sub0
	snd_call .sub2
	snd_call .sub3
	snd_noteex PRESET_02, NOTELEN_06
	snd_noteex PRESET_00
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_02
	snd_noteex PRESET_03
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_01
	snd_note $00
	snd_noteex PRESET_00
	snd_noteex PRESET_04
	snd_noteex PRESET_01
	snd_note $00
	snd_var iSndChInfo_LoopTimer0, $06
	.loop0:
		snd_noteex PRESET_01, NOTELEN_06
		snd_noteex PRESET_03, NOTELEN_03
		snd_noteex PRESET_01
		snd_noteex PRESET_00
		snd_noteex PRESET_02
		snd_noteex PRESET_01, NOTELEN_06
		snd_noteex PRESET_02
		snd_noteex PRESET_01
		snd_noteex PRESET_00, NOTELEN_03
		snd_noteex PRESET_02
		snd_noteex PRESET_03, NOTELEN_06
		snd_djnz iSndChInfo_LoopTimer0, .loop0
	snd_noteex PRESET_01, NOTELEN_06
	snd_noteex PRESET_01
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_02
	snd_noteex PRESET_03, NOTELEN_06
	snd_noteex PRESET_01
	snd_noteex PRESET_01
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_02
	snd_noteex PRESET_03, NOTELEN_06
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_02, NOTELEN_09
	snd_inc_vol -5
	snd_noteex PRESET_04, NOTELEN_01
	snd_noteex PRESET_04
	snd_noteex PRESET_04
	snd_inc_vol 5
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_04, NOTELEN_03
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_04, NOTELEN_03
	snd_call .sub0
	snd_call .sub1
	snd_call .sub0
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_04, NOTELEN_03
	snd_noteex PRESET_00, NOTELEN_06
	snd_inc_vol -5
	snd_noteex PRESET_04, NOTELEN_01
	snd_noteex PRESET_04
	snd_noteex PRESET_04
	snd_inc_vol 5
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_inc_vol -5
	snd_noteex PRESET_04, NOTELEN_01
	snd_noteex PRESET_04
	snd_noteex PRESET_04
	snd_inc_vol 5
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_00
	snd_noteex PRESET_01
	snd_note $00
	snd_jp SndData_0A_Ch4
.sub0:
	snd_noteex PRESET_01, NOTELEN_03
	snd_noteex PRESET_02
	snd_noteex PRESET_03, NOTELEN_06
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_02
	snd_noteex PRESET_03
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_01
	snd_note $00
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_03, NOTELEN_06
	snd_ret
.sub1:
	snd_noteex PRESET_01, NOTELEN_03
	snd_noteex PRESET_02
	snd_noteex PRESET_03, NOTELEN_06
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_02
	snd_noteex PRESET_03
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_04
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_03, NOTELEN_06
	snd_ret
.sub2:
	snd_noteex PRESET_01, NOTELEN_03
	snd_noteex PRESET_02
	snd_noteex PRESET_01, NOTELEN_06
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_02
	snd_noteex PRESET_03
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_04
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_03, NOTELEN_06
	snd_ret
.sub3:
	snd_noteex PRESET_01, NOTELEN_03
	snd_noteex PRESET_02
	snd_noteex PRESET_03, NOTELEN_06
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_02
	snd_noteex PRESET_03
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_01
	snd_note $00
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_03
	snd_noteex PRESET_01
	snd_ret
SndHeader_1A:
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
	nrx1 SNDDUTY_12, $01 ; iSndChInfo_DutyOrWave
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
	nrx1 SNDDUTY_12, $01 ; iSndChInfo_DutyOrWave
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
	nrx1 SNDDUTY_12, $01 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_1A_Ch1:
	snd_duty SNDDUTY_50, $00
	snd_instrument INSTR_07
	snd_var iSndChInfo_LoopTimer0, $02
	.loop0:
		snd_note $38, NOTELEN_18
		snd_inc_vol -12
		snd_instrument INSTR_NONE
		snd_note $38, NOTELEN_03
		snd_inc_vol 12
		snd_instrument INSTR_07
		snd_note $3F, NOTELEN_0C
		snd_note $41, NOTELEN_09
		snd_note $3F, NOTELEN_03
		snd_inc_vol -12
		snd_instrument INSTR_NONE
		snd_note $3F
		snd_note $00, NOTELEN_09
		snd_inc_vol 12
		snd_instrument INSTR_07
		snd_note $3C, NOTELEN_0C
		snd_note $38
		snd_note $3A, NOTELEN_09
		snd_note $3C, NOTELEN_03
		snd_inc_vol -12
		snd_instrument INSTR_NONE
		snd_note $3C
		snd_duty SNDDUTY_25, $00
		snd_instrument INSTR_09
		snd_note $00
		snd_inc_vol 10
		snd_note $33
		snd_note $00
		snd_note $33
		snd_note $00
		snd_note $33
		snd_note $00
		snd_note $33, NOTELEN_0C
		snd_note $33, NOTELEN_09
		snd_note $33
		snd_note $33, NOTELEN_03
		snd_note $00
		snd_note $33
		snd_note $00
		snd_note $33
		snd_note $00
		snd_note $33, NOTELEN_0C
		snd_note $33, NOTELEN_09
		snd_duty SNDDUTY_50, $00
		snd_instrument INSTR_07
		snd_inc_vol 2
		snd_djnz iSndChInfo_LoopTimer0, .loop0
	snd_note $3A, NOTELEN_0C
	snd_inc_vol -12
	snd_instrument INSTR_NONE
	snd_pan SNDOUT_CHR
	snd_note $3A, NOTELEN_03
	snd_pan SNDOUT_CHALL
	snd_inc_vol 12
	snd_instrument INSTR_07
	snd_note $3A
	snd_note $00
	snd_note $3C
	snd_note $00
	snd_note $3D, NOTELEN_0C
	snd_note $41, NOTELEN_09
	snd_note $3F, NOTELEN_03
	snd_inc_vol -12
	snd_instrument INSTR_NONE
	snd_pan SNDOUT_CHL
	snd_note $3F, NOTELEN_06
	snd_pan SNDOUT_CHALL
	snd_inc_vol 5
	snd_note $3B, NOTELEN_01
	snd_inc_vol 5
	snd_note $3C, NOTELEN_CUSTOM, $05
	snd_note $3A, NOTELEN_06
	snd_note $38, NOTELEN_09
	snd_inc_vol -12
	snd_instrument INSTR_NONE
	snd_pan SNDOUT_CHR
	snd_note $38, NOTELEN_03
	snd_pan SNDOUT_CHALL
	snd_inc_vol 12
	snd_instrument INSTR_07
	snd_note $35, NOTELEN_09
	snd_note $37, NOTELEN_09
	snd_note $38, NOTELEN_12
	snd_inc_vol -12
	snd_instrument INSTR_NONE
	snd_pan SNDOUT_CHL
	snd_note $38, NOTELEN_06
	snd_pan SNDOUT_CHALL
	snd_inc_vol 12
	snd_instrument INSTR_07
	snd_note $38, NOTELEN_02
	snd_note $00, NOTELEN_04
	snd_note $3A, NOTELEN_02
	snd_note $00, NOTELEN_03
	snd_inc_vol -5
	snd_note $3A, NOTELEN_01
	snd_inc_vol 5
	snd_note $3C, NOTELEN_09
	snd_note $3A, NOTELEN_03
	snd_inc_vol -12
	snd_instrument INSTR_NONE
	snd_pan SNDOUT_CHR
	snd_note $3A, NOTELEN_06
	snd_note $00, NOTELEN_CUSTOM, $27
	snd_pan SNDOUT_CHALL
	snd_inc_vol 12
	snd_instrument INSTR_07
	snd_jp SndData_1A_Ch1
SndData_1A_Ch2:
	snd_inc_freq_offset -1
.loop0:
	snd_duty SNDDUTY_25, $00
	snd_instrument INSTR_09
	snd_var iSndChInfo_LoopTimer0, $04
	.loop1:
		snd_note $3C, NOTELEN_06
		snd_note $3C, NOTELEN_02
		snd_note $00, NOTELEN_01
		snd_note $3A, NOTELEN_03
		snd_note $00
		snd_note $3C
		snd_note $00
		snd_note $3A
		snd_note $00
		snd_note $3C, NOTELEN_0C
		snd_note $3A, NOTELEN_09
		snd_note $3C
		snd_note $3A, NOTELEN_03
		snd_note $00
		snd_note $3C
		snd_note $00
		snd_note $3A
		snd_note $00
		snd_note $3C, NOTELEN_0C
		snd_note $3A, NOTELEN_09
		snd_djnz iSndChInfo_LoopTimer0, .loop1
	snd_duty SNDDUTY_50, $00
	snd_instrument INSTR_07
	snd_note $35, NOTELEN_18
	snd_inc_vol -12
	snd_instrument INSTR_NONE
	snd_note $35, NOTELEN_03
	snd_inc_vol 12
	snd_instrument INSTR_07
	snd_note $38, NOTELEN_0C
	snd_note $3C, NOTELEN_09
	snd_note $33, NOTELEN_18
	snd_inc_vol -12
	snd_instrument INSTR_NONE
	snd_note $33, NOTELEN_03
	snd_inc_vol 12
	snd_instrument INSTR_07
	snd_note $3C, NOTELEN_0C
	snd_note $3A, NOTELEN_0C
	snd_note $35, NOTELEN_12
	snd_inc_vol -12
	snd_instrument INSTR_NONE
	snd_pan SNDOUT_CHR
	snd_note $35, NOTELEN_06
	snd_pan SNDOUT_CHALL
	snd_inc_vol 12
	snd_instrument INSTR_07
	snd_note $35
	snd_inc_vol -12
	snd_instrument INSTR_NONE
	snd_pan SNDOUT_CHL
	snd_note $35
	snd_pan SNDOUT_CHALL
	snd_inc_vol 12
	snd_instrument INSTR_07
	snd_note $38
	snd_inc_vol -12
	snd_instrument INSTR_NONE
	snd_pan SNDOUT_CHR
	snd_note $38, NOTELEN_03
	snd_pan SNDOUT_CHALL
	snd_inc_vol 12
	snd_instrument INSTR_07
	snd_note $37
	snd_inc_vol -12
	snd_instrument INSTR_NONE
	snd_pan SNDOUT_CHL
	snd_note $37, NOTELEN_06
	snd_note $00, NOTELEN_CUSTOM, $27
	snd_pan SNDOUT_CHALL
	snd_inc_vol 12
	snd_instrument INSTR_07
	snd_jp .loop0
SndData_1A_Ch3:
	snd_wave WAVE_04
	snd_var iSndChInfo_LoopTimer0, $03
	.loop0:
		snd_note $14, NOTELEN_CUSTOM, $0F
		snd_note $14, NOTELEN_02
		snd_note $00, NOTELEN_04
		snd_note $1B, NOTELEN_02
		snd_note $00, NOTELEN_04
		snd_note $1D, NOTELEN_0C
		snd_note $1B, NOTELEN_06
		snd_note $00, NOTELEN_03
		snd_note $20, NOTELEN_CUSTOM, $0F
		snd_note $20, NOTELEN_02
		snd_note $00, NOTELEN_04
		snd_note $1B, NOTELEN_02
		snd_note $00, NOTELEN_04
		snd_note $1D, NOTELEN_0C
		snd_note $1B, NOTELEN_09
		snd_djnz iSndChInfo_LoopTimer0, .loop0
	snd_note $14, NOTELEN_CUSTOM, $0F
	snd_note $14, NOTELEN_02
	snd_note $00, NOTELEN_04
	snd_note $1B, NOTELEN_02
	snd_note $00, NOTELEN_04
	snd_note $1D, NOTELEN_0C
	snd_note $1B, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_note $20, NOTELEN_CUSTOM, $0F
	snd_note $20, NOTELEN_02
	snd_note $00, NOTELEN_04
	snd_note $1B, NOTELEN_02
	snd_note $00, NOTELEN_04
	snd_note $1D, NOTELEN_0C
	snd_note $1B, NOTELEN_06
	snd_note $18, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_note $19, NOTELEN_CUSTOM, $0F
	snd_note $19, NOTELEN_02
	snd_note $00, NOTELEN_04
	snd_note $14, NOTELEN_02
	snd_note $00, NOTELEN_04
	snd_note $19, NOTELEN_03
	snd_note $00
	snd_note $1B
	snd_note $00
	snd_note $1D, NOTELEN_06
	snd_note $20, NOTELEN_03
	snd_note $14, NOTELEN_09
	snd_note $14, NOTELEN_01
	snd_note $00, NOTELEN_CUSTOM, $05
	snd_note $14, NOTELEN_06
	snd_note $12, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $11, NOTELEN_06
	snd_note $11, NOTELEN_03
	snd_note $13, NOTELEN_06
	snd_note $14
	snd_note $18, NOTELEN_03
	snd_note $18
	snd_note $16, NOTELEN_06
	snd_note $00
	snd_note $16
	snd_note $00
	snd_note $16, NOTELEN_03
	snd_note $00
	snd_note $18
	snd_note $00
	snd_note $19, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_note $1B
	snd_note $00
	snd_note $00
	snd_vibrato VIBRATO_11
	snd_instrument INSTR_13
	snd_pan SNDOUT_CHL
	snd_note $24, NOTELEN_03
	snd_note $24, NOTELEN_06
	snd_pan SNDOUT_CHALL
	snd_note $1E, NOTELEN_03
	snd_note $1E, NOTELEN_06
	snd_pan SNDOUT_CHL
	snd_note $24, NOTELEN_03
	snd_note $24, NOTELEN_06
	snd_note $19, NOTELEN_03
	snd_pan SNDOUT_CHL
	snd_note $24
	snd_pan SNDOUT_CHALL
	snd_note $1E
	snd_pan SNDOUT_CHR
	snd_note $19
	snd_pan SNDOUT_CHALL
	snd_vibrato VIBRATO_0B
	snd_instrument INSTR_08
	snd_jp SndData_1A_Ch3
SndData_1A_Ch4:
	snd_var iSndChInfo_LoopTimer0, $03
	.loop0:
		snd_noteex PRESET_01, NOTELEN_03
		snd_note $00
		snd_noteex PRESET_02
		snd_noteex PRESET_02
		snd_noteex PRESET_02
		snd_noteex PRESET_00
		snd_noteex PRESET_02
		snd_noteex PRESET_02
		snd_noteex PRESET_02
		snd_noteex PRESET_01
		snd_noteex PRESET_02
		snd_noteex PRESET_02
		snd_noteex PRESET_02
		snd_noteex PRESET_00
		snd_noteex PRESET_02
		snd_noteex PRESET_02
		snd_noteex PRESET_01
		snd_note $00
		snd_noteex PRESET_02
		snd_noteex PRESET_02
		snd_noteex PRESET_02
		snd_noteex PRESET_00
		snd_noteex PRESET_02
		snd_noteex PRESET_02
		snd_noteex PRESET_02
		snd_noteex PRESET_01
		snd_noteex PRESET_02
		snd_noteex PRESET_02
		snd_noteex PRESET_02
		snd_noteex PRESET_00
		snd_noteex PRESET_03
		snd_noteex PRESET_02
		snd_djnz iSndChInfo_LoopTimer0, .loop0
	snd_noteex PRESET_01, NOTELEN_03
	snd_note $00
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_note $00
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_01, NOTELEN_02
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_02, NOTELEN_03
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_01, NOTELEN_03
	snd_note $00
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_01, NOTELEN_03
	snd_note $00
	snd_noteex PRESET_02
	snd_noteex PRESET_02
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
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_01, NOTELEN_09
	snd_noteex PRESET_05, NOTELEN_03
	snd_noteex PRESET_05, NOTELEN_06
	snd_noteex PRESET_06, NOTELEN_03
	snd_noteex PRESET_06, NOTELEN_06
	snd_noteex PRESET_05, NOTELEN_03
	snd_noteex PRESET_05, NOTELEN_06
	snd_noteex PRESET_01, NOTELEN_03
	snd_noteex PRESET_05
	snd_noteex PRESET_06
	snd_noteex PRESET_07
	snd_jp SndData_1A_Ch4
SndHeader_1B:
	db 4 ; Number of slots
.slot0:
	db SNDSLOT0 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_08 ; iSndChInfo_Instrument
	db VIBRATO_0F ; iSndChInfo_Vibrato
	db -13 ; iSndChInfo_NoteIdBase
	db 90 ; iSndChInfo_Speed
	db SNDCH_WAVE ; iSndChInfo_ChId
	dw SndData_1B_Ch3 ; Data pointer
	db WAVE_00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot1:
	db SNDSLOT1 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_0F ; iSndChInfo_Vibrato
	db -25 ; iSndChInfo_NoteIdBase
	db 90 ; iSndChInfo_Speed
	db SNDCH_PULSE1 ; iSndChInfo_ChId
	dw SndData_1B_Ch1 ; Data pointer
	nrx1 SNDDUTY_12, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot2:
	db SNDSLOT2 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_0F ; iSndChInfo_Vibrato
	db -25 ; iSndChInfo_NoteIdBase
	db 90 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_1B_Ch2 ; Data pointer
	nrx1 SNDDUTY_12, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot3:
	db SNDSLOT3 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db 0 ; iSndChInfo_NoteIdBase
	db 90 ; iSndChInfo_Speed
	db SNDCH_NOISE ; iSndChInfo_ChId
	dw SndData_1B_Ch4 ; Data pointer
	nrx1 SNDDUTY_12, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_1B_Ch3:
	snd_wave WAVE_09
	snd_note $00, NOTELEN_06
	snd_note $20, NOTELEN_0C
	snd_note $27, NOTELEN_03
	snd_note $00, NOTELEN_CUSTOM, $0F
	snd_note $2E, NOTELEN_CUSTOM, $0F
	snd_note $27, NOTELEN_03
	snd_note $00, NOTELEN_12
	snd_note $20, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_note $20, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_note $27, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_note $27, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_note $22, NOTELEN_06
	snd_note $24, NOTELEN_03
	snd_note $26, NOTELEN_06
	snd_note $27, NOTELEN_03
	snd_note $00, NOTELEN_12
	snd_note $00, NOTELEN_06
	snd_note $20, NOTELEN_0C
	snd_note $27, NOTELEN_03
	snd_note $00, NOTELEN_CUSTOM, $0F
	snd_note $2E, NOTELEN_CUSTOM, $0F
	snd_note $27, NOTELEN_03
	snd_note $00, NOTELEN_12
	snd_note $20, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_note $20, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_note $27, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_note $27, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_inc_vol -1
	snd_note $2E, NOTELEN_06
	snd_inc_vol 1
	snd_note $25, NOTELEN_03
	snd_note $26, NOTELEN_06
	snd_inc_vol 2
	snd_note $27, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_wave WAVE_04
	snd_vibrato VIBRATO_12
	snd_inc_vol -1
	snd_note $5B, NOTELEN_09
	snd_end
SndData_1B_Ch1:
	snd_duty SNDDUTY_25, $00
	snd_instrument INSTR_07
	snd_note $00, NOTELEN_06
	snd_inc_vol 4
	snd_note $44, NOTELEN_0C
	snd_note $43, NOTELEN_03
	snd_inc_vol -8
	snd_note $43
	snd_note $00, NOTELEN_09
	snd_inc_vol 8
	snd_note $43, NOTELEN_03
	snd_note $41, NOTELEN_06
	snd_note $3F, NOTELEN_03
	snd_note $41, NOTELEN_06
	snd_note $43, NOTELEN_03
	snd_inc_vol -8
	snd_note $43
	snd_note $00, NOTELEN_06
	snd_inc_vol 8
	snd_note $3A, NOTELEN_03
	snd_note $3F
	snd_note $43
	snd_inc_vol -8
	snd_note $43
	snd_note $00
	snd_inc_vol 8
	snd_note $44
	snd_inc_vol -8
	snd_note $44
	snd_note $00, NOTELEN_06
	snd_inc_vol 8
	snd_note $43, NOTELEN_03
	snd_inc_vol -8
	snd_note $43
	snd_note $00
	snd_inc_vol 8
	snd_note $43
	snd_inc_vol -8
	snd_note $43
	snd_note $00
	snd_inc_vol 8
	snd_note $41, NOTELEN_06
	snd_note $3F, NOTELEN_03
	snd_note $3E, NOTELEN_06
	snd_note $3F, NOTELEN_03
	snd_inc_vol -8
	snd_note $3F
	snd_note $00
	snd_duty SNDDUTY_50, $00
	snd_instrument INSTR_11
	snd_pan SNDOUT_CHL
	snd_inc_vol 8
	snd_note $3F
	snd_note $3E, NOTELEN_06
	snd_note $3D, NOTELEN_03
	snd_note $3C
	snd_note $00
	snd_duty SNDDUTY_25, $00
	snd_instrument INSTR_07
	snd_pan SNDOUT_CHALL
	snd_note $44, NOTELEN_0C
	snd_note $43, NOTELEN_03
	snd_inc_vol -8
	snd_note $43
	snd_note $00, NOTELEN_09
	snd_inc_vol 8
	snd_note $43, NOTELEN_03
	snd_note $41, NOTELEN_06
	snd_note $3F, NOTELEN_03
	snd_note $41, NOTELEN_06
	snd_note $43, NOTELEN_03
	snd_inc_vol -8
	snd_note $43
	snd_note $00
	snd_inc_vol 8
	snd_note $39
	snd_note $3A
	snd_note $3F
	snd_note $43
	snd_note $44
	snd_inc_vol -8
	snd_note $44
	snd_note $00
	snd_inc_vol 8
	snd_note $44
	snd_inc_vol -8
	snd_note $44
	snd_note $00
	snd_inc_vol 8
	snd_note $43
	snd_inc_vol -8
	snd_note $43
	snd_note $00
	snd_inc_vol 8
	snd_note $43
	snd_inc_vol -8
	snd_note $43
	snd_note $00
	snd_inc_vol 8
	snd_note $41, NOTELEN_CUSTOM, $0F
	snd_note $3F, NOTELEN_03
	snd_inc_vol -8
	snd_note $3F
	snd_note $00, NOTELEN_CUSTOM, $0F
	snd_end
SndData_1B_Ch2:
	snd_duty SNDDUTY_50, $00
	snd_instrument INSTR_07
	snd_inc_freq_offset -1
	snd_note $00, NOTELEN_06
	snd_inc_vol 3
	snd_note $3F, NOTELEN_0C
	snd_note $3F, NOTELEN_03
	snd_inc_vol -8
	snd_note $3F
	snd_note $00, NOTELEN_0C
	snd_inc_vol 8
	snd_note $3E, NOTELEN_CUSTOM, $0F
	snd_note $3F, NOTELEN_03
	snd_inc_vol -8
	snd_note $3F
	snd_note $00, NOTELEN_06
	snd_inc_vol 8
	snd_note $3A, NOTELEN_03
	snd_note $3F
	snd_note $43
	snd_inc_vol -8
	snd_note $43
	snd_note $00
	snd_inc_vol 8
	snd_note $3F
	snd_inc_vol -8
	snd_note $3F
	snd_note $00, NOTELEN_06
	snd_inc_vol 8
	snd_note $3F, NOTELEN_03
	snd_inc_vol -8
	snd_note $3F
	snd_note $00
	snd_inc_vol 8
	snd_note $3F
	snd_inc_vol -8
	snd_note $3F
	snd_note $00
	snd_inc_vol 8
	snd_note $3A, NOTELEN_CUSTOM, $0F
	snd_note $3A, NOTELEN_03
	snd_inc_vol -8
	snd_note $3A
	snd_note $00
	snd_inc_vol 7
	snd_instrument INSTR_11
	snd_note $3C
	snd_note $3B, NOTELEN_06
	snd_note $3A, NOTELEN_03
	snd_note $38
	snd_note $00
	snd_inc_vol 1
	snd_instrument INSTR_07
	snd_note $3F, NOTELEN_0C
	snd_note $3F, NOTELEN_03
	snd_inc_vol -8
	snd_note $3F
	snd_note $00, NOTELEN_0C
	snd_inc_vol 8
	snd_note $3E, NOTELEN_CUSTOM, $0F
	snd_note $3F, NOTELEN_03
	snd_inc_vol -8
	snd_note $3F
	snd_note $00
	snd_inc_vol 8
	snd_note $39
	snd_note $3A
	snd_note $3F
	snd_note $43
	snd_note $3F
	snd_inc_vol -8
	snd_note $3F
	snd_note $00
	snd_inc_vol 8
	snd_note $3F
	snd_inc_vol -8
	snd_note $3F
	snd_note $00
	snd_inc_vol 8
	snd_note $3F
	snd_inc_vol -8
	snd_note $3F
	snd_note $00
	snd_inc_vol 8
	snd_note $3F
	snd_inc_vol -8
	snd_note $3F
	snd_note $00
	snd_inc_vol 8
	snd_note $3E, NOTELEN_CUSTOM, $0F
	snd_note $3A, NOTELEN_03
	snd_inc_vol -8
	snd_note $3A
	snd_note $00, NOTELEN_CUSTOM, $0F
	snd_end
SndData_1B_Ch4:
	snd_call .sub0
	snd_call .sub1
	snd_call .sub0
	snd_call .sub0
	snd_call .sub0
	snd_call .sub1
	snd_call .sub0
	snd_noteex PRESET_01, NOTELEN_06
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_03
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_end
.sub0:
	snd_noteex PRESET_01, NOTELEN_06
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_03, NOTELEN_06
	snd_noteex PRESET_02, NOTELEN_03
	snd_noteex PRESET_01
	snd_note $00
	snd_noteex PRESET_02
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_01, NOTELEN_03
	snd_ret
.sub1:
	snd_noteex PRESET_01, NOTELEN_06
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_03, NOTELEN_06
	snd_noteex PRESET_02, NOTELEN_03
	snd_noteex PRESET_01
	snd_note $00
	snd_noteex PRESET_02
	snd_noteex PRESET_00, NOTELEN_09
	snd_ret
	snd_end
SndHeader_13:
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
	nrx1 SNDDUTY_12, $00 ; iSndChInfo_DutyOrWave
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
	nrx1 SNDDUTY_12, $00 ; iSndChInfo_DutyOrWave
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
	nrx1 SNDDUTY_12, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_13_Ch3:
	snd_wave WAVE_0D
	snd_note $16, NOTELEN_06
	snd_note $16, NOTELEN_02
	snd_note $16
	snd_note $00, NOTELEN_04
	snd_note $18, NOTELEN_03
	snd_note $00
	snd_note $18
	snd_note $00
	snd_note $19
	snd_note $00, NOTELEN_09
	snd_note $1D, NOTELEN_CUSTOM, $0A
	snd_note $1B, NOTELEN_02
	snd_note $00, NOTELEN_10
	snd_note $1B, NOTELEN_02
	snd_note $1C, NOTELEN_04
	snd_note $1D, NOTELEN_02
	snd_note $00, NOTELEN_04
	snd_note $18, NOTELEN_02
	snd_note $11, NOTELEN_06
	snd_note $1D
	snd_note $17, NOTELEN_06
	snd_note $16, NOTELEN_04
	snd_note $16, NOTELEN_02
	snd_note $16
	snd_note $00, NOTELEN_04
	snd_note $18, NOTELEN_03
	snd_note $00
	snd_note $18
	snd_note $00
	snd_note $19
	snd_note $00, NOTELEN_09
	snd_note $1D, NOTELEN_CUSTOM, $0A
	snd_note $1B, NOTELEN_02
	snd_note $00, NOTELEN_10
	snd_note $1B, NOTELEN_02
	snd_note $1C, NOTELEN_04
	snd_note $1D, NOTELEN_02
	snd_note $00, NOTELEN_04
	snd_note $18, NOTELEN_02
	snd_note $11, NOTELEN_06
	snd_note $1D, NOTELEN_04
	snd_note $17, NOTELEN_06
	snd_note $16
	snd_note $16, NOTELEN_02
	snd_note $16
	snd_note $00, NOTELEN_04
	snd_note $18, NOTELEN_03
	snd_note $00
	snd_note $18
	snd_note $00
	snd_note $19
	snd_note $00, NOTELEN_09
	snd_note $1D, NOTELEN_CUSTOM, $0A
	snd_note $1B, NOTELEN_02
	snd_note $00, NOTELEN_10
	snd_note $1B, NOTELEN_02
	snd_note $1C, NOTELEN_04
	snd_note $1D, NOTELEN_02
	snd_note $00, NOTELEN_04
	snd_note $18, NOTELEN_02
	snd_note $11, NOTELEN_06
	snd_note $1D
	snd_note $17, NOTELEN_06
	snd_note $16, NOTELEN_04
	snd_note $16, NOTELEN_02
	snd_note $14, NOTELEN_04
	snd_note $11, NOTELEN_02
	snd_note $16
	snd_note $00, NOTELEN_08
	snd_note $18, NOTELEN_06
	snd_note $18, NOTELEN_02
	snd_note $16, NOTELEN_04
	snd_note $13, NOTELEN_02
	snd_note $18
	snd_note $00, NOTELEN_08
	snd_note $19, NOTELEN_06
	snd_note $19, NOTELEN_02
	snd_note $14, NOTELEN_04
	snd_note $16, NOTELEN_02
	snd_note $19, NOTELEN_04
	snd_note $1B, NOTELEN_02
	snd_note $1D, NOTELEN_04
	snd_note $1B, NOTELEN_08
	snd_note $1B, NOTELEN_02
	snd_note $00, NOTELEN_04
	snd_note $1A, NOTELEN_02
	snd_note $00, NOTELEN_04
	snd_note $1A, NOTELEN_02
	snd_note $00
	snd_note $00
	snd_note $19, NOTELEN_10
	snd_note $14, NOTELEN_02
	snd_note $16, NOTELEN_04
	snd_note $14, NOTELEN_02
	snd_note $00, NOTELEN_04
	snd_note $19, NOTELEN_02
	snd_note $00, NOTELEN_04
	snd_note $19, NOTELEN_06
	snd_note $14, NOTELEN_02
	snd_note $16, NOTELEN_04
	snd_note $14, NOTELEN_02
	snd_note $19, NOTELEN_10
	snd_note $14, NOTELEN_02
	snd_note $16, NOTELEN_04
	snd_note $14, NOTELEN_02
	snd_note $00, NOTELEN_04
	snd_note $19, NOTELEN_06
	snd_note $14, NOTELEN_02
	snd_note $19, NOTELEN_04
	snd_note $00, NOTELEN_02
	snd_note $19, NOTELEN_06
	snd_note $18, NOTELEN_10
	snd_note $13, NOTELEN_02
	snd_note $16, NOTELEN_04
	snd_note $18, NOTELEN_02
	snd_note $00, NOTELEN_04
	snd_note $18, NOTELEN_02
	snd_note $00, NOTELEN_04
	snd_note $18, NOTELEN_06
	snd_note $13, NOTELEN_02
	snd_note $18, NOTELEN_06
	snd_note $1D, NOTELEN_06
	snd_note $29, NOTELEN_02
	snd_note $00, NOTELEN_04
	snd_note $1B, NOTELEN_06
	snd_note $27, NOTELEN_02
	snd_note $00, NOTELEN_04
	snd_note $19, NOTELEN_06
	snd_note $25, NOTELEN_02
	snd_note $00, NOTELEN_04
	snd_note $18, NOTELEN_06
	snd_note $24, NOTELEN_02
	snd_note $00
	snd_note $00
	snd_note $16, NOTELEN_CUSTOM, $0A
	snd_note $11, NOTELEN_02
	snd_note $14, NOTELEN_04
	snd_note $16, NOTELEN_02
	snd_note $00, NOTELEN_04
	snd_note $16, NOTELEN_02
	snd_note $00, NOTELEN_04
	snd_note $16, NOTELEN_02
	snd_note $00, NOTELEN_04
	snd_note $11, NOTELEN_02
	snd_note $14, NOTELEN_06
	snd_note $16, NOTELEN_06
	snd_note $1B, NOTELEN_CUSTOM, $0A
	snd_note $16, NOTELEN_02
	snd_note $18, NOTELEN_04
	snd_note $1B, NOTELEN_02
	snd_note $00, NOTELEN_04
	snd_note $1B, NOTELEN_02
	snd_note $00, NOTELEN_04
	snd_note $1B, NOTELEN_02
	snd_note $00, NOTELEN_04
	snd_note $1B, NOTELEN_02
	snd_note $1D, NOTELEN_06
	snd_note $1B, NOTELEN_06
	snd_note $14, NOTELEN_06
	snd_note $20, NOTELEN_03
	snd_note $00
	snd_note $20, NOTELEN_04
	snd_note $1B, NOTELEN_02
	snd_note $1C, NOTELEN_04
	snd_note $1D, NOTELEN_06
	snd_note $1D, NOTELEN_02
	snd_note $1B, NOTELEN_04
	snd_note $1C, NOTELEN_02
	snd_note $1D, NOTELEN_04
	snd_note $1B, NOTELEN_02
	snd_note $18, NOTELEN_06
	snd_note $16, NOTELEN_04
	snd_note $19, NOTELEN_02
	snd_note $1D, NOTELEN_04
	snd_note $20, NOTELEN_02
	snd_note $24, NOTELEN_06
	snd_note $22
	snd_note $25, NOTELEN_0C
	snd_note $24, NOTELEN_CUSTOM, $0A
	snd_note $20, NOTELEN_24
	snd_inc_vol -3
	snd_instrument INSTR_NONE
	snd_var iSndChInfo_LoopTimer0, $0C
	.loop0:
		snd_note $20, NOTELEN_01
		snd_inc_vol -1
		snd_djnz iSndChInfo_LoopTimer0, .loop0
	snd_end_saveid
SndData_13_Ch1:
	snd_duty SNDDUTY_12, $00
	snd_instrument INSTR_11
	snd_note $00, NOTELEN_06
	snd_note $00, NOTELEN_02
	snd_note $00
	snd_note $00
	snd_note $00
	snd_note $38, NOTELEN_03
	snd_inc_vol -10
	snd_instrument INSTR_NONE
	snd_note $38
	snd_note $36, NOTELEN_01
	snd_note $35
	snd_note $33
	snd_note $31
	snd_note $30
	snd_note $2E
	snd_note $00, NOTELEN_0C
	snd_inc_vol 10
	snd_instrument INSTR_11
	snd_duty SNDDUTY_25, $00
	snd_note $33, NOTELEN_04
	snd_note $35, NOTELEN_03
	snd_note $00
	snd_note $38
	snd_inc_vol -12
	snd_instrument INSTR_NONE
	snd_note $38
	snd_note $00, NOTELEN_0C
	snd_inc_vol 12
	snd_instrument INSTR_11
	snd_note $3A, NOTELEN_02
	snd_note $3C, NOTELEN_04
	snd_note $38, NOTELEN_03
	snd_inc_vol -12
	snd_instrument INSTR_NONE
	snd_note $38
	snd_note $00, NOTELEN_08
	snd_inc_vol 12
	snd_instrument INSTR_11
	snd_note $35, NOTELEN_04
	snd_note $33, NOTELEN_02
	snd_note $35, NOTELEN_04
	snd_note $38, NOTELEN_03
	snd_inc_vol -12
	snd_instrument INSTR_NONE
	snd_note $38
	snd_inc_vol 12
	snd_instrument INSTR_11
	snd_note $00, NOTELEN_02
	snd_note $00, NOTELEN_03
	snd_note $00
	snd_note $38
	snd_duty SNDDUTY_12, $00
	snd_inc_vol -10
	snd_instrument INSTR_NONE
	snd_note $38
	snd_note $36, NOTELEN_01
	snd_note $35
	snd_note $33
	snd_note $31
	snd_note $30
	snd_note $2E
	snd_note $00, NOTELEN_0C
	snd_duty SNDDUTY_25, $00
	snd_inc_vol 10
	snd_instrument INSTR_11
	snd_note $33, NOTELEN_04
	snd_note $35, NOTELEN_03
	snd_note $00
	snd_note $3F, NOTELEN_CUSTOM, $0F
	snd_inc_vol -12
	snd_instrument INSTR_NONE
	snd_note $3F, NOTELEN_03
	snd_inc_vol 12
	snd_instrument INSTR_11
	snd_note $3F, NOTELEN_02
	snd_note $41, NOTELEN_04
	snd_inc_vol -5
	snd_note $3B, NOTELEN_01
	snd_inc_vol 5
	snd_note $3C, NOTELEN_CUSTOM, $05
	snd_note $3C, NOTELEN_02
	snd_note $3A, NOTELEN_03
	snd_inc_vol -12
	snd_instrument INSTR_NONE
	snd_note $3A
	snd_inc_vol 12
	snd_instrument INSTR_11
	snd_note $38, NOTELEN_04
	snd_note $35, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_note $00, NOTELEN_03
	snd_note $00, NOTELEN_02
	snd_note $00, NOTELEN_03
	snd_note $00
	snd_note $38
	snd_duty SNDDUTY_12, $00
	snd_inc_vol -10
	snd_instrument INSTR_NONE
	snd_note $38
	snd_note $36, NOTELEN_01
	snd_note $35
	snd_note $33
	snd_note $31
	snd_note $30
	snd_note $2E
	snd_note $00, NOTELEN_0C
	snd_duty SNDDUTY_25, $00
	snd_inc_vol 10
	snd_instrument INSTR_11
	snd_note $33, NOTELEN_04
	snd_note $35, NOTELEN_03
	snd_note $00
	snd_note $38
	snd_inc_vol -12
	snd_instrument INSTR_NONE
	snd_note $38
	snd_note $00, NOTELEN_0C
	snd_inc_vol 12
	snd_instrument INSTR_11
	snd_note $3A, NOTELEN_02
	snd_note $3C, NOTELEN_04
	snd_note $38, NOTELEN_03
	snd_inc_vol -12
	snd_instrument INSTR_NONE
	snd_note $38
	snd_note $00, NOTELEN_08
	snd_inc_vol 12
	snd_instrument INSTR_11
	snd_note $35, NOTELEN_04
	snd_note $33, NOTELEN_02
	snd_note $35, NOTELEN_04
	snd_note $38, NOTELEN_CUSTOM, $0F
	snd_inc_vol -12
	snd_instrument INSTR_NONE
	snd_pan SNDOUT_CHL
	snd_note $38, NOTELEN_03
	snd_pan SNDOUT_CHALL
	snd_inc_vol 12
	snd_instrument INSTR_11
	snd_note $33, NOTELEN_02
	snd_note $35, NOTELEN_04
	snd_note $38, NOTELEN_CUSTOM, $0B
	snd_inc_vol -12
	snd_instrument INSTR_NONE
	snd_pan SNDOUT_CHR
	snd_note $38, NOTELEN_03
	snd_pan SNDOUT_CHALL
	snd_inc_vol 12
	snd_instrument INSTR_11
	snd_note $38, NOTELEN_04
	snd_note $3A, NOTELEN_02
	snd_note $3C, NOTELEN_04
	snd_note $38, NOTELEN_CUSTOM, $16
	snd_inc_vol -12
	snd_instrument INSTR_NONE
	snd_pan SNDOUT_CHL
	snd_note $38, NOTELEN_04
	snd_pan SNDOUT_CHALL
	snd_inc_vol 12
	snd_instrument INSTR_11
	snd_note $3A, NOTELEN_09
	snd_inc_vol -12
	snd_instrument INSTR_NONE
	snd_pan SNDOUT_CHR
	snd_note $3A, NOTELEN_03
	snd_pan SNDOUT_CHALL
	snd_inc_vol 12
	snd_instrument INSTR_11
	snd_note $3A, NOTELEN_CUSTOM, $0A
	snd_inc_vol -12
	snd_instrument INSTR_NONE
	snd_pan SNDOUT_CHL
	snd_note $3A, NOTELEN_08
	snd_pan SNDOUT_CHALL
	snd_duty SNDDUTY_50, $00
	snd_instrument INSTR_15
	snd_inc_vol 8
	snd_note $3C, NOTELEN_04
	snd_note $3D, NOTELEN_02
	snd_note $00, NOTELEN_04
	snd_note $3C, NOTELEN_02
	snd_note $00, NOTELEN_04
	snd_note $38, NOTELEN_08
	snd_note $35, NOTELEN_02
	snd_note $00, NOTELEN_04
	snd_note $38, NOTELEN_02
	snd_note $00, NOTELEN_04
	snd_note $3A, NOTELEN_02
	snd_note $00
	snd_note $00
	snd_note $3C, NOTELEN_06
	snd_note $3D, NOTELEN_04
	snd_note $3C, NOTELEN_02
	snd_note $00, NOTELEN_04
	snd_note $3A, NOTELEN_02
	snd_note $00, NOTELEN_04
	snd_note $38, NOTELEN_08
	snd_note $35, NOTELEN_06
	snd_note $38
	snd_vibrato VIBRATO_13
	snd_note $3A, NOTELEN_06
	snd_vibrato VIBRATO_0F
	snd_note $37, NOTELEN_CUSTOM, $0F
	snd_inc_vol -10
	snd_instrument INSTR_NONE
	snd_note $37, NOTELEN_03
	snd_inc_vol 3
	snd_note $37, NOTELEN_02
	snd_inc_vol 3
	snd_note $38
	snd_inc_vol 3
	snd_note $39
	snd_inc_vol 3
	snd_instrument INSTR_15
	snd_note $3A, NOTELEN_09
	snd_note $38
	snd_note $37, NOTELEN_06
	snd_note $36, NOTELEN_CUSTOM, $15
	snd_inc_vol -10
	snd_instrument INSTR_NONE
	snd_note $36, NOTELEN_03
	snd_inc_vol 10
	snd_instrument INSTR_15
	snd_note $35, NOTELEN_09
	snd_note $34
	snd_note $35, NOTELEN_06
	snd_note $3C, NOTELEN_CUSTOM, $0F
	snd_inc_vol -10
	snd_instrument INSTR_NONE
	snd_note $3C, NOTELEN_03
	snd_inc_vol 10
	snd_instrument INSTR_15
	snd_note $35, NOTELEN_CUSTOM, $0F
	snd_inc_vol -10
	snd_instrument INSTR_NONE
	snd_note $35, NOTELEN_03
	snd_inc_vol 10
	snd_instrument INSTR_15
	snd_note $34, NOTELEN_06
	snd_note $35, NOTELEN_06
	snd_note $3C, NOTELEN_10
	snd_inc_vol -10
	snd_instrument INSTR_NONE
	snd_note $3C, NOTELEN_01
	snd_inc_vol 3
	snd_note $3D
	snd_inc_vol 4
	snd_note $3E
	snd_inc_vol 5
	snd_instrument INSTR_15
	snd_note $3F, NOTELEN_CUSTOM, $11
	snd_note $3C, NOTELEN_0C
	snd_note $38, NOTELEN_CUSTOM, $82
	snd_inc_vol -3
	snd_instrument INSTR_NONE
	snd_var iSndChInfo_LoopTimer0, $0C
	.loop0:
		snd_note $38, NOTELEN_01
		snd_inc_vol -1
		snd_djnz iSndChInfo_LoopTimer0, .loop0
	snd_end
SndData_13_Ch2:
	snd_duty SNDDUTY_25, $00
	snd_instrument INSTR_07
	snd_note $2C, NOTELEN_30
	snd_note $2E, NOTELEN_18
	snd_note $30
	snd_note $31, NOTELEN_CUSTOM, $1A
	snd_note $30, NOTELEN_CUSTOM, $16
	snd_note $2E, NOTELEN_18
	snd_note $30
	snd_note $2C, NOTELEN_CUSTOM, $1A
	snd_note $2E, NOTELEN_CUSTOM, $16
	snd_note $30, NOTELEN_18
	snd_note $33
	snd_inc_vol 4
	snd_instrument INSTR_11
	snd_note $31, NOTELEN_CUSTOM, $15
	snd_inc_vol -10
	snd_instrument INSTR_NONE
	snd_pan SNDOUT_CHR
	snd_note $31, NOTELEN_03
	snd_pan SNDOUT_CHALL
	snd_inc_vol 10
	snd_instrument INSTR_11
	snd_note $33, NOTELEN_CUSTOM, $15
	snd_inc_vol -10
	snd_instrument INSTR_NONE
	snd_pan SNDOUT_CHL
	snd_note $33, NOTELEN_03
	snd_pan SNDOUT_CHALL
	snd_inc_vol 10
	snd_instrument INSTR_11
	snd_note $35, NOTELEN_CUSTOM, $16
	snd_inc_vol -10
	snd_instrument INSTR_NONE
	snd_pan SNDOUT_CHR
	snd_note $35, NOTELEN_04
	snd_pan SNDOUT_CHALL
	snd_inc_vol 10
	snd_instrument INSTR_11
	snd_note $37, NOTELEN_09
	snd_inc_vol -10
	snd_instrument INSTR_NONE
	snd_pan SNDOUT_CHL
	snd_note $37, NOTELEN_03
	snd_pan SNDOUT_CHALL
	snd_inc_vol 10
	snd_instrument INSTR_11
	snd_note $37, NOTELEN_06
	snd_duty SNDDUTY_50, $00
	snd_instrument INSTR_15
	snd_inc_vol -5
	snd_note $29, NOTELEN_02
	snd_note $2A
	snd_note $2B
	snd_note $2C, NOTELEN_24
	snd_note $29, NOTELEN_06
	snd_note $2B, NOTELEN_06
	snd_note $2C, NOTELEN_09
	snd_note $2E
	snd_note $30, NOTELEN_06
	snd_note $31, NOTELEN_09
	snd_note $33
	snd_note $35, NOTELEN_06
	snd_note $33, NOTELEN_18
	snd_note $33, NOTELEN_09
	snd_note $31
	snd_note $30, NOTELEN_06
	snd_note $2E, NOTELEN_CUSTOM, $15
	snd_inc_vol -5
	snd_instrument INSTR_NONE
	snd_note $2E, NOTELEN_03
	snd_inc_vol 5
	snd_instrument INSTR_15
	snd_note $30, NOTELEN_18
	snd_note $35, NOTELEN_CUSTOM, $0F
	snd_inc_vol -5
	snd_instrument INSTR_NONE
	snd_note $35, NOTELEN_03
	snd_inc_vol 5
	snd_instrument INSTR_15
	snd_note $31, NOTELEN_CUSTOM, $0F
	snd_inc_vol -5
	snd_instrument INSTR_NONE
	snd_note $31, NOTELEN_03
	snd_inc_vol 5
	snd_instrument INSTR_15
	snd_note $30, NOTELEN_06
	snd_note $31, NOTELEN_06
	snd_note $35, NOTELEN_CUSTOM, $0F
	snd_inc_vol -5
	snd_instrument INSTR_NONE
	snd_note $35, NOTELEN_03
	snd_inc_vol 5
	snd_instrument INSTR_15
	snd_note $34, NOTELEN_12
	snd_note $31, NOTELEN_0C
	snd_note $30, NOTELEN_CUSTOM, $2D
	snd_inc_vol -5
	snd_instrument INSTR_NONE
	snd_note $30, NOTELEN_03
	snd_inc_vol 5
	snd_instrument INSTR_15
	snd_note $31, NOTELEN_CUSTOM, $15
	snd_inc_vol -5
	snd_instrument INSTR_NONE
	snd_note $31, NOTELEN_03
	snd_inc_vol 5
	snd_instrument INSTR_15
	snd_note $31, NOTELEN_09
	snd_inc_vol -5
	snd_instrument INSTR_NONE
	snd_note $31, NOTELEN_03
	snd_inc_vol 5
	snd_instrument INSTR_15
	snd_note $34, NOTELEN_CUSTOM, $0A
	snd_note $33, NOTELEN_24
	snd_inc_vol -3
	snd_instrument INSTR_NONE
	snd_var iSndChInfo_LoopTimer0, $0C
	.loop0:
		snd_note $33, NOTELEN_01
		snd_inc_vol -1
		snd_djnz iSndChInfo_LoopTimer0, .loop0
	snd_end
SndData_13_Ch4:
	snd_noteex PRESET_01, NOTELEN_02
	snd_note $00, NOTELEN_04
	snd_noteex PRESET_02, NOTELEN_02
	snd_noteex PRESET_01, NOTELEN_06
	snd_noteex PRESET_00, NOTELEN_04
	snd_noteex PRESET_02, NOTELEN_02
	snd_noteex PRESET_01, NOTELEN_06
	snd_noteex PRESET_01, NOTELEN_04
	snd_noteex PRESET_03, NOTELEN_02
	snd_noteex PRESET_02, NOTELEN_06
	snd_noteex PRESET_00
	snd_noteex PRESET_01, NOTELEN_04
	snd_noteex PRESET_01, NOTELEN_02
	snd_note $00, NOTELEN_04
	snd_noteex PRESET_02, NOTELEN_02
	snd_noteex PRESET_01, NOTELEN_06
	snd_noteex PRESET_00, NOTELEN_04
	snd_noteex PRESET_02, NOTELEN_02
	snd_noteex PRESET_01, NOTELEN_04
	snd_noteex PRESET_01, NOTELEN_02
	snd_noteex PRESET_02, NOTELEN_04
	snd_noteex PRESET_01, NOTELEN_02
	snd_noteex PRESET_01, NOTELEN_04
	snd_noteex PRESET_04, NOTELEN_02
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_01
	snd_noteex PRESET_01, NOTELEN_04
	snd_noteex PRESET_02, NOTELEN_02
	snd_noteex PRESET_01, NOTELEN_06
	snd_noteex PRESET_00, NOTELEN_04
	snd_noteex PRESET_02, NOTELEN_02
	snd_noteex PRESET_01, NOTELEN_06
	snd_noteex PRESET_01, NOTELEN_04
	snd_noteex PRESET_02, NOTELEN_02
	snd_noteex PRESET_01, NOTELEN_06
	snd_noteex PRESET_00
	snd_noteex PRESET_01, NOTELEN_04
	snd_noteex PRESET_01, NOTELEN_02
	snd_note $00, NOTELEN_04
	snd_noteex PRESET_02, NOTELEN_02
	snd_noteex PRESET_01, NOTELEN_04
	snd_noteex PRESET_02, NOTELEN_02
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_01, NOTELEN_04
	snd_noteex PRESET_01
	snd_noteex PRESET_02, NOTELEN_02
	snd_noteex PRESET_01
	snd_noteex PRESET_01, NOTELEN_04
	snd_noteex PRESET_04, NOTELEN_02
	snd_noteex PRESET_00, NOTELEN_04
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_01, NOTELEN_02
	snd_note $00, NOTELEN_04
	snd_noteex PRESET_02, NOTELEN_02
	snd_noteex PRESET_01, NOTELEN_06
	snd_noteex PRESET_00, NOTELEN_04
	snd_noteex PRESET_02, NOTELEN_02
	snd_noteex PRESET_01, NOTELEN_06
	snd_noteex PRESET_01, NOTELEN_04
	snd_noteex PRESET_03, NOTELEN_02
	snd_noteex PRESET_02, NOTELEN_06
	snd_noteex PRESET_00
	snd_noteex PRESET_01, NOTELEN_04
	snd_noteex PRESET_01, NOTELEN_02
	snd_note $00, NOTELEN_04
	snd_noteex PRESET_02, NOTELEN_02
	snd_noteex PRESET_01, NOTELEN_06
	snd_noteex PRESET_00, NOTELEN_04
	snd_noteex PRESET_02, NOTELEN_02
	snd_noteex PRESET_01, NOTELEN_04
	snd_noteex PRESET_01, NOTELEN_02
	snd_noteex PRESET_02, NOTELEN_04
	snd_noteex PRESET_01, NOTELEN_02
	snd_noteex PRESET_01, NOTELEN_04
	snd_noteex PRESET_04, NOTELEN_02
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_01, NOTELEN_04
	snd_noteex PRESET_01, NOTELEN_02
	snd_note $00, NOTELEN_04
	snd_noteex PRESET_02, NOTELEN_02
	snd_noteex PRESET_01, NOTELEN_06
	snd_noteex PRESET_00, NOTELEN_04
	snd_noteex PRESET_02, NOTELEN_02
	snd_noteex PRESET_01, NOTELEN_06
	snd_noteex PRESET_01, NOTELEN_04
	snd_noteex PRESET_03, NOTELEN_02
	snd_noteex PRESET_02, NOTELEN_06
	snd_noteex PRESET_00
	snd_noteex PRESET_01, NOTELEN_04
	snd_noteex PRESET_01, NOTELEN_02
	snd_note $00, NOTELEN_04
	snd_noteex PRESET_02, NOTELEN_02
	snd_noteex PRESET_01, NOTELEN_06
	snd_noteex PRESET_00
	snd_noteex PRESET_00, NOTELEN_04
	snd_noteex PRESET_01, NOTELEN_06
	snd_noteex PRESET_04, NOTELEN_02
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_00
	snd_noteex PRESET_00, NOTELEN_04
	snd_noteex PRESET_04, NOTELEN_02
	snd_var iSndChInfo_LoopTimer0, $08
	.loop0:
		snd_noteex PRESET_01, NOTELEN_04
		snd_noteex PRESET_02, NOTELEN_02
		snd_noteex PRESET_03, NOTELEN_04
		snd_noteex PRESET_02, NOTELEN_02
		snd_noteex PRESET_00, NOTELEN_04
		snd_noteex PRESET_02, NOTELEN_02
		snd_noteex PRESET_03, NOTELEN_04
		snd_noteex PRESET_02, NOTELEN_02
		snd_djnz iSndChInfo_LoopTimer0, .loop0
	snd_noteex PRESET_01, NOTELEN_04
	snd_noteex PRESET_02, NOTELEN_02
	snd_noteex PRESET_03, NOTELEN_04
	snd_noteex PRESET_02, NOTELEN_02
	snd_noteex PRESET_00, NOTELEN_04
	snd_noteex PRESET_02, NOTELEN_02
	snd_noteex PRESET_03, NOTELEN_04
	snd_noteex PRESET_01, NOTELEN_02
	snd_noteex PRESET_02, NOTELEN_04
	snd_noteex PRESET_01, NOTELEN_02
	snd_noteex PRESET_01, NOTELEN_04
	snd_noteex PRESET_02, NOTELEN_02
	snd_noteex PRESET_00, NOTELEN_04
	snd_noteex PRESET_02, NOTELEN_02
	snd_noteex PRESET_03, NOTELEN_04
	snd_noteex PRESET_02, NOTELEN_02
	snd_noteex PRESET_01, NOTELEN_04
	snd_noteex PRESET_02, NOTELEN_02
	snd_noteex PRESET_03, NOTELEN_04
	snd_noteex PRESET_02, NOTELEN_02
	snd_noteex PRESET_00, NOTELEN_04
	snd_noteex PRESET_02, NOTELEN_02
	snd_noteex PRESET_03, NOTELEN_04
	snd_noteex PRESET_01, NOTELEN_02
	snd_noteex PRESET_02, NOTELEN_04
	snd_noteex PRESET_02, NOTELEN_02
	snd_noteex PRESET_01, NOTELEN_04
	snd_noteex PRESET_02, NOTELEN_02
	snd_noteex PRESET_00, NOTELEN_04
	snd_noteex PRESET_02, NOTELEN_02
	snd_noteex PRESET_03, NOTELEN_04
	snd_noteex PRESET_02, NOTELEN_02
	snd_noteex PRESET_01, NOTELEN_04
	snd_noteex PRESET_02, NOTELEN_02
	snd_noteex PRESET_01, NOTELEN_04
	snd_noteex PRESET_02, NOTELEN_02
	snd_noteex PRESET_00, NOTELEN_04
	snd_noteex PRESET_02, NOTELEN_02
	snd_noteex PRESET_03, NOTELEN_04
	snd_noteex PRESET_01, NOTELEN_02
	snd_noteex PRESET_02, NOTELEN_04
	snd_noteex PRESET_02, NOTELEN_02
	snd_noteex PRESET_01, NOTELEN_04
	snd_noteex PRESET_02, NOTELEN_02
	snd_noteex PRESET_00, NOTELEN_04
	snd_noteex PRESET_02, NOTELEN_02
	snd_noteex PRESET_03
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_01, NOTELEN_04
	snd_noteex PRESET_02, NOTELEN_02
	snd_noteex PRESET_03, NOTELEN_04
	snd_noteex PRESET_02, NOTELEN_02
	snd_noteex PRESET_00, NOTELEN_04
	snd_noteex PRESET_02, NOTELEN_02
	snd_noteex PRESET_03, NOTELEN_04
	snd_noteex PRESET_02, NOTELEN_02
	snd_noteex PRESET_00, NOTELEN_08
	snd_noteex PRESET_02, NOTELEN_02
	snd_noteex PRESET_02
	snd_noteex PRESET_00, NOTELEN_CUSTOM, $08
	snd_noteex PRESET_02, NOTELEN_02
	snd_noteex PRESET_01
	snd_var iSndChInfo_LoopTimer0, $0F
	.loop1:
		snd_noteex PRESET_04, NOTELEN_02
		snd_noteex PRESET_04
		snd_inc_vol -1
		snd_djnz iSndChInfo_LoopTimer0, .loop1
	snd_end
SndHeader_07:
	db 4 ; Number of slots
.slot0:
	db SNDSLOT0 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_08 ; iSndChInfo_Instrument
	db VIBRATO_0F ; iSndChInfo_Vibrato
	db -13 ; iSndChInfo_NoteIdBase
	db 68 ; iSndChInfo_Speed
	db SNDCH_WAVE ; iSndChInfo_ChId
	dw SndData_07_Ch3 ; Data pointer
	db WAVE_00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot1:
	db SNDSLOT1 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_07 ; iSndChInfo_Instrument
	db VIBRATO_0F ; iSndChInfo_Vibrato
	db -25 ; iSndChInfo_NoteIdBase
	db 68 ; iSndChInfo_Speed
	db SNDCH_PULSE1 ; iSndChInfo_ChId
	dw SndData_07_Ch1 ; Data pointer
	nrx1 SNDDUTY_12, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot2:
	db SNDSLOT2 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 13 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_0C ; iSndChInfo_Vibrato
	db -25 ; iSndChInfo_NoteIdBase
	db 68 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_07_Ch2 ; Data pointer
	nrx1 SNDDUTY_12, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot3:
	db SNDSLOT3 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db 0 ; iSndChInfo_NoteIdBase
	db 68 ; iSndChInfo_Speed
	db SNDCH_NOISE ; iSndChInfo_ChId
	dw SndData_07_Ch4 ; Data pointer
	nrx1 SNDDUTY_12, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_07_Ch3:
	snd_wave WAVE_0D
	snd_note $1B, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $1F, NOTELEN_09
	snd_note $22, NOTELEN_06
	snd_note $14, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $18, NOTELEN_09
	snd_note $1B, NOTELEN_06
	snd_note $1B, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $1F, NOTELEN_09
	snd_note $22, NOTELEN_06
	snd_note $14, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $18, NOTELEN_09
	snd_note $1B, NOTELEN_03
	snd_note $1D
	snd_note $1B
	snd_note $00, NOTELEN_06
	snd_note $1F, NOTELEN_09
	snd_note $22, NOTELEN_06
	snd_note $14, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $18, NOTELEN_09
	snd_note $1B, NOTELEN_06
	snd_note $19, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $20, NOTELEN_09
	snd_note $19, NOTELEN_03
	snd_note $18
	snd_note $16
	snd_note $1A
	snd_note $1D
	snd_note $22
	snd_note $00, NOTELEN_06
	snd_note $16
	snd_note $1B, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $1F, NOTELEN_09
	snd_note $22, NOTELEN_06
	snd_note $14, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $18, NOTELEN_09
	snd_note $1B, NOTELEN_06
	snd_note $1B, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $1F, NOTELEN_09
	snd_note $22, NOTELEN_06
	snd_note $14, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $16
	snd_note $16, NOTELEN_03
	snd_note $1D
	snd_note $16
	snd_note $1B
	snd_note $00, NOTELEN_06
	snd_note $1F, NOTELEN_09
	snd_note $22, NOTELEN_06
	snd_note $14, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $18, NOTELEN_09
	snd_note $1B, NOTELEN_06
	snd_note $1B, NOTELEN_03
	snd_note $00
	snd_note $1B
	snd_note $00
	snd_note $19
	snd_note $1A
	snd_note $00
	snd_note $1B
	snd_note $00, NOTELEN_0C
	snd_note $16
	snd_jp SndData_07_Ch3
SndData_07_Ch1:
	snd_duty SNDDUTY_25, $00
	snd_note $43, NOTELEN_03
	snd_inc_vol -12
	snd_instrument INSTR_NONE
	snd_note $43
	snd_note $00, NOTELEN_06
	snd_inc_vol 12
	snd_instrument INSTR_07
	snd_note $43, NOTELEN_03
	snd_note $42, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $43, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $44
	snd_note $00, NOTELEN_CUSTOM, $0A
	snd_note $48, NOTELEN_03
	snd_inc_vol -12
	snd_instrument INSTR_NONE
	snd_note $48
	snd_inc_vol 12
	snd_instrument INSTR_07
	snd_note $46, NOTELEN_06
	snd_note $44, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_note $43, NOTELEN_03
	snd_inc_vol -12
	snd_instrument INSTR_NONE
	snd_note $43
	snd_note $00, NOTELEN_06
	snd_inc_vol 12
	snd_instrument INSTR_07
	snd_note $43, NOTELEN_03
	snd_note $42, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $43, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $44
	snd_note $00, NOTELEN_CUSTOM, $19
	snd_note $43, NOTELEN_03
	snd_inc_vol -12
	snd_instrument INSTR_NONE
	snd_note $43
	snd_note $00, NOTELEN_06
	snd_inc_vol 12
	snd_instrument INSTR_07
	snd_note $43, NOTELEN_03
	snd_note $42, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $43, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $44
	snd_note $00, NOTELEN_CUSTOM, $0A
	snd_note $48, NOTELEN_03
	snd_inc_vol -12
	snd_instrument INSTR_NONE
	snd_note $48
	snd_inc_vol 12
	snd_instrument INSTR_07
	snd_note $46, NOTELEN_06
	snd_note $44, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_instrument INSTR_17
	snd_note $41, NOTELEN_CUSTOM, $15
	snd_inc_vol -12
	snd_instrument INSTR_NONE
	snd_note $41, NOTELEN_03
	snd_inc_vol 12
	snd_instrument INSTR_07
	snd_note $44
	snd_note $43, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $44, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $46
	snd_note $00, NOTELEN_CUSTOM, $07
	snd_note $46, NOTELEN_06
	snd_note $43, NOTELEN_03
	snd_inc_vol -12
	snd_instrument INSTR_NONE
	snd_note $43
	snd_note $00, NOTELEN_06
	snd_inc_vol 12
	snd_instrument INSTR_07
	snd_note $43, NOTELEN_03
	snd_note $42, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $43, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $44
	snd_note $00, NOTELEN_CUSTOM, $0A
	snd_note $48, NOTELEN_03
	snd_inc_vol -12
	snd_instrument INSTR_NONE
	snd_note $48
	snd_inc_vol 12
	snd_instrument INSTR_07
	snd_note $46, NOTELEN_06
	snd_note $44, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_note $43, NOTELEN_03
	snd_inc_vol -12
	snd_instrument INSTR_NONE
	snd_note $43
	snd_note $00, NOTELEN_06
	snd_inc_vol 12
	snd_instrument INSTR_07
	snd_note $43, NOTELEN_03
	snd_note $42, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $43, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $44
	snd_note $00, NOTELEN_CUSTOM, $0A
	snd_note $46, NOTELEN_04
	snd_inc_vol -12
	snd_instrument INSTR_NONE
	snd_note $46, NOTELEN_CUSTOM, $05
	snd_instrument INSTR_07
	snd_inc_vol 12
	snd_note $46, NOTELEN_06
	snd_note $43, NOTELEN_03
	snd_inc_vol -12
	snd_instrument INSTR_NONE
	snd_note $43
	snd_note $00, NOTELEN_06
	snd_inc_vol 12
	snd_instrument INSTR_07
	snd_note $43, NOTELEN_03
	snd_note $42, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $43, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $44
	snd_note $00, NOTELEN_CUSTOM, $0A
	snd_note $48, NOTELEN_03
	snd_inc_vol -12
	snd_instrument INSTR_NONE
	snd_note $48
	snd_inc_vol 12
	snd_instrument INSTR_07
	snd_note $46, NOTELEN_06
	snd_note $44, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_note $00, NOTELEN_06
	snd_note $3F, NOTELEN_03
	snd_inc_vol -12
	snd_instrument INSTR_NONE
	snd_note $3F
	snd_inc_vol 12
	snd_instrument INSTR_07
	snd_note $3D, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_note $3E, NOTELEN_03
	snd_inc_vol -12
	snd_instrument INSTR_NONE
	snd_note $3E
	snd_inc_vol 12
	snd_instrument INSTR_07
	snd_note $3F
	snd_inc_vol -12
	snd_instrument INSTR_NONE
	snd_note $3F, NOTELEN_06
	snd_note $00, NOTELEN_12
	snd_inc_vol 12
	snd_instrument INSTR_07
	snd_jp SndData_07_Ch1
SndData_07_Ch2:
	snd_duty SNDDUTY_25, $00
	snd_instrument INSTR_07
	snd_note $3F, NOTELEN_03
	snd_inc_vol -12
	snd_instrument INSTR_NONE
	snd_note $3F
	snd_duty SNDDUTY_12, $00
	snd_instrument INSTR_16
	snd_inc_vol 12
	snd_note $33
	snd_note $2E
	snd_note $37
	snd_note $33
	snd_note $2E
	snd_note $37
	snd_note $00
	snd_note $38
	snd_note $33
	snd_note $30
	snd_note $38
	snd_note $33
	snd_note $30
	snd_note $38
	snd_duty SNDDUTY_25, $00
	snd_instrument INSTR_07
	snd_note $3F
	snd_inc_vol -12
	snd_instrument INSTR_NONE
	snd_note $3F
	snd_duty SNDDUTY_12, $00
	snd_instrument INSTR_16
	snd_inc_vol 12
	snd_note $37
	snd_note $33
	snd_note $3A
	snd_note $37
	snd_note $33
	snd_note $3A
	snd_note $00
	snd_note $3C
	snd_note $38
	snd_note $33
	snd_note $3C
	snd_note $38
	snd_note $33
	snd_note $3C
	snd_duty SNDDUTY_25, $00
	snd_instrument INSTR_07
	snd_note $3F
	snd_inc_vol -12
	snd_instrument INSTR_NONE
	snd_note $3F
	snd_duty SNDDUTY_12, $00
	snd_instrument INSTR_16
	snd_inc_vol 12
	snd_note $33
	snd_note $2E
	snd_note $37
	snd_note $33
	snd_note $2E
	snd_note $37
	snd_note $00
	snd_note $38
	snd_note $33
	snd_note $30
	snd_note $38
	snd_note $33
	snd_note $30
	snd_note $38
	snd_duty SNDDUTY_25, $00
	snd_instrument INSTR_17
	snd_note $3D, NOTELEN_09
	snd_duty SNDDUTY_12, $00
	snd_instrument INSTR_16
	snd_note $31, NOTELEN_03
	snd_note $38
	snd_note $35
	snd_note $31
	snd_note $38
	snd_note $00
	snd_note $3A
	snd_note $35
	snd_note $32
	snd_note $3A
	snd_note $35
	snd_note $32
	snd_note $3A
	snd_duty SNDDUTY_25, $00
	snd_instrument INSTR_07
	snd_note $3F
	snd_inc_vol -12
	snd_instrument INSTR_NONE
	snd_note $3F
	snd_duty SNDDUTY_12, $00
	snd_instrument INSTR_16
	snd_inc_vol 12
	snd_note $33
	snd_note $2E
	snd_note $37
	snd_note $33
	snd_note $2E
	snd_note $37
	snd_note $00
	snd_note $38
	snd_note $33
	snd_note $30
	snd_note $38
	snd_note $33
	snd_note $30
	snd_note $38
	snd_duty SNDDUTY_25, $00
	snd_instrument INSTR_07
	snd_note $3F
	snd_inc_vol -12
	snd_instrument INSTR_NONE
	snd_note $3F
	snd_duty SNDDUTY_12, $00
	snd_instrument INSTR_16
	snd_inc_vol 12
	snd_note $37
	snd_note $33
	snd_note $3A
	snd_note $37
	snd_note $33
	snd_note $3A
	snd_note $00
	snd_note $3C
	snd_note $38
	snd_note $33
	snd_note $3C
	snd_note $38
	snd_note $33
	snd_note $3C
	snd_duty SNDDUTY_25, $00
	snd_instrument INSTR_07
	snd_note $3F
	snd_inc_vol -12
	snd_instrument INSTR_NONE
	snd_note $3F
	snd_duty SNDDUTY_12, $00
	snd_instrument INSTR_16
	snd_inc_vol 12
	snd_note $33
	snd_note $2E
	snd_note $37
	snd_note $33
	snd_note $2E
	snd_note $37
	snd_note $00
	snd_note $38
	snd_note $33
	snd_note $30
	snd_note $38
	snd_note $33
	snd_note $30
	snd_note $38
	snd_instrument INSTR_07
	snd_note $37
	snd_inc_vol -12
	snd_instrument INSTR_NONE
	snd_note $37
	snd_inc_vol 12
	snd_instrument INSTR_07
	snd_note $37
	snd_inc_vol -12
	snd_instrument INSTR_NONE
	snd_note $37
	snd_inc_vol 12
	snd_instrument INSTR_07
	snd_note $35, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_note $36, NOTELEN_03
	snd_inc_vol -12
	snd_instrument INSTR_NONE
	snd_note $36
	snd_inc_vol 12
	snd_instrument INSTR_07
	snd_note $37
	snd_inc_vol -12
	snd_instrument INSTR_NONE
	snd_note $37, NOTELEN_06
	snd_note $00, NOTELEN_12
	snd_inc_vol 12
	snd_jp SndData_07_Ch2
SndData_07_Ch4:
	snd_var iSndChInfo_LoopTimer0, $03
	.loop0:
		snd_noteex PRESET_01, NOTELEN_03
		snd_noteex PRESET_02
		snd_noteex PRESET_02
		snd_noteex PRESET_00, NOTELEN_06
		snd_noteex PRESET_03, NOTELEN_03
		snd_noteex PRESET_02
		snd_noteex PRESET_01
		snd_noteex PRESET_01
		snd_noteex PRESET_02
		snd_noteex PRESET_02
		snd_noteex PRESET_00, NOTELEN_06
		snd_noteex PRESET_03, NOTELEN_03
		snd_noteex PRESET_02
		snd_noteex PRESET_01
		snd_djnz iSndChInfo_LoopTimer0, .loop0
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_03, NOTELEN_03
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_03
	snd_noteex PRESET_00
	snd_noteex PRESET_00, NOTELEN_01
	snd_noteex PRESET_00
	snd_noteex PRESET_04
	snd_noteex PRESET_01, NOTELEN_03
	snd_var iSndChInfo_LoopTimer0, $03
	.loop1:
		snd_noteex PRESET_01, NOTELEN_03
		snd_noteex PRESET_02
		snd_noteex PRESET_02
		snd_noteex PRESET_00, NOTELEN_06
		snd_noteex PRESET_03, NOTELEN_03
		snd_noteex PRESET_02
		snd_noteex PRESET_01
		snd_noteex PRESET_01
		snd_noteex PRESET_02
		snd_noteex PRESET_02
		snd_noteex PRESET_00, NOTELEN_06
		snd_noteex PRESET_03, NOTELEN_03
		snd_noteex PRESET_02
		snd_noteex PRESET_01
		snd_djnz iSndChInfo_LoopTimer0, .loop1
	snd_noteex PRESET_01, NOTELEN_06
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_04
	snd_noteex PRESET_00
	snd_noteex PRESET_01
	snd_noteex PRESET_04, NOTELEN_01
	snd_noteex PRESET_04
	snd_noteex PRESET_04
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_02, NOTELEN_03
	snd_noteex PRESET_03
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_04
	snd_noteex PRESET_00
	snd_noteex PRESET_01
	snd_jp SndData_07_Ch4
SndHeader_05:
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
	nrx1 SNDDUTY_12, $00 ; iSndChInfo_DutyOrWave
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
	nrx1 SNDDUTY_12, $00 ; iSndChInfo_DutyOrWave
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
	nrx1 SNDDUTY_12, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_05_Ch2:
	snd_duty SNDDUTY_50, $00
	snd_instrument INSTR_19
	snd_note $3E, NOTELEN_24
	snd_note $3D, NOTELEN_0C
	snd_note $39, NOTELEN_24
	snd_note $37, NOTELEN_0C
	snd_note $36, NOTELEN_24
	snd_note $34, NOTELEN_0C
	snd_note $36, NOTELEN_18
	snd_note $37, NOTELEN_0C
	snd_note $39
	snd_note $3E, NOTELEN_24
	snd_note $3D, NOTELEN_0C
	snd_note $39, NOTELEN_24
	snd_note $37, NOTELEN_0C
	snd_note $36, NOTELEN_24
	snd_note $31, NOTELEN_0C
	snd_note $32, NOTELEN_24
	snd_note $34, NOTELEN_02
	snd_note $36
	snd_note $37
	snd_note $39
	snd_note $3B
	snd_note $3D
	snd_jp SndData_05_Ch2
SndData_05_Ch1:
	snd_duty SNDDUTY_50, $00
	snd_var iSndChInfo_LoopTimer0, $04
	.loop0:
		snd_note $1A, NOTELEN_09
		snd_note $1E
		snd_note $21, NOTELEN_06
		snd_note $1F, NOTELEN_09
		snd_note $23
		snd_note $26, NOTELEN_06
		snd_note $1A, NOTELEN_09
		snd_note $1E
		snd_note $21, NOTELEN_06
		snd_note $1F
		snd_note $1F
		snd_note $19, NOTELEN_09
		snd_note $19, NOTELEN_03
		snd_djnz iSndChInfo_LoopTimer0, .loop0
	snd_jp SndData_05_Ch1
SndData_05_Ch3:
	snd_wave WAVE_06
	snd_instrument INSTR_18
	snd_var iSndChInfo_LoopTimer0, $04
	.loop0:
		snd_pan SNDOUT_CHALL
		snd_note $00, NOTELEN_06
		snd_note $36, NOTELEN_03
		snd_inc_vol -9
		snd_instrument INSTR_NONE
		snd_pan SNDOUT_CHL
		snd_note $36
		snd_inc_vol 9
		snd_instrument INSTR_18
		snd_pan SNDOUT_CHALL
		snd_note $39
		snd_note $36
		snd_inc_vol -9
		snd_instrument INSTR_NONE
		snd_pan SNDOUT_CHR
		snd_note $36
		snd_inc_vol 9
		snd_instrument INSTR_18
		snd_pan SNDOUT_CHALL
		snd_note $3B
		snd_inc_vol -9
		snd_instrument INSTR_NONE
		snd_pan SNDOUT_CHL
		snd_note $3B
		snd_inc_vol 9
		snd_instrument INSTR_18
		snd_pan SNDOUT_CHALL
		snd_note $3E
		snd_inc_vol -9
		snd_instrument INSTR_NONE
		snd_pan SNDOUT_CHR
		snd_note $3E
		snd_inc_vol 9
		snd_instrument INSTR_18
		snd_pan SNDOUT_CHALL
		snd_note $3B
		snd_note $39
		snd_inc_vol -9
		snd_instrument INSTR_NONE
		snd_pan SNDOUT_CHL
		snd_note $39
		snd_inc_vol 9
		snd_instrument INSTR_18
		snd_pan SNDOUT_CHALL
		snd_note $37
		snd_inc_vol -9
		snd_instrument INSTR_NONE
		snd_pan SNDOUT_CHR
		snd_note $37
		snd_note $00, NOTELEN_06
		snd_inc_vol 9
		snd_instrument INSTR_18
		snd_pan SNDOUT_CHALL
		snd_note $36, NOTELEN_03
		snd_inc_vol -9
		snd_instrument INSTR_NONE
		snd_pan SNDOUT_CHL
		snd_note $36
		snd_inc_vol 9
		snd_instrument INSTR_18
		snd_pan SNDOUT_CHALL
		snd_note $39
		snd_note $36
		snd_inc_vol -9
		snd_instrument INSTR_NONE
		snd_pan SNDOUT_CHR
		snd_note $36
		snd_inc_vol 9
		snd_instrument INSTR_18
		snd_pan SNDOUT_CHALL
		snd_note $37
		snd_inc_vol -9
		snd_instrument INSTR_NONE
		snd_pan SNDOUT_CHL
		snd_note $37
		snd_inc_vol 9
		snd_instrument INSTR_18
		snd_pan SNDOUT_CHALL
		snd_note $37
		snd_inc_vol -9
		snd_instrument INSTR_NONE
		snd_pan SNDOUT_CHR
		snd_note $37, NOTELEN_06
		snd_inc_vol 9
		snd_instrument INSTR_18
		snd_pan SNDOUT_CHALL
		snd_note $39, NOTELEN_03
		snd_inc_vol -9
		snd_instrument INSTR_NONE
		snd_pan SNDOUT_CHL
		snd_note $39
		snd_inc_vol 9
		snd_instrument INSTR_18
		snd_pan SNDOUT_CHALL
		snd_note $37
		snd_inc_vol -9
		snd_instrument INSTR_NONE
		snd_pan SNDOUT_CHR
		snd_note $37
		snd_inc_vol 9
		snd_instrument INSTR_18
		snd_djnz iSndChInfo_LoopTimer0, .loop0
	snd_jp SndData_05_Ch3
SndData_05_Ch4:
	snd_vol 12
	snd_noteex PRESET_01, NOTELEN_09
	snd_noteex PRESET_01, NOTELEN_03
	snd_inc_vol 5
	snd_noteex PRESET_00, NOTELEN_09
	snd_inc_vol -7
	snd_noteex PRESET_00, NOTELEN_03
	snd_inc_vol 2
	snd_noteex PRESET_01
	snd_inc_vol -3
	snd_noteex PRESET_00, NOTELEN_01
	snd_inc_vol -1
	snd_noteex PRESET_00
	snd_inc_vol -1
	snd_noteex PRESET_00, NOTELEN_04
	snd_inc_vol 5
	snd_noteex PRESET_01, NOTELEN_03
	snd_inc_vol 5
	snd_noteex PRESET_00, NOTELEN_09
	snd_inc_vol -7
	snd_noteex PRESET_00, NOTELEN_01
	snd_inc_vol -1
	snd_noteex PRESET_00
	snd_inc_vol -1
	snd_noteex PRESET_00
	snd_inc_vol 4
	snd_noteex PRESET_01, NOTELEN_03
	snd_inc_vol -5
	snd_noteex PRESET_00, NOTELEN_01
	snd_inc_vol -2
	snd_noteex PRESET_00
	snd_inc_vol -1
	snd_noteex PRESET_00, NOTELEN_04
	snd_inc_vol 8
	snd_noteex PRESET_01, NOTELEN_03
	snd_inc_vol 5
	snd_noteex PRESET_00, NOTELEN_09
	snd_inc_vol -7
	snd_noteex PRESET_00, NOTELEN_03
	snd_inc_vol 2
	snd_noteex PRESET_01
	snd_inc_vol -3
	snd_noteex PRESET_00, NOTELEN_01
	snd_inc_vol -1
	snd_noteex PRESET_00
	snd_inc_vol -1
	snd_noteex PRESET_00
	snd_inc_vol 5
	snd_noteex PRESET_01, NOTELEN_03
	snd_inc_vol -7
	snd_noteex PRESET_00, NOTELEN_01
	snd_inc_vol 2
	snd_noteex PRESET_00
	snd_inc_vol 1
	snd_noteex PRESET_00
	snd_inc_vol 9
	snd_noteex PRESET_00, NOTELEN_09
	snd_inc_vol -8
	snd_noteex PRESET_01, NOTELEN_03
	snd_inc_vol 3
	snd_noteex PRESET_01, NOTELEN_09
	snd_noteex PRESET_01, NOTELEN_03
	snd_inc_vol 5
	snd_noteex PRESET_00, NOTELEN_09
	snd_inc_vol -7
	snd_noteex PRESET_00, NOTELEN_03
	snd_inc_vol 2
	snd_noteex PRESET_01
	snd_inc_vol -3
	snd_noteex PRESET_00, NOTELEN_01
	snd_inc_vol -1
	snd_noteex PRESET_00
	snd_inc_vol -1
	snd_noteex PRESET_00, NOTELEN_04
	snd_inc_vol 5
	snd_noteex PRESET_01, NOTELEN_03
	snd_inc_vol 5
	snd_noteex PRESET_00, NOTELEN_09
	snd_inc_vol -7
	snd_noteex PRESET_00, NOTELEN_01
	snd_inc_vol -1
	snd_noteex PRESET_00
	snd_inc_vol -1
	snd_noteex PRESET_00
	snd_inc_vol 4
	snd_noteex PRESET_01, NOTELEN_03
	snd_inc_vol -5
	snd_noteex PRESET_00, NOTELEN_01
	snd_inc_vol -2
	snd_noteex PRESET_00
	snd_inc_vol -1
	snd_noteex PRESET_00, NOTELEN_04
	snd_inc_vol 8
	snd_noteex PRESET_01, NOTELEN_03
	snd_inc_vol 5
	snd_noteex PRESET_00, NOTELEN_09
	snd_inc_vol -7
	snd_noteex PRESET_00, NOTELEN_03
	snd_inc_vol 2
	snd_noteex PRESET_01
	snd_inc_vol 1
	snd_noteex PRESET_00, NOTELEN_01
	snd_inc_vol -4
	snd_noteex PRESET_00
	snd_inc_vol -1
	snd_noteex PRESET_00
	snd_inc_vol 4
	snd_noteex PRESET_01, NOTELEN_03
	snd_inc_vol -7
	snd_noteex PRESET_00, NOTELEN_01
	snd_inc_vol 2
	snd_noteex PRESET_00
	snd_inc_vol 1
	snd_noteex PRESET_00
	snd_inc_vol 9
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_00, NOTELEN_03
	snd_inc_vol -8
	snd_noteex PRESET_01
	snd_inc_vol 3
	snd_noteex PRESET_01, NOTELEN_09
	snd_noteex PRESET_01, NOTELEN_03
	snd_inc_vol 5
	snd_noteex PRESET_00, NOTELEN_09
	snd_inc_vol -7
	snd_noteex PRESET_00, NOTELEN_03
	snd_inc_vol 2
	snd_noteex PRESET_01
	snd_inc_vol -3
	snd_noteex PRESET_00, NOTELEN_01
	snd_inc_vol -1
	snd_noteex PRESET_00
	snd_inc_vol -1
	snd_noteex PRESET_00, NOTELEN_04
	snd_inc_vol 5
	snd_noteex PRESET_01, NOTELEN_03
	snd_inc_vol 5
	snd_noteex PRESET_00, NOTELEN_09
	snd_inc_vol -7
	snd_noteex PRESET_00, NOTELEN_01
	snd_inc_vol -1
	snd_noteex PRESET_00
	snd_inc_vol -1
	snd_noteex PRESET_00
	snd_inc_vol 4
	snd_noteex PRESET_01, NOTELEN_03
	snd_inc_vol -5
	snd_noteex PRESET_00, NOTELEN_01
	snd_inc_vol -2
	snd_noteex PRESET_00
	snd_inc_vol -1
	snd_noteex PRESET_00, NOTELEN_04
	snd_inc_vol 8
	snd_noteex PRESET_01, NOTELEN_03
	snd_inc_vol 5
	snd_noteex PRESET_00, NOTELEN_09
	snd_inc_vol -7
	snd_noteex PRESET_00, NOTELEN_03
	snd_inc_vol 2
	snd_noteex PRESET_01
	snd_inc_vol -3
	snd_noteex PRESET_00, NOTELEN_01
	snd_inc_vol -1
	snd_noteex PRESET_00
	snd_inc_vol -1
	snd_noteex PRESET_00
	snd_inc_vol 5
	snd_noteex PRESET_01, NOTELEN_03
	snd_inc_vol -7
	snd_noteex PRESET_00, NOTELEN_01
	snd_inc_vol 2
	snd_noteex PRESET_00
	snd_inc_vol 1
	snd_noteex PRESET_00
	snd_inc_vol 9
	snd_noteex PRESET_00, NOTELEN_09
	snd_inc_vol -8
	snd_noteex PRESET_01, NOTELEN_03
	snd_inc_vol 3
	snd_noteex PRESET_01, NOTELEN_09
	snd_noteex PRESET_01, NOTELEN_03
	snd_inc_vol 5
	snd_noteex PRESET_00, NOTELEN_09
	snd_inc_vol -7
	snd_noteex PRESET_00, NOTELEN_03
	snd_inc_vol 2
	snd_noteex PRESET_01
	snd_inc_vol -3
	snd_noteex PRESET_00, NOTELEN_01
	snd_inc_vol -1
	snd_noteex PRESET_00
	snd_inc_vol -1
	snd_noteex PRESET_00, NOTELEN_04
	snd_inc_vol 5
	snd_noteex PRESET_01, NOTELEN_03
	snd_inc_vol 5
	snd_noteex PRESET_00, NOTELEN_09
	snd_inc_vol -7
	snd_noteex PRESET_00, NOTELEN_01
	snd_inc_vol -1
	snd_noteex PRESET_00
	snd_inc_vol -1
	snd_noteex PRESET_00
	snd_inc_vol 4
	snd_noteex PRESET_01, NOTELEN_03
	snd_inc_vol -3
	snd_noteex PRESET_00, NOTELEN_01
	snd_inc_vol -1
	snd_noteex PRESET_00
	snd_inc_vol -1
	snd_noteex PRESET_00, NOTELEN_04
	snd_inc_vol 5
	snd_noteex PRESET_01, NOTELEN_03
	snd_inc_vol 5
	snd_noteex PRESET_00, NOTELEN_06
	snd_inc_vol -3
	snd_noteex PRESET_00, NOTELEN_03
	snd_inc_vol 1
	snd_noteex PRESET_00
	snd_inc_vol -3
	snd_noteex PRESET_01
	snd_inc_vol 2
	snd_noteex PRESET_00, NOTELEN_01
	snd_inc_vol -4
	snd_noteex PRESET_00
	snd_inc_vol -1
	snd_noteex PRESET_00
	snd_inc_vol 3
	snd_noteex PRESET_01, NOTELEN_03
	snd_inc_vol -5
	snd_noteex PRESET_00, NOTELEN_01
	snd_inc_vol 1
	snd_noteex PRESET_00
	snd_inc_vol 1
	snd_noteex PRESET_00
	snd_inc_vol 8
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_00, NOTELEN_03
	snd_inc_vol -8
	snd_noteex PRESET_01
	snd_inc_vol 8
	snd_jp SndData_05_Ch4
SndHeader_24:
	db 4 ; Number of slots
.slot0:
	db SNDSLOT0 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 11 ; iSndChInfo_Vol
	db INSTR_08 ; iSndChInfo_Instrument
	db VIBRATO_0F ; iSndChInfo_Vibrato
	db -22 ; iSndChInfo_NoteIdBase
	db 119 ; iSndChInfo_Speed
	db SNDCH_PULSE1 ; iSndChInfo_ChId
	dw SndData_24_Ch1 ; Data pointer
	nrx1 SNDDUTY_12, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot1:
	db SNDSLOT1 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_0F ; iSndChInfo_Vibrato
	db -10 ; iSndChInfo_NoteIdBase
	db 119 ; iSndChInfo_Speed
	db SNDCH_WAVE ; iSndChInfo_ChId
	dw SndData_24_Ch3 ; Data pointer
	db WAVE_00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot2:
	db SNDSLOT2 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 10 ; iSndChInfo_Vol
	db INSTR_09 ; iSndChInfo_Instrument
	db VIBRATO_0F ; iSndChInfo_Vibrato
	db -22 ; iSndChInfo_NoteIdBase
	db 119 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_24_Ch2 ; Data pointer
	nrx1 SNDDUTY_12, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot3:
	db SNDSLOT3 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db 2 ; iSndChInfo_NoteIdBase
	db 119 ; iSndChInfo_Speed
	db SNDCH_NOISE ; iSndChInfo_ChId
	dw SndData_24_Ch4 ; Data pointer
	nrx1 SNDDUTY_12, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_24_Ch1:
	snd_duty SNDDUTY_25, $00
	snd_note $25, NOTELEN_03
	snd_note $00
	snd_note $25
	snd_note $00
	snd_note $20, NOTELEN_01
	snd_note $00, NOTELEN_CUSTOM, $05
	snd_note $20, NOTELEN_03
	snd_note $22
	snd_note $25, NOTELEN_06
	snd_note $31, NOTELEN_03
	snd_note $00, NOTELEN_09
	snd_note $27, NOTELEN_03
	snd_note $00
	snd_note $27
	snd_note $00
	snd_note $27
	snd_note $00
	snd_note $22, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_note $1E
	snd_note $00
	snd_note $1D
	snd_note $2A
	snd_note $00, NOTELEN_06
	snd_note $1E, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $22, NOTELEN_09
	snd_note $00, NOTELEN_03
	snd_note $22
	snd_note $00, NOTELEN_09
	snd_note $22, NOTELEN_03
	snd_note $23
	snd_note $24
	snd_note $00
	snd_note $25
	snd_note $00
	snd_note $25
	snd_note $31
	snd_note $00
	snd_note $27
	snd_note $27
	snd_note $00
	snd_note $25
	snd_note $27
	snd_note $00, NOTELEN_06
	snd_note $22, NOTELEN_03
	snd_note $24
	snd_note $20
	snd_note $2A
	snd_note $29
	snd_note $27
	snd_note $00
	snd_note $20, NOTELEN_09
	snd_note $25, NOTELEN_03
	snd_note $00
	snd_note $25
	snd_note $00, NOTELEN_09
	snd_note $20, NOTELEN_03
	snd_note $22
	snd_note $25, NOTELEN_06
	snd_note $31, NOTELEN_03
	snd_note $00, NOTELEN_09
	snd_note $27, NOTELEN_03
	snd_note $00
	snd_note $27
	snd_note $00
	snd_note $27
	snd_note $00
	snd_note $22, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_note $1E
	snd_note $00
	snd_note $1D
	snd_note $2A
	snd_note $00, NOTELEN_09
	snd_note $1D, NOTELEN_09
	snd_note $00, NOTELEN_03
	snd_note $29
	snd_note $00
	snd_note $22, NOTELEN_06
	snd_note $22, NOTELEN_01
	snd_note $00, NOTELEN_CUSTOM, $05
	snd_note $24, NOTELEN_03
	snd_note $00
	snd_note $1F, NOTELEN_06
	snd_note $00
	snd_note $1F, NOTELEN_03
	snd_note $00
	snd_note $20
	snd_note $00
	snd_note $2C
	snd_note $00
	snd_note $22
	snd_note $24
	snd_note $00
	snd_note $20, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_note $2C
	snd_note $20
	snd_note $20, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $20, NOTELEN_09
	snd_note $25, NOTELEN_03
	snd_note $00
	snd_note $25
	snd_note $00, NOTELEN_09
	snd_note $20, NOTELEN_03
	snd_note $22
	snd_note $25, NOTELEN_06
	snd_note $31, NOTELEN_03
	snd_note $00, NOTELEN_09
	snd_note $27, NOTELEN_03
	snd_note $00
	snd_note $27
	snd_note $00
	snd_note $27
	snd_note $00
	snd_note $22, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_note $1E
	snd_note $00
	snd_note $1D
	snd_note $2A
	snd_note $00, NOTELEN_06
	snd_note $1E, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $22, NOTELEN_09
	snd_note $00, NOTELEN_03
	snd_note $22
	snd_note $00, NOTELEN_09
	snd_note $22, NOTELEN_03
	snd_note $23
	snd_note $24
	snd_note $00
	snd_note $25
	snd_note $00
	snd_note $25
	snd_note $31
	snd_note $00
	snd_note $27
	snd_note $27
	snd_note $00
	snd_note $25
	snd_note $27
	snd_note $00, NOTELEN_06
	snd_note $22, NOTELEN_03
	snd_note $24
	snd_note $20
	snd_note $2A
	snd_note $29
	snd_note $27
	snd_note $00
	snd_note $2C
	snd_note $20
	snd_note $20
	snd_note $25
	snd_note $00
	snd_note $25
	snd_note $00, NOTELEN_09
	snd_note $20, NOTELEN_03
	snd_note $22
	snd_note $25, NOTELEN_06
	snd_note $31, NOTELEN_03
	snd_note $00, NOTELEN_09
	snd_note $27, NOTELEN_03
	snd_note $00
	snd_note $27
	snd_note $00
	snd_note $27
	snd_note $00
	snd_note $22, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_note $1E
	snd_note $00
	snd_note $1D
	snd_note $2A
	snd_note $00, NOTELEN_09
	snd_note $1D, NOTELEN_09
	snd_note $00, NOTELEN_03
	snd_note $29
	snd_note $00
	snd_note $22, NOTELEN_06
	snd_note $22, NOTELEN_01
	snd_note $00, NOTELEN_CUSTOM, $05
	snd_note $24, NOTELEN_03
	snd_note $00
	snd_note $1F, NOTELEN_06
	snd_note $00
	snd_note $1F, NOTELEN_03
	snd_note $00
	snd_note $20
	snd_note $00
	snd_note $2C
	snd_note $00
	snd_note $1F
	snd_note $20
	snd_note $00
	snd_note $20, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_note $20
	snd_note $2A
	snd_note $2C, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $20, NOTELEN_06
	snd_note $22, NOTELEN_03
	snd_note $23, NOTELEN_09
	snd_note $2A
	snd_note $2F, NOTELEN_0C
	snd_note $23, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_note $23, NOTELEN_09
	snd_note $23
	snd_note $2A
	snd_note $2F, NOTELEN_0C
	snd_note $2A, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_note $27, NOTELEN_09
	snd_note $22
	snd_note $29
	snd_note $2E, NOTELEN_0C
	snd_note $22, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_note $22, NOTELEN_09
	snd_note $22
	snd_note $29
	snd_note $2E, NOTELEN_0C
	snd_note $29, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_note $25, NOTELEN_09
	snd_note $27
	snd_note $27
	snd_note $2E, NOTELEN_0C
	snd_note $2A, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_note $27, NOTELEN_09
	snd_note $20
	snd_note $27
	snd_note $2C, NOTELEN_0C
	snd_note $27, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_note $24, NOTELEN_09
	snd_note $27
	snd_note $2E
	snd_note $33, NOTELEN_0C
	snd_note $2E, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_note $2A, NOTELEN_09
	snd_note $20
	snd_note $27
	snd_note $2D, NOTELEN_0C
	snd_note $28, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_note $21, NOTELEN_09
	snd_note $23
	snd_note $2A
	snd_note $2F, NOTELEN_0C
	snd_note $23, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_note $23, NOTELEN_09
	snd_note $23
	snd_note $2A
	snd_note $2F, NOTELEN_0C
	snd_note $2A, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_note $27, NOTELEN_09
	snd_note $22
	snd_note $29
	snd_note $2E, NOTELEN_0C
	snd_note $22, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_note $22, NOTELEN_09
	snd_note $22
	snd_note $29
	snd_note $2E, NOTELEN_0C
	snd_note $29, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_note $25, NOTELEN_09
	snd_note $27
	snd_note $27
	snd_note $2E, NOTELEN_0C
	snd_note $27, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_note $27, NOTELEN_09
	snd_note $20
	snd_note $27
	snd_note $2C, NOTELEN_0C
	snd_note $29, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_note $27, NOTELEN_09
	snd_note $27
	snd_note $2E
	snd_note $31, NOTELEN_0C
	snd_note $2E, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_note $2A, NOTELEN_09
	snd_note $20
	snd_note $27
	snd_note $2C, NOTELEN_0C
	snd_note $27, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_note $20, NOTELEN_09
	snd_note $25, NOTELEN_03
	snd_note $00
	snd_note $25
	snd_note $00
	snd_note $20, NOTELEN_01
	snd_note $00, NOTELEN_CUSTOM, $05
	snd_note $20, NOTELEN_03
	snd_note $22
	snd_note $25, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_note $25
	snd_note $00, NOTELEN_06
	snd_note $27, NOTELEN_03
	snd_note $00
	snd_note $27
	snd_note $00
	snd_note $27
	snd_note $00
	snd_note $20, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_note $20
	snd_note $00
	snd_note $20
	snd_note $2C
	snd_note $00, NOTELEN_06
	snd_note $20, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $20, NOTELEN_06
	snd_note $25, NOTELEN_03
	snd_note $00
	snd_note $25
	snd_note $00
	snd_note $20, NOTELEN_01
	snd_note $00, NOTELEN_CUSTOM, $05
	snd_note $20, NOTELEN_03
	snd_note $22
	snd_note $25, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_note $25
	snd_note $00, NOTELEN_06
	snd_note $27, NOTELEN_03
	snd_note $00
	snd_note $27
	snd_note $00
	snd_note $27
	snd_note $00
	snd_note $20, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_note $20
	snd_note $00
	snd_note $20
	snd_note $2C
	snd_note $00
	snd_note $20
	snd_note $2C, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $20, NOTELEN_06
	snd_note $25, NOTELEN_03
	snd_note $00
	snd_note $25
	snd_note $00
	snd_note $20, NOTELEN_01
	snd_note $00, NOTELEN_CUSTOM, $05
	snd_note $20, NOTELEN_03
	snd_note $22
	snd_note $25, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_note $25
	snd_note $00, NOTELEN_06
	snd_note $27, NOTELEN_03
	snd_note $00
	snd_note $27
	snd_note $00
	snd_note $27
	snd_note $00
	snd_note $20, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_note $20
	snd_note $00
	snd_note $20
	snd_note $2C
	snd_note $00, NOTELEN_06
	snd_note $20, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $20, NOTELEN_06
	snd_note $25, NOTELEN_03
	snd_note $00
	snd_note $25
	snd_note $00
	snd_note $20, NOTELEN_01
	snd_note $00, NOTELEN_CUSTOM, $05
	snd_note $20, NOTELEN_03
	snd_note $22
	snd_note $25, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_note $25
	snd_note $00, NOTELEN_06
	snd_note $27, NOTELEN_03
	snd_note $00
	snd_note $27
	snd_note $00
	snd_note $27
	snd_note $00
	snd_note $20, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_note $20
	snd_note $00
	snd_note $20
	snd_note $2C
	snd_note $00
	snd_note $20
	snd_note $2C, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $20, NOTELEN_06
	snd_jp SndData_24_Ch1
SndData_24_Ch3:
	snd_wave WAVE_06
	snd_note $00, NOTELEN_CUSTOM, $05
	snd_note $43, NOTELEN_01
	snd_note $44, NOTELEN_03
	snd_note $00
	snd_note $41
	snd_note $00
	snd_note $3D
	snd_note $00
	snd_note $40
	snd_note $41
	snd_note $00
	snd_note $46
	snd_inc_vol -5
	snd_note $46, NOTELEN_06
	snd_inc_vol 5
	snd_note $44
	snd_inc_vol -5
	snd_note $44
	snd_note $00
	snd_inc_vol 5
	snd_note $42
	snd_inc_vol -5
	snd_note $42
	snd_inc_vol 5
	snd_note $41
	snd_note $3F, NOTELEN_03
	snd_inc_vol -5
	snd_note $3F, NOTELEN_09
	snd_inc_vol 5
	snd_note $41, NOTELEN_30
	snd_inc_vol -5
	snd_note $41, NOTELEN_06
	snd_note $00, NOTELEN_0C
	snd_wave WAVE_08
	snd_inc_vol 5
	snd_note $42, NOTELEN_03
	snd_inc_vol -5
	snd_note $42
	snd_inc_vol 5
	snd_note $44
	snd_inc_vol -5
	snd_note $44
	snd_inc_vol 5
	snd_note $41
	snd_note $3F
	snd_inc_vol -5
	snd_note $3F
	snd_inc_vol 5
	snd_note $3C
	snd_inc_vol -5
	snd_note $3C
	snd_inc_vol 5
	snd_note $3D
	snd_note $3F
	snd_inc_vol -5
	snd_note $3F, NOTELEN_CUSTOM, $08
	snd_wave WAVE_06
	snd_inc_vol 1
	snd_note $43, NOTELEN_01
	snd_inc_vol 4
	snd_note $44, NOTELEN_03
	snd_inc_vol -5
	snd_note $44, NOTELEN_06
	snd_inc_vol 5
	snd_note $42, NOTELEN_03
	snd_note $00
	snd_note $41
	snd_note $42
	snd_note $00
	snd_note $44
	snd_note $49
	snd_inc_vol -5
	snd_note $49, NOTELEN_06
	snd_inc_vol 5
	snd_note $48
	snd_inc_vol -5
	snd_note $48
	snd_inc_vol 5
	snd_note $46, NOTELEN_03
	snd_note $00
	snd_note $44
	snd_note $00
	snd_note $42
	snd_note $00
	snd_note $41, NOTELEN_09
	snd_inc_vol -5
	snd_note $41, NOTELEN_03
	snd_inc_vol 5
	snd_note $42
	snd_note $00
	snd_note $44, NOTELEN_30
	snd_inc_vol -5
	snd_note $44, NOTELEN_06
	snd_wave WAVE_08
	snd_inc_vol 5
	snd_note $3F, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $3F, NOTELEN_03
	snd_note $00
	snd_note $41
	snd_note $42
	snd_note $44
	snd_inc_vol -5
	snd_note $44, NOTELEN_06
	snd_inc_vol 5
	snd_note $3F, NOTELEN_03
	snd_inc_vol -5
	snd_note $3F, NOTELEN_06
	snd_inc_vol 5
	snd_note $3F, NOTELEN_03
	snd_inc_vol -5
	snd_note $3F, NOTELEN_06
	snd_wave WAVE_06
	snd_note $00, NOTELEN_CUSTOM, $05
	snd_inc_vol 1
	snd_note $43, NOTELEN_01
	snd_inc_vol 4
	snd_note $44, NOTELEN_03
	snd_note $00
	snd_note $41
	snd_note $00
	snd_note $3D
	snd_note $00
	snd_note $40
	snd_note $41
	snd_note $00
	snd_note $46
	snd_inc_vol -5
	snd_note $46, NOTELEN_06
	snd_inc_vol 5
	snd_note $44
	snd_inc_vol -5
	snd_note $44
	snd_note $00
	snd_inc_vol 5
	snd_note $42
	snd_inc_vol -5
	snd_note $42
	snd_inc_vol 5
	snd_note $41
	snd_note $3F, NOTELEN_03
	snd_inc_vol -5
	snd_note $3F, NOTELEN_09
	snd_inc_vol 5
	snd_note $41, NOTELEN_30
	snd_inc_vol -5
	snd_note $41, NOTELEN_06
	snd_note $00, NOTELEN_0C
	snd_wave WAVE_08
	snd_inc_vol 5
	snd_note $42, NOTELEN_03
	snd_note $44
	snd_inc_vol -5
	snd_note $44
	snd_inc_vol 5
	snd_note $41
	snd_inc_vol -5
	snd_note $41
	snd_inc_vol 5
	snd_note $3F
	snd_inc_vol -5
	snd_note $3F
	snd_inc_vol 5
	snd_note $3C
	snd_inc_vol -5
	snd_note $3C
	snd_inc_vol 5
	snd_note $3D
	snd_note $3F
	snd_inc_vol -5
	snd_note $3F, NOTELEN_CUSTOM, $08
	snd_wave WAVE_06
	snd_inc_vol 1
	snd_note $43, NOTELEN_01
	snd_inc_vol 4
	snd_note $44, NOTELEN_03
	snd_inc_vol -5
	snd_note $44, NOTELEN_06
	snd_inc_vol 5
	snd_note $42, NOTELEN_03
	snd_note $00
	snd_note $41
	snd_note $42
	snd_note $00
	snd_note $44
	snd_note $48
	snd_inc_vol -5
	snd_note $49, NOTELEN_06
	snd_inc_vol 5
	snd_note $48
	snd_inc_vol -5
	snd_note $48
	snd_inc_vol 5
	snd_note $46, NOTELEN_03
	snd_note $00
	snd_note $44
	snd_note $00
	snd_note $42
	snd_note $00
	snd_note $41, NOTELEN_09
	snd_inc_vol -5
	snd_note $41, NOTELEN_03
	snd_inc_vol 5
	snd_note $42
	snd_note $00
	snd_note $44, NOTELEN_30
	snd_inc_vol -5
	snd_note $44, NOTELEN_CUSTOM, $0E
	snd_wave WAVE_09
	snd_inc_vol 3
	snd_note $3F, NOTELEN_01
	snd_note $41
	snd_note $42
	snd_note $44
	snd_inc_vol 2
	snd_note $44, NOTELEN_03
	snd_note $44
	snd_note $00
	snd_note $44
	snd_note $00
	snd_note $46
	snd_note $48
	snd_inc_vol -5
	snd_note $48, NOTELEN_06
	snd_inc_vol 5
	snd_note $48, NOTELEN_04
	snd_inc_vol -5
	snd_note $46, NOTELEN_01
	snd_note $44
	snd_note $42
	snd_note $41
	snd_note $3F
	snd_wave WAVE_09
	snd_inc_vol 5
	snd_note $3F
	snd_note $41, NOTELEN_CUSTOM, $0B
	snd_note $42, NOTELEN_03
	snd_note $00
	snd_note $44, NOTELEN_24
	snd_inc_vol -5
	snd_note $44, NOTELEN_06
	snd_inc_vol 5
	snd_note $41, NOTELEN_0C
	snd_note $42
	snd_note $44, NOTELEN_06
	snd_inc_vol -5
	snd_note $44
	snd_inc_vol 5
	snd_note $41, NOTELEN_09
	snd_note $3D, NOTELEN_03
	snd_inc_vol -5
	snd_note $3D, NOTELEN_06
	snd_inc_vol 5
	snd_note $38, NOTELEN_18
	snd_inc_vol -5
	snd_note $38, NOTELEN_06
	snd_inc_vol 5
	snd_note $3A, NOTELEN_12
	snd_note $3C
	snd_note $3D, NOTELEN_06
	snd_note $00
	snd_note $3C, NOTELEN_01
	snd_note $3D, NOTELEN_CUSTOM, $0B
	snd_note $3C, NOTELEN_03
	snd_note $00
	snd_note $3D, NOTELEN_18
	snd_inc_vol -5
	snd_note $3D, NOTELEN_06
	snd_inc_vol 5
	snd_note $3F, NOTELEN_0C
	snd_note $41, NOTELEN_04
	snd_note $00, NOTELEN_02
	snd_note $42
	snd_note $00, NOTELEN_04
	snd_note $41, NOTELEN_06
	snd_inc_vol -2
	snd_note $3F, NOTELEN_03
	snd_inc_vol 2
	snd_note $3D
	snd_inc_vol -5
	snd_note $3D, NOTELEN_06
	snd_inc_vol 5
	snd_note $3C, NOTELEN_03
	snd_inc_vol -5
	snd_note $3C
	snd_inc_vol 5
	snd_note $3D, NOTELEN_2A
	snd_inc_vol -5
	snd_note $3D, NOTELEN_06
	snd_inc_vol 5
	snd_note $3F, NOTELEN_12
	snd_inc_vol -5
	snd_note $3F, NOTELEN_06
	snd_inc_vol 5
	snd_note $41, NOTELEN_12
	snd_inc_vol -5
	snd_note $41, NOTELEN_06
	snd_inc_vol 5
	snd_note $3F, NOTELEN_01
	snd_note $41, NOTELEN_CUSTOM, $0B
	snd_note $42, NOTELEN_03
	snd_note $00
	snd_note $44, NOTELEN_24
	snd_inc_vol -5
	snd_note $44, NOTELEN_06
	snd_inc_vol 5
	snd_note $41, NOTELEN_0C
	snd_note $42
	snd_note $44, NOTELEN_06
	snd_inc_vol -5
	snd_note $44
	snd_inc_vol 5
	snd_note $41, NOTELEN_09
	snd_note $3D, NOTELEN_03
	snd_inc_vol -5
	snd_note $3D, NOTELEN_06
	snd_inc_vol 5
	snd_note $38, NOTELEN_18
	snd_inc_vol -5
	snd_note $38, NOTELEN_06
	snd_inc_vol 5
	snd_note $3A, NOTELEN_12
	snd_note $3C
	snd_note $3D, NOTELEN_06
	snd_note $00
	snd_note $3C, NOTELEN_01
	snd_note $3D, NOTELEN_CUSTOM, $0B
	snd_note $3C, NOTELEN_03
	snd_note $00
	snd_note $3D, NOTELEN_18
	snd_inc_vol -5
	snd_note $3D, NOTELEN_06
	snd_inc_vol 5
	snd_note $3F, NOTELEN_0C
	snd_note $41, NOTELEN_04
	snd_note $00, NOTELEN_02
	snd_note $42
	snd_note $00, NOTELEN_04
	snd_note $41, NOTELEN_06
	snd_inc_vol -2
	snd_note $41, NOTELEN_03
	snd_inc_vol 2
	snd_note $3D
	snd_inc_vol -5
	snd_note $3D, NOTELEN_06
	snd_inc_vol 5
	snd_note $3C, NOTELEN_03
	snd_inc_vol -5
	snd_note $3C
	snd_inc_vol 5
	snd_note $3D, NOTELEN_18
	snd_inc_vol -5
	snd_note $3D, NOTELEN_06
	snd_inc_vol 5
	snd_note $44
	snd_note $49
	snd_note $48
	snd_note $49, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $49, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $49, NOTELEN_03
	snd_note $49
	snd_note $00, NOTELEN_18
	snd_wave WAVE_08
	snd_note $31, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $31, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $30, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $31, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $33, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_note $35, NOTELEN_01
	snd_note $00, NOTELEN_CUSTOM, $08
	snd_note $33, NOTELEN_03
	snd_note $35
	snd_note $33
	snd_note $31, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_note $33, NOTELEN_02
	snd_note $00, NOTELEN_CUSTOM, $04
	snd_note $33, NOTELEN_02
	snd_note $00, NOTELEN_CUSTOM, $07
	snd_note $35, NOTELEN_06
	snd_note $36
	snd_note $00, NOTELEN_03
	snd_wave WAVE_05
	snd_note $37
	snd_note $00
	snd_note $37, NOTELEN_06
	snd_inc_vol -5
	snd_note $37
	snd_wave WAVE_08
	snd_inc_vol 5
	snd_note $31, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $31, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $30, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $31, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $33, NOTELEN_06
	snd_note $35, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_note $35, NOTELEN_01
	snd_note $00, NOTELEN_08
	snd_note $33, NOTELEN_03
	snd_note $35
	snd_note $33
	snd_note $38, NOTELEN_09
	snd_note $3C, NOTELEN_03
	snd_inc_vol -5
	snd_note $3C
	snd_inc_vol 5
	snd_note $3C
	snd_inc_vol -5
	snd_note $3C, NOTELEN_06
	snd_inc_vol 5
	snd_note $3A, NOTELEN_03
	snd_inc_vol -5
	snd_note $3A
	snd_inc_vol 5
	snd_note $3C, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_note $38
	snd_note $00
	snd_note $36
	snd_note $33, NOTELEN_06
	snd_inc_vol -5
	snd_note $33, NOTELEN_03
	snd_wave WAVE_08
	snd_inc_vol 5
	snd_note $31, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $31, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $30, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $31, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $33, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_note $35, NOTELEN_01
	snd_note $00, NOTELEN_CUSTOM, $08
	snd_note $33, NOTELEN_03
	snd_note $35
	snd_note $33
	snd_note $31, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_note $33, NOTELEN_02
	snd_note $00, NOTELEN_CUSTOM, $04
	snd_note $33, NOTELEN_02
	snd_note $00, NOTELEN_CUSTOM, $07
	snd_note $35, NOTELEN_06
	snd_note $36
	snd_note $00, NOTELEN_03
	snd_wave WAVE_05
	snd_note $37
	snd_inc_vol -5
	snd_note $37, NOTELEN_06
	snd_inc_vol 5
	snd_note $37
	snd_inc_vol -5
	snd_note $37, NOTELEN_03
	snd_wave WAVE_08
	snd_inc_vol 5
	snd_note $31, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $31, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $30, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $31, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $33, NOTELEN_06
	snd_note $35, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $35, NOTELEN_01
	snd_note $00, NOTELEN_08
	snd_note $33, NOTELEN_03
	snd_note $35
	snd_note $33
	snd_note $36
	snd_note $38
	snd_note $3A
	snd_note $3C
	snd_inc_vol -5
	snd_note $3C
	snd_inc_vol 5
	snd_note $3C
	snd_inc_vol -5
	snd_note $3C, NOTELEN_06
	snd_inc_vol 5
	snd_note $3D, NOTELEN_03
	snd_inc_vol -5
	snd_note $3D
	snd_inc_vol 5
	snd_note $3F, NOTELEN_09
	snd_wave WAVE_06
	snd_note $43, NOTELEN_03
	snd_inc_vol -5
	snd_note $43, NOTELEN_06
	snd_inc_vol 5
	snd_note $44, NOTELEN_09
	snd_jp SndData_24_Ch3
SndData_24_Ch2:
	snd_inc_freq_offset -2
.loop0:
	snd_duty SNDDUTY_25, $00
	snd_note $00, NOTELEN_06
	snd_inc_vol 3
	snd_note $3D, NOTELEN_03
	snd_note $00
	snd_note $3C
	snd_note $00
	snd_note $38
	snd_note $00
	snd_note $37
	snd_note $38
	snd_note $00
	snd_note $3D
	snd_inc_vol -5
	snd_note $3D, NOTELEN_06
	snd_inc_vol 5
	snd_note $3D
	snd_inc_vol -5
	snd_note $3D
	snd_note $00
	snd_inc_vol 5
	snd_note $3D
	snd_inc_vol -5
	snd_note $3D
	snd_inc_vol 5
	snd_note $3C
	snd_note $3A, NOTELEN_03
	snd_inc_vol -5
	snd_note $3A, NOTELEN_09
	snd_inc_vol 5
	snd_note $3A, NOTELEN_12
	snd_inc_vol -5
	snd_note $3A, NOTELEN_06
	snd_inc_vol 5
	snd_note $39, NOTELEN_03
	snd_note $3A
	snd_note $39
	snd_note $00
	snd_note $35
	snd_note $00
	snd_note $36
	snd_note $00
	snd_note $38
	snd_note $00
	snd_note $33
	snd_note $00
	snd_note $33
	snd_note $00, NOTELEN_09
	snd_inc_vol -5
	snd_note $35, NOTELEN_01
	snd_note $36
	snd_note $37
	snd_inc_vol 5
	snd_note $38, NOTELEN_04
	snd_note $00, NOTELEN_02
	snd_note $38, NOTELEN_03
	snd_note $00
	snd_note $38
	snd_note $00
	snd_note $38
	snd_note $38
	snd_note $00
	snd_note $33, NOTELEN_01
	snd_note $00, NOTELEN_CUSTOM, $05
	snd_note $31, NOTELEN_03
	snd_note $33
	snd_note $00
	snd_note $35
	snd_note $00
	snd_note $36
	snd_note $38, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_note $3C
	snd_inc_vol -5
	snd_note $3C, NOTELEN_06
	snd_inc_vol 5
	snd_note $3C
	snd_note $00
	snd_note $3A, NOTELEN_03
	snd_note $00
	snd_note $36
	snd_note $00
	snd_note $33
	snd_note $00
	snd_note $38
	snd_note $39
	snd_note $00
	snd_note $3B
	snd_inc_vol -5
	snd_note $3B, NOTELEN_06
	snd_inc_vol 5
	snd_note $3C, NOTELEN_12
	snd_inc_vol -5
	snd_note $3C, NOTELEN_06
	snd_inc_vol 5
	snd_note $3D, NOTELEN_03
	snd_note $00
	snd_note $3C
	snd_note $3A
	snd_inc_vol -5
	snd_note $3A, NOTELEN_06
	snd_inc_vol 5
	snd_note $38, NOTELEN_03
	snd_inc_vol -5
	snd_note $38
	snd_inc_vol 5
	snd_note $37
	snd_inc_vol -5
	snd_note $37
	snd_inc_vol 5
	snd_note $38
	snd_note $00, NOTELEN_06
	snd_note $38, NOTELEN_03
	snd_note $00
	snd_note $39
	snd_note $3A
	snd_note $3C
	snd_inc_vol -5
	snd_note $3C, NOTELEN_06
	snd_inc_vol 5
	snd_note $38, NOTELEN_03
	snd_inc_vol -5
	snd_note $38, NOTELEN_06
	snd_inc_vol 5
	snd_note $38, NOTELEN_03
	snd_inc_vol -5
	snd_note $38, NOTELEN_06
	snd_note $00
	snd_inc_vol 5
	snd_note $3D, NOTELEN_03
	snd_note $00
	snd_note $3C
	snd_note $00
	snd_note $38
	snd_note $00
	snd_note $37
	snd_note $38
	snd_note $00
	snd_note $3D
	snd_inc_vol -5
	snd_note $3D, NOTELEN_06
	snd_inc_vol 5
	snd_note $3D
	snd_inc_vol -5
	snd_note $3D
	snd_note $00
	snd_inc_vol 5
	snd_note $3D
	snd_inc_vol -5
	snd_note $3D
	snd_inc_vol 5
	snd_note $3C
	snd_note $3A, NOTELEN_03
	snd_inc_vol -5
	snd_note $3A, NOTELEN_09
	snd_inc_vol 5
	snd_note $3A, NOTELEN_12
	snd_inc_vol -5
	snd_note $3A, NOTELEN_06
	snd_inc_vol 5
	snd_note $39, NOTELEN_03
	snd_note $3A
	snd_note $39
	snd_note $00
	snd_note $35
	snd_note $00
	snd_note $36
	snd_note $00
	snd_note $38
	snd_note $00
	snd_note $33
	snd_note $00
	snd_note $33
	snd_note $00, NOTELEN_09
	snd_inc_vol -5
	snd_note $35, NOTELEN_01
	snd_note $36
	snd_note $37
	snd_inc_vol 5
	snd_note $38, NOTELEN_04
	snd_note $00, NOTELEN_02
	snd_note $38, NOTELEN_03
	snd_note $00
	snd_note $38
	snd_note $00
	snd_note $38
	snd_note $38
	snd_note $00
	snd_note $33, NOTELEN_01
	snd_note $00, NOTELEN_CUSTOM, $05
	snd_note $31, NOTELEN_03
	snd_note $33
	snd_note $00
	snd_note $35
	snd_note $00
	snd_note $36
	snd_note $38, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_note $3C
	snd_inc_vol -5
	snd_note $3C, NOTELEN_06
	snd_inc_vol 5
	snd_note $3C
	snd_note $00
	snd_note $3A, NOTELEN_03
	snd_note $00
	snd_note $36
	snd_note $00
	snd_note $33
	snd_note $00
	snd_note $38
	snd_note $39
	snd_note $00
	snd_note $3B
	snd_inc_vol -5
	snd_note $3B, NOTELEN_06
	snd_inc_vol 5
	snd_note $3C, NOTELEN_12
	snd_note $3A, NOTELEN_03
	snd_inc_vol -5
	snd_note $3A, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_inc_vol 5
	snd_note $38, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_note $3A, NOTELEN_09
	snd_note $3C, NOTELEN_03
	snd_inc_vol -5
	snd_note $3C
	snd_note $00, NOTELEN_08
	snd_inc_vol 3
	snd_note $3C, NOTELEN_01
	snd_note $3D
	snd_note $3F
	snd_note $41
	snd_inc_vol 2
	snd_note $41, NOTELEN_03
	snd_note $41
	snd_note $00
	snd_note $41
	snd_note $00
	snd_note $42
	snd_note $44
	snd_inc_vol -5
	snd_note $44, NOTELEN_06
	snd_inc_vol 5
	snd_note $44, NOTELEN_04
	snd_inc_vol -5
	snd_note $42, NOTELEN_01
	snd_note $41
	snd_note $3F
	snd_note $3D
	snd_note $3C
	snd_inc_vol 5
	snd_duty SNDDUTY_50, $00
	snd_note $3B, NOTELEN_0C
	snd_note $3D, NOTELEN_06
	snd_note $3F, NOTELEN_12
	snd_note $3E, NOTELEN_06
	snd_note $3F, NOTELEN_18
	snd_inc_vol -5
	snd_note $3F, NOTELEN_06
	snd_inc_vol 5
	snd_note $42, NOTELEN_0C
	snd_note $41, NOTELEN_06
	snd_inc_vol -5
	snd_note $41
	snd_inc_vol 5
	snd_note $41, NOTELEN_18
	snd_inc_vol -5
	snd_note $41, NOTELEN_06
	snd_inc_vol 5
	snd_note $3D
	snd_note $38
	snd_note $3A, NOTELEN_18
	snd_note $3C, NOTELEN_12
	snd_note $3D, NOTELEN_06
	snd_inc_vol -5
	snd_note $3D
	snd_inc_vol 5
	snd_note $3D, NOTELEN_12
	snd_note $3D, NOTELEN_06
	snd_inc_vol -5
	snd_note $3D
	snd_inc_vol 5
	snd_note $3D, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $3D, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $3C, NOTELEN_12
	snd_note $3D, NOTELEN_0C
	snd_inc_vol -5
	snd_note $3D, NOTELEN_06
	snd_inc_vol 5
	snd_note $3F
	snd_inc_vol -2
	snd_note $3D, NOTELEN_02
	snd_note $3C
	snd_note $3B
	snd_inc_vol 2
	snd_note $3A, NOTELEN_18
	snd_inc_vol -5
	snd_note $3A, NOTELEN_06
	snd_inc_vol 5
	snd_note $39
	snd_note $3A
	snd_note $3C
	snd_note $3C, NOTELEN_09
	snd_note $38
	snd_note $35, NOTELEN_06
	snd_note $33, NOTELEN_03
	snd_note $35
	snd_note $39
	snd_note $35
	snd_note $35
	snd_note $39
	snd_note $3C
	snd_note $3F
	snd_note $3B, NOTELEN_0C
	snd_note $3D, NOTELEN_06
	snd_note $3F, NOTELEN_12
	snd_note $3E, NOTELEN_06
	snd_note $3F, NOTELEN_18
	snd_inc_vol -5
	snd_note $3F, NOTELEN_06
	snd_inc_vol 5
	snd_note $42, NOTELEN_0C
	snd_note $41, NOTELEN_06
	snd_inc_vol -5
	snd_note $41
	snd_inc_vol 5
	snd_note $41, NOTELEN_18
	snd_inc_vol -5
	snd_note $41, NOTELEN_06
	snd_inc_vol 5
	snd_note $3D
	snd_note $38
	snd_note $3A, NOTELEN_18
	snd_note $3C, NOTELEN_12
	snd_note $3D, NOTELEN_06
	snd_inc_vol -5
	snd_note $3D
	snd_inc_vol 5
	snd_note $3D, NOTELEN_12
	snd_note $3C, NOTELEN_06
	snd_inc_vol -5
	snd_note $3C
	snd_inc_vol 5
	snd_note $3A, NOTELEN_0C
	snd_inc_vol -5
	snd_note $3A, NOTELEN_06
	snd_inc_vol 5
	snd_note $38, NOTELEN_12
	snd_note $3A, NOTELEN_0C
	snd_inc_vol -5
	snd_note $3A, NOTELEN_06
	snd_inc_vol 5
	snd_note $3C
	snd_inc_vol -5
	snd_note $3C
	snd_inc_vol 5
	snd_note $3C, NOTELEN_12
	snd_note $3D, NOTELEN_06
	snd_inc_vol -5
	snd_note $3D
	snd_inc_vol 5
	snd_duty SNDDUTY_25, $00
	snd_note $3F
	snd_note $44
	snd_note $43
	snd_note $3F, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $42, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $44, NOTELEN_03
	snd_note $44
	snd_note $00, NOTELEN_06
	snd_duty SNDDUTY_50, $00
	snd_inc_vol -2
	snd_note $55, NOTELEN_01
	snd_note $54
	snd_note $52
	snd_note $50
	snd_note $4E
	snd_note $4D
	snd_note $4B
	snd_note $49
	snd_note $48
	snd_note $46
	snd_note $44
	snd_note $42
	snd_note $41
	snd_note $3F
	snd_note $3D
	snd_note $3C
	snd_note $3A
	snd_note $38
	snd_duty SNDDUTY_12, $00
	snd_inc_vol 2
	snd_note $2C, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $2C, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $2A, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $2C, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $30, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_note $31, NOTELEN_01
	snd_note $00, NOTELEN_CUSTOM, $08
	snd_note $30, NOTELEN_03
	snd_note $31
	snd_note $30
	snd_note $2C, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_note $2E, NOTELEN_02
	snd_note $00, NOTELEN_CUSTOM, $04
	snd_note $2E, NOTELEN_02
	snd_note $00, NOTELEN_CUSTOM, $07
	snd_note $2F, NOTELEN_06
	snd_note $30
	snd_note $00, NOTELEN_03
	snd_duty SNDDUTY_50, $00
	snd_note $4B
	snd_note $00
	snd_note $4B, NOTELEN_06
	snd_inc_vol -5
	snd_note $4B
	snd_duty SNDDUTY_12, $00
	snd_inc_vol 5
	snd_note $2C, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $2C, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $2A, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $2C, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $30, NOTELEN_06
	snd_note $31, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $31, NOTELEN_01
	snd_note $00, NOTELEN_08
	snd_note $30, NOTELEN_03
	snd_note $31
	snd_note $30
	snd_note $35, NOTELEN_09
	snd_note $44, NOTELEN_03
	snd_inc_vol -5
	snd_note $44
	snd_inc_vol 5
	snd_note $44
	snd_inc_vol -5
	snd_note $44, NOTELEN_06
	snd_inc_vol 5
	snd_note $42, NOTELEN_03
	snd_inc_vol -5
	snd_note $42
	snd_inc_vol 5
	snd_note $44, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_note $42
	snd_note $00
	snd_note $3F
	snd_note $3C, NOTELEN_06
	snd_inc_vol -5
	snd_note $3C, NOTELEN_03
	snd_duty SNDDUTY_12, $00
	snd_inc_vol 5
	snd_note $2C, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $2C, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $2A, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $2C, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $30, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_note $31, NOTELEN_01
	snd_note $00, NOTELEN_CUSTOM, $08
	snd_note $30, NOTELEN_03
	snd_note $31
	snd_note $30
	snd_note $2C, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_note $2E, NOTELEN_02
	snd_note $00, NOTELEN_CUSTOM, $04
	snd_note $2E, NOTELEN_02
	snd_note $00, NOTELEN_CUSTOM, $07
	snd_note $2F, NOTELEN_06
	snd_note $30
	snd_note $00, NOTELEN_03
	snd_duty SNDDUTY_50, $00
	snd_note $4B
	snd_inc_vol -5
	snd_note $4B, NOTELEN_06
	snd_inc_vol 5
	snd_note $4B
	snd_inc_vol -5
	snd_note $4B, NOTELEN_03
	snd_duty SNDDUTY_12, $00
	snd_inc_vol 5
	snd_note $2C, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $2C, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $2A, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $2C, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $30, NOTELEN_06
	snd_note $31, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $31, NOTELEN_01
	snd_note $00, NOTELEN_08
	snd_note $30, NOTELEN_03
	snd_note $31
	snd_note $30
	snd_note $33
	snd_note $35
	snd_note $36
	snd_note $38
	snd_inc_vol -5
	snd_note $38
	snd_inc_vol 5
	snd_note $38
	snd_inc_vol -5
	snd_note $38, NOTELEN_06
	snd_inc_vol 5
	snd_note $3A, NOTELEN_03
	snd_inc_vol -5
	snd_note $3A
	snd_inc_vol 5
	snd_note $3C, NOTELEN_09
	snd_duty SNDDUTY_50, $00
	snd_note $3D, NOTELEN_03
	snd_inc_vol -5
	snd_note $3D, NOTELEN_06
	snd_inc_vol 5
	snd_note $3F, NOTELEN_09
	snd_jp .loop0
SndData_24_Ch4:
	snd_var iSndChInfo_LoopTimer0, $03
	.loop0:
		snd_noteex PRESET_01, NOTELEN_03
		snd_noteex PRESET_02
		snd_noteex PRESET_03
		snd_noteex PRESET_02
		snd_noteex PRESET_00, NOTELEN_06
		snd_noteex PRESET_03, NOTELEN_03
		snd_noteex PRESET_02
		snd_noteex PRESET_01
		snd_noteex PRESET_03
		snd_noteex PRESET_01
		snd_noteex PRESET_02
		snd_noteex PRESET_00, NOTELEN_06
		snd_noteex PRESET_01, NOTELEN_03
		snd_noteex PRESET_02
		snd_noteex PRESET_03
		snd_noteex PRESET_02
		snd_noteex PRESET_01
		snd_noteex PRESET_02
		snd_noteex PRESET_00, NOTELEN_06
		snd_noteex PRESET_03, NOTELEN_03
		snd_noteex PRESET_01
		snd_noteex PRESET_02
		snd_noteex PRESET_03
		snd_noteex PRESET_01
		snd_noteex PRESET_02
		snd_noteex PRESET_00, NOTELEN_06
		snd_noteex PRESET_01, NOTELEN_03
		snd_noteex PRESET_02
		snd_noteex PRESET_03
		snd_noteex PRESET_02
		snd_noteex PRESET_02
		snd_noteex PRESET_01
		snd_noteex PRESET_00, NOTELEN_06
		snd_noteex PRESET_03, NOTELEN_03
		snd_noteex PRESET_02
		snd_noteex PRESET_01
		snd_noteex PRESET_03
		snd_noteex PRESET_01
		snd_noteex PRESET_02
		snd_noteex PRESET_00, NOTELEN_06
		snd_noteex PRESET_02, NOTELEN_03
		snd_noteex PRESET_03
		snd_noteex PRESET_01
		snd_noteex PRESET_04
		snd_noteex PRESET_04, NOTELEN_06
		snd_noteex PRESET_00
		snd_noteex PRESET_02, NOTELEN_03
		snd_noteex PRESET_01
		snd_noteex PRESET_02
		snd_noteex PRESET_04
		snd_noteex PRESET_01
		snd_noteex PRESET_02
		snd_noteex PRESET_00, NOTELEN_06
		snd_noteex PRESET_02, NOTELEN_03
		snd_noteex PRESET_03
		snd_djnz iSndChInfo_LoopTimer0, .loop0
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_03
	snd_noteex PRESET_02
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_03, NOTELEN_03
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_03
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_01, NOTELEN_03
	snd_noteex PRESET_02
	snd_noteex PRESET_03
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_03, NOTELEN_03
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_03
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_01, NOTELEN_03
	snd_noteex PRESET_02
	snd_noteex PRESET_03
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_03, NOTELEN_03
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_03
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_02, NOTELEN_03
	snd_noteex PRESET_03
	snd_noteex PRESET_01
	snd_noteex PRESET_04
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_01, NOTELEN_03
	snd_noteex PRESET_04
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_02, NOTELEN_03
	snd_note $00
	snd_var iSndChInfo_LoopTimer0, $02
	.loop1:
		snd_noteex PRESET_01, NOTELEN_03
		snd_noteex PRESET_02
		snd_noteex PRESET_02
		snd_noteex PRESET_02
		snd_noteex PRESET_00, NOTELEN_06
		snd_noteex PRESET_03, NOTELEN_03
		snd_noteex PRESET_02
		snd_noteex PRESET_01
		snd_noteex PRESET_02
		snd_noteex PRESET_01
		snd_noteex PRESET_02
		snd_noteex PRESET_00, NOTELEN_06
		snd_noteex PRESET_02, NOTELEN_03
		snd_noteex PRESET_03
		snd_noteex PRESET_01
		snd_noteex PRESET_02
		snd_noteex PRESET_03
		snd_noteex PRESET_02
		snd_noteex PRESET_00, NOTELEN_06
		snd_noteex PRESET_02, NOTELEN_03
		snd_noteex PRESET_01
		snd_noteex PRESET_02
		snd_noteex PRESET_02
		snd_noteex PRESET_01
		snd_noteex PRESET_02
		snd_noteex PRESET_00, NOTELEN_06
		snd_noteex PRESET_02, NOTELEN_03
		snd_noteex PRESET_03
		snd_noteex PRESET_01
		snd_noteex PRESET_02
		snd_noteex PRESET_02
		snd_noteex PRESET_02
		snd_noteex PRESET_00, NOTELEN_06
		snd_noteex PRESET_02, NOTELEN_03
		snd_noteex PRESET_02
		snd_noteex PRESET_01
		snd_noteex PRESET_02
		snd_noteex PRESET_01
		snd_noteex PRESET_02
		snd_noteex PRESET_00, NOTELEN_06
		snd_noteex PRESET_02, NOTELEN_03
		snd_noteex PRESET_03
		snd_noteex PRESET_01
		snd_noteex PRESET_02
		snd_noteex PRESET_02
		snd_noteex PRESET_02
		snd_noteex PRESET_00, NOTELEN_06
		snd_noteex PRESET_02, NOTELEN_03
		snd_noteex PRESET_01
		snd_noteex PRESET_02
		snd_noteex PRESET_04
		snd_noteex PRESET_01
		snd_noteex PRESET_02
		snd_noteex PRESET_00, NOTELEN_06
		snd_noteex PRESET_02, NOTELEN_03
		snd_noteex PRESET_03
		snd_noteex PRESET_01
		snd_noteex PRESET_02
		snd_noteex PRESET_02
		snd_noteex PRESET_02
		snd_noteex PRESET_00, NOTELEN_06
		snd_noteex PRESET_03, NOTELEN_03
		snd_noteex PRESET_02
		snd_noteex PRESET_01
		snd_noteex PRESET_02
		snd_noteex PRESET_01
		snd_noteex PRESET_02
		snd_noteex PRESET_00, NOTELEN_06
		snd_noteex PRESET_02, NOTELEN_03
		snd_noteex PRESET_03
		snd_noteex PRESET_01
		snd_noteex PRESET_02
		snd_noteex PRESET_03
		snd_noteex PRESET_02
		snd_noteex PRESET_00, NOTELEN_06
		snd_noteex PRESET_02, NOTELEN_03
		snd_noteex PRESET_01
		snd_noteex PRESET_02
		snd_noteex PRESET_02
		snd_noteex PRESET_01
		snd_noteex PRESET_02
		snd_noteex PRESET_00, NOTELEN_06
		snd_noteex PRESET_02, NOTELEN_03
		snd_noteex PRESET_03
		snd_noteex PRESET_01
		snd_noteex PRESET_02
		snd_noteex PRESET_02
		snd_noteex PRESET_02
		snd_noteex PRESET_00, NOTELEN_06
		snd_noteex PRESET_02, NOTELEN_03
		snd_noteex PRESET_02
		snd_noteex PRESET_01
		snd_noteex PRESET_02
		snd_noteex PRESET_01
		snd_noteex PRESET_02
		snd_noteex PRESET_00, NOTELEN_06
		snd_noteex PRESET_02, NOTELEN_03
		snd_noteex PRESET_03
		snd_noteex PRESET_01
		snd_noteex PRESET_02
		snd_noteex PRESET_02
		snd_noteex PRESET_02
		snd_noteex PRESET_00, NOTELEN_06
		snd_noteex PRESET_04, NOTELEN_03
		snd_noteex PRESET_01
		snd_noteex PRESET_04
		snd_noteex PRESET_04
		snd_noteex PRESET_01
		snd_noteex PRESET_02
		snd_noteex PRESET_00, NOTELEN_06
		snd_noteex PRESET_02, NOTELEN_03
		snd_noteex PRESET_04
		snd_djnz iSndChInfo_LoopTimer0, .loop1
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_03
	snd_noteex PRESET_02
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_03, NOTELEN_03
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_03
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_02, NOTELEN_03
	snd_noteex PRESET_03
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_03
	snd_noteex PRESET_02
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_03, NOTELEN_03
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_03
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_02, NOTELEN_03
	snd_noteex PRESET_03
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_03
	snd_noteex PRESET_02
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_03, NOTELEN_03
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_03
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_02, NOTELEN_03
	snd_noteex PRESET_03
	snd_noteex PRESET_01
	snd_noteex PRESET_04
	snd_noteex PRESET_04, NOTELEN_06
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_04
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_03
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_03
	snd_noteex PRESET_02
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_03, NOTELEN_03
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_03
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_02, NOTELEN_03
	snd_noteex PRESET_03
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_03
	snd_noteex PRESET_02
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_03, NOTELEN_03
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_03
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_02, NOTELEN_03
	snd_noteex PRESET_03
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_03
	snd_noteex PRESET_02
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_03, NOTELEN_03
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_03
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_02, NOTELEN_03
	snd_noteex PRESET_03
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_00
	snd_noteex PRESET_01, NOTELEN_03
	snd_noteex PRESET_00
	snd_noteex PRESET_04, NOTELEN_02
	snd_noteex PRESET_04
	snd_noteex PRESET_04
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_04
	snd_noteex PRESET_01
	snd_noteex PRESET_04
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_04, NOTELEN_03
	snd_noteex PRESET_00
	snd_jp SndData_24_Ch4
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