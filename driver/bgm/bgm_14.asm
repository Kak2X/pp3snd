SndHeader_14:
	db 4 ; Number of slots
.slot0:
	db SNDSLOT0 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_35 ; iSndChInfo_Vibrato
	db -2 ; iSndChInfo_NoteIdBase
	db 108 ; iSndChInfo_Speed
	db SNDCH_WAVE ; iSndChInfo_ChId
	dw SndData_14_Ch3 ; Data pointer
	db $80 ; [PLACEHOLDER] ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot1:
	db SNDSLOT1 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 12 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_35 ; iSndChInfo_Vibrato
	db -14 ; iSndChInfo_NoteIdBase
	db 108 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_14_Ch2 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot2:
	db SNDSLOT2 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 8 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_35 ; iSndChInfo_Vibrato
	db -14 ; iSndChInfo_NoteIdBase
	db 108 ; iSndChInfo_Speed
	db SNDCH_PULSE1 ; iSndChInfo_ChId
	dw SndData_14_Ch1 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot3:
	db SNDSLOT3 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db 0 ; iSndChInfo_NoteIdBase
	db 108 ; iSndChInfo_Speed
	db SNDCH_NOISE ; iSndChInfo_ChId
	dw SndData_14_Ch4 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_14_Ch3:
	snd_wave WAVE_00
	snd_instrument INSTR_34
	snd_inc_vol -4
	snd_note $36, NOTELEN_1E
	snd_note $2B, NOTELEN_06
	snd_note $36
	snd_note $32, NOTELEN_CUSTOM, $1E
	snd_note $34, NOTELEN_18
	snd_note $32, NOTELEN_1E
	snd_note $2F, NOTELEN_06
	snd_note $32
	snd_note $28, NOTELEN_0C
	snd_instrument INSTR_33
	snd_inc_vol -2
	snd_note $4A, NOTELEN_02
	snd_note $49
	snd_note $47
	snd_note $45
	snd_note $43
	snd_note $42
	snd_note $40
	snd_note $3E
	snd_note $3D
	snd_note $3B
	snd_note $39
	snd_note $37
	snd_note $36
	snd_note $34
	snd_note $32
	snd_note $31
	snd_note $2F
	snd_note $2D
	snd_note $2B
	snd_note $2A
	snd_note $28
	snd_inc_vol 2
	snd_note $28, NOTELEN_0C
	snd_wave WAVE_0E
	snd_instrument INSTR_34
	snd_inc_vol 2
	snd_note $39, NOTELEN_12
	snd_note $37, NOTELEN_0C
	snd_note $36, NOTELEN_CUSTOM, $24
	snd_inc_vol -5
	snd_instrument INSTR_NONE
	snd_inc_freq_offset -1
	snd_note $36, NOTELEN_CUSTOM, $06
	snd_inc_vol 5
	snd_instrument INSTR_34
	snd_inc_freq_offset 1
	snd_note $34, NOTELEN_06
	snd_note $36, NOTELEN_CUSTOM, $21
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $36, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $30, NOTELEN_0C
	snd_note $2F, NOTELEN_CUSTOM, $18
	snd_inc_vol -5
	snd_instrument INSTR_NONE
	snd_inc_freq_offset -1
	snd_note $2F, NOTELEN_CUSTOM, $06
	snd_inc_vol 5
	snd_instrument INSTR_34
	snd_inc_freq_offset 1
	snd_wave WAVE_05
	snd_instrument INSTR_33
	snd_note $3B, NOTELEN_0C
	snd_note $39
	snd_note $37
	snd_wave WAVE_0E
	snd_instrument INSTR_34
	snd_note $3B, NOTELEN_12
	snd_note $39, NOTELEN_0C
	snd_note $37, NOTELEN_CUSTOM, $27
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $37, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $36, NOTELEN_06
	snd_note $37, NOTELEN_CUSTOM, $1E
	snd_inc_vol -5
	snd_instrument INSTR_NONE
	snd_inc_freq_offset -1
	snd_note $37, NOTELEN_CUSTOM, $06
	snd_inc_vol 5
	snd_instrument INSTR_34
	snd_inc_freq_offset 1
	snd_note $32, NOTELEN_0C
	snd_note $31, NOTELEN_CUSTOM, $33
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $31, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_wave WAVE_05
	snd_instrument INSTR_33
	snd_inc_vol 2
	snd_note $31, NOTELEN_06
	snd_note $31
	snd_note $31, NOTELEN_12
	snd_wave WAVE_09
	snd_instrument INSTR_NONE
	snd_note $2D, NOTELEN_06
	snd_note $39
	snd_note $36, NOTELEN_CUSTOM, $18
	snd_inc_vol -5
	snd_instrument INSTR_NONE
	snd_inc_freq_offset -1
	snd_note $36, NOTELEN_CUSTOM, $06
	snd_inc_vol 5
	snd_instrument INSTR_NONE
	snd_inc_freq_offset 1
	snd_note $34, NOTELEN_0C
	snd_note $32
	snd_wave WAVE_05
	snd_instrument INSTR_33
	snd_note $31, NOTELEN_06
	snd_note $31
	snd_note $31, NOTELEN_12
	snd_wave WAVE_09
	snd_instrument INSTR_NONE
	snd_note $32, NOTELEN_06
	snd_note $2F
	snd_note $32, NOTELEN_CUSTOM, $18
	snd_inc_vol -5
	snd_instrument INSTR_NONE
	snd_inc_freq_offset -1
	snd_note $32, NOTELEN_CUSTOM, $06
	snd_inc_vol 5
	snd_instrument INSTR_NONE
	snd_inc_freq_offset 1
	snd_note $34, NOTELEN_0C
	snd_note $32
	snd_wave WAVE_05
	snd_instrument INSTR_33
	snd_note $31, NOTELEN_06
	snd_note $31
	snd_note $31, NOTELEN_12
	snd_wave WAVE_09
	snd_instrument INSTR_NONE
	snd_note $2D, NOTELEN_06
	snd_note $39
	snd_note $36, NOTELEN_CUSTOM, $18
	snd_inc_vol -5
	snd_instrument INSTR_NONE
	snd_inc_freq_offset -1
	snd_note $36, NOTELEN_CUSTOM, $06
	snd_inc_vol 5
	snd_instrument INSTR_NONE
	snd_inc_freq_offset 1
	snd_note $34, NOTELEN_0C
	snd_note $32
	snd_wave WAVE_05
	snd_instrument INSTR_33
	snd_note $31, NOTELEN_06
	snd_note $31
	snd_note $31, NOTELEN_12
	snd_wave WAVE_09
	snd_instrument INSTR_NONE
	snd_note $32, NOTELEN_06
	snd_note $2F
	snd_note $32, NOTELEN_CUSTOM, $30
	snd_inc_vol -5
	snd_instrument INSTR_NONE
	snd_inc_freq_offset -1
	snd_note $32, NOTELEN_CUSTOM, $06
	snd_inc_vol 5
	snd_instrument INSTR_NONE
	snd_inc_freq_offset 1
	snd_wave WAVE_00
	snd_instrument INSTR_33
	snd_inc_vol -2
	snd_fade SSF_FADEOUT, 0, 12
	snd_note $45, NOTELEN_02
	snd_note $42
	snd_note $3E
	snd_note $3D
	snd_note $39
	snd_note $36
	snd_note $32
	snd_note $31
	snd_note $2D
	snd_note $2A
	snd_note $26
	snd_note $25
	snd_note $26
	snd_note $2A
	snd_note $2D
	snd_note $31
	snd_note $32
	snd_note $36
	snd_note $32
	snd_note $31
	snd_note $2D
	snd_note $2A
	snd_note $26
	snd_note $25
	snd_note $21
	snd_note $1E
	snd_note $1A
	snd_note $19
	snd_note $1A
	snd_note $1E
	snd_note $21
	snd_note $25
	snd_note $26
	snd_note $2A
	snd_note $26
	snd_note $25
	snd_note $21
	snd_note $1E
	snd_note $1A
	snd_note $19
	snd_note $15
	snd_note $12
	snd_note $0E, NOTELEN_0C
	snd_end_saveid
