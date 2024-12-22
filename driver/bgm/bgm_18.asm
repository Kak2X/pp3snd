SndHeader_BGM_18:
	db 4 ; Number of slots
.slot0:
	db SNDSLOT0 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_3D ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db 0 ; iSndChInfo_NoteIdBase
	db 138 ; iSndChInfo_Speed
	db SNDCH_WAVE ; iSndChInfo_ChId
	dw SndData_18_Ch3 ; Data pointer
	db $80 ; [PLACEHOLDER] ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot1:
	db SNDSLOT1 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 10 ; iSndChInfo_Vol
	db INSTR_3D ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -12 ; iSndChInfo_NoteIdBase
	db 138 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_18_Ch2 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot2:
	db SNDSLOT2 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 12 ; iSndChInfo_Vol
	db INSTR_2E ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -12 ; iSndChInfo_NoteIdBase
	db 138 ; iSndChInfo_Speed
	db SNDCH_PULSE1 ; iSndChInfo_ChId
	dw SndData_18_Ch1 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot3:
	db SNDSLOT3 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db 0 ; iSndChInfo_NoteIdBase
	db 138 ; iSndChInfo_Speed
	db SNDCH_NOISE ; iSndChInfo_ChId
	dw SndData_18_Ch4 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_18_Ch3:
	snd_wave WAVE_07
	snd_note $00, NOTELEN_06
	snd_note $2D
	snd_note $2C
	snd_note $2D, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $2D, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_06
	snd_note $24, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $24, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_06
	snd_note $26, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $26, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_06
	snd_note $29, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $29, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_06
	snd_note $2B, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $2B, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_06
	snd_note $2B
	snd_note $29
	snd_note $2B
	snd_note $2D, NOTELEN_CUSTOM, $06
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $2D, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_03
	snd_note $30, NOTELEN_06
	snd_note $32, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $32, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_06
	snd_note $2B, NOTELEN_01
	snd_note $2C, NOTELEN_CUSTOM, $05
	snd_note $2B, NOTELEN_06
	snd_note $29, NOTELEN_CUSTOM, $06
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $29, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_03
	snd_wave WAVE_05
	snd_instrument INSTR_40
	snd_note $37, NOTELEN_01
	snd_note $38, NOTELEN_CUSTOM, $05
	snd_note $37, NOTELEN_06
	snd_note $35, NOTELEN_CUSTOM, $06
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $35, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_CUSTOM, $15
	snd_note $00, NOTELEN_12
	snd_wave WAVE_07
	snd_instrument INSTR_3D
	snd_note $2C, NOTELEN_01
	snd_note $2D, NOTELEN_CUSTOM, $05
	snd_note $2E, NOTELEN_06
	snd_note $30, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $30, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_06
	snd_note $2E, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $2E, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_06
	snd_note $2D, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $2D, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_06
	snd_note $29, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $29, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_06
	snd_note $29, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $29, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $2B, NOTELEN_06
	snd_note $2C, NOTELEN_01
	snd_note $2D, NOTELEN_03
	snd_note $2D, NOTELEN_02
	snd_inc_vol -1
	snd_note $2D
	snd_note $2D
	snd_note $2D
	snd_inc_vol -1
	snd_note $2D
	snd_note $2D
	snd_note $2D
	snd_inc_vol -1
	snd_note $2D
	snd_note $2D
	snd_note $2D
	snd_wave WAVE_09
	snd_note $29, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $29, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_06
	snd_inc_vol 1
	snd_note $29, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $29, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_06
	snd_inc_vol 1
	snd_note $29, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $29, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_06
	snd_inc_vol 1
	snd_note $29
	snd_note $26, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $26, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $24, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $24, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $26, NOTELEN_06
	snd_note $29, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $29, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $2C, NOTELEN_06
	snd_note $2B, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $2B, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_06
	snd_note $35, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $35, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_12
	snd_wave WAVE_07
	snd_note $29, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $29, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $26, NOTELEN_06
	snd_note $29, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $29, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_18
	snd_wave WAVE_09
	snd_note $2C, NOTELEN_06
	snd_note $2D, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $2D, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $2C, NOTELEN_06
	snd_note $2D, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $2D, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $29, NOTELEN_CUSTOM, $06
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $29, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_03
	snd_note $29, NOTELEN_CUSTOM, $06
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $29, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_09
	snd_wave WAVE_07
	snd_note $29, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $29, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $29, NOTELEN_06
	snd_note $29, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $29, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_12
	snd_wave WAVE_09
	snd_note $30, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $30, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $32, NOTELEN_06
	snd_note $35, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $35, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $39, NOTELEN_06
	snd_note $35, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $35, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_1E
	snd_wave WAVE_07
	snd_note $29, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $29, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $26, NOTELEN_06
	snd_note $29, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $29, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_18
	snd_wave WAVE_09
	snd_note $2C, NOTELEN_06
	snd_note $2D, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $2D, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $2C, NOTELEN_06
	snd_note $2D, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $2D, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $29, NOTELEN_CUSTOM, $06
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $29, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $2C, NOTELEN_01
	snd_note $2D
	snd_note $30
	snd_note $35, NOTELEN_CUSTOM, $06
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $35, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_09
	snd_wave WAVE_07
	snd_note $29, NOTELEN_06
	snd_note $29
	snd_note $29, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $29, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_wave WAVE_09
	snd_note $38, NOTELEN_06
	snd_note $39, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $39, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_06
	snd_note $30, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $30, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $32, NOTELEN_06
	snd_note $35, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $35, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $32, NOTELEN_06
	snd_note $35, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $35, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_wave WAVE_0B
	snd_instrument INSTR_3E
	snd_note $00, NOTELEN_06
	snd_note $39
	snd_note $38
	snd_note $39, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $39, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_06
	snd_note $30, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $30, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_06
	snd_note $32, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $32, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_06
	snd_note $35, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $35, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_06
	snd_note $37, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $37, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_06
	snd_note $37, NOTELEN_06
	snd_note $35
	snd_note $37
	snd_note $39, NOTELEN_CUSTOM, $06
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $39, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_03
	snd_note $3C, NOTELEN_06
	snd_note $3E, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $3E, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_06
	snd_note $37, NOTELEN_01
	snd_note $38, NOTELEN_CUSTOM, $05
	snd_note $37, NOTELEN_06
	snd_note $35, NOTELEN_CUSTOM, $06
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $35, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_CUSTOM, $0F
	snd_wave WAVE_09
	snd_instrument INSTR_3D
	snd_note $30, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $30, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $32, NOTELEN_06
	snd_note $35, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $35, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $38, NOTELEN_01
	snd_note $39, NOTELEN_CUSTOM, $05
	snd_note $35, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $35, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_06
	snd_note $35, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $35, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_06
	snd_wave WAVE_0B
	snd_instrument INSTR_3E
	snd_note $38, NOTELEN_01
	snd_note $39, NOTELEN_CUSTOM, $05
	snd_note $3A, NOTELEN_06
	snd_note $3C, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $3C, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_06
	snd_note $3A, NOTELEN_CUSTOM, $06
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $3A, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_03
	snd_note $39, NOTELEN_CUSTOM, $06
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $39, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_03
	snd_note $35, NOTELEN_CUSTOM, $06
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $35, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_03
	snd_note $35, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $35, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $37, NOTELEN_06
	snd_note $38, NOTELEN_02
	snd_note $39
	snd_note $39
	snd_inc_vol -2
	snd_note $39
	snd_note $39
	snd_note $39
	snd_inc_vol -2
	snd_note $39
	snd_note $39
	snd_note $39
	snd_inc_vol -1
	snd_note $39
	snd_note $39
	snd_note $39
	snd_wave WAVE_09
	snd_inc_vol 2
	snd_instrument INSTR_3D
	snd_note $35, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $35, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_06
	snd_inc_vol 2
	snd_note $35, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $35, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_06
	snd_inc_vol 1
	snd_note $35, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $35, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_inc_vol 1
	snd_note $00, NOTELEN_06
	snd_note $35
	snd_note $32, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $32, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $30, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $30, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $32, NOTELEN_06
	snd_note $35, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $35, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $38, NOTELEN_06
	snd_note $37, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $37, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_06
	snd_note $35, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $35, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_12
	snd_wave WAVE_0B
	snd_instrument INSTR_3E
	snd_note $35, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $35, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $32, NOTELEN_06
	snd_note $35, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $35, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_wave WAVE_09
	snd_instrument INSTR_3D
	snd_note $00, NOTELEN_18
	snd_note $2C, NOTELEN_06
	snd_note $2D, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $2D, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $2C, NOTELEN_06
	snd_note $2D, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $2D, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $29, NOTELEN_CUSTOM, $06
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $29, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_03
	snd_note $29, NOTELEN_CUSTOM, $06
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $29, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_09
	snd_wave WAVE_0B
	snd_instrument INSTR_3E
	snd_note $35, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $35, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $35, NOTELEN_06
	snd_note $35, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $35, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_12
	snd_wave WAVE_09
	snd_instrument INSTR_3D
	snd_note $30, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $30, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $32, NOTELEN_06
	snd_note $35, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $35, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $39, NOTELEN_06
	snd_note $35, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $35, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_12
	snd_note $35, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $35, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_06
	snd_wave WAVE_0B
	snd_instrument INSTR_3E
	snd_note $35, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $35, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $32, NOTELEN_06
	snd_note $35, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $35, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_18
	snd_wave WAVE_09
	snd_instrument INSTR_3D
	snd_note $2C, NOTELEN_06
	snd_note $2D, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $2D, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $2C, NOTELEN_06
	snd_note $2D, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $2D, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $29, NOTELEN_CUSTOM, $06
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $29, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $2C, NOTELEN_01
	snd_note $2D
	snd_note $30
	snd_note $35, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $35, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_0C
	snd_wave WAVE_0B
	snd_instrument INSTR_3E
	snd_note $35, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $35, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $35, NOTELEN_06
	snd_note $35, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $35, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_12
	snd_wave WAVE_09
	snd_instrument INSTR_3D
	snd_note $36, NOTELEN_01
	snd_note $37
	snd_note $38, NOTELEN_CUSTOM, $0A
	snd_note $35, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $35, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $37, NOTELEN_06
	snd_note $32, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $32, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $35, NOTELEN_06
	snd_note $34, NOTELEN_01
	snd_note $33
	snd_note $32
	snd_note $30, NOTELEN_02
	snd_note $00, NOTELEN_CUSTOM, $07
	snd_wave WAVE_01
	snd_note $35, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $35, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $37, NOTELEN_06
	snd_note $39, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $39, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_CUSTOM, $06
	snd_note $3E, NOTELEN_CUSTOM, $1B
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $3E, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_06
	snd_note $40
	snd_note $41, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $41, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $44, NOTELEN_0C
	snd_note $41, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $41, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $3A, NOTELEN_03
	snd_note $39
	snd_note $38, NOTELEN_CUSTOM, $4B
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $38, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_12
	snd_note $35, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $35, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $37, NOTELEN_06
	snd_note $39, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $39, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_CUSTOM, $06
	snd_note $3E, NOTELEN_CUSTOM, $1B
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $3E, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_06
	snd_note $3E, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $3E, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $40, NOTELEN_06
	snd_note $41, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $41, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $44, NOTELEN_2A
	snd_note $43, NOTELEN_02
	snd_note $42
	snd_note $41
	snd_note $40, NOTELEN_30
	snd_wave $40 ; [BUG] Invalid waveform
	snd_inc_vol -5
	snd_note $35, NOTELEN_12
	snd_note $35, NOTELEN_18
	snd_note $35, NOTELEN_06
	snd_note $35, NOTELEN_12
	snd_note $35, NOTELEN_0C
	snd_note $2B
	snd_note $32, NOTELEN_06
	snd_note $35, NOTELEN_12
	snd_note $35, NOTELEN_18
	snd_note $35, NOTELEN_06
	snd_note $35, NOTELEN_12
	snd_note $35, NOTELEN_0C
	snd_note $32, NOTELEN_06
	snd_note $35
	snd_note $35
	snd_note $00
	snd_note $35, NOTELEN_0C
	snd_note $30, NOTELEN_06
	snd_note $35, NOTELEN_12
	snd_note $35, NOTELEN_06
	snd_note $35, NOTELEN_12
	snd_note $35, NOTELEN_0C
	snd_note $2B
	snd_note $32, NOTELEN_06
	snd_note $35, NOTELEN_12
	snd_note $35, NOTELEN_18
	snd_note $35, NOTELEN_06
	snd_note $35, NOTELEN_12
	snd_note $35, NOTELEN_0C
	snd_note $32, NOTELEN_06
	snd_note $33
	snd_note $34
	snd_inc_vol 5
	snd_note $00, NOTELEN_1E
	snd_wave WAVE_07
	snd_note $29, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $29, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $26, NOTELEN_06
	snd_note $29, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $29, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_18
	snd_wave WAVE_09
	snd_note $2C, NOTELEN_06
	snd_note $2D, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $2D, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $2C, NOTELEN_06
	snd_note $2D, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $2D, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $29, NOTELEN_CUSTOM, $06
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $29, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_03
	snd_note $29, NOTELEN_CUSTOM, $06
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $29, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_09
	snd_wave WAVE_07
	snd_note $29, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $29, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $29, NOTELEN_06
	snd_note $29, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $29, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_12
	snd_wave WAVE_09
	snd_note $30, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $30, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $32, NOTELEN_06
	snd_note $35, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $35, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $39, NOTELEN_06
	snd_note $35, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $35, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_1E
	snd_wave WAVE_07
	snd_note $29, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $29, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $26, NOTELEN_06
	snd_note $29, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $29, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_18
	snd_wave WAVE_09
	snd_note $2C, NOTELEN_06
	snd_note $2D, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $2D, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $2C, NOTELEN_06
	snd_note $2D, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $2D, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $29, NOTELEN_CUSTOM, $06
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $29, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $2C, NOTELEN_01
	snd_note $2D
	snd_note $30
	snd_note $35, NOTELEN_CUSTOM, $06
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $35, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_09
	snd_wave WAVE_07
	snd_note $29, NOTELEN_06
	snd_note $29
	snd_note $29, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $29, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_wave WAVE_09
	snd_note $38, NOTELEN_06
	snd_note $39, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $39, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_CUSTOM, $06
	snd_note $30, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $30, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $32, NOTELEN_06
	snd_note $35, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $35, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $32, NOTELEN_06
	snd_note $35, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $35, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_wave WAVE_00
	snd_inc_vol -5
	snd_note $00, NOTELEN_06
	snd_note $3C
	snd_note $3C
	snd_note $3C, NOTELEN_0C
	snd_note $3A, NOTELEN_06
	snd_note $39
	snd_note $3A
	snd_note $3C
	snd_note $40, NOTELEN_0C
	snd_note $41, NOTELEN_02
	snd_note $3E
	snd_inc_vol -1
	snd_note $41
	snd_note $3E
	snd_inc_vol -1
	snd_note $41
	snd_note $3E
	snd_inc_vol -1
	snd_note $41
	snd_note $3E
	snd_note $41
	snd_note $3E
	snd_note $41
	snd_note $3E
	snd_note $41
	snd_note $3E
	snd_note $41
	snd_note $00, NOTELEN_1E
	snd_inc_vol 8
	snd_wave WAVE_07
	snd_note $29, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $29, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $29, NOTELEN_06
	snd_note $29, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $29, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_12
	snd_wave WAVE_09
	snd_note $30, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $30, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $32, NOTELEN_06
	snd_note $35, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $35, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $39, NOTELEN_06
	snd_note $35, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $35, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_wave WAVE_00
	snd_inc_vol -5
	snd_note $00, NOTELEN_0C
	snd_note $3C, NOTELEN_06
	snd_note $3C, NOTELEN_0C
	snd_note $3A, NOTELEN_06
	snd_note $39
	snd_note $3A
	snd_note $3C
	snd_note $40, NOTELEN_0C
	snd_note $41, NOTELEN_02
	snd_note $3E
	snd_inc_vol -1
	snd_note $41
	snd_note $3E
	snd_inc_vol -1
	snd_note $41
	snd_note $3E
	snd_inc_vol -1
	snd_note $41
	snd_note $3E
	snd_note $41
	snd_note $3E
	snd_note $41
	snd_note $3E
	snd_note $41
	snd_note $3E
	snd_note $41
	snd_wave WAVE_09
	snd_inc_vol 8
	snd_note $29, NOTELEN_CUSTOM, $06
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $29, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $2C, NOTELEN_01
	snd_note $2D
	snd_note $30
	snd_note $35, NOTELEN_CUSTOM, $06
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $35, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_09
	snd_wave WAVE_07
	snd_note $29, NOTELEN_06
	snd_note $29
	snd_note $29, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $29, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_wave WAVE_09
	snd_note $38, NOTELEN_06
	snd_note $39, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $39, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $00, NOTELEN_06
	snd_note $30, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $30, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $32, NOTELEN_06
	snd_note $35, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $35, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_note $32, NOTELEN_06
	snd_note $35, NOTELEN_CUSTOM, $03
	snd_inc_vol -5
	snd_inc_freq_offset -1
	snd_note $35, NOTELEN_03
	snd_inc_vol 5
	snd_inc_freq_offset 1
	snd_jp SndData_18_Ch3
