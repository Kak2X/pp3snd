SndHeader_BGM_09:
	db 4 ; Number of slots
.slot0:
	db SNDSLOT0 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 13 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -12 ; iSndChInfo_NoteIdBase
	db 109 ; iSndChInfo_Speed
	db SNDCH_WAVE ; iSndChInfo_ChId
	dw SndData_09_Ch3 ; Data pointer
	db $80 ; [PLACEHOLDER] ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot1:
	db SNDSLOT1 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 13 ; iSndChInfo_Vol
	db INSTR_2E ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -24 ; iSndChInfo_NoteIdBase
	db 109 ; iSndChInfo_Speed
	db SNDCH_PULSE1 ; iSndChInfo_ChId
	dw SndData_09_Ch1 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot2:
	db SNDSLOT2 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_2E ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -12 ; iSndChInfo_NoteIdBase
	db 109 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_09_Ch2 ; Data pointer
	nrx1 SNDDUTY_25, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot3:
	db SNDSLOT3 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db 0 ; iSndChInfo_NoteIdBase
	db 109 ; iSndChInfo_Speed
	db SNDCH_NOISE ; iSndChInfo_ChId
	dw SndData_09_Ch4 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_09_Ch3:
	snd_wave WAVE_09
	snd_instrument INSTR_01
	snd_vibrato VIBRATO_3D
	snd_inc_base_note 0
	snd_inc_vol -4
	snd_note $24, NOTELEN_01
	snd_inc_vol 2
	snd_note $25
	snd_inc_vol 1
	snd_note $26
	snd_inc_vol 1
	snd_note $27, NOTELEN_09
	snd_note $29, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $29, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $2A, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $2A, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
