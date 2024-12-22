SndHeader_06:
	db 4 ; Number of slots
.slot0:
	db SNDSLOT0 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_40 ; iSndChInfo_Instrument
	db VIBRATO_33 ; iSndChInfo_Vibrato
	db 0 ; iSndChInfo_NoteIdBase
	db 116 ; iSndChInfo_Speed
	db SNDCH_WAVE ; iSndChInfo_ChId
	dw SndData_06_Ch3 ; Data pointer
	db $80 ; [PLACEHOLDER] ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot1:
	db SNDSLOT1 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 13 ; iSndChInfo_Vol
	db INSTR_3E ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -12 ; iSndChInfo_NoteIdBase
	db 116 ; iSndChInfo_Speed
	db SNDCH_PULSE1 ; iSndChInfo_ChId
	dw SndData_06_Ch1 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot2:
	db SNDSLOT2 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 11 ; iSndChInfo_Vol
	db INSTR_3E ; iSndChInfo_Instrument
	db VIBRATO_33 ; iSndChInfo_Vibrato
	db -12 ; iSndChInfo_NoteIdBase
	db 116 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_06_Ch2 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot3:
	db SNDSLOT3 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db 0 ; iSndChInfo_NoteIdBase
	db 116 ; iSndChInfo_Speed
	db SNDCH_NOISE ; iSndChInfo_ChId
	dw SndData_06_Ch4 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_06_Ch3:
	snd_wave WAVE_08
	snd_note $2F, NOTELEN_0C
	snd_note $2C, NOTELEN_06
	snd_note $31, NOTELEN_0C
	snd_note $2F, NOTELEN_06
	snd_note $2C
	snd_note $2F
	snd_note $2F
	snd_note $2C, NOTELEN_0C
	snd_note $31
	snd_note $2F, NOTELEN_06
	snd_note $2C
	snd_note $2F
	snd_note $2D, NOTELEN_0C
	snd_note $28, NOTELEN_06
	snd_note $2F, NOTELEN_0C
	snd_note $2D, NOTELEN_06
	snd_note $28
	snd_note $2D
	snd_note $2D
	snd_note $2A, NOTELEN_0C
	snd_note $2F
	snd_note $2D, NOTELEN_06
	snd_note $2A
	snd_note $2D
	snd_note $2F, NOTELEN_0C
	snd_note $2C, NOTELEN_06
	snd_note $31, NOTELEN_0C
	snd_note $2F, NOTELEN_06
	snd_note $2C
	snd_note $2F
	snd_note $2F
	snd_note $2C, NOTELEN_0C
	snd_note $31
	snd_note $2F, NOTELEN_06
	snd_note $2C
	snd_note $2F
	snd_note $2D, NOTELEN_0C
	snd_note $28, NOTELEN_06
	snd_note $2F, NOTELEN_0C
	snd_note $2D, NOTELEN_06
	snd_note $28
	snd_note $2D
	snd_note $2D
	snd_note $2A, NOTELEN_0C
	snd_note $2F
	snd_note $2D, NOTELEN_06
	snd_note $2A
	snd_note $2D
	snd_wave WAVE_09
	snd_inc_base_note -12
	snd_note $00, NOTELEN_09
	snd_note $28, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $28, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_CUSTOM, $12
	snd_note $28, NOTELEN_03
	snd_note $2C, NOTELEN_06
	snd_note $2F
	snd_note $00, NOTELEN_09
	snd_note $25, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $25, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_CUSTOM, $12
	snd_note $25, NOTELEN_03
	snd_note $28, NOTELEN_06
	snd_note $2C
	snd_note $00, NOTELEN_09
	snd_note $2A, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $2A, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_CUSTOM, $12
	snd_note $2A, NOTELEN_03
	snd_note $2D, NOTELEN_06
	snd_note $31
	snd_note $00, NOTELEN_09
	snd_note $23, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $23, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_CUSTOM, $09
	snd_note $2F, NOTELEN_09
	snd_note $23, NOTELEN_03
	snd_note $27, NOTELEN_06
	snd_note $2A
	snd_inc_base_note 12
	snd_jp SndData_06_Ch3