SndData_18_Ch2:
	snd_duty SNDDUTY_25, $00
	snd_instrument INSTR_3C
	snd_var iSndChInfo_LoopTimer0, $03
	.loop0:
		snd_call .sub0
		snd_note $00
		snd_note $29, NOTELEN_0C
		snd_note $21, NOTELEN_06
		snd_note $1D
		snd_note $21
		snd_note $24
		snd_note $1D, NOTELEN_0C
		snd_note $22, NOTELEN_06
		snd_note $26
		snd_note $1D, NOTELEN_0C
		snd_note $22
		snd_note $1A, NOTELEN_06
		snd_note $1D
		snd_note $21
		snd_note $24
		snd_note $1D, NOTELEN_0C
		snd_note $21, NOTELEN_06
		snd_note $24
		snd_note $1D, NOTELEN_0C
		snd_note $22, NOTELEN_06
		snd_note $26
		snd_note $1D, NOTELEN_0C
		snd_note $22, NOTELEN_06
		snd_note $1B
		snd_note $1C
		snd_djnz iSndChInfo_LoopTimer0, .loop0
	snd_call .sub0
	snd_note $00, NOTELEN_12
	snd_note $21, NOTELEN_06
	snd_note $1D
	snd_note $21
	snd_note $24
	snd_note $1D, NOTELEN_0C
	snd_note $22, NOTELEN_06
	snd_note $26
	snd_note $1D, NOTELEN_0C
	snd_note $22
	snd_note $1A, NOTELEN_06
	snd_note $1D
	snd_note $21
	snd_note $24
	snd_note $1D, NOTELEN_0C
	snd_note $21, NOTELEN_06
	snd_note $24
	snd_note $1D, NOTELEN_0C
	snd_note $22, NOTELEN_06
	snd_note $26
	snd_note $2E, NOTELEN_0C
	snd_note $2D
	snd_note $2C, NOTELEN_06
	snd_note $00, NOTELEN_12
	snd_duty SNDDUTY_25, $00
	snd_note $26, NOTELEN_02
	snd_note $00, NOTELEN_04
	snd_note $28, NOTELEN_06
	snd_note $29, NOTELEN_02
	snd_note $00, NOTELEN_CUSTOM, $0A
	snd_note $2F, NOTELEN_CUSTOM, $1E
	snd_note $00, NOTELEN_06
	snd_note $30
	snd_note $32, NOTELEN_02
	snd_note $00, NOTELEN_04
	snd_note $35, NOTELEN_0C
	snd_note $32, NOTELEN_02
	snd_note $00, NOTELEN_04
	snd_note $2B, NOTELEN_03
	snd_note $2A
	snd_note $29, NOTELEN_CUSTOM, $4E
	snd_note $00, NOTELEN_12
	snd_note $26, NOTELEN_02
	snd_note $00, NOTELEN_04
	snd_note $28, NOTELEN_06
	snd_note $29, NOTELEN_02
	snd_note $00, NOTELEN_CUSTOM, $0A
	snd_note $2F, NOTELEN_CUSTOM, $1E
	snd_note $00, NOTELEN_06
	snd_note $35, NOTELEN_02
	snd_note $00, NOTELEN_04
	snd_note $37, NOTELEN_06
	snd_note $39, NOTELEN_02
	snd_note $00, NOTELEN_04
	snd_note $3C, NOTELEN_2A
	snd_note $3B, NOTELEN_02
	snd_note $3A
	snd_note $39
	snd_note $38, NOTELEN_30
	snd_duty SNDDUTY_25, $00
	snd_var iSndChInfo_LoopTimer0, $02
	.loop1:
		snd_note $1D, NOTELEN_0C
		snd_note $24, NOTELEN_06
		snd_note $1D, NOTELEN_0C
		snd_note $21, NOTELEN_06
		snd_note $24
		snd_note $1D
		snd_note $1D
		snd_note $22
		snd_note $26
		snd_note $1D, NOTELEN_0C
		snd_note $22
		snd_note $1A, NOTELEN_06
		snd_note $1D
		snd_note $21
		snd_note $24
		snd_note $1D, NOTELEN_0C
		snd_note $21, NOTELEN_06
		snd_note $24
		snd_note $1D
		snd_note $1D
		snd_note $22
		snd_note $26
		snd_note $1D, NOTELEN_0C
		snd_note $22, NOTELEN_06
		snd_note $1D
		snd_note $1D
		snd_note $00
		snd_note $29, NOTELEN_0C
		snd_note $21, NOTELEN_06
		snd_note $1D
		snd_note $21
		snd_note $24
		snd_note $1D
		snd_note $1D
		snd_note $22
		snd_note $26
		snd_note $1D, NOTELEN_0C
		snd_note $22
		snd_note $1A, NOTELEN_06
		snd_note $1D
		snd_note $21
		snd_note $24
		snd_note $1D, NOTELEN_0C
		snd_note $21, NOTELEN_06
		snd_note $24
		snd_note $1D
		snd_note $1D
		snd_note $22
		snd_note $26
		snd_note $1D, NOTELEN_0C
		snd_note $22, NOTELEN_06
		snd_note $1B
		snd_note $1C
		snd_djnz iSndChInfo_LoopTimer0, .loop1
	snd_note $1D
	snd_duty SNDDUTY_12, $00
	snd_note $39
	snd_note $39
	snd_note $39, NOTELEN_0C
	snd_note $37, NOTELEN_06
	snd_note $35
	snd_note $37
	snd_note $39
	snd_note $3C
	snd_duty SNDDUTY_25, $00
	snd_note $26
	snd_note $1D, NOTELEN_0C
	snd_note $22
	snd_note $1A, NOTELEN_06
	snd_note $1D
	snd_note $21
	snd_note $24
	snd_note $1D, NOTELEN_0C
	snd_note $21, NOTELEN_06
	snd_note $24
	snd_note $1D
	snd_note $1D
	snd_note $22
	snd_note $26
	snd_note $1D, NOTELEN_0C
	snd_note $22, NOTELEN_06
	snd_note $1D
	snd_note $1D
	snd_note $00
	snd_duty SNDDUTY_12, $00
	snd_note $39
	snd_note $39
	snd_note $39, NOTELEN_0C
	snd_note $37, NOTELEN_06
	snd_note $35
	snd_note $37
	snd_note $39
	snd_note $3C
	snd_duty SNDDUTY_25, $00
	snd_note $26
	snd_note $1D, NOTELEN_0C
	snd_note $22
	snd_note $1A, NOTELEN_06
	snd_note $1D
	snd_note $21
	snd_note $24
	snd_note $1D, NOTELEN_0C
	snd_note $21, NOTELEN_06
	snd_note $24
	snd_note $1D
	snd_note $1D
	snd_note $22
	snd_note $26
	snd_note $29
	snd_duty SNDDUTY_12, $00
	snd_note $2D
	snd_note $2D
	snd_note $2D
	snd_note $2D
	snd_jp SndData_18_Ch2
