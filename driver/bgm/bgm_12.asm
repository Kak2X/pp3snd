SndHeader_BGM_12:
	db 4 ; Number of slots
.slot0:
	db SNDSLOT0 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 12 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -24 ; iSndChInfo_NoteIdBase
	db 75 ; iSndChInfo_Speed
	db SNDCH_PULSE1 ; iSndChInfo_ChId
	dw SndData_12_Ch1 ; Data pointer
	nrx1 SNDDUTY_12, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot1:
	db SNDSLOT1 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 11 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -24 ; iSndChInfo_NoteIdBase
	db 75 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_12_Ch2 ; Data pointer
	nrx1 SNDDUTY_12, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot2:
	db SNDSLOT2 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -24 ; iSndChInfo_NoteIdBase
	db 75 ; iSndChInfo_Speed
	db SNDCH_WAVE ; iSndChInfo_ChId
	dw SndData_12_Ch3 ; Data pointer
	db WAVE_00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot3:
	db SNDSLOT3 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db 0 ; iSndChInfo_NoteIdBase
	db 75 ; iSndChInfo_Speed
	db SNDCH_NOISE ; iSndChInfo_ChId
	dw SndData_12_Ch4 ; Data pointer
	nrx1 SNDDUTY_12, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_12_Ch1:
	snd_duty SNDDUTY_25, $00
	snd_inc_freq_offset -1
	snd_call .sub0
	snd_inc_base_note 1
	snd_call .sub0
	snd_inc_base_note -3
	snd_call .sub0
	snd_inc_base_note 2
	snd_call .sub1
	snd_end
.sub0:
	snd_instrument INSTR_6E
	snd_inc_vol 3
	snd_note $38, NOTELEN_02
	snd_note $00
	snd_instrument INSTR_NONE
	snd_inc_vol -10
	snd_note $38
	snd_note $00
	snd_instrument INSTR_6A
	snd_inc_vol 5
	snd_note $38
	snd_note $00
	snd_instrument INSTR_NONE
	snd_vibrato VIBRATO_NONE
	snd_inc_vol 2
	snd_note $38, NOTELEN_CUSTOM, $0C
	snd_instrument INSTR_6E
	snd_inc_vol 3
	snd_note $2C, NOTELEN_02
	snd_note $00
	snd_instrument INSTR_NONE
	snd_inc_vol -10
	snd_note $2C
	snd_note $00
	snd_instrument INSTR_6A
	snd_inc_vol 5
	snd_note $2C
	snd_note $00
	snd_instrument INSTR_NONE
	snd_vibrato VIBRATO_NONE
	snd_inc_vol 2
	snd_note $2C, NOTELEN_CUSTOM, $0C
	snd_instrument INSTR_NONE
	snd_ret
.sub1:
	snd_instrument INSTR_6E
	snd_inc_vol 3
	snd_note $33, NOTELEN_02
	snd_note $00
	snd_instrument INSTR_NONE
	snd_inc_vol -10
	snd_note $33
	snd_note $00
	snd_inc_vol 5
	snd_instrument INSTR_70
	snd_note $33
	snd_note $00
	snd_instrument INSTR_NONE
	snd_inc_vol 2
	snd_note $33, NOTELEN_CUSTOM, $1E
	snd_instrument INSTR_69
	snd_note $33, NOTELEN_CUSTOM, $0C
	snd_instrument INSTR_NONE
	snd_note $00, NOTELEN_2A
	snd_ret
SndData_12_Ch2:
	snd_call .sub0
	snd_call .sub1
	snd_call .sub0
	snd_inc_base_note -2
	snd_call .sub1
	snd_inc_base_note 1
	snd_call .sub0
	snd_inc_base_note -2
	snd_call .sub1
	snd_inc_base_note 3
	snd_call .sub2
	snd_end
.sub0:
	snd_duty SNDDUTY_25, $00
	snd_instrument INSTR_6D
	snd_inc_vol 3
	snd_note $34, NOTELEN_02
	snd_note $00
	snd_inc_vol -3
	snd_inc_vol -2
	snd_note $34
	snd_note $00
	snd_instrument INSTR_6A
	snd_note $34
	snd_note $00
	snd_inc_vol 2
	snd_instrument INSTR_67
	snd_note $34, NOTELEN_0C
	snd_inc_vol -7
	snd_ret
.sub1:
	snd_duty SNDDUTY_50, $00
	snd_instrument INSTR_6D
	snd_inc_vol 3
	snd_note $33, NOTELEN_02
	snd_note $00
	snd_inc_vol -3
	snd_inc_vol 2
	snd_note $33
	snd_note $00
	snd_inc_vol 2
	snd_instrument INSTR_6A
	snd_note $33
	snd_note $00
	snd_inc_vol 3
	snd_instrument INSTR_67
	snd_note $33, NOTELEN_0C
	snd_ret
.sub2:
	snd_duty SNDDUTY_25, $00
	snd_instrument INSTR_6D
	snd_note $30, NOTELEN_02
	snd_note $00
	snd_inc_vol -2
	snd_note $30
	snd_note $00
	snd_note $30
	snd_note $00
	snd_inc_vol 2
	snd_note $30, NOTELEN_CUSTOM, $2A
	snd_instrument INSTR_NONE
	snd_note $00, NOTELEN_2A
	snd_ret
SndData_12_Ch3:
	snd_wave WAVE_01
	snd_inc_vol -3
	snd_note $25, NOTELEN_30
	snd_note $25
	snd_note $24
	snd_note $20, NOTELEN_24
	snd_note $20, NOTELEN_0C
	snd_instrument INSTR_6B
	snd_note $20, NOTELEN_06
	snd_note $00, NOTELEN_2A
	snd_end
SndData_12_Ch4:
	snd_call .sub0
	snd_call .sub0
	snd_call .sub0
	snd_call .sub1
	snd_end
.sub0:
	snd_noteex PRESET_08, NOTELEN_04
	snd_inc_vol -7
	snd_noteex PRESET_00
	snd_inc_vol -1
	snd_noteex PRESET_00
	snd_inc_vol 8
	snd_noteex PRESET_00, NOTELEN_06
	snd_note $00
	snd_inc_vol -5
	snd_noteex PRESET_00, NOTELEN_04
	snd_inc_vol -2
	snd_noteex PRESET_00
	snd_inc_vol -1
	snd_noteex PRESET_00
	snd_inc_vol 8
	snd_noteex PRESET_00, NOTELEN_06
	snd_note $00
	snd_ret
.sub1:
	snd_noteex PRESET_08, NOTELEN_04
	snd_inc_vol -3
	snd_noteex PRESET_00
	snd_inc_vol -2
	snd_noteex PRESET_00
	snd_inc_vol 5
	snd_noteex PRESET_00, NOTELEN_06
	snd_note $00, NOTELEN_1E
	snd_ret
