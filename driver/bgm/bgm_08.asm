SndHeader_08:
	db 4 ; Number of slots
.slot0:
	db SNDSLOT0 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 14 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -12 ; iSndChInfo_NoteIdBase
	db 65 ; iSndChInfo_Speed
	db SNDCH_PULSE1 ; iSndChInfo_ChId
	dw SndData_08_Ch1 ; Data pointer
	nrx1 SNDDUTY_12, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot1:
	db SNDSLOT1 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 12 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -24 ; iSndChInfo_NoteIdBase
	db 65 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_08_Ch2 ; Data pointer
	nrx1 SNDDUTY_12, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot2:
	db SNDSLOT2 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 14 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -12 ; iSndChInfo_NoteIdBase
	db 65 ; iSndChInfo_Speed
	db SNDCH_WAVE ; iSndChInfo_ChId
	dw SndData_08_Ch3 ; Data pointer
	db WAVE_00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot3:
	db SNDSLOT3 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 12 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db 0 ; iSndChInfo_NoteIdBase
	db 65 ; iSndChInfo_Speed
	db SNDCH_NOISE ; iSndChInfo_ChId
	dw SndData_08_Ch4 ; Data pointer
	nrx1 SNDDUTY_12, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_08_Ch1:
	snd_duty SNDDUTY_50, $00
	snd_note $00, NOTELEN_09
.loop:
	snd_pitchbend 10
	snd_inc_vol 1
	snd_call .sub0
	snd_inc_base_note -2
	snd_call .sub0
	snd_inc_base_note 2
	snd_call .sub0
	snd_pitchbend 15
	snd_instrument INSTR_71
	snd_vibrato VIBRATO_68
	snd_call .sub1
	snd_vibrato VIBRATO_66
	snd_instrument INSTR_NONE
	snd_inc_base_note -2
	snd_call .sub1
	snd_inc_base_note -5
	snd_call .sub1
	snd_inc_base_note -3
	snd_instrument INSTR_6F
	snd_call .sub1
	snd_inc_base_note 10
	snd_instrument INSTR_NONE
	snd_vibrato VIBRATO_NONE
	snd_inc_vol -1
	snd_jp .loop
.sub0:
	snd_inc_vol 1
	snd_vibrato VIBRATO_65
	snd_instrument INSTR_70
	snd_note $30, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_vibrato VIBRATO_NONE
	snd_inc_vol -1
	snd_instrument INSTR_6E
	snd_vibrato VIBRATO_66
	snd_note $30, NOTELEN_03
	snd_vibrato VIBRATO_NONE
	snd_inc_vol 2
	snd_instrument INSTR_70
	snd_note $2E, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol -1
	snd_instrument INSTR_6E
	snd_vibrato VIBRATO_66
	snd_note $30, NOTELEN_03
	snd_vibrato VIBRATO_NONE
	snd_instrument INSTR_NONE
	snd_inc_vol -12
	snd_inc_freq_offset -1
	snd_note $2E, NOTELEN_03
	snd_note $30
	snd_inc_vol -6
	snd_inc_freq_offset 1
	snd_note $2E
	snd_note $30
	snd_inc_freq_offset 1
	snd_note $2E, NOTELEN_CUSTOM, $16
	snd_inc_vol 1
	snd_inc_freq_offset -2
	snd_note $2E, NOTELEN_02
	snd_inc_freq_offset 1
	snd_inc_vol 17
	snd_ret
.sub1:
	snd_inc_vol -7
	snd_note $33, NOTELEN_CUSTOM, $0A
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $33, NOTELEN_02
	snd_inc_vol 5
	snd_inc_vol 7
	snd_inc_freq_offset 1
	snd_ret
SndData_08_Ch2:
	snd_duty SNDDUTY_50, $00
	snd_inc_freq_offset -1
	snd_vibrato VIBRATO_11
	snd_instrument INSTR_13
	snd_pan SNDOUT_CHALL
	snd_note $25, NOTELEN_03
	snd_inc_vol 3
	snd_inc_vol -3
	snd_pan SNDOUT_CHALL
	snd_note $25, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_inc_vol 3
	snd_pan SNDOUT_CHALL
	snd_note $1E, NOTELEN_03
	snd_vibrato VIBRATO_NONE
	snd_instrument INSTR_NONE