.sub0:
	snd_note $1D, NOTELEN_0C
	snd_note $24, NOTELEN_06
	snd_note $1D, NOTELEN_0C
	snd_note $21, NOTELEN_06
	snd_note $24
	snd_note $1D, NOTELEN_0C
	snd_note $22, NOTELEN_06
	snd_note $26
	snd_note $1D, NOTELEN_0C
	snd_note $22
	snd_note $1A, NOTELEN_06
	snd_note $1D
	snd_note $21
	snd_note $24
	snd_note $1D, NOTELEN_0C
	snd_note $21, NOTELEN_06
	snd_note $24
	snd_note $1D, NOTELEN_0C
	snd_note $22, NOTELEN_06
	snd_note $26
	snd_note $1D, NOTELEN_0C
	snd_note $22, NOTELEN_06
	snd_note $1D
	snd_note $1D
	snd_ret
SndData_18_Ch1:
	snd_duty SNDDUTY_12, $01
	snd_note $29, NOTELEN_0C
	snd_note $21, NOTELEN_06
	snd_note $29, NOTELEN_0C
	snd_note $2D, NOTELEN_06
	snd_note $30
	snd_note $29
	snd_note $29
	snd_note $2E
	snd_note $32
	snd_note $35, NOTELEN_0C
	snd_note $2B
	snd_note $26, NOTELEN_06
	snd_note $29
	snd_note $2D
	snd_note $30
	snd_note $29, NOTELEN_0C
	snd_note $2D, NOTELEN_06
	snd_note $30
	snd_note $29
	snd_note $29
	snd_note $2E
	snd_note $32
	snd_note $29, NOTELEN_0C
	snd_note $26, NOTELEN_06
	snd_note $29
	snd_note $29
	snd_note $00
	snd_note $35, NOTELEN_0C
	snd_note $30, NOTELEN_06
	snd_note $29
	snd_note $2D
	snd_note $30
	snd_note $29
	snd_note $29
	snd_note $2E
	snd_note $32
	snd_note $29, NOTELEN_0C
	snd_note $2B
	snd_note $26, NOTELEN_06
	snd_note $29
	snd_note $2D
	snd_note $30
	snd_note $29, NOTELEN_0C
	snd_note $2D, NOTELEN_06
	snd_note $30
	snd_note $29
	snd_note $29
	snd_duty SNDDUTY_12, $02
	snd_note $35
	snd_note $32, NOTELEN_02
	snd_note $00, NOTELEN_04
	snd_note $30, NOTELEN_02
	snd_note $00, NOTELEN_04
	snd_note $32, NOTELEN_06
	snd_note $35, NOTELEN_02
	snd_note $00, NOTELEN_04
	snd_note $38, NOTELEN_06
	snd_note $37, NOTELEN_02
	snd_note $00, NOTELEN_04
	snd_duty SNDDUTY_12, $01
	snd_note $11, NOTELEN_12
	snd_note $18, NOTELEN_18
	snd_note $16, NOTELEN_06
	snd_note $16, NOTELEN_12
	snd_note $13
	snd_note $18, NOTELEN_0C
	snd_note $11, NOTELEN_12
	snd_note $18, NOTELEN_18
	snd_note $16, NOTELEN_06
	snd_note $16, NOTELEN_12
	snd_note $1A
	snd_note $1D, NOTELEN_0C
	snd_note $1D, NOTELEN_12
	snd_note $18, NOTELEN_18
	snd_note $16, NOTELEN_06
	snd_note $16, NOTELEN_12
	snd_note $13
	snd_note $18, NOTELEN_0C
	snd_note $11, NOTELEN_12
	snd_note $18, NOTELEN_18
	snd_note $16, NOTELEN_06
	snd_note $16, NOTELEN_12
	snd_note $1A, NOTELEN_0C
	snd_note $1B
	snd_note $1C, NOTELEN_06
	snd_note $11, NOTELEN_12
	snd_note $18, NOTELEN_18
	snd_note $16, NOTELEN_06
	snd_note $16, NOTELEN_12
	snd_note $13
	snd_note $18, NOTELEN_0C
	snd_note $11, NOTELEN_12
	snd_note $18, NOTELEN_18
	snd_note $16, NOTELEN_06
	snd_note $16
	snd_note $1D, NOTELEN_0C
	snd_note $1A
	snd_note $16, NOTELEN_06
	snd_note $11
	snd_note $11
	snd_note $00, NOTELEN_12
	snd_note $11, NOTELEN_06
	snd_note $11
	snd_note $18, NOTELEN_0C
	snd_note $16, NOTELEN_06
	snd_note $16, NOTELEN_12
	snd_note $13
	snd_note $18, NOTELEN_0C
	snd_note $11, NOTELEN_12
	snd_note $18, NOTELEN_18
	snd_note $16, NOTELEN_06
	snd_note $16, NOTELEN_12
	snd_note $1A, NOTELEN_0C
	snd_note $1B
	snd_note $1C, NOTELEN_06
	snd_note $11, NOTELEN_0C
	snd_note $1A, NOTELEN_06
	snd_note $18, NOTELEN_0C
	snd_note $1A
	snd_note $16, NOTELEN_06
	snd_note $16, NOTELEN_12
	snd_note $13, NOTELEN_0C
	snd_note $1A, NOTELEN_06
	snd_note $18
	snd_note $1A
	snd_note $11, NOTELEN_0C
	snd_note $1A, NOTELEN_06
	snd_note $18, NOTELEN_0C
	snd_note $1A
	snd_note $16, NOTELEN_06
	snd_note $16
	snd_note $1D, NOTELEN_0C
	snd_note $1A
	snd_note $16, NOTELEN_06
	snd_note $11
	snd_note $11
	snd_note $00, NOTELEN_12
	snd_note $11, NOTELEN_06
	snd_note $11
	snd_note $18, NOTELEN_0C
	snd_note $16, NOTELEN_06
	snd_note $16, NOTELEN_12
	snd_note $13, NOTELEN_0C
	snd_note $1A, NOTELEN_06
	snd_note $18
	snd_note $1A
	snd_note $11, NOTELEN_0C
	snd_note $1A, NOTELEN_06
	snd_note $18, NOTELEN_0C
	snd_note $1A
	snd_note $16, NOTELEN_06
	snd_note $16, NOTELEN_12
	snd_note $16, NOTELEN_0C
	snd_note $15
	snd_note $14, NOTELEN_06
	snd_note $13
	snd_note $13, NOTELEN_0C
	snd_note $13, NOTELEN_06
	snd_note $1A, NOTELEN_0C
	snd_note $1D
	snd_note $00
	snd_note $1F
	snd_note $13, NOTELEN_12
	snd_note $13, NOTELEN_06
	snd_note $16
	snd_note $16, NOTELEN_0C
	snd_note $16, NOTELEN_06
	snd_note $1D, NOTELEN_0C
	snd_note $20
	snd_note $00, NOTELEN_06
	snd_note $22
	snd_note $22, NOTELEN_0C
	snd_note $16, NOTELEN_12
	snd_note $16, NOTELEN_06
	snd_note $13
	snd_note $13, NOTELEN_0C
	snd_note $13, NOTELEN_06
	snd_note $1A, NOTELEN_0C
	snd_note $1D
	snd_note $00, NOTELEN_06
	snd_note $1F
	snd_note $1F, NOTELEN_0C
	snd_note $13, NOTELEN_12
	snd_note $13, NOTELEN_06
	snd_note $12, NOTELEN_12
	snd_note $12
	snd_note $12, NOTELEN_0C
	snd_note $00
	snd_note $12, NOTELEN_24
	snd_duty SNDDUTY_12, $29
	snd_note $29, NOTELEN_0C
	snd_note $30, NOTELEN_06
	snd_note $29, NOTELEN_0C
	snd_note $2D, NOTELEN_06
	snd_note $30
	snd_note $29
	snd_note $29
	snd_note $2E
	snd_note $32
	snd_note $29, NOTELEN_0C
	snd_note $1F
	snd_note $26, NOTELEN_06
	snd_note $29
	snd_note $2D
	snd_note $30
	snd_note $29, NOTELEN_0C
	snd_note $2D, NOTELEN_06
	snd_note $30
	snd_note $29
	snd_note $29
	snd_note $2E
	snd_note $32
	snd_note $29, NOTELEN_0C
	snd_note $26, NOTELEN_06
	snd_note $29
	snd_note $29
	snd_note $00
	snd_note $1D, NOTELEN_0C
	snd_note $24, NOTELEN_06
	snd_note $29
	snd_note $2D
	snd_note $30
	snd_note $29
	snd_note $29
	snd_note $2E
	snd_note $32
	snd_note $29, NOTELEN_0C
	snd_note $1F
	snd_note $26, NOTELEN_06
	snd_note $29
	snd_note $2D
	snd_note $30
	snd_note $29, NOTELEN_0C
	snd_note $2D, NOTELEN_06
	snd_note $30
	snd_note $29
	snd_note $29
	snd_note $2E
	snd_note $32
	snd_duty SNDDUTY_12, $01
	snd_note $16, NOTELEN_0C
	snd_note $22
	snd_note $16, NOTELEN_06
	snd_note $11, NOTELEN_12
	snd_note $18, NOTELEN_18
	snd_note $16, NOTELEN_06
	snd_note $16, NOTELEN_12
	snd_note $13
	snd_note $18, NOTELEN_0C
	snd_note $11, NOTELEN_12
	snd_note $18, NOTELEN_18
	snd_note $16, NOTELEN_06
	snd_note $16
	snd_note $1D, NOTELEN_0C
	snd_note $1A
	snd_note $16, NOTELEN_06
	snd_note $11
	snd_note $11
	snd_note $00, NOTELEN_12
	snd_note $11, NOTELEN_06
	snd_note $11
	snd_note $18, NOTELEN_0C
	snd_note $16, NOTELEN_06
	snd_note $16, NOTELEN_12
	snd_note $13
	snd_note $18, NOTELEN_0C
	snd_note $11, NOTELEN_12
	snd_note $18, NOTELEN_18
	snd_note $16, NOTELEN_06
	snd_note $16, NOTELEN_12
	snd_note $1A, NOTELEN_0C
	snd_note $1B
	snd_note $1C, NOTELEN_06
	snd_note $11, NOTELEN_0C
	snd_note $1A, NOTELEN_06
	snd_note $18, NOTELEN_0C
	snd_note $1A
	snd_note $16, NOTELEN_06
	snd_note $16, NOTELEN_12
	snd_note $13, NOTELEN_0C
	snd_note $1A, NOTELEN_06
	snd_note $18
	snd_note $1A
	snd_note $11, NOTELEN_0C
	snd_note $1A, NOTELEN_06
	snd_note $18, NOTELEN_0C
	snd_note $1A
	snd_note $16, NOTELEN_06
	snd_note $16
	snd_note $1D, NOTELEN_0C
	snd_note $1A
	snd_note $16, NOTELEN_06
	snd_note $11
	snd_note $11
	snd_note $00, NOTELEN_12
	snd_note $11, NOTELEN_06
	snd_note $11
	snd_note $18, NOTELEN_0C
	snd_note $16, NOTELEN_06
	snd_note $16, NOTELEN_12
	snd_note $13, NOTELEN_0C
	snd_note $1A, NOTELEN_06
	snd_note $18
	snd_note $1A
	snd_note $11, NOTELEN_0C
	snd_note $1A, NOTELEN_06
	snd_note $18, NOTELEN_0C
	snd_note $1A
	snd_note $16, NOTELEN_06
	snd_note $16, NOTELEN_12
	snd_note $11, NOTELEN_06
	snd_note $11
	snd_note $11
	snd_note $11
	snd_note $11
	snd_jp SndData_18_Ch1
