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