.loop:
	snd_wave WAVE_07
	snd_instrument INSTR_2E
	snd_vibrato VIBRATO_NONE
	snd_inc_base_note 12
	snd_note $2B, NOTELEN_06
	snd_note $24, NOTELEN_09
	snd_note $2B, NOTELEN_06
	snd_note $29, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $29, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_wave WAVE_09
	snd_instrument INSTR_30
	snd_vibrato VIBRATO_34
	snd_inc_base_note -12
	snd_note $29, NOTELEN_09
	snd_note $30, NOTELEN_06
	snd_note $29
	snd_wave WAVE_07
	snd_instrument INSTR_2E
	snd_vibrato VIBRATO_NONE
	snd_inc_base_note 12
	snd_note $29
	snd_note $22, NOTELEN_09
	snd_note $29, NOTELEN_06
	snd_note $27, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $27, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_wave WAVE_09
	snd_instrument INSTR_30
	snd_vibrato VIBRATO_34
	snd_inc_base_note -12
	snd_note $27, NOTELEN_09
	snd_note $2E, NOTELEN_06
	snd_note $27
	snd_wave WAVE_07
	snd_instrument INSTR_2E
	snd_vibrato VIBRATO_NONE
	snd_inc_base_note 12
	snd_note $2B
	snd_note $24, NOTELEN_09
	snd_note $2B, NOTELEN_06
	snd_note $29, NOTELEN_03
	snd_wave WAVE_09
	snd_instrument INSTR_30
	snd_vibrato VIBRATO_34
	snd_inc_base_note -12
	snd_note $2D, NOTELEN_01
	snd_note $2E
	snd_note $2F
	snd_note $30, NOTELEN_09
	snd_note $32, NOTELEN_06
	snd_note $33
	snd_note $35, NOTELEN_03
	snd_vibrato VIBRATO_NONE
	snd_note $34, NOTELEN_01
	snd_inc_vol -1
	snd_note $33
	snd_inc_vol -1
	snd_note $32
	snd_inc_vol -2
	snd_note $31
	snd_inc_vol -2
	snd_note $30
	snd_note $2F, NOTELEN_02
	snd_inc_vol 6
	snd_wave WAVE_07
	snd_instrument INSTR_2E
	snd_vibrato VIBRATO_NONE
	snd_inc_base_note 12
	snd_note $30, NOTELEN_01
	snd_note $31, NOTELEN_0C
	snd_note $30, NOTELEN_04
	snd_wave WAVE_09
	snd_instrument INSTR_30
	snd_vibrato VIBRATO_34
	snd_inc_base_note -12
	snd_note $27, NOTELEN_09
	snd_note $29, NOTELEN_06
	snd_note $2A
	snd_note $2B, NOTELEN_03
	snd_note $2A, NOTELEN_01
	snd_note $29
	snd_note $28
	snd_wave WAVE_07
	snd_instrument INSTR_2E
	snd_vibrato VIBRATO_NONE
	snd_inc_base_note 12
	snd_note $24, NOTELEN_09
	snd_note $2B, NOTELEN_06
	snd_note $29, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $29, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_wave WAVE_09
	snd_instrument INSTR_30
	snd_vibrato VIBRATO_34
	snd_inc_base_note -12
	snd_note $29, NOTELEN_09
	snd_note $30, NOTELEN_06
	snd_note $29
	snd_wave WAVE_07
	snd_instrument INSTR_2E
	snd_vibrato VIBRATO_NONE
	snd_inc_base_note 12
	snd_note $29
	snd_note $22, NOTELEN_09
	snd_note $29, NOTELEN_06
	snd_note $27, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $27, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_wave WAVE_09
	snd_instrument INSTR_30
	snd_vibrato VIBRATO_34
	snd_inc_base_note -12
	snd_note $27, NOTELEN_09
	snd_note $2E, NOTELEN_06
	snd_note $27
	snd_wave WAVE_07
	snd_instrument INSTR_2E
	snd_vibrato VIBRATO_NONE
	snd_inc_base_note 12
	snd_note $2B
	snd_note $24, NOTELEN_09
	snd_note $2B, NOTELEN_06
	snd_note $29, NOTELEN_03
	snd_wave WAVE_09
	snd_instrument INSTR_30
	snd_vibrato VIBRATO_34
	snd_inc_base_note -12
	snd_note $2D, NOTELEN_01
	snd_note $2E
	snd_note $2F
	snd_note $30, NOTELEN_09
	snd_note $32, NOTELEN_06
	snd_note $33
	snd_note $35, NOTELEN_03
	snd_vibrato VIBRATO_NONE
	snd_note $34, NOTELEN_01
	snd_note $33
	snd_note $32
	snd_note $31
	snd_note $30
	snd_note $2F, NOTELEN_02
	snd_wave WAVE_07
	snd_instrument INSTR_2E
	snd_vibrato VIBRATO_NONE
	snd_inc_base_note 12
	snd_note $30, NOTELEN_01
	snd_note $31, NOTELEN_0C
	snd_note $30, NOTELEN_04
	snd_wave WAVE_09
	snd_instrument INSTR_30
	snd_vibrato VIBRATO_34
	snd_inc_base_note -12
	snd_note $27, NOTELEN_09
	snd_note $29, NOTELEN_06
	snd_note $2A
	snd_wave WAVE_01
	snd_instrument INSTR_2E
	snd_vibrato VIBRATO_33
	snd_inc_base_note 0
	snd_note $3E
	snd_note $37, NOTELEN_09
	snd_note $3E, NOTELEN_06
	snd_note $3C, NOTELEN_CUSTOM, $17
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $3C, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_wave WAVE_08
	snd_instrument INSTR_33
	snd_vibrato VIBRATO_33
	snd_inc_base_note 0
	snd_note $3A, NOTELEN_01
	snd_note $3C, NOTELEN_06
	snd_note $35, NOTELEN_09
	snd_note $3C, NOTELEN_06
	snd_note $3A, NOTELEN_CUSTOM, $16
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $3A, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_wave WAVE_01
	snd_instrument INSTR_2E
	snd_vibrato VIBRATO_33
	snd_inc_base_note 0
	snd_note $3C, NOTELEN_01
	snd_note $3D
	snd_note $3E, NOTELEN_06
	snd_note $37, NOTELEN_09
	snd_note $3E, NOTELEN_06
	snd_note $3C, NOTELEN_CUSTOM, $23
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $3C, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $3C, NOTELEN_01
	snd_note $3D, NOTELEN_0C
	snd_note $3C
	snd_note $3A
	snd_wave WAVE_02
	snd_instrument INSTR_33
	snd_vibrato VIBRATO_33
	snd_inc_base_note 0
	snd_note $2E, NOTELEN_06
	snd_note $33, NOTELEN_09
	snd_note $3A, NOTELEN_06
	snd_note $39
	snd_note $33
	snd_note $2D, NOTELEN_03
	snd_note $39, NOTELEN_06
	snd_note $35
	snd_note $38
	snd_note $35, NOTELEN_09
	snd_note $38, NOTELEN_06
	snd_note $37
	snd_note $33
	snd_note $2B, NOTELEN_03
	snd_note $37, NOTELEN_06
	snd_note $33
	snd_note $2E
	snd_note $33, NOTELEN_09
	snd_note $3A, NOTELEN_06
	snd_note $39
	snd_note $33
	snd_note $2D, NOTELEN_03
	snd_note $39, NOTELEN_06
	snd_note $35
	snd_note $38
	snd_note $35, NOTELEN_09
	snd_note $38, NOTELEN_06
	snd_note $37, NOTELEN_03
	snd_wave WAVE_09
	snd_instrument INSTR_30
	snd_vibrato VIBRATO_33
	snd_inc_base_note 0
	snd_note $24, NOTELEN_01
	snd_note $25
	snd_note $26
	snd_note $27, NOTELEN_09
	snd_note $29, NOTELEN_06
	snd_note $2A
	snd_jp .loop