SndData_14_Ch2:
	snd_duty SNDDUTY_25, $00
	snd_instrument INSTR_34
	snd_note $15, NOTELEN_12
	snd_note $15, NOTELEN_06
	snd_note $1C, NOTELEN_12
	snd_note $15, NOTELEN_0C
	snd_note $15, NOTELEN_0C
	snd_note $15, NOTELEN_06
	snd_note $1C, NOTELEN_0C
	snd_note $1C
	snd_note $15, NOTELEN_12
	snd_note $15, NOTELEN_06
	snd_note $1C, NOTELEN_12
	snd_note $15, NOTELEN_0C
	snd_note $15, NOTELEN_0C
	snd_note $15, NOTELEN_06
	snd_note $1C, NOTELEN_0C
	snd_note $1C
	snd_note $1A, NOTELEN_12
	snd_note $1A, NOTELEN_06
	snd_note $21, NOTELEN_12
	snd_note $1A, NOTELEN_0C
	snd_note $1A, NOTELEN_0C
	snd_note $1A, NOTELEN_06
	snd_note $21, NOTELEN_0C
	snd_note $21
	snd_note $1E, NOTELEN_12
	snd_note $1E, NOTELEN_06
	snd_note $24, NOTELEN_12
	snd_note $23, NOTELEN_0C
	snd_note $23, NOTELEN_0C
	snd_note $23, NOTELEN_06
	snd_note $1E, NOTELEN_0C
	snd_note $1E
	snd_note $1C, NOTELEN_12
	snd_note $1C, NOTELEN_06
	snd_note $23, NOTELEN_12
	snd_note $1C, NOTELEN_0C
	snd_note $1C, NOTELEN_0C
	snd_note $1C, NOTELEN_06
	snd_note $23, NOTELEN_0C
	snd_note $23
	snd_note $1C, NOTELEN_12
	snd_note $1C, NOTELEN_06
	snd_note $23, NOTELEN_12
	snd_note $21, NOTELEN_0C
	snd_note $21, NOTELEN_0C
	snd_note $15, NOTELEN_06
	snd_note $15, NOTELEN_03
	snd_note $21
	snd_note $17, NOTELEN_06
	snd_note $18
	snd_note $19
	snd_var iSndChInfo_LoopTimer0, $02
	.loop:
		snd_note $1A, NOTELEN_0C
		snd_note $1A, NOTELEN_09
		snd_note $1A, NOTELEN_03
		snd_note $1E, NOTELEN_06
		snd_note $1F
		snd_note $20
		snd_note $21
		snd_note $00
		snd_note $21
		snd_note $21, NOTELEN_09
		snd_note $21, NOTELEN_03
		snd_note $21, NOTELEN_06
		snd_note $1C
		snd_note $1E
		snd_note $21
		snd_djnz iSndChInfo_LoopTimer0, .loop
	snd_note $1A, NOTELEN_0C
	snd_note $1A, NOTELEN_09
	snd_note $1A, NOTELEN_03
	snd_note $1E, NOTELEN_06
	snd_note $1F
	snd_note $20
	snd_note $21
	snd_note $00
	snd_note $21
	snd_note $21, NOTELEN_09
	snd_note $21, NOTELEN_03
	snd_note $21
	snd_note $2D
	snd_note $1C, NOTELEN_06
	snd_note $1E
	snd_note $21
	snd_note $1A, NOTELEN_0C
	snd_note $1A, NOTELEN_09
	snd_note $1A, NOTELEN_03
	snd_note $1E, NOTELEN_06
	snd_note $1F
	snd_note $20
	snd_note $21
	snd_note $00
	snd_note $21
	snd_note $21, NOTELEN_09
	snd_note $21, NOTELEN_03
	snd_note $26
	snd_note $23, NOTELEN_06
	snd_note $21
	snd_note $1E
	snd_note $1C, NOTELEN_03
	snd_instrument INSTR_36
	snd_note $1A, NOTELEN_CUSTOM, $60
	snd_end
