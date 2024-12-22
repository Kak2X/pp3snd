SndHeader_BGM_1B:
	db 4 ; Number of slots
.slot0:
	db SNDSLOT0 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_08 ; iSndChInfo_Instrument
	db VIBRATO_0F ; iSndChInfo_Vibrato
	db -13 ; iSndChInfo_NoteIdBase
	db 90 ; iSndChInfo_Speed
	db SNDCH_WAVE ; iSndChInfo_ChId
	dw SndData_1B_Ch3 ; Data pointer
	db WAVE_00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot1:
	db SNDSLOT1 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_0F ; iSndChInfo_Vibrato
	db -25 ; iSndChInfo_NoteIdBase
	db 90 ; iSndChInfo_Speed
	db SNDCH_PULSE1 ; iSndChInfo_ChId
	dw SndData_1B_Ch1 ; Data pointer
	nrx1 SNDDUTY_12, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot2:
	db SNDSLOT2 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_0F ; iSndChInfo_Vibrato
	db -25 ; iSndChInfo_NoteIdBase
	db 90 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_1B_Ch2 ; Data pointer
	nrx1 SNDDUTY_12, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot3:
	db SNDSLOT3 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db 0 ; iSndChInfo_NoteIdBase
	db 90 ; iSndChInfo_Speed
	db SNDCH_NOISE ; iSndChInfo_ChId
	dw SndData_1B_Ch4 ; Data pointer
	nrx1 SNDDUTY_12, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_1B_Ch3:
	snd_wave WAVE_09
	snd_note $00, NOTELEN_06
	snd_note $20, NOTELEN_0C
	snd_note $27, NOTELEN_03
	snd_note $00, NOTELEN_CUSTOM, $0F
	snd_note $2E, NOTELEN_CUSTOM, $0F
	snd_note $27, NOTELEN_03
	snd_note $00, NOTELEN_12
	snd_note $20, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_note $20, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_note $27, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_note $27, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_note $22, NOTELEN_06
	snd_note $24, NOTELEN_03
	snd_note $26, NOTELEN_06
	snd_note $27, NOTELEN_03
	snd_note $00, NOTELEN_12
	snd_note $00, NOTELEN_06
	snd_note $20, NOTELEN_0C
	snd_note $27, NOTELEN_03
	snd_note $00, NOTELEN_CUSTOM, $0F
	snd_note $2E, NOTELEN_CUSTOM, $0F
	snd_note $27, NOTELEN_03
	snd_note $00, NOTELEN_12
	snd_note $20, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_note $20, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_note $27, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_note $27, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_inc_vol -1
	snd_note $2E, NOTELEN_06
	snd_inc_vol 1
	snd_note $25, NOTELEN_03
	snd_note $26, NOTELEN_06
	snd_inc_vol 2
	snd_note $27, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_wave WAVE_04
	snd_vibrato VIBRATO_12
	snd_inc_vol -1
	snd_note $5B, NOTELEN_09
	snd_end
SndData_1B_Ch1:
	snd_duty SNDDUTY_25, $00
	snd_instrument INSTR_07
	snd_note $00, NOTELEN_06
	snd_inc_vol 4
	snd_note $44, NOTELEN_0C
	snd_note $43, NOTELEN_03
	snd_inc_vol -8
	snd_note $43
	snd_note $00, NOTELEN_09
	snd_inc_vol 8
	snd_note $43, NOTELEN_03
	snd_note $41, NOTELEN_06
	snd_note $3F, NOTELEN_03
	snd_note $41, NOTELEN_06
	snd_note $43, NOTELEN_03
	snd_inc_vol -8
	snd_note $43
	snd_note $00, NOTELEN_06
	snd_inc_vol 8
	snd_note $3A, NOTELEN_03
	snd_note $3F
	snd_note $43
	snd_inc_vol -8
	snd_note $43
	snd_note $00
	snd_inc_vol 8
	snd_note $44
	snd_inc_vol -8
	snd_note $44
	snd_note $00, NOTELEN_06
	snd_inc_vol 8
	snd_note $43, NOTELEN_03
	snd_inc_vol -8
	snd_note $43
	snd_note $00
	snd_inc_vol 8
	snd_note $43
	snd_inc_vol -8
	snd_note $43
	snd_note $00
	snd_inc_vol 8
	snd_note $41, NOTELEN_06
	snd_note $3F, NOTELEN_03
	snd_note $3E, NOTELEN_06
	snd_note $3F, NOTELEN_03
	snd_inc_vol -8
	snd_note $3F
	snd_note $00
	snd_duty SNDDUTY_50, $00
	snd_instrument INSTR_11
	snd_pan SNDOUT_CHL
	snd_inc_vol 8
	snd_note $3F
	snd_note $3E, NOTELEN_06
	snd_note $3D, NOTELEN_03
	snd_note $3C
	snd_note $00
	snd_duty SNDDUTY_25, $00
	snd_instrument INSTR_07
	snd_pan SNDOUT_CHALL
	snd_note $44, NOTELEN_0C
	snd_note $43, NOTELEN_03
	snd_inc_vol -8
	snd_note $43
	snd_note $00, NOTELEN_09
	snd_inc_vol 8
	snd_note $43, NOTELEN_03
	snd_note $41, NOTELEN_06
	snd_note $3F, NOTELEN_03
	snd_note $41, NOTELEN_06
	snd_note $43, NOTELEN_03
	snd_inc_vol -8
	snd_note $43
	snd_note $00
	snd_inc_vol 8
	snd_note $39
	snd_note $3A
	snd_note $3F
	snd_note $43
	snd_note $44
	snd_inc_vol -8
	snd_note $44
	snd_note $00
	snd_inc_vol 8
	snd_note $44
	snd_inc_vol -8
	snd_note $44
	snd_note $00
	snd_inc_vol 8
	snd_note $43
	snd_inc_vol -8
	snd_note $43
	snd_note $00
	snd_inc_vol 8
	snd_note $43
	snd_inc_vol -8
	snd_note $43
	snd_note $00
	snd_inc_vol 8
	snd_note $41, NOTELEN_CUSTOM, $0F
	snd_note $3F, NOTELEN_03
	snd_inc_vol -8
	snd_note $3F
	snd_note $00, NOTELEN_CUSTOM, $0F
	snd_end