SndData_06_Ch1:
	snd_duty SNDDUTY_12, $05
	snd_note $1C, NOTELEN_09
	snd_note $1C, NOTELEN_03
	snd_note $20, NOTELEN_06
	snd_note $23
	snd_note $1C, NOTELEN_09
	snd_note $1C, NOTELEN_03
	snd_note $20, NOTELEN_06
	snd_note $23
	snd_note $19, NOTELEN_09
	snd_note $19, NOTELEN_03
	snd_note $1C, NOTELEN_06
	snd_note $20
	snd_note $19, NOTELEN_09
	snd_note $19, NOTELEN_03
	snd_note $1C, NOTELEN_06
	snd_note $20
	snd_note $1E, NOTELEN_09
	snd_note $1E, NOTELEN_03
	snd_note $21, NOTELEN_06
	snd_note $25
	snd_note $1E, NOTELEN_09
	snd_note $1E, NOTELEN_03
	snd_note $21, NOTELEN_06
	snd_note $25
	snd_note $17, NOTELEN_09
	snd_note $17, NOTELEN_03
	snd_note $1B, NOTELEN_06
	snd_note $1E
	snd_note $17, NOTELEN_09
	snd_note $17, NOTELEN_03
	snd_note $1B, NOTELEN_06
	snd_note $1E
	snd_note $1C, NOTELEN_09
	snd_note $1C, NOTELEN_03
	snd_note $20, NOTELEN_06
	snd_note $23
	snd_note $1C, NOTELEN_09
	snd_note $1C, NOTELEN_03
	snd_note $20, NOTELEN_06
	snd_note $23
	snd_note $19, NOTELEN_09
	snd_note $19, NOTELEN_03
	snd_note $1C, NOTELEN_06
	snd_note $20
	snd_note $19, NOTELEN_09
	snd_note $19, NOTELEN_03
	snd_note $1C, NOTELEN_06
	snd_note $20
	snd_note $1E, NOTELEN_09
	snd_note $1E, NOTELEN_03
	snd_note $21, NOTELEN_06
	snd_note $25
	snd_note $1E, NOTELEN_09
	snd_note $1E, NOTELEN_03
	snd_note $21, NOTELEN_06
	snd_note $25
	snd_note $17, NOTELEN_09
	snd_note $17, NOTELEN_03
	snd_note $1B, NOTELEN_06
	snd_note $1E
	snd_note $17, NOTELEN_09
	snd_note $17, NOTELEN_03
	snd_note $1B, NOTELEN_06
	snd_note $1E
	snd_duty SNDDUTY_12, $09
	snd_inc_base_note 12
	snd_note $00, NOTELEN_09
	snd_note $1C, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $1C, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_CUSTOM, $12
	snd_note $1C, NOTELEN_03
	snd_note $20, NOTELEN_06
	snd_note $23
	snd_note $00, NOTELEN_09
	snd_note $19, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $19, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_CUSTOM, $12
	snd_note $19, NOTELEN_03
	snd_note $1C, NOTELEN_06
	snd_note $20
	snd_note $00, NOTELEN_09
	snd_note $1E, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $1E, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_CUSTOM, $12
	snd_note $1E, NOTELEN_03
	snd_note $21, NOTELEN_06
	snd_note $25
	snd_note $00, NOTELEN_09
	snd_note $17, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $17, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_CUSTOM, $09
	snd_note $23, NOTELEN_09
	snd_note $17, NOTELEN_03
	snd_note $1B, NOTELEN_06
	snd_note $1E
	snd_inc_base_note -12
	snd_jp SndData_06_Ch1