SndData_09_Ch1:
	snd_duty SNDDUTY_25, $00
	snd_note $30, NOTELEN_01
	snd_note $31
	snd_note $32
	snd_note $33, NOTELEN_09
	snd_note $35, NOTELEN_06
	snd_note $36
.loop:
	snd_duty SNDDUTY_50, $00
	snd_instrument INSTR_2F
	snd_vibrato VIBRATO_3D
	snd_inc_base_note 12
	snd_note $3E
	snd_note $37, NOTELEN_09
	snd_note $3E, NOTELEN_06
	snd_note $3C
	snd_duty SNDDUTY_25, $00
	snd_instrument INSTR_30
	snd_vibrato VIBRATO_34
	snd_inc_base_note -12
	snd_note $35, NOTELEN_09
	snd_note $3C, NOTELEN_06
	snd_note $35, NOTELEN_CUSTOM, $05
	snd_duty SNDDUTY_50, $00
	snd_instrument INSTR_2F
	snd_vibrato VIBRATO_3D
	snd_inc_base_note 12
	snd_note $3A, NOTELEN_01
	snd_note $3C, NOTELEN_06
	snd_note $35, NOTELEN_09
	snd_note $3C, NOTELEN_06
	snd_note $3A
	snd_duty SNDDUTY_25, $00
	snd_instrument INSTR_30
	snd_vibrato VIBRATO_34
	snd_inc_base_note -12
	snd_note $33, NOTELEN_09
	snd_note $3A, NOTELEN_06
	snd_note $33, NOTELEN_CUSTOM, $05
	snd_duty SNDDUTY_50, $00
	snd_instrument INSTR_2F
	snd_vibrato VIBRATO_3D
	snd_inc_base_note 12
	snd_note $3C, NOTELEN_01
	snd_note $3E, NOTELEN_06
	snd_note $37, NOTELEN_09
	snd_note $3E, NOTELEN_06
	snd_note $3C
	snd_duty SNDDUTY_25, $00
	snd_instrument INSTR_30
	snd_vibrato VIBRATO_34
	snd_inc_base_note -12
	snd_note $3C, NOTELEN_09
	snd_note $3E, NOTELEN_06
	snd_note $3F
	snd_note $41, NOTELEN_03
	snd_vibrato VIBRATO_NONE
	snd_note $40, NOTELEN_01
	snd_note $3F
	snd_note $3E
	snd_note $3D
	snd_note $3C
	snd_note $3B, NOTELEN_03
	snd_duty SNDDUTY_50, $00
	snd_instrument INSTR_2F
	snd_vibrato VIBRATO_3D
	snd_inc_base_note 12
	snd_note $3C, NOTELEN_01
	snd_note $3D, NOTELEN_0C
	snd_note $3C
	snd_note $3A, NOTELEN_CUSTOM, $0B
	snd_note $3C, NOTELEN_01
	snd_note $3E, NOTELEN_06
	snd_note $37, NOTELEN_09
	snd_note $3E, NOTELEN_06
	snd_note $3C
	snd_duty SNDDUTY_25, $00
	snd_instrument INSTR_30
	snd_vibrato VIBRATO_34
	snd_inc_base_note -12
	snd_note $35, NOTELEN_09
	snd_note $3C, NOTELEN_06
	snd_note $35, NOTELEN_CUSTOM, $05
	snd_duty SNDDUTY_50, $00
	snd_instrument INSTR_2F
	snd_vibrato VIBRATO_3D
	snd_inc_base_note 12
	snd_note $3A, NOTELEN_01
	snd_note $3C, NOTELEN_06
	snd_note $35, NOTELEN_09
	snd_note $3C, NOTELEN_06
	snd_note $3A
	snd_duty SNDDUTY_25, $00
	snd_instrument INSTR_30
	snd_vibrato VIBRATO_34
	snd_inc_base_note -12
	snd_note $33, NOTELEN_09
	snd_note $3A, NOTELEN_06
	snd_note $33, NOTELEN_CUSTOM, $05
	snd_duty SNDDUTY_50, $00
	snd_instrument INSTR_2F
	snd_vibrato VIBRATO_3D
	snd_inc_base_note 12
	snd_note $3C, NOTELEN_01
	snd_note $3E, NOTELEN_06
	snd_note $37, NOTELEN_09
	snd_note $3E, NOTELEN_06
	snd_note $3C
	snd_duty SNDDUTY_25, $00
	snd_instrument INSTR_30
	snd_vibrato VIBRATO_34
	snd_inc_base_note -12
	snd_note $3C, NOTELEN_09
	snd_note $3E, NOTELEN_06
	snd_note $3F
	snd_note $41, NOTELEN_03
	snd_vibrato VIBRATO_NONE
	snd_note $40, NOTELEN_01
	snd_note $3F
	snd_note $3E
	snd_note $3D
	snd_note $3C
	snd_note $3B, NOTELEN_03
	snd_duty SNDDUTY_50, $00
	snd_instrument INSTR_2F
	snd_vibrato VIBRATO_3D
	snd_inc_base_note 12
	snd_note $3C, NOTELEN_01
	snd_note $3D, NOTELEN_0C
	snd_note $3C
	snd_note $3A
	snd_duty SNDDUTY_50, $00
	snd_instrument INSTR_38
	snd_vibrato VIBRATO_3D
	snd_inc_base_note -12
	snd_inc_vol -8
	snd_note $32, NOTELEN_CUSTOM, $15
	snd_note $2D, NOTELEN_CUSTOM, $1B
	snd_note $2C, NOTELEN_CUSTOM, $15
	snd_note $2B, NOTELEN_CUSTOM, $1B
	snd_note $32, NOTELEN_CUSTOM, $15
	snd_note $2D, NOTELEN_CUSTOM, $1B
	snd_note $2C, NOTELEN_CUSTOM, $15
	snd_note $2B, NOTELEN_CUSTOM, $1B
	snd_inc_vol 8
	snd_duty SNDDUTY_12, $00
	snd_instrument INSTR_2F
	snd_vibrato VIBRATO_3D
	snd_inc_base_note 0
	snd_note $3A, NOTELEN_06
	snd_note $37, NOTELEN_09
	snd_note $2E, NOTELEN_06
	snd_note $2D
	snd_note $35
	snd_note $39, NOTELEN_03
	snd_note $2D, NOTELEN_06
	snd_note $33
	snd_note $2C
	snd_note $31, NOTELEN_09
	snd_note $2C, NOTELEN_06
	snd_note $2B
	snd_note $31
	snd_note $37, NOTELEN_03
	snd_note $2B, NOTELEN_06
	snd_note $31
	snd_note $3A
	snd_note $37, NOTELEN_09
	snd_note $2E, NOTELEN_06
	snd_note $2D
	snd_note $35
	snd_note $39, NOTELEN_03
	snd_note $2D, NOTELEN_06
	snd_note $33
	snd_note $2C
	snd_note $31, NOTELEN_09
	snd_note $2C, NOTELEN_06
	snd_note $2B, NOTELEN_03
	snd_duty SNDDUTY_25, $00
	snd_instrument INSTR_30
	snd_vibrato VIBRATO_3D
	snd_inc_base_note 0
	snd_note $30, NOTELEN_01
	snd_note $31
	snd_note $32
	snd_note $33, NOTELEN_09
	snd_note $35, NOTELEN_06
	snd_note $36
	snd_jp .loop
