SndHeader_BGM_16:
	db 4 ; Number of slots
.slot0:
	db SNDSLOT0 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db 0 ; iSndChInfo_NoteIdBase
	db 145 ; iSndChInfo_Speed
	db SNDCH_NOISE ; iSndChInfo_ChId
	dw SndData_16_Ch4 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot1:
	db SNDSLOT1 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_32 ; iSndChInfo_Instrument
	db VIBRATO_37 ; iSndChInfo_Vibrato
	db 0 ; iSndChInfo_NoteIdBase
	db 145 ; iSndChInfo_Speed
	db SNDCH_WAVE ; iSndChInfo_ChId
	dw SndData_16_Ch3 ; Data pointer
	db WAVE_07 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot2:
	db SNDSLOT2 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 9 ; iSndChInfo_Vol
	db INSTR_41 ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -12 ; iSndChInfo_NoteIdBase
	db 145 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_16_Ch2 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot3:
	db SNDSLOT3 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 11 ; iSndChInfo_Vol
	db INSTR_41 ; iSndChInfo_Instrument
	db VIBRATO_37 ; iSndChInfo_Vibrato
	db -14 ; iSndChInfo_NoteIdBase
	db 145 ; iSndChInfo_Speed
	db SNDCH_PULSE1 ; iSndChInfo_ChId
	dw SndData_16_Ch1 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_16_Ch4:
	snd_noteex PRESET_00, NOTELEN_0C
	snd_noteex PRESET_01, NOTELEN_06
	snd_noteex PRESET_00, NOTELEN_0C
	snd_noteex PRESET_01, NOTELEN_06
	snd_noteex PRESET_00, NOTELEN_0C
	snd_jp SndData_16_Ch4
SndData_16_Ch3:
	snd_note $34, NOTELEN_12
	snd_note $34
	snd_note $34, NOTELEN_0C
	snd_jp SndData_16_Ch3
SndData_16_Ch2:
	snd_note $42, NOTELEN_06
	snd_note $42
	snd_note $3F
	snd_note $3F
	snd_note $42, NOTELEN_09
	snd_note $42, NOTELEN_03
	snd_note $3F, NOTELEN_06
	snd_note $3F
	snd_note $42, NOTELEN_06
	snd_note $42
	snd_note $3F
	snd_note $3F, NOTELEN_03
	snd_note $42, NOTELEN_06
	snd_note $42
	snd_note $42, NOTELEN_03
	snd_note $3F, NOTELEN_06
	snd_note $3F
	snd_jp SndData_16_Ch2
SndData_16_Ch1:
	snd_call .sub0
	snd_note $2A
	snd_inc_vol -6
	snd_note $2A
	snd_note $2A
	snd_note $2A
	snd_inc_vol 6
	snd_note $2A
	snd_inc_vol -6
	snd_note $2A
	snd_inc_vol 6
	snd_note $2A
	snd_inc_vol -6
	snd_note $2A
	snd_note $2A
	snd_note $2A
	snd_inc_vol 6
	snd_note $2A
	snd_inc_vol -6
	snd_note $2A
	snd_note $2A
	snd_note $2A
	snd_inc_vol 6
	snd_note $2A
	snd_inc_vol -6
	snd_note $2A
	snd_inc_vol 6
	snd_call .sub0
	snd_inc_base_note -17
	snd_note $3A, NOTELEN_02
	snd_note $3A
	snd_note $3A
	snd_note $3A, NOTELEN_03
	snd_note $3A
	snd_note $35, NOTELEN_02
	snd_note $35
	snd_note $35
	snd_note $35, NOTELEN_03
	snd_note $35
	snd_note $30, NOTELEN_02
	snd_note $30
	snd_note $30
	snd_note $30, NOTELEN_03
	snd_note $30
	snd_note $29, NOTELEN_02
	snd_note $29
	snd_note $29
	snd_note $29, NOTELEN_03
	snd_note $29
	snd_inc_base_note 17
	snd_jp SndData_16_Ch1
.sub0:
	snd_var iSndChInfo_LoopTimer0, $04
	.sub0loop:
		snd_note $2A, NOTELEN_03
		snd_inc_vol -6
		snd_note $2A
		snd_note $2A
		snd_note $2A
		snd_inc_vol 6
		snd_djnz iSndChInfo_LoopTimer0, .sub0loop
	snd_ret
