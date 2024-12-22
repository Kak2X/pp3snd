SndHeader_BGM_19:
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