SndData_09_Ch2:
	snd_note $00, NOTELEN_18
.loop:
	snd_note $18, NOTELEN_09
	snd_note $1A, NOTELEN_0C
	snd_note $2B, NOTELEN_03
	snd_note $1D, NOTELEN_09
	snd_note $1F
	snd_note $23, NOTELEN_06
	snd_note $22, NOTELEN_09
	snd_note $1D
	snd_note $29, NOTELEN_03
	snd_note $1D
	snd_note $1B, NOTELEN_09
	snd_note $2E, NOTELEN_03
	snd_note $25, NOTELEN_06
	snd_note $19
	snd_note $18, NOTELEN_09
	snd_note $1A, NOTELEN_0C
	snd_note $2B, NOTELEN_03
	snd_note $1D, NOTELEN_09
	snd_note $1F
	snd_note $23, NOTELEN_06
	snd_note $22, NOTELEN_09
	snd_note $24
	snd_note $28, NOTELEN_06
	snd_note $27, NOTELEN_03
	snd_note $2E
	snd_note $22
	snd_note $1B
	snd_note $16, NOTELEN_06
	snd_note $17
	snd_note $18, NOTELEN_09
	snd_note $1A, NOTELEN_0C
	snd_note $2B, NOTELEN_03
	snd_note $1D, NOTELEN_09
	snd_note $1F
	snd_note $23, NOTELEN_06
	snd_note $22, NOTELEN_09
	snd_note $1D
	snd_note $29, NOTELEN_03
	snd_note $1D
	snd_note $1B, NOTELEN_09
	snd_note $2E, NOTELEN_03
	snd_note $25, NOTELEN_06
	snd_note $19
	snd_note $18, NOTELEN_09
	snd_note $1A, NOTELEN_0C
	snd_note $2B, NOTELEN_03
	snd_note $1D, NOTELEN_09
	snd_note $1F
	snd_note $23, NOTELEN_06
	snd_note $22, NOTELEN_09
	snd_note $24
	snd_note $28, NOTELEN_06
	snd_note $27, NOTELEN_03
	snd_note $2E
	snd_note $22
	snd_note $1B, NOTELEN_CUSTOM, $0F
	snd_duty SNDDUTY_12, $00
	snd_inc_vol -8
	snd_instrument INSTR_38
	snd_note $22, NOTELEN_CUSTOM, $15
	snd_note $24, NOTELEN_CUSTOM, $1B
	snd_note $24, NOTELEN_CUSTOM, $15
	snd_note $22, NOTELEN_CUSTOM, $1B
	snd_note $22, NOTELEN_CUSTOM, $15
	snd_note $24, NOTELEN_CUSTOM, $1B
	snd_note $24, NOTELEN_CUSTOM, $15
	snd_note $22, NOTELEN_CUSTOM, $1B
	snd_inc_vol 8
	snd_duty SNDDUTY_25, $00
	snd_instrument INSTR_2E
	snd_note $22, NOTELEN_06
	snd_note $27, NOTELEN_09
	snd_note $2E, NOTELEN_06
	snd_note $2D
	snd_note $27
	snd_note $21, NOTELEN_03
	snd_note $2D, NOTELEN_06
	snd_note $29
	snd_note $2C
	snd_note $29, NOTELEN_09
	snd_note $2C, NOTELEN_06
	snd_note $2B
	snd_note $27
	snd_note $1F, NOTELEN_03
	snd_note $2B, NOTELEN_06
	snd_note $27
	snd_note $22
	snd_note $27, NOTELEN_09
	snd_note $2E, NOTELEN_06
	snd_note $2D
	snd_note $27
	snd_note $21, NOTELEN_03
	snd_note $2D, NOTELEN_06
	snd_note $29
	snd_note $2C
	snd_note $29, NOTELEN_09
	snd_note $2C, NOTELEN_06
	snd_note $2B, NOTELEN_CUSTOM, $0F
	snd_duty SNDDUTY_25, $00
	snd_instrument INSTR_2E
	snd_note $16, NOTELEN_06
	snd_note $17
	snd_jp .loop
