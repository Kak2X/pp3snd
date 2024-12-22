SndHeader_BGM_11:
	db 4 ; Number of slots
.slot0:
	db SNDSLOT0 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 9 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -36 ; iSndChInfo_NoteIdBase
	db 136 ; iSndChInfo_Speed
	db SNDCH_PULSE1 ; iSndChInfo_ChId
	dw SndData_11_Ch1 ; Data pointer
	nrx1 SNDDUTY_12, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot1:
	db SNDSLOT1 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 9 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -36 ; iSndChInfo_NoteIdBase
	db 136 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_11_Ch2 ; Data pointer
	nrx1 SNDDUTY_12, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot2:
	db SNDSLOT2 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -12 ; iSndChInfo_NoteIdBase
	db 136 ; iSndChInfo_Speed
	db SNDCH_WAVE ; iSndChInfo_ChId
	dw SndData_11_Ch3 ; Data pointer
	db WAVE_00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot3:
	db SNDSLOT3 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db 0 ; iSndChInfo_NoteIdBase
	db 136 ; iSndChInfo_Speed
	db SNDCH_NOISE ; iSndChInfo_ChId
	dw SndData_11_Ch4 ; Data pointer
	nrx1 SNDDUTY_12, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_11_Ch1:
	snd_duty SNDDUTY_25, $00
	snd_pitchbend 20
	snd_vibrato VIBRATO_61
	snd_var iSndChInfo_LoopTimer0, $0F
	.loop:
		snd_note $47, NOTELEN_0C
		snd_instrument INSTR_69
		snd_note $44, NOTELEN_09
		snd_note $44, NOTELEN_03
		snd_note $00
		snd_note $47
		snd_note $00
		snd_note $47
		snd_note $44
		snd_note $00
		snd_note $44
		snd_note $00
		snd_instrument INSTR_NONE
		snd_inc_base_note 1
		snd_djnz iSndChInfo_LoopTimer0, .loop
	snd_inc_base_note -15
	snd_instrument INSTR_69
	snd_note $56, NOTELEN_03
	snd_note $55
	snd_note $54
	snd_note $53
	snd_note $52
	snd_note $51
	snd_note $50
	snd_note $4F
	snd_note $4E
	snd_note $4D
	snd_note $4C
	snd_note $4B
	snd_note $4A
	snd_note $49
	snd_note $48
	snd_note $47
	snd_jp SndData_11_Ch1
SndData_11_Ch2:
	snd_duty SNDDUTY_25, $00
	snd_pitchbend 20
	snd_vibrato VIBRATO_0D
	snd_var iSndChInfo_LoopTimer0, $0F
	.loop:
		snd_inc_freq_offset -2
		snd_instrument INSTR_6D
		snd_note $44, NOTELEN_0C
		snd_note $40, NOTELEN_09
		snd_note $40, NOTELEN_03
		snd_note $00
		snd_note $44
		snd_note $00
		snd_note $44
		snd_note $40
		snd_note $00
		snd_note $40
		snd_note $00
		snd_inc_freq_offset 2
		snd_inc_base_note 1
		snd_djnz iSndChInfo_LoopTimer0, .loop
	snd_inc_freq_offset -2
	snd_inc_base_note -15
	snd_note $53, NOTELEN_03
	snd_note $52
	snd_note $51
	snd_note $50
	snd_note $4F
	snd_note $4E
	snd_note $4D
	snd_note $4C
	snd_note $4B
	snd_note $4A
	snd_note $49
	snd_note $48
	snd_note $47
	snd_note $46
	snd_note $45
	snd_note $44
	snd_inc_freq_offset 2
	snd_jp SndData_11_Ch2
SndData_11_Ch3:
	snd_wave WAVE_0D
	snd_instrument INSTR_62
	snd_var iSndChInfo_LoopTimer0, $0F
	.loop:
		snd_note $1C, NOTELEN_09
		snd_note $23, NOTELEN_03
		snd_note $23, NOTELEN_06
		snd_note $17
		snd_note $1C, NOTELEN_09
		snd_note $23, NOTELEN_03
		snd_note $23, NOTELEN_06
		snd_note $17
		snd_inc_base_note 1
		snd_djnz iSndChInfo_LoopTimer0, .loop
	snd_inc_base_note -15
	snd_note $2B, NOTELEN_09
	snd_note $32, NOTELEN_03
	snd_note $32, NOTELEN_06
	snd_note $26
	snd_note $2B, NOTELEN_09
	snd_note $32, NOTELEN_03
	snd_note $32, NOTELEN_06
	snd_note $26
	snd_jp SndData_11_Ch3
SndData_11_Ch4:
	snd_var iSndChInfo_LoopTimer0, $10
	.loop:
		snd_noteex PRESET_01, NOTELEN_03
		snd_note $00
		snd_noteex PRESET_02
		snd_inc_vol -3
		snd_noteex PRESET_01
		snd_inc_vol 3
		snd_noteex PRESET_01
		snd_noteex PRESET_02
		snd_inc_vol -3
		snd_noteex PRESET_01
		snd_inc_vol 3
		snd_noteex PRESET_02
		snd_noteex PRESET_01
		snd_note $00
		snd_noteex PRESET_02
		snd_inc_vol -3
		snd_noteex PRESET_01
		snd_inc_vol 3
		snd_noteex PRESET_01
		snd_noteex PRESET_02
		snd_inc_vol -3
		snd_noteex PRESET_01
		snd_noteex PRESET_01
		snd_inc_vol 3
		snd_djnz iSndChInfo_LoopTimer0, .loop
	snd_jp SndData_11_Ch4