SndData_1B_Ch2:
	snd_duty SNDDUTY_50, $00
	snd_instrument INSTR_07
	snd_inc_freq_offset -1
	snd_note $00, NOTELEN_06
	snd_inc_vol 3
	snd_note $3F, NOTELEN_0C
	snd_note $3F, NOTELEN_03
	snd_inc_vol -8
	snd_note $3F
	snd_note $00, NOTELEN_0C
	snd_inc_vol 8
	snd_note $3E, NOTELEN_CUSTOM, $0F
	snd_note $3F, NOTELEN_03
	snd_inc_vol -8
	snd_note $3F
	snd_note $00, NOTELEN_06
	snd_inc_vol 8
	snd_note $3A, NOTELEN_03
	snd_note $3F
	snd_note $43
	snd_inc_vol -8
	snd_note $43
	snd_note $00
	snd_inc_vol 8
	snd_note $3F
	snd_inc_vol -8
	snd_note $3F
	snd_note $00, NOTELEN_06
	snd_inc_vol 8
	snd_note $3F, NOTELEN_03
	snd_inc_vol -8
	snd_note $3F
	snd_note $00
	snd_inc_vol 8
	snd_note $3F
	snd_inc_vol -8
	snd_note $3F
	snd_note $00
	snd_inc_vol 8
	snd_note $3A, NOTELEN_CUSTOM, $0F
	snd_note $3A, NOTELEN_03
	snd_inc_vol -8
	snd_note $3A
	snd_note $00
	snd_inc_vol 7
	snd_instrument INSTR_11
	snd_note $3C
	snd_note $3B, NOTELEN_06
	snd_note $3A, NOTELEN_03
	snd_note $38
	snd_note $00
	snd_inc_vol 1
	snd_instrument INSTR_07
	snd_note $3F, NOTELEN_0C
	snd_note $3F, NOTELEN_03
	snd_inc_vol -8
	snd_note $3F
	snd_note $00, NOTELEN_0C
	snd_inc_vol 8
	snd_note $3E, NOTELEN_CUSTOM, $0F
	snd_note $3F, NOTELEN_03
	snd_inc_vol -8
	snd_note $3F
	snd_note $00
	snd_inc_vol 8
	snd_note $39
	snd_note $3A
	snd_note $3F
	snd_note $43
	snd_note $3F
	snd_inc_vol -8
	snd_note $3F
	snd_note $00
	snd_inc_vol 8
	snd_note $3F
	snd_inc_vol -8
	snd_note $3F
	snd_note $00
	snd_inc_vol 8
	snd_note $3F
	snd_inc_vol -8
	snd_note $3F
	snd_note $00
	snd_inc_vol 8
	snd_note $3F
	snd_inc_vol -8
	snd_note $3F
	snd_note $00
	snd_inc_vol 8
	snd_note $3E, NOTELEN_CUSTOM, $0F
	snd_note $3A, NOTELEN_03
	snd_inc_vol -8
	snd_note $3A
	snd_note $00, NOTELEN_CUSTOM, $0F
	snd_end
SndData_1B_Ch4:
	snd_call .sub0
	snd_call .sub1
	snd_call .sub0
	snd_call .sub0
	snd_call .sub0
	snd_call .sub1
	snd_call .sub0
	snd_noteex PRESET_01, NOTELEN_06
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_03
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_end
.sub0:
	snd_noteex PRESET_01, NOTELEN_06
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_03, NOTELEN_06
	snd_noteex PRESET_02, NOTELEN_03
	snd_noteex PRESET_01
	snd_note $00
	snd_noteex PRESET_02
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_01, NOTELEN_03
	snd_ret
.sub1:
	snd_noteex PRESET_01, NOTELEN_06
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_03, NOTELEN_06
	snd_noteex PRESET_02, NOTELEN_03
	snd_noteex PRESET_01
	snd_note $00
	snd_noteex PRESET_02
	snd_noteex PRESET_00, NOTELEN_09
	snd_ret
	snd_end