SndData_09_Ch4:
	snd_duty SNDDUTY_12, $00
	snd_note $00, NOTELEN_0C
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_00
.loop0:
	snd_var iSndChInfo_LoopTimer0, $03
	.loop1:
		snd_noteex PRESET_01, NOTELEN_06
		snd_noteex PRESET_00, NOTELEN_03
		snd_noteex PRESET_01
		snd_noteex PRESET_00, NOTELEN_09
		snd_noteex PRESET_00, NOTELEN_03
		snd_noteex PRESET_01
		snd_noteex PRESET_00, NOTELEN_06
		snd_noteex PRESET_00, NOTELEN_03
		snd_noteex PRESET_00, NOTELEN_06
		snd_noteex PRESET_00, NOTELEN_03
		snd_noteex PRESET_00
		snd_noteex PRESET_01, NOTELEN_06
		snd_noteex PRESET_00, NOTELEN_03
		snd_noteex PRESET_01
		snd_noteex PRESET_01
		snd_noteex PRESET_00, NOTELEN_06
		snd_noteex PRESET_00, NOTELEN_03
		snd_noteex PRESET_01
		snd_noteex PRESET_00, NOTELEN_06
		snd_noteex PRESET_00, NOTELEN_03
		snd_noteex PRESET_00, NOTELEN_06
		snd_noteex PRESET_00, NOTELEN_03
		snd_noteex PRESET_00
		snd_djnz iSndChInfo_LoopTimer0, .loop1
	snd_noteex PRESET_01, NOTELEN_06
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_01
	snd_noteex PRESET_00, NOTELEN_09
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_01
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_00
	snd_noteex PRESET_01, NOTELEN_06
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_01
	snd_noteex PRESET_01
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_01
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_00
	snd_call .sub0
	snd_noteex PRESET_01, NOTELEN_06
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_01
	snd_noteex PRESET_00, NOTELEN_09
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_01
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_00
	snd_noteex PRESET_01, NOTELEN_06
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_01
	snd_noteex PRESET_01
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_01
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_00
	snd_noteex PRESET_01, NOTELEN_06
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_01
	snd_noteex PRESET_00, NOTELEN_09
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_01
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_00
	snd_noteex PRESET_01, NOTELEN_06
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_01
	snd_noteex PRESET_01
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_01, NOTELEN_09
	snd_noteex PRESET_01, NOTELEN_03
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_00
	snd_jp .loop0
.sub0:
	snd_var iSndChInfo_LoopTimer0, $04
	.sub0loop0:
		snd_noteex PRESET_02
		snd_inc_vol -3
		snd_noteex PRESET_02
		snd_noteex PRESET_02
		snd_noteex PRESET_02
		snd_noteex PRESET_02
		snd_noteex PRESET_02
		snd_noteex PRESET_02
		snd_inc_vol 3
		snd_noteex PRESET_02
		snd_inc_vol -3
		snd_noteex PRESET_02
		snd_noteex PRESET_02
		snd_noteex PRESET_02
		snd_noteex PRESET_02
		snd_noteex PRESET_02
		snd_noteex PRESET_02
		snd_noteex PRESET_02
		snd_noteex PRESET_02
		snd_inc_vol 3
		snd_djnz iSndChInfo_LoopTimer0, .sub0loop0
	snd_ret
