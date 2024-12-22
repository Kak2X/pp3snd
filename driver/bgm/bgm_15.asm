SndHeader_15:
	db 4 ; Number of slots
.slot0:
	db SNDSLOT0 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 14 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db 0 ; iSndChInfo_NoteIdBase
	db 99 ; iSndChInfo_Speed
	db SNDCH_PULSE1 ; iSndChInfo_ChId
	dw SndData_15_Ch1 ; Data pointer
	nrx1 SNDDUTY_12, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot1:
	db SNDSLOT1 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db 0 ; iSndChInfo_NoteIdBase
	db 99 ; iSndChInfo_Speed
	db SNDCH_WAVE ; iSndChInfo_ChId
	dw SndData_15_Ch3 ; Data pointer
	db WAVE_00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot2:
	db SNDSLOT2 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 13 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -12 ; iSndChInfo_NoteIdBase
	db 99 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_15_Ch2 ; Data pointer
	nrx1 SNDDUTY_12, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot3:
	db SNDSLOT3 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 14 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db 0 ; iSndChInfo_NoteIdBase
	db 99 ; iSndChInfo_Speed
	db SNDCH_NOISE ; iSndChInfo_ChId
	dw SndData_15_Ch4 ; Data pointer
	nrx1 SNDDUTY_12, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_15_Ch1:
	snd_inc_vol -2
	snd_duty SNDDUTY_50, $00
	snd_inc_vol 0
	snd_instrument INSTR_68
	snd_call .sub0
	snd_call .sub0
	snd_inc_vol -1
	snd_call .sub0
	snd_call .sub0
	snd_call .sub0
	snd_call .sub0
	snd_call .sub0
	snd_call .sub0
	snd_call .sub0
	snd_call .sub0
	snd_call .sub0
	snd_inc_vol -1
	snd_call .sub0
	snd_inc_vol -1
	snd_call .sub0
	snd_inc_vol -1
	snd_call .sub1
	snd_inc_vol -1
	snd_call .sub1
	snd_inc_vol -1
	snd_call .sub1
	snd_inc_vol -1
	snd_call .sub1
	snd_inc_vol -1
	snd_call .sub1
	snd_call .sub1
	snd_inc_vol -1
	snd_call .sub1
	snd_end_saveid
.sub0:
	snd_instrument INSTR_68
	snd_note $25, NOTELEN_02
	snd_inc_vol -7
	snd_inc_freq_offset -1
	snd_instrument INSTR_NONE
	snd_note $25, NOTELEN_01
	snd_inc_freq_offset 1
	snd_inc_vol 7
	snd_instrument INSTR_68
	snd_note $28, NOTELEN_02
	snd_inc_vol -7
	snd_inc_freq_offset -1
	snd_instrument INSTR_NONE
	snd_note $28, NOTELEN_01
	snd_inc_vol 7
	snd_inc_freq_offset 1
	snd_instrument INSTR_68
	snd_note $2C, NOTELEN_02
	snd_inc_vol -7
	snd_inc_freq_offset -1
	snd_instrument INSTR_NONE
	snd_note $2C, NOTELEN_01
	snd_inc_vol 7
	snd_inc_freq_offset 1
	snd_instrument INSTR_68
	snd_note $2A, NOTELEN_04
	snd_inc_vol -7
	snd_inc_freq_offset -1
	snd_instrument INSTR_NONE
	snd_note $2A, NOTELEN_02
	snd_inc_vol 7
	snd_inc_freq_offset 1
	snd_instrument INSTR_68
	snd_note $2C, NOTELEN_04
	snd_inc_vol -7
	snd_inc_freq_offset -1
	snd_instrument INSTR_NONE
	snd_note $2C, NOTELEN_02
	snd_inc_vol 7
	snd_inc_freq_offset 1
	snd_instrument INSTR_68
	snd_note $28, NOTELEN_04
	snd_inc_vol -7
	snd_inc_freq_offset -1
	snd_instrument INSTR_NONE
	snd_note $28, NOTELEN_02
	snd_inc_vol 7
	snd_inc_freq_offset 1
	snd_instrument INSTR_68
	snd_note $2A, NOTELEN_04
	snd_inc_vol -7
	snd_inc_freq_offset -1
	snd_instrument INSTR_NONE
	snd_note $2A, NOTELEN_02
	snd_inc_vol 7
	snd_inc_freq_offset 1
	snd_instrument INSTR_68
	snd_note $27, NOTELEN_02
	snd_inc_vol -7
	snd_inc_freq_offset -1
	snd_instrument INSTR_NONE
	snd_note $27, NOTELEN_01
	snd_inc_vol 7
	snd_inc_freq_offset 1
	snd_instrument INSTR_68
	snd_note $28, NOTELEN_04
	snd_inc_vol -7
	snd_inc_freq_offset -1
	snd_instrument INSTR_NONE
	snd_note $28, NOTELEN_02
	snd_inc_vol 7
	snd_inc_freq_offset 1
	snd_instrument INSTR_68
	snd_note $25, NOTELEN_04
	snd_inc_vol -7
	snd_inc_freq_offset -1
	snd_instrument INSTR_NONE
	snd_note $25, NOTELEN_02
	snd_inc_vol 7
	snd_inc_freq_offset 1
	snd_ret
.sub1:
	snd_instrument INSTR_73
	snd_note $25, NOTELEN_03
	snd_note $28, NOTELEN_03
	snd_note $2C, NOTELEN_03
	snd_note $2A, NOTELEN_06
	snd_note $2C, NOTELEN_06
	snd_note $28, NOTELEN_06
	snd_note $2A, NOTELEN_06
	snd_note $27, NOTELEN_03
	snd_note $28, NOTELEN_06
	snd_note $25, NOTELEN_06
	snd_ret