SndData_14_Ch1:
	snd_duty SNDDUTY_50, $00
	snd_instrument INSTR_34
	snd_inc_freq_offset -2
	snd_inc_vol -2
	snd_vibrato VIBRATO_33
	snd_note $00, NOTELEN_04
	snd_note $36, NOTELEN_1E
	snd_note $2B, NOTELEN_06
	snd_note $36
	snd_note $32, NOTELEN_CUSTOM, $1E
	snd_note $34, NOTELEN_18
	snd_note $32, NOTELEN_1E
	snd_note $2F, NOTELEN_06
	snd_note $32
	snd_note $28, NOTELEN_0C
	snd_duty SNDDUTY_50, $00
	snd_instrument INSTR_33
	snd_inc_vol -2
	snd_note $4A, NOTELEN_02
	snd_note $49
	snd_note $47
	snd_note $45
	snd_note $43
	snd_note $42
	snd_note $40
	snd_note $3E
	snd_note $3D
	snd_note $3B
	snd_note $39
	snd_note $37
	snd_note $36
	snd_note $34
	snd_note $32
	snd_note $31
	snd_note $2F
	snd_note $2D
	snd_note $2B
	snd_note $2A, NOTELEN_01
	snd_duty SNDDUTY_25, $00
	snd_instrument INSTR_30
	snd_inc_freq_offset 2
	snd_inc_vol 4
	snd_vibrato VIBRATO_33
	snd_note $2D, NOTELEN_2A
	snd_note $2D, NOTELEN_CUSTOM, $33
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $2D, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $2D, NOTELEN_2A
	snd_note $2B, NOTELEN_CUSTOM, $33
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $2B, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $2B, NOTELEN_2A
	snd_note $2B, NOTELEN_CUSTOM, $33
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $2B, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $2B, NOTELEN_2A
	snd_note $2B, NOTELEN_CUSTOM, $33
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $2B, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_duty SNDDUTY_12, $00
	snd_inc_vol -2
	snd_note $2A, NOTELEN_2A
	snd_note $2B, NOTELEN_CUSTOM, $36
	snd_note $2D, NOTELEN_2A
	snd_note $2F, NOTELEN_CUSTOM, $36
	snd_note $31, NOTELEN_2A
	snd_note $32, NOTELEN_CUSTOM, $36
	snd_note $36, NOTELEN_2A
	snd_note $37, NOTELEN_CUSTOM, $36
	snd_instrument INSTR_36
	snd_inc_vol 2
	snd_note $31, NOTELEN_CUSTOM, $60
	snd_end
