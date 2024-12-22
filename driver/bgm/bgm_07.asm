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