.loop:
	snd_inc_vol -11
	snd_vibrato VIBRATO_0C
	snd_call .sub0
	snd_call .sub0
	snd_inc_base_note -5
	snd_call .sub0
	snd_call .sub0
	snd_inc_base_note 3
	snd_call .sub0
	snd_call .sub0
	snd_inc_base_note -5
	snd_call .sub0
	snd_call .sub0
	snd_inc_base_note 7
	snd_call .sub0
	snd_call .sub0
	snd_inc_base_note -5
	snd_call .sub0
	snd_call .sub0
	snd_inc_base_note 3
	snd_call .sub0
	snd_call .sub0
	snd_inc_base_note 2
	snd_duty SNDDUTY_50, $00
	snd_vibrato VIBRATO_11
	snd_instrument INSTR_13
	snd_inc_vol 11
	snd_pan SNDOUT_CHR
	snd_note $30, NOTELEN_03
	snd_pan SNDOUT_CHL
	snd_note $2A, NOTELEN_01
	snd_inc_vol -4
	snd_pan SNDOUT_CHALL
	snd_note $1E
	snd_note $1E
	snd_inc_vol 2
	snd_pan SNDOUT_CHL
	snd_note $1E, NOTELEN_03
	snd_inc_vol 2
	snd_pan SNDOUT_CHR
	snd_note $24
	snd_pan SNDOUT_CHL
	snd_note $1E
	snd_note $1E
	snd_inc_vol 1
	snd_pan SNDOUT_CHALL
	snd_note $24
	snd_inc_vol 6
	snd_note $00
	snd_vibrato VIBRATO_NONE
	snd_instrument INSTR_NONE
	snd_inc_vol -18
	snd_jp .loop
.sub0:
	snd_duty SNDDUTY_12, $00
	snd_instrument INSTR_69
	snd_inc_vol -10
	snd_note $3F, NOTELEN_06
	snd_instrument INSTR_NONE
	snd_inc_vol 15
	snd_note $3C, NOTELEN_02
	snd_inc_vol -11
	snd_inc_freq_offset -1
	snd_duty SNDDUTY_50, $00
	snd_note $3C
	snd_inc_freq_offset 2
	snd_inc_vol -3
	snd_duty SNDDUTY_12, $00
	snd_note $3C
	snd_inc_vol 14
	snd_inc_freq_offset -1
	snd_ret
SndData_08_Ch3:
	snd_wave WAVE_09
	snd_note $00, NOTELEN_09
.loop:
	snd_inc_vol -2
	snd_call .sub0
	snd_inc_base_note -5
	snd_call .sub0
	snd_inc_base_note 3
	snd_call .sub0
	snd_inc_base_note 2
	snd_call .sub1
	snd_call .sub0
	snd_inc_base_note -5
	snd_call .sub0
	snd_inc_base_note 3
	snd_call .sub0
	snd_inc_base_note 2
	snd_call .sub1
	snd_inc_vol 2
	snd_jp .loop
.sub0:
	snd_note $00, NOTELEN_09
	snd_note $14, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $1B, NOTELEN_06
	snd_pitchbend 60
	snd_note $20
	snd_pitchbend 0
	snd_ret
.sub1:
	snd_note $00, NOTELEN_06
	snd_note $0D, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $0D, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $14, NOTELEN_06
	snd_note $19
	snd_ret
.unused_sub2:
	snd_note $00, NOTELEN_06
	snd_note $14, NOTELEN_01 ;X
	snd_note $00, NOTELEN_02 ;X
	snd_note $14, NOTELEN_01 ;X
	snd_note $00, NOTELEN_02 ;X
	snd_note $0D, NOTELEN_06 ;X
	snd_note $14 ;X
	snd_ret ;X
SndData_08_Ch4:
	snd_call .sub0
.loop:
	snd_call .sub1
	snd_call .sub1
	snd_call .sub1
	snd_call .sub1
	snd_call .sub1
	snd_call .sub1
	snd_call .sub1
	snd_call .sub2
	snd_jp .loop
.sub0:
	snd_noteex PRESET_06, NOTELEN_01
	snd_inc_vol 3
	snd_note $00
	snd_inc_vol -3
	snd_note $00
	snd_noteex PRESET_06
	snd_note $00, NOTELEN_02
	snd_inc_vol 3
	snd_noteex PRESET_06, NOTELEN_03
	snd_ret
.sub1:
	snd_noteex PRESET_01, NOTELEN_03
	snd_noteex PRESET_02
	snd_noteex PRESET_03
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_ret
.sub2:
	snd_noteex PRESET_07, NOTELEN_03
	snd_noteex PRESET_05, NOTELEN_01
	snd_inc_vol -4
	snd_noteex PRESET_06
	snd_noteex PRESET_06
	snd_inc_vol 2
	snd_noteex PRESET_05, NOTELEN_03
	snd_inc_vol 2
	snd_noteex PRESET_07
	snd_noteex PRESET_05
	snd_noteex PRESET_05
	snd_noteex PRESET_06
	snd_noteex PRESET_02
	snd_ret