SndData_06_Ch2:
	snd_instrument INSTR_2E
	snd_duty SNDDUTY_50, $00
	snd_note $28, NOTELEN_03
	snd_note $28
	snd_note $23, NOTELEN_06
	snd_instrument INSTR_33
	snd_duty SNDDUTY_25, $00
	snd_note $34
	snd_instrument INSTR_2E
	snd_duty SNDDUTY_50, $00
	snd_note $28, NOTELEN_09
	snd_note $28, NOTELEN_03
	snd_note $23, NOTELEN_06
	snd_instrument INSTR_33
	snd_duty SNDDUTY_25, $00
	snd_note $34
	snd_instrument INSTR_2E
	snd_duty SNDDUTY_50, $00
	snd_note $28
	snd_note $25, NOTELEN_03
	snd_note $25
	snd_instrument INSTR_33
	snd_duty SNDDUTY_25, $00
	snd_note $2F, NOTELEN_0C
	snd_instrument INSTR_2E
	snd_duty SNDDUTY_50, $00
	snd_note $25, NOTELEN_09
	snd_note $25, NOTELEN_03
	snd_note $20, NOTELEN_06
	snd_instrument INSTR_33
	snd_duty SNDDUTY_25, $00
	snd_note $34
	snd_instrument INSTR_2E
	snd_duty SNDDUTY_50, $00
	snd_note $25
	snd_note $2A, NOTELEN_03
	snd_note $2A
	snd_note $25, NOTELEN_06
	snd_instrument INSTR_33
	snd_duty SNDDUTY_25, $00
	snd_note $31
	snd_instrument INSTR_2E
	snd_duty SNDDUTY_50, $00
	snd_note $2A, NOTELEN_09
	snd_note $2A, NOTELEN_03
	snd_note $25, NOTELEN_06
	snd_instrument INSTR_33
	snd_duty SNDDUTY_25, $00
	snd_note $31
	snd_instrument INSTR_2E
	snd_duty SNDDUTY_50, $00
	snd_note $2A
	snd_note $23, NOTELEN_03
	snd_note $23
	snd_instrument INSTR_33
	snd_duty SNDDUTY_25, $00
	snd_note $33, NOTELEN_0C
	snd_instrument INSTR_2E
	snd_duty SNDDUTY_50, $00
	snd_note $23, NOTELEN_09
	snd_note $23, NOTELEN_03
	snd_note $1E, NOTELEN_06
	snd_instrument INSTR_33
	snd_duty SNDDUTY_25, $00
	snd_note $33
	snd_instrument INSTR_2E
	snd_duty SNDDUTY_50, $00
	snd_note $23
	snd_note $28, NOTELEN_03
	snd_note $28
	snd_note $23, NOTELEN_06
	snd_instrument INSTR_33
	snd_duty SNDDUTY_25, $00
	snd_note $34
	snd_instrument INSTR_2E
	snd_duty SNDDUTY_50, $00
	snd_note $28, NOTELEN_09
	snd_note $28, NOTELEN_03
	snd_note $23, NOTELEN_06
	snd_instrument INSTR_33
	snd_duty SNDDUTY_25, $00
	snd_note $34
	snd_instrument INSTR_2E
	snd_duty SNDDUTY_50, $00
	snd_note $28
	snd_note $25, NOTELEN_03
	snd_note $25
	snd_instrument INSTR_33
	snd_duty SNDDUTY_25, $00
	snd_note $2F, NOTELEN_0C
	snd_instrument INSTR_2E
	snd_duty SNDDUTY_50, $00
	snd_note $25, NOTELEN_09
	snd_note $25, NOTELEN_03
	snd_note $20, NOTELEN_06
	snd_instrument INSTR_33
	snd_duty SNDDUTY_25, $00
	snd_note $34
	snd_instrument INSTR_2E
	snd_duty SNDDUTY_50, $00
	snd_note $25
	snd_note $2A, NOTELEN_03
	snd_note $2A
	snd_note $25, NOTELEN_06
	snd_instrument INSTR_33
	snd_duty SNDDUTY_25, $00
	snd_note $31
	snd_instrument INSTR_2E
	snd_duty SNDDUTY_50, $00
	snd_note $2A, NOTELEN_09
	snd_note $2A, NOTELEN_03
	snd_note $25, NOTELEN_06
	snd_instrument INSTR_33
	snd_duty SNDDUTY_25, $00
	snd_note $31
	snd_instrument INSTR_2E
	snd_duty SNDDUTY_50, $00
	snd_note $2A
	snd_note $23, NOTELEN_03
	snd_note $23
	snd_instrument INSTR_33
	snd_duty SNDDUTY_25, $00
	snd_note $33, NOTELEN_0C
	snd_instrument INSTR_2E
	snd_duty SNDDUTY_50, $00
	snd_note $23, NOTELEN_09
	snd_note $23, NOTELEN_03
	snd_note $1E, NOTELEN_06
	snd_instrument INSTR_33
	snd_duty SNDDUTY_25, $00
	snd_note $33
	snd_instrument INSTR_2E
	snd_duty SNDDUTY_50, $00
	snd_note $23
	snd_note $28, NOTELEN_03
	snd_note $28
	snd_note $23, NOTELEN_06
	snd_note $25
	snd_note $28, NOTELEN_09
	snd_note $28, NOTELEN_03
	snd_note $23, NOTELEN_06
	snd_note $25
	snd_note $28
	snd_note $25, NOTELEN_03
	snd_note $25
	snd_note $20, NOTELEN_06
	snd_note $23
	snd_note $25, NOTELEN_09
	snd_note $25, NOTELEN_03
	snd_note $20, NOTELEN_06
	snd_note $23
	snd_note $25
	snd_note $2A, NOTELEN_03
	snd_note $2A
	snd_note $25, NOTELEN_06
	snd_note $28
	snd_note $2A, NOTELEN_09
	snd_note $2A, NOTELEN_03
	snd_note $25, NOTELEN_06
	snd_note $28
	snd_note $2A
	snd_note $23, NOTELEN_03
	snd_note $23
	snd_note $1E, NOTELEN_06
	snd_note $21
	snd_note $23
	snd_instrument INSTR_3E
	snd_inc_vol -2
	snd_note $1E, NOTELEN_01
	snd_note $20
	snd_note $21
	snd_note $23
	snd_note $25
	snd_note $27
	snd_note $28
	snd_note $2A
	snd_note $2C
	snd_note $2D
	snd_note $2F
	snd_note $31
	snd_note $33
	snd_note $34
	snd_note $36
	snd_note $38
	snd_note $39
	snd_note $3B
	snd_note $3D
	snd_note $3F
	snd_note $40
	snd_note $42
	snd_note $44
	snd_note $45
	snd_inc_vol 2
	snd_jp SndData_06_Ch2
SndData_06_Ch4:
	snd_call .sub0
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
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_00
	snd_noteex PRESET_07
	snd_noteex PRESET_02
	snd_call .sub0
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_00
	snd_noteex PRESET_07
	snd_noteex PRESET_00
	snd_var iSndChInfo_LoopTimer0, $03
	.loop:
		snd_noteex PRESET_01, NOTELEN_09
		snd_noteex PRESET_02, NOTELEN_03
		snd_noteex PRESET_01, NOTELEN_0C
		snd_noteex PRESET_00, NOTELEN_09
		snd_noteex PRESET_00, NOTELEN_03
		snd_noteex PRESET_02, NOTELEN_0C
		snd_djnz iSndChInfo_LoopTimer0, .loop
	snd_noteex PRESET_01, NOTELEN_09
	snd_noteex PRESET_02, NOTELEN_03
	snd_noteex PRESET_01, NOTELEN_09
	snd_noteex PRESET_02, NOTELEN_03
	snd_noteex PRESET_00
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_00
	snd_jp SndData_06_Ch4
.sub0:
	snd_noteex PRESET_01, NOTELEN_03
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
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_05
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
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_07
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
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_05
	snd_noteex PRESET_02
	snd_ret