SndData_15_Ch3:
	snd_inc_vol -4
	snd_wave WAVE_01
	snd_inc_freq_offset -1
	snd_pitchbend 180
	snd_note $00, NOTELEN_30
	snd_note $00, NOTELEN_CUSTOM, $31
	snd_note $19, NOTELEN_CUSTOM, $5F
	snd_note $17, NOTELEN_CUSTOM, $60
	snd_note $1E, NOTELEN_CUSTOM, $60
	snd_note $1C, NOTELEN_CUSTOM, $30
	snd_note $1B, NOTELEN_CUSTOM, $3C
	snd_instrument INSTR_6B
	snd_note $1B, NOTELEN_24
	snd_end
SndData_15_Ch2:
	snd_duty SNDDUTY_50, $00
	snd_inc_base_note 12
	snd_instrument INSTR_68
	snd_inc_freq_offset -2
	snd_inc_vol -8
	snd_note $00, NOTELEN_09
	snd_call SndData_15_Ch1.sub1
	snd_call SndData_15_Ch1.sub1
	snd_note $00, NOTELEN_CUSTOM, $27
	snd_inc_base_note -12
	snd_inc_vol 8
	snd_duty SNDDUTY_25, $00
	snd_inc_freq_offset 1
	snd_instrument INSTR_67
	snd_vibrato VIBRATO_5D
	snd_note $2C, NOTELEN_CUSTOM, $6C
	snd_instrument INSTR_69
	snd_note $2C, NOTELEN_CUSTOM, $54
	snd_note $00, NOTELEN_30
	snd_instrument INSTR_67
	snd_note $2F, NOTELEN_CUSTOM, $6C
	snd_instrument INSTR_69
	snd_note $2F, NOTELEN_CUSTOM, $3C
	snd_note $00, NOTELEN_18
	snd_vibrato VIBRATO_NONE
	snd_inc_freq_offset -1
	snd_instrument INSTR_6A
	snd_inc_vol -6
	snd_inc_base_note -12
	snd_duty SNDDUTY_12, $00
	snd_call .sub0
	snd_call .sub0
	snd_inc_vol 1
	snd_call .sub0
	snd_call .sub0
	snd_inc_vol 1
	snd_call .sub0
	snd_inc_vol 1
	snd_call .sub0
	snd_inc_vol 1
	snd_call .sub0
	snd_inc_vol 1
	snd_call .sub0
	snd_inc_vol 1
	snd_call .sub0
	snd_inc_vol 1
	snd_call .sub0
	snd_inc_vol 1
	snd_call .sub0
	snd_inc_vol 1
	snd_call .sub0
	snd_inc_vol 1
	snd_call .sub0
	snd_call .sub0
	snd_call .sub0
	snd_call .sub0
	snd_call .sub0
	snd_call .sub0
	snd_call .sub0
	snd_call .sub0
	snd_note $40, NOTELEN_03
	snd_note $42
	snd_note $44
	snd_note $47
	snd_note $46
	snd_note $42
	snd_inc_vol -4
	snd_note $47
	snd_note $46
	snd_note $42
	snd_inc_vol -3
	snd_note $47
	snd_note $46
	snd_note $42
	snd_inc_vol -2
	snd_note $47
	snd_note $46
	snd_note $42
	snd_inc_vol -3
	snd_note $47
	snd_note $46
	snd_note $42
	snd_inc_vol -2
	snd_note $47
	snd_note $46
	snd_note $42
	snd_end
.sub0:
	snd_note $40, NOTELEN_03
	snd_note $42
	snd_note $44
	snd_note $47
	snd_note $46
	snd_note $42
	snd_note $44
	snd_note $40
	snd_note $42
	snd_note $3F
	snd_ret
SndData_15_Ch4:
	snd_note $00, NOTELEN_30
	snd_note $00
	snd_note $00, NOTELEN_18
	snd_inc_vol -5
	snd_call .sub0
	snd_call .sub0
	snd_call .sub0
	snd_call .sub0
	snd_inc_vol 2
	snd_call .sub0
	snd_call .sub0
	snd_call .sub0
	snd_inc_vol 1
	snd_call .sub0
	snd_inc_vol 1
	snd_call .sub0
	snd_call .sub0
	snd_call .sub0
	snd_call .sub0
	snd_call .sub0
	snd_call .sub0
	snd_call .sub0
	snd_call .sub0
	snd_call .sub0
	snd_call .sub0
	snd_call .sub0
	snd_call .sub0
	snd_call .sub0
	snd_call .sub0
	snd_call .sub0
	snd_end
	snd_inc_vol -8
	snd_note $00, NOTELEN_18 ;X
	snd_noteex PRESET_03, NOTELEN_03 ;X
	snd_noteex PRESET_02 ;X
	snd_noteex PRESET_02 ;X
	snd_noteex PRESET_03 ;X
	snd_noteex PRESET_02 ;X
	snd_noteex PRESET_03 ;X
	snd_noteex PRESET_02 ;X
	snd_note $00 ;X
.sub0:
	snd_noteex PRESET_03, NOTELEN_03
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_03
	snd_noteex PRESET_02
	snd_noteex PRESET_03
	snd_noteex PRESET_02
	snd_noteex PRESET_03
	snd_noteex PRESET_03
	snd_noteex PRESET_02
	snd_noteex PRESET_03
	snd_noteex PRESET_03
	snd_noteex PRESET_08
	snd_noteex PRESET_03
	snd_noteex PRESET_02
	snd_noteex PRESET_03
	snd_ret