SndData_14_Ch4:
	snd_duty SNDDUTY_12, $00
	snd_var iSndChInfo_LoopTimer0, $03
	.loop0:
		snd_noteex PRESET_01, NOTELEN_06
		snd_noteex PRESET_02
		snd_noteex PRESET_02
		snd_noteex PRESET_01
		snd_noteex PRESET_01
		snd_noteex PRESET_02
		snd_noteex PRESET_02
		snd_noteex PRESET_01
		snd_djnz iSndChInfo_LoopTimer0, .loop0
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_01
	snd_var iSndChInfo_LoopTimer0, $07
	.loop1:
		snd_noteex PRESET_01
		snd_noteex PRESET_02
		snd_noteex PRESET_02
		snd_noteex PRESET_01
		snd_noteex PRESET_01
		snd_noteex PRESET_02
		snd_noteex PRESET_02
		snd_noteex PRESET_01
		snd_djnz iSndChInfo_LoopTimer0, .loop1
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_02, NOTELEN_03
	snd_noteex PRESET_00
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_02, NOTELEN_03
	snd_noteex PRESET_00
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_02, NOTELEN_03
	snd_noteex PRESET_00
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_01, NOTELEN_06
	snd_noteex PRESET_00
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_00, NOTELEN_30
	snd_end
