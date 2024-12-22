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