SndData_18_Ch4:
	snd_duty SNDDUTY_12, $00
	snd_var iSndChInfo_LoopTimer0, $07
	.loop0:
		snd_noteex PRESET_02, NOTELEN_06
		snd_noteex PRESET_02
		snd_noteex PRESET_02
		snd_noteex PRESET_02
		snd_noteex PRESET_00
		snd_noteex PRESET_02
		snd_noteex PRESET_02
		snd_noteex PRESET_02
		snd_djnz iSndChInfo_LoopTimer0, .loop0
	snd_noteex PRESET_02
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_00
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_00
	snd_noteex PRESET_00, NOTELEN_06
	snd_call .sub0
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_00
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_00
	snd_noteex PRESET_00, NOTELEN_06
	snd_call .sub0
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_00
	snd_var iSndChInfo_LoopTimer0, $03
	snd_noteex PRESET_01, NOTELEN_06
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_02, NOTELEN_03
	snd_noteex PRESET_02
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_02, NOTELEN_03
	snd_noteex PRESET_02
	snd_noteex PRESET_02, NOTELEN_06
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_02, NOTELEN_03
	snd_noteex PRESET_02
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_02, NOTELEN_03
	snd_noteex PRESET_02
	snd_noteex PRESET_02, NOTELEN_06
	snd_noteex PRESET_00
	snd_noteex PRESET_00
	snd_noteex PRESET_01, NOTELEN_0C
	snd_noteex PRESET_02, NOTELEN_06
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_02, NOTELEN_03
	snd_noteex PRESET_02
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_02, NOTELEN_03
	snd_noteex PRESET_02
	snd_noteex PRESET_02, NOTELEN_06
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_00
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_00
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_01
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_02, NOTELEN_03
	snd_noteex PRESET_02
	snd_noteex PRESET_02, NOTELEN_06
	snd_noteex PRESET_00, NOTELEN_0C
	snd_noteex PRESET_02, NOTELEN_06
	snd_noteex PRESET_00
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_00
	snd_noteex PRESET_00, NOTELEN_06
	snd_var iSndChInfo_LoopTimer0, $38
	.loop1:
		snd_noteex PRESET_02
		snd_djnz iSndChInfo_LoopTimer0, .loop1
	snd_noteex PRESET_02
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_00
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_00
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_00
	snd_noteex PRESET_00, NOTELEN_06
	snd_call .sub0
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_00
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_00
	snd_noteex PRESET_00, NOTELEN_06
	snd_call .sub0
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_00
	snd_noteex PRESET_00
	snd_noteex PRESET_00
	snd_noteex PRESET_00
	snd_jp SndData_18_Ch4
.sub0:
	snd_var iSndChInfo_LoopTimer1, $03
	.sub0loop:
		snd_noteex PRESET_01
		snd_noteex PRESET_02
		snd_noteex PRESET_00
		snd_noteex PRESET_01
		snd_noteex PRESET_02
		snd_noteex PRESET_00
		snd_noteex PRESET_02
		snd_noteex PRESET_01
		snd_noteex PRESET_02
		snd_noteex PRESET_02
		snd_noteex PRESET_02
		snd_noteex PRESET_00
		snd_noteex PRESET_02
		snd_noteex PRESET_02
		snd_noteex PRESET_00
		snd_noteex PRESET_02
		snd_djnz iSndChInfo_LoopTimer1, .sub0loop
	snd_ret
	snd_note $00