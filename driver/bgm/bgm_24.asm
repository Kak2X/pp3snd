SndHeader_24:
	db 4 ; Number of slots
.slot0:
	db SNDSLOT0 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 11 ; iSndChInfo_Vol
	db INSTR_08 ; iSndChInfo_Instrument
	db VIBRATO_0F ; iSndChInfo_Vibrato
	db -22 ; iSndChInfo_NoteIdBase
	db 119 ; iSndChInfo_Speed
	db SNDCH_PULSE1 ; iSndChInfo_ChId
	dw SndData_24_Ch1 ; Data pointer
	nrx1 SNDDUTY_12, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot1:
	db SNDSLOT1 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_0F ; iSndChInfo_Vibrato
	db -10 ; iSndChInfo_NoteIdBase
	db 119 ; iSndChInfo_Speed
	db SNDCH_WAVE ; iSndChInfo_ChId
	dw SndData_24_Ch3 ; Data pointer
	db WAVE_00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot2:
	db SNDSLOT2 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 10 ; iSndChInfo_Vol
	db INSTR_09 ; iSndChInfo_Instrument
	db VIBRATO_0F ; iSndChInfo_Vibrato
	db -22 ; iSndChInfo_NoteIdBase
	db 119 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_24_Ch2 ; Data pointer
	nrx1 SNDDUTY_12, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot3:
	db SNDSLOT3 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db 2 ; iSndChInfo_NoteIdBase
	db 119 ; iSndChInfo_Speed
	db SNDCH_NOISE ; iSndChInfo_ChId
	dw SndData_24_Ch4 ; Data pointer
	nrx1 SNDDUTY_12, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_24_Ch1:
	snd_duty SNDDUTY_25, $00
	snd_note $25, NOTELEN_03
	snd_note $00
	snd_note $25
	snd_note $00
	snd_note $20, NOTELEN_01
	snd_note $00, NOTELEN_CUSTOM, $05
	snd_note $20, NOTELEN_03
	snd_note $22
	snd_note $25, NOTELEN_06
	snd_note $31, NOTELEN_03
	snd_note $00, NOTELEN_09
	snd_note $27, NOTELEN_03
	snd_note $00
	snd_note $27
	snd_note $00
	snd_note $27
	snd_note $00
	snd_note $22, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_note $1E
	snd_note $00
	snd_note $1D
	snd_note $2A
	snd_note $00, NOTELEN_06
	snd_note $1E, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $22, NOTELEN_09
	snd_note $00, NOTELEN_03
	snd_note $22
	snd_note $00, NOTELEN_09
	snd_note $22, NOTELEN_03
	snd_note $23
	snd_note $24
	snd_note $00
	snd_note $25
	snd_note $00
	snd_note $25
	snd_note $31
	snd_note $00
	snd_note $27
	snd_note $27
	snd_note $00
	snd_note $25
	snd_note $27
	snd_note $00, NOTELEN_06
	snd_note $22, NOTELEN_03
	snd_note $24
	snd_note $20
	snd_note $2A
	snd_note $29
	snd_note $27
	snd_note $00
	snd_note $20, NOTELEN_09
	snd_note $25, NOTELEN_03
	snd_note $00
	snd_note $25
	snd_note $00, NOTELEN_09
	snd_note $20, NOTELEN_03
	snd_note $22
	snd_note $25, NOTELEN_06
	snd_note $31, NOTELEN_03
	snd_note $00, NOTELEN_09
	snd_note $27, NOTELEN_03
	snd_note $00
	snd_note $27
	snd_note $00
	snd_note $27
	snd_note $00
	snd_note $22, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_note $1E
	snd_note $00
	snd_note $1D
	snd_note $2A
	snd_note $00, NOTELEN_09
	snd_note $1D, NOTELEN_09
	snd_note $00, NOTELEN_03
	snd_note $29
	snd_note $00
	snd_note $22, NOTELEN_06
	snd_note $22, NOTELEN_01
	snd_note $00, NOTELEN_CUSTOM, $05
	snd_note $24, NOTELEN_03
	snd_note $00
	snd_note $1F, NOTELEN_06
	snd_note $00
	snd_note $1F, NOTELEN_03
	snd_note $00
	snd_note $20
	snd_note $00
	snd_note $2C
	snd_note $00
	snd_note $22
	snd_note $24
	snd_note $00
	snd_note $20, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_note $2C
	snd_note $20
	snd_note $20, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $20, NOTELEN_09
	snd_note $25, NOTELEN_03
	snd_note $00
	snd_note $25
	snd_note $00, NOTELEN_09
	snd_note $20, NOTELEN_03
	snd_note $22
	snd_note $25, NOTELEN_06
	snd_note $31, NOTELEN_03
	snd_note $00, NOTELEN_09
	snd_note $27, NOTELEN_03
	snd_note $00
	snd_note $27
	snd_note $00
	snd_note $27
	snd_note $00
	snd_note $22, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_note $1E
	snd_note $00
	snd_note $1D
	snd_note $2A
	snd_note $00, NOTELEN_06
	snd_note $1E, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $22, NOTELEN_09
	snd_note $00, NOTELEN_03
	snd_note $22
	snd_note $00, NOTELEN_09
	snd_note $22, NOTELEN_03
	snd_note $23
	snd_note $24
	snd_note $00
	snd_note $25
	snd_note $00
	snd_note $25
	snd_note $31
	snd_note $00
	snd_note $27
	snd_note $27
	snd_note $00
	snd_note $25
	snd_note $27
	snd_note $00, NOTELEN_06
	snd_note $22, NOTELEN_03
	snd_note $24
	snd_note $20
	snd_note $2A
	snd_note $29
	snd_note $27
	snd_note $00
	snd_note $2C
	snd_note $20
	snd_note $20
	snd_note $25
	snd_note $00
	snd_note $25
	snd_note $00, NOTELEN_09
	snd_note $20, NOTELEN_03
	snd_note $22
	snd_note $25, NOTELEN_06
	snd_note $31, NOTELEN_03
	snd_note $00, NOTELEN_09
	snd_note $27, NOTELEN_03
	snd_note $00
	snd_note $27
	snd_note $00
	snd_note $27
	snd_note $00
	snd_note $22, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_note $1E
	snd_note $00
	snd_note $1D
	snd_note $2A
	snd_note $00, NOTELEN_09
	snd_note $1D, NOTELEN_09
	snd_note $00, NOTELEN_03
	snd_note $29
	snd_note $00
	snd_note $22, NOTELEN_06
	snd_note $22, NOTELEN_01
	snd_note $00, NOTELEN_CUSTOM, $05
	snd_note $24, NOTELEN_03
	snd_note $00
	snd_note $1F, NOTELEN_06
	snd_note $00
	snd_note $1F, NOTELEN_03
	snd_note $00
	snd_note $20
	snd_note $00
	snd_note $2C
	snd_note $00
	snd_note $1F
	snd_note $20
	snd_note $00
	snd_note $20, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_note $20
	snd_note $2A
	snd_note $2C, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $20, NOTELEN_06
	snd_note $22, NOTELEN_03
	snd_note $23, NOTELEN_09
	snd_note $2A
	snd_note $2F, NOTELEN_0C
	snd_note $23, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_note $23, NOTELEN_09
	snd_note $23
	snd_note $2A
	snd_note $2F, NOTELEN_0C
	snd_note $2A, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_note $27, NOTELEN_09
	snd_note $22
	snd_note $29
	snd_note $2E, NOTELEN_0C
	snd_note $22, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_note $22, NOTELEN_09
	snd_note $22
	snd_note $29
	snd_note $2E, NOTELEN_0C
	snd_note $29, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_note $25, NOTELEN_09
	snd_note $27
	snd_note $27
	snd_note $2E, NOTELEN_0C
	snd_note $2A, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_note $27, NOTELEN_09
	snd_note $20
	snd_note $27
	snd_note $2C, NOTELEN_0C
	snd_note $27, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_note $24, NOTELEN_09
	snd_note $27
	snd_note $2E
	snd_note $33, NOTELEN_0C
	snd_note $2E, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_note $2A, NOTELEN_09
	snd_note $20
	snd_note $27
	snd_note $2D, NOTELEN_0C
	snd_note $28, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_note $21, NOTELEN_09
	snd_note $23
	snd_note $2A
	snd_note $2F, NOTELEN_0C
	snd_note $23, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_note $23, NOTELEN_09
	snd_note $23
	snd_note $2A
	snd_note $2F, NOTELEN_0C
	snd_note $2A, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_note $27, NOTELEN_09
	snd_note $22
	snd_note $29
	snd_note $2E, NOTELEN_0C
	snd_note $22, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_note $22, NOTELEN_09
	snd_note $22
	snd_note $29
	snd_note $2E, NOTELEN_0C
	snd_note $29, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_note $25, NOTELEN_09
	snd_note $27
	snd_note $27
	snd_note $2E, NOTELEN_0C
	snd_note $27, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_note $27, NOTELEN_09
	snd_note $20
	snd_note $27
	snd_note $2C, NOTELEN_0C
	snd_note $29, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_note $27, NOTELEN_09
	snd_note $27
	snd_note $2E
	snd_note $31, NOTELEN_0C
	snd_note $2E, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_note $2A, NOTELEN_09
	snd_note $20
	snd_note $27
	snd_note $2C, NOTELEN_0C
	snd_note $27, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_note $20, NOTELEN_09
	snd_note $25, NOTELEN_03
	snd_note $00
	snd_note $25
	snd_note $00
	snd_note $20, NOTELEN_01
	snd_note $00, NOTELEN_CUSTOM, $05
	snd_note $20, NOTELEN_03
	snd_note $22
	snd_note $25, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_note $25
	snd_note $00, NOTELEN_06
	snd_note $27, NOTELEN_03
	snd_note $00
	snd_note $27
	snd_note $00
	snd_note $27
	snd_note $00
	snd_note $20, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_note $20
	snd_note $00
	snd_note $20
	snd_note $2C
	snd_note $00, NOTELEN_06
	snd_note $20, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $20, NOTELEN_06
	snd_note $25, NOTELEN_03
	snd_note $00
	snd_note $25
	snd_note $00
	snd_note $20, NOTELEN_01
	snd_note $00, NOTELEN_CUSTOM, $05
	snd_note $20, NOTELEN_03
	snd_note $22
	snd_note $25, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_note $25
	snd_note $00, NOTELEN_06
	snd_note $27, NOTELEN_03
	snd_note $00
	snd_note $27
	snd_note $00
	snd_note $27
	snd_note $00
	snd_note $20, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_note $20
	snd_note $00
	snd_note $20
	snd_note $2C
	snd_note $00
	snd_note $20
	snd_note $2C, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $20, NOTELEN_06
	snd_note $25, NOTELEN_03
	snd_note $00
	snd_note $25
	snd_note $00
	snd_note $20, NOTELEN_01
	snd_note $00, NOTELEN_CUSTOM, $05
	snd_note $20, NOTELEN_03
	snd_note $22
	snd_note $25, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_note $25
	snd_note $00, NOTELEN_06
	snd_note $27, NOTELEN_03
	snd_note $00
	snd_note $27
	snd_note $00
	snd_note $27
	snd_note $00
	snd_note $20, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_note $20
	snd_note $00
	snd_note $20
	snd_note $2C
	snd_note $00, NOTELEN_06
	snd_note $20, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $20, NOTELEN_06
	snd_note $25, NOTELEN_03
	snd_note $00
	snd_note $25
	snd_note $00
	snd_note $20, NOTELEN_01
	snd_note $00, NOTELEN_CUSTOM, $05
	snd_note $20, NOTELEN_03
	snd_note $22
	snd_note $25, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_note $25
	snd_note $00, NOTELEN_06
	snd_note $27, NOTELEN_03
	snd_note $00
	snd_note $27
	snd_note $00
	snd_note $27
	snd_note $00
	snd_note $20, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_note $20
	snd_note $00
	snd_note $20
	snd_note $2C
	snd_note $00
	snd_note $20
	snd_note $2C, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $20, NOTELEN_06
	snd_jp SndData_24_Ch1
SndData_24_Ch3:
	snd_wave WAVE_06
	snd_note $00, NOTELEN_CUSTOM, $05
	snd_note $43, NOTELEN_01
	snd_note $44, NOTELEN_03
	snd_note $00
	snd_note $41
	snd_note $00
	snd_note $3D
	snd_note $00
	snd_note $40
	snd_note $41
	snd_note $00
	snd_note $46
	snd_inc_vol -5
	snd_note $46, NOTELEN_06
	snd_inc_vol 5
	snd_note $44
	snd_inc_vol -5
	snd_note $44
	snd_note $00
	snd_inc_vol 5
	snd_note $42
	snd_inc_vol -5
	snd_note $42
	snd_inc_vol 5
	snd_note $41
	snd_note $3F, NOTELEN_03
	snd_inc_vol -5
	snd_note $3F, NOTELEN_09
	snd_inc_vol 5
	snd_note $41, NOTELEN_30
	snd_inc_vol -5
	snd_note $41, NOTELEN_06
	snd_note $00, NOTELEN_0C
	snd_wave WAVE_08
	snd_inc_vol 5
	snd_note $42, NOTELEN_03
	snd_inc_vol -5
	snd_note $42
	snd_inc_vol 5
	snd_note $44
	snd_inc_vol -5
	snd_note $44
	snd_inc_vol 5
	snd_note $41
	snd_note $3F
	snd_inc_vol -5
	snd_note $3F
	snd_inc_vol 5
	snd_note $3C
	snd_inc_vol -5
	snd_note $3C
	snd_inc_vol 5
	snd_note $3D
	snd_note $3F
	snd_inc_vol -5
	snd_note $3F, NOTELEN_CUSTOM, $08
	snd_wave WAVE_06
	snd_inc_vol 1
	snd_note $43, NOTELEN_01
	snd_inc_vol 4
	snd_note $44, NOTELEN_03
	snd_inc_vol -5
	snd_note $44, NOTELEN_06
	snd_inc_vol 5
	snd_note $42, NOTELEN_03
	snd_note $00
	snd_note $41
	snd_note $42
	snd_note $00
	snd_note $44
	snd_note $49
	snd_inc_vol -5
	snd_note $49, NOTELEN_06
	snd_inc_vol 5
	snd_note $48
	snd_inc_vol -5
	snd_note $48
	snd_inc_vol 5
	snd_note $46, NOTELEN_03
	snd_note $00
	snd_note $44
	snd_note $00
	snd_note $42
	snd_note $00
	snd_note $41, NOTELEN_09
	snd_inc_vol -5
	snd_note $41, NOTELEN_03
	snd_inc_vol 5
	snd_note $42
	snd_note $00
	snd_note $44, NOTELEN_30
	snd_inc_vol -5
	snd_note $44, NOTELEN_06
	snd_wave WAVE_08
	snd_inc_vol 5
	snd_note $3F, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $3F, NOTELEN_03
	snd_note $00
	snd_note $41
	snd_note $42
	snd_note $44
	snd_inc_vol -5
	snd_note $44, NOTELEN_06
	snd_inc_vol 5
	snd_note $3F, NOTELEN_03
	snd_inc_vol -5
	snd_note $3F, NOTELEN_06
	snd_inc_vol 5
	snd_note $3F, NOTELEN_03
	snd_inc_vol -5
	snd_note $3F, NOTELEN_06
	snd_wave WAVE_06
	snd_note $00, NOTELEN_CUSTOM, $05
	snd_inc_vol 1
	snd_note $43, NOTELEN_01
	snd_inc_vol 4
	snd_note $44, NOTELEN_03
	snd_note $00
	snd_note $41
	snd_note $00
	snd_note $3D
	snd_note $00
	snd_note $40
	snd_note $41
	snd_note $00
	snd_note $46
	snd_inc_vol -5
	snd_note $46, NOTELEN_06
	snd_inc_vol 5
	snd_note $44
	snd_inc_vol -5
	snd_note $44
	snd_note $00
	snd_inc_vol 5
	snd_note $42
	snd_inc_vol -5
	snd_note $42
	snd_inc_vol 5
	snd_note $41
	snd_note $3F, NOTELEN_03
	snd_inc_vol -5
	snd_note $3F, NOTELEN_09
	snd_inc_vol 5
	snd_note $41, NOTELEN_30
	snd_inc_vol -5
	snd_note $41, NOTELEN_06
	snd_note $00, NOTELEN_0C
	snd_wave WAVE_08
	snd_inc_vol 5
	snd_note $42, NOTELEN_03
	snd_note $44
	snd_inc_vol -5
	snd_note $44
	snd_inc_vol 5
	snd_note $41
	snd_inc_vol -5
	snd_note $41
	snd_inc_vol 5
	snd_note $3F
	snd_inc_vol -5
	snd_note $3F
	snd_inc_vol 5
	snd_note $3C
	snd_inc_vol -5
	snd_note $3C
	snd_inc_vol 5
	snd_note $3D
	snd_note $3F
	snd_inc_vol -5
	snd_note $3F, NOTELEN_CUSTOM, $08
	snd_wave WAVE_06
	snd_inc_vol 1
	snd_note $43, NOTELEN_01
	snd_inc_vol 4
	snd_note $44, NOTELEN_03
	snd_inc_vol -5
	snd_note $44, NOTELEN_06
	snd_inc_vol 5
	snd_note $42, NOTELEN_03
	snd_note $00
	snd_note $41
	snd_note $42
	snd_note $00
	snd_note $44
	snd_note $48
	snd_inc_vol -5
	snd_note $49, NOTELEN_06
	snd_inc_vol 5
	snd_note $48
	snd_inc_vol -5
	snd_note $48
	snd_inc_vol 5
	snd_note $46, NOTELEN_03
	snd_note $00
	snd_note $44
	snd_note $00
	snd_note $42
	snd_note $00
	snd_note $41, NOTELEN_09
	snd_inc_vol -5
	snd_note $41, NOTELEN_03
	snd_inc_vol 5
	snd_note $42
	snd_note $00
	snd_note $44, NOTELEN_30
	snd_inc_vol -5
	snd_note $44, NOTELEN_CUSTOM, $0E
	snd_wave WAVE_09
	snd_inc_vol 3
	snd_note $3F, NOTELEN_01
	snd_note $41
	snd_note $42
	snd_note $44
	snd_inc_vol 2
	snd_note $44, NOTELEN_03
	snd_note $44
	snd_note $00
	snd_note $44
	snd_note $00
	snd_note $46
	snd_note $48
	snd_inc_vol -5
	snd_note $48, NOTELEN_06
	snd_inc_vol 5
	snd_note $48, NOTELEN_04
	snd_inc_vol -5
	snd_note $46, NOTELEN_01
	snd_note $44
	snd_note $42
	snd_note $41
	snd_note $3F
	snd_wave WAVE_09
	snd_inc_vol 5
	snd_note $3F
	snd_note $41, NOTELEN_CUSTOM, $0B
	snd_note $42, NOTELEN_03
	snd_note $00
	snd_note $44, NOTELEN_24
	snd_inc_vol -5
	snd_note $44, NOTELEN_06
	snd_inc_vol 5
	snd_note $41, NOTELEN_0C
	snd_note $42
	snd_note $44, NOTELEN_06
	snd_inc_vol -5
	snd_note $44
	snd_inc_vol 5
	snd_note $41, NOTELEN_09
	snd_note $3D, NOTELEN_03
	snd_inc_vol -5
	snd_note $3D, NOTELEN_06
	snd_inc_vol 5
	snd_note $38, NOTELEN_18
	snd_inc_vol -5
	snd_note $38, NOTELEN_06
	snd_inc_vol 5
	snd_note $3A, NOTELEN_12
	snd_note $3C
	snd_note $3D, NOTELEN_06
	snd_note $00
	snd_note $3C, NOTELEN_01
	snd_note $3D, NOTELEN_CUSTOM, $0B
	snd_note $3C, NOTELEN_03
	snd_note $00
	snd_note $3D, NOTELEN_18
	snd_inc_vol -5
	snd_note $3D, NOTELEN_06
	snd_inc_vol 5
	snd_note $3F, NOTELEN_0C
	snd_note $41, NOTELEN_04
	snd_note $00, NOTELEN_02
	snd_note $42
	snd_note $00, NOTELEN_04
	snd_note $41, NOTELEN_06
	snd_inc_vol -2
	snd_note $3F, NOTELEN_03
	snd_inc_vol 2
	snd_note $3D
	snd_inc_vol -5
	snd_note $3D, NOTELEN_06
	snd_inc_vol 5
	snd_note $3C, NOTELEN_03
	snd_inc_vol -5
	snd_note $3C
	snd_inc_vol 5
	snd_note $3D, NOTELEN_2A
	snd_inc_vol -5
	snd_note $3D, NOTELEN_06
	snd_inc_vol 5
	snd_note $3F, NOTELEN_12
	snd_inc_vol -5
	snd_note $3F, NOTELEN_06
	snd_inc_vol 5
	snd_note $41, NOTELEN_12
	snd_inc_vol -5
	snd_note $41, NOTELEN_06
	snd_inc_vol 5
	snd_note $3F, NOTELEN_01
	snd_note $41, NOTELEN_CUSTOM, $0B
	snd_note $42, NOTELEN_03
	snd_note $00
	snd_note $44, NOTELEN_24
	snd_inc_vol -5
	snd_note $44, NOTELEN_06
	snd_inc_vol 5
	snd_note $41, NOTELEN_0C
	snd_note $42
	snd_note $44, NOTELEN_06
	snd_inc_vol -5
	snd_note $44
	snd_inc_vol 5
	snd_note $41, NOTELEN_09
	snd_note $3D, NOTELEN_03
	snd_inc_vol -5
	snd_note $3D, NOTELEN_06
	snd_inc_vol 5
	snd_note $38, NOTELEN_18
	snd_inc_vol -5
	snd_note $38, NOTELEN_06
	snd_inc_vol 5
	snd_note $3A, NOTELEN_12
	snd_note $3C
	snd_note $3D, NOTELEN_06
	snd_note $00
	snd_note $3C, NOTELEN_01
	snd_note $3D, NOTELEN_CUSTOM, $0B
	snd_note $3C, NOTELEN_03
	snd_note $00
	snd_note $3D, NOTELEN_18
	snd_inc_vol -5
	snd_note $3D, NOTELEN_06
	snd_inc_vol 5
	snd_note $3F, NOTELEN_0C
	snd_note $41, NOTELEN_04
	snd_note $00, NOTELEN_02
	snd_note $42
	snd_note $00, NOTELEN_04
	snd_note $41, NOTELEN_06
	snd_inc_vol -2
	snd_note $41, NOTELEN_03
	snd_inc_vol 2
	snd_note $3D
	snd_inc_vol -5
	snd_note $3D, NOTELEN_06
	snd_inc_vol 5
	snd_note $3C, NOTELEN_03
	snd_inc_vol -5
	snd_note $3C
	snd_inc_vol 5
	snd_note $3D, NOTELEN_18
	snd_inc_vol -5
	snd_note $3D, NOTELEN_06
	snd_inc_vol 5
	snd_note $44
	snd_note $49
	snd_note $48
	snd_note $49, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $49, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $49, NOTELEN_03
	snd_note $49
	snd_note $00, NOTELEN_18
	snd_wave WAVE_08
	snd_note $31, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $31, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $30, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $31, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $33, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_note $35, NOTELEN_01
	snd_note $00, NOTELEN_CUSTOM, $08
	snd_note $33, NOTELEN_03
	snd_note $35
	snd_note $33
	snd_note $31, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_note $33, NOTELEN_02
	snd_note $00, NOTELEN_CUSTOM, $04
	snd_note $33, NOTELEN_02
	snd_note $00, NOTELEN_CUSTOM, $07
	snd_note $35, NOTELEN_06
	snd_note $36
	snd_note $00, NOTELEN_03
	snd_wave WAVE_05
	snd_note $37
	snd_note $00
	snd_note $37, NOTELEN_06
	snd_inc_vol -5
	snd_note $37
	snd_wave WAVE_08
	snd_inc_vol 5
	snd_note $31, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $31, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $30, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $31, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $33, NOTELEN_06
	snd_note $35, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_note $35, NOTELEN_01
	snd_note $00, NOTELEN_08
	snd_note $33, NOTELEN_03
	snd_note $35
	snd_note $33
	snd_note $38, NOTELEN_09
	snd_note $3C, NOTELEN_03
	snd_inc_vol -5
	snd_note $3C
	snd_inc_vol 5
	snd_note $3C
	snd_inc_vol -5
	snd_note $3C, NOTELEN_06
	snd_inc_vol 5
	snd_note $3A, NOTELEN_03
	snd_inc_vol -5
	snd_note $3A
	snd_inc_vol 5
	snd_note $3C, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_note $38
	snd_note $00
	snd_note $36
	snd_note $33, NOTELEN_06
	snd_inc_vol -5
	snd_note $33, NOTELEN_03
	snd_wave WAVE_08
	snd_inc_vol 5
	snd_note $31, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $31, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $30, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $31, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $33, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_note $35, NOTELEN_01
	snd_note $00, NOTELEN_CUSTOM, $08
	snd_note $33, NOTELEN_03
	snd_note $35
	snd_note $33
	snd_note $31, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_note $33, NOTELEN_02
	snd_note $00, NOTELEN_CUSTOM, $04
	snd_note $33, NOTELEN_02
	snd_note $00, NOTELEN_CUSTOM, $07
	snd_note $35, NOTELEN_06
	snd_note $36
	snd_note $00, NOTELEN_03
	snd_wave WAVE_05
	snd_note $37
	snd_inc_vol -5
	snd_note $37, NOTELEN_06
	snd_inc_vol 5
	snd_note $37
	snd_inc_vol -5
	snd_note $37, NOTELEN_03
	snd_wave WAVE_08
	snd_inc_vol 5
	snd_note $31, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $31, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $30, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $31, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $33, NOTELEN_06
	snd_note $35, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $35, NOTELEN_01
	snd_note $00, NOTELEN_08
	snd_note $33, NOTELEN_03
	snd_note $35
	snd_note $33
	snd_note $36
	snd_note $38
	snd_note $3A
	snd_note $3C
	snd_inc_vol -5
	snd_note $3C
	snd_inc_vol 5
	snd_note $3C
	snd_inc_vol -5
	snd_note $3C, NOTELEN_06
	snd_inc_vol 5
	snd_note $3D, NOTELEN_03
	snd_inc_vol -5
	snd_note $3D
	snd_inc_vol 5
	snd_note $3F, NOTELEN_09
	snd_wave WAVE_06
	snd_note $43, NOTELEN_03
	snd_inc_vol -5
	snd_note $43, NOTELEN_06
	snd_inc_vol 5
	snd_note $44, NOTELEN_09
	snd_jp SndData_24_Ch3
SndData_24_Ch2:
	snd_inc_freq_offset -2
.loop0:
	snd_duty SNDDUTY_25, $00
	snd_note $00, NOTELEN_06
	snd_inc_vol 3
	snd_note $3D, NOTELEN_03
	snd_note $00
	snd_note $3C
	snd_note $00
	snd_note $38
	snd_note $00
	snd_note $37
	snd_note $38
	snd_note $00
	snd_note $3D
	snd_inc_vol -5
	snd_note $3D, NOTELEN_06
	snd_inc_vol 5
	snd_note $3D
	snd_inc_vol -5
	snd_note $3D
	snd_note $00
	snd_inc_vol 5
	snd_note $3D
	snd_inc_vol -5
	snd_note $3D
	snd_inc_vol 5
	snd_note $3C
	snd_note $3A, NOTELEN_03
	snd_inc_vol -5
	snd_note $3A, NOTELEN_09
	snd_inc_vol 5
	snd_note $3A, NOTELEN_12
	snd_inc_vol -5
	snd_note $3A, NOTELEN_06
	snd_inc_vol 5
	snd_note $39, NOTELEN_03
	snd_note $3A
	snd_note $39
	snd_note $00
	snd_note $35
	snd_note $00
	snd_note $36
	snd_note $00
	snd_note $38
	snd_note $00
	snd_note $33
	snd_note $00
	snd_note $33
	snd_note $00, NOTELEN_09
	snd_inc_vol -5
	snd_note $35, NOTELEN_01
	snd_note $36
	snd_note $37
	snd_inc_vol 5
	snd_note $38, NOTELEN_04
	snd_note $00, NOTELEN_02
	snd_note $38, NOTELEN_03
	snd_note $00
	snd_note $38
	snd_note $00
	snd_note $38
	snd_note $38
	snd_note $00
	snd_note $33, NOTELEN_01
	snd_note $00, NOTELEN_CUSTOM, $05
	snd_note $31, NOTELEN_03
	snd_note $33
	snd_note $00
	snd_note $35
	snd_note $00
	snd_note $36
	snd_note $38, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_note $3C
	snd_inc_vol -5
	snd_note $3C, NOTELEN_06
	snd_inc_vol 5
	snd_note $3C
	snd_note $00
	snd_note $3A, NOTELEN_03
	snd_note $00
	snd_note $36
	snd_note $00
	snd_note $33
	snd_note $00
	snd_note $38
	snd_note $39
	snd_note $00
	snd_note $3B
	snd_inc_vol -5
	snd_note $3B, NOTELEN_06
	snd_inc_vol 5
	snd_note $3C, NOTELEN_12
	snd_inc_vol -5
	snd_note $3C, NOTELEN_06
	snd_inc_vol 5
	snd_note $3D, NOTELEN_03
	snd_note $00
	snd_note $3C
	snd_note $3A
	snd_inc_vol -5
	snd_note $3A, NOTELEN_06
	snd_inc_vol 5
	snd_note $38, NOTELEN_03
	snd_inc_vol -5
	snd_note $38
	snd_inc_vol 5
	snd_note $37
	snd_inc_vol -5
	snd_note $37
	snd_inc_vol 5
	snd_note $38
	snd_note $00, NOTELEN_06
	snd_note $38, NOTELEN_03
	snd_note $00
	snd_note $39
	snd_note $3A
	snd_note $3C
	snd_inc_vol -5
	snd_note $3C, NOTELEN_06
	snd_inc_vol 5
	snd_note $38, NOTELEN_03
	snd_inc_vol -5
	snd_note $38, NOTELEN_06
	snd_inc_vol 5
	snd_note $38, NOTELEN_03
	snd_inc_vol -5
	snd_note $38, NOTELEN_06
	snd_note $00
	snd_inc_vol 5
	snd_note $3D, NOTELEN_03
	snd_note $00
	snd_note $3C
	snd_note $00
	snd_note $38
	snd_note $00
	snd_note $37
	snd_note $38
	snd_note $00
	snd_note $3D
	snd_inc_vol -5
	snd_note $3D, NOTELEN_06
	snd_inc_vol 5
	snd_note $3D
	snd_inc_vol -5
	snd_note $3D
	snd_note $00
	snd_inc_vol 5
	snd_note $3D
	snd_inc_vol -5
	snd_note $3D
	snd_inc_vol 5
	snd_note $3C
	snd_note $3A, NOTELEN_03
	snd_inc_vol -5
	snd_note $3A, NOTELEN_09
	snd_inc_vol 5
	snd_note $3A, NOTELEN_12
	snd_inc_vol -5
	snd_note $3A, NOTELEN_06
	snd_inc_vol 5
	snd_note $39, NOTELEN_03
	snd_note $3A
	snd_note $39
	snd_note $00
	snd_note $35
	snd_note $00
	snd_note $36
	snd_note $00
	snd_note $38
	snd_note $00
	snd_note $33
	snd_note $00
	snd_note $33
	snd_note $00, NOTELEN_09
	snd_inc_vol -5
	snd_note $35, NOTELEN_01
	snd_note $36
	snd_note $37
	snd_inc_vol 5
	snd_note $38, NOTELEN_04
	snd_note $00, NOTELEN_02
	snd_note $38, NOTELEN_03
	snd_note $00
	snd_note $38
	snd_note $00
	snd_note $38
	snd_note $38
	snd_note $00
	snd_note $33, NOTELEN_01
	snd_note $00, NOTELEN_CUSTOM, $05
	snd_note $31, NOTELEN_03
	snd_note $33
	snd_note $00
	snd_note $35
	snd_note $00
	snd_note $36
	snd_note $38, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_note $3C
	snd_inc_vol -5
	snd_note $3C, NOTELEN_06
	snd_inc_vol 5
	snd_note $3C
	snd_note $00
	snd_note $3A, NOTELEN_03
	snd_note $00
	snd_note $36
	snd_note $00
	snd_note $33
	snd_note $00
	snd_note $38
	snd_note $39
	snd_note $00
	snd_note $3B
	snd_inc_vol -5
	snd_note $3B, NOTELEN_06
	snd_inc_vol 5
	snd_note $3C, NOTELEN_12
	snd_note $3A, NOTELEN_03
	snd_inc_vol -5
	snd_note $3A, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_inc_vol 5
	snd_note $38, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_note $3A, NOTELEN_09
	snd_note $3C, NOTELEN_03
	snd_inc_vol -5
	snd_note $3C
	snd_note $00, NOTELEN_08
	snd_inc_vol 3
	snd_note $3C, NOTELEN_01
	snd_note $3D
	snd_note $3F
	snd_note $41
	snd_inc_vol 2
	snd_note $41, NOTELEN_03
	snd_note $41
	snd_note $00
	snd_note $41
	snd_note $00
	snd_note $42
	snd_note $44
	snd_inc_vol -5
	snd_note $44, NOTELEN_06
	snd_inc_vol 5
	snd_note $44, NOTELEN_04
	snd_inc_vol -5
	snd_note $42, NOTELEN_01
	snd_note $41
	snd_note $3F
	snd_note $3D
	snd_note $3C
	snd_inc_vol 5
	snd_duty SNDDUTY_50, $00
	snd_note $3B, NOTELEN_0C
	snd_note $3D, NOTELEN_06
	snd_note $3F, NOTELEN_12
	snd_note $3E, NOTELEN_06
	snd_note $3F, NOTELEN_18
	snd_inc_vol -5
	snd_note $3F, NOTELEN_06
	snd_inc_vol 5
	snd_note $42, NOTELEN_0C
	snd_note $41, NOTELEN_06
	snd_inc_vol -5
	snd_note $41
	snd_inc_vol 5
	snd_note $41, NOTELEN_18
	snd_inc_vol -5
	snd_note $41, NOTELEN_06
	snd_inc_vol 5
	snd_note $3D
	snd_note $38
	snd_note $3A, NOTELEN_18
	snd_note $3C, NOTELEN_12
	snd_note $3D, NOTELEN_06
	snd_inc_vol -5
	snd_note $3D
	snd_inc_vol 5
	snd_note $3D, NOTELEN_12
	snd_note $3D, NOTELEN_06
	snd_inc_vol -5
	snd_note $3D
	snd_inc_vol 5
	snd_note $3D, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $3D, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $3C, NOTELEN_12
	snd_note $3D, NOTELEN_0C
	snd_inc_vol -5
	snd_note $3D, NOTELEN_06
	snd_inc_vol 5
	snd_note $3F
	snd_inc_vol -2
	snd_note $3D, NOTELEN_02
	snd_note $3C
	snd_note $3B
	snd_inc_vol 2
	snd_note $3A, NOTELEN_18
	snd_inc_vol -5
	snd_note $3A, NOTELEN_06
	snd_inc_vol 5
	snd_note $39
	snd_note $3A
	snd_note $3C
	snd_note $3C, NOTELEN_09
	snd_note $38
	snd_note $35, NOTELEN_06
	snd_note $33, NOTELEN_03
	snd_note $35
	snd_note $39
	snd_note $35
	snd_note $35
	snd_note $39
	snd_note $3C
	snd_note $3F
	snd_note $3B, NOTELEN_0C
	snd_note $3D, NOTELEN_06
	snd_note $3F, NOTELEN_12
	snd_note $3E, NOTELEN_06
	snd_note $3F, NOTELEN_18
	snd_inc_vol -5
	snd_note $3F, NOTELEN_06
	snd_inc_vol 5
	snd_note $42, NOTELEN_0C
	snd_note $41, NOTELEN_06
	snd_inc_vol -5
	snd_note $41
	snd_inc_vol 5
	snd_note $41, NOTELEN_18
	snd_inc_vol -5
	snd_note $41, NOTELEN_06
	snd_inc_vol 5
	snd_note $3D
	snd_note $38
	snd_note $3A, NOTELEN_18
	snd_note $3C, NOTELEN_12
	snd_note $3D, NOTELEN_06
	snd_inc_vol -5
	snd_note $3D
	snd_inc_vol 5
	snd_note $3D, NOTELEN_12
	snd_note $3C, NOTELEN_06
	snd_inc_vol -5
	snd_note $3C
	snd_inc_vol 5
	snd_note $3A, NOTELEN_0C
	snd_inc_vol -5
	snd_note $3A, NOTELEN_06
	snd_inc_vol 5
	snd_note $38, NOTELEN_12
	snd_note $3A, NOTELEN_0C
	snd_inc_vol -5
	snd_note $3A, NOTELEN_06
	snd_inc_vol 5
	snd_note $3C
	snd_inc_vol -5
	snd_note $3C
	snd_inc_vol 5
	snd_note $3C, NOTELEN_12
	snd_note $3D, NOTELEN_06
	snd_inc_vol -5
	snd_note $3D
	snd_inc_vol 5
	snd_duty SNDDUTY_25, $00
	snd_note $3F
	snd_note $44
	snd_note $43
	snd_note $3F, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $42, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $44, NOTELEN_03
	snd_note $44
	snd_note $00, NOTELEN_06
	snd_duty SNDDUTY_50, $00
	snd_inc_vol -2
	snd_note $55, NOTELEN_01
	snd_note $54
	snd_note $52
	snd_note $50
	snd_note $4E
	snd_note $4D
	snd_note $4B
	snd_note $49
	snd_note $48
	snd_note $46
	snd_note $44
	snd_note $42
	snd_note $41
	snd_note $3F
	snd_note $3D
	snd_note $3C
	snd_note $3A
	snd_note $38
	snd_duty SNDDUTY_12, $00
	snd_inc_vol 2
	snd_note $2C, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $2C, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $2A, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $2C, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $30, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_note $31, NOTELEN_01
	snd_note $00, NOTELEN_CUSTOM, $08
	snd_note $30, NOTELEN_03
	snd_note $31
	snd_note $30
	snd_note $2C, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_note $2E, NOTELEN_02
	snd_note $00, NOTELEN_CUSTOM, $04
	snd_note $2E, NOTELEN_02
	snd_note $00, NOTELEN_CUSTOM, $07
	snd_note $2F, NOTELEN_06
	snd_note $30
	snd_note $00, NOTELEN_03
	snd_duty SNDDUTY_50, $00
	snd_note $4B
	snd_note $00
	snd_note $4B, NOTELEN_06
	snd_inc_vol -5
	snd_note $4B
	snd_duty SNDDUTY_12, $00
	snd_inc_vol 5
	snd_note $2C, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $2C, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $2A, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $2C, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $30, NOTELEN_06
	snd_note $31, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $31, NOTELEN_01
	snd_note $00, NOTELEN_08
	snd_note $30, NOTELEN_03
	snd_note $31
	snd_note $30
	snd_note $35, NOTELEN_09
	snd_note $44, NOTELEN_03
	snd_inc_vol -5
	snd_note $44
	snd_inc_vol 5
	snd_note $44
	snd_inc_vol -5
	snd_note $44, NOTELEN_06
	snd_inc_vol 5
	snd_note $42, NOTELEN_03
	snd_inc_vol -5
	snd_note $42
	snd_inc_vol 5
	snd_note $44, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_note $42
	snd_note $00
	snd_note $3F
	snd_note $3C, NOTELEN_06
	snd_inc_vol -5
	snd_note $3C, NOTELEN_03
	snd_duty SNDDUTY_12, $00
	snd_inc_vol 5
	snd_note $2C, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $2C, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $2A, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $2C, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $30, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_note $31, NOTELEN_01
	snd_note $00, NOTELEN_CUSTOM, $08
	snd_note $30, NOTELEN_03
	snd_note $31
	snd_note $30
	snd_note $2C, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_note $2E, NOTELEN_02
	snd_note $00, NOTELEN_CUSTOM, $04
	snd_note $2E, NOTELEN_02
	snd_note $00, NOTELEN_CUSTOM, $07
	snd_note $2F, NOTELEN_06
	snd_note $30
	snd_note $00, NOTELEN_03
	snd_duty SNDDUTY_50, $00
	snd_note $4B
	snd_inc_vol -5
	snd_note $4B, NOTELEN_06
	snd_inc_vol 5
	snd_note $4B
	snd_inc_vol -5
	snd_note $4B, NOTELEN_03
	snd_duty SNDDUTY_12, $00
	snd_inc_vol 5
	snd_note $2C, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $2C, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $2A, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $2C, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $30, NOTELEN_06
	snd_note $31, NOTELEN_01
	snd_note $00, NOTELEN_02
	snd_note $31, NOTELEN_01
	snd_note $00, NOTELEN_08
	snd_note $30, NOTELEN_03
	snd_note $31
	snd_note $30
	snd_note $33
	snd_note $35
	snd_note $36
	snd_note $38
	snd_inc_vol -5
	snd_note $38
	snd_inc_vol 5
	snd_note $38
	snd_inc_vol -5
	snd_note $38, NOTELEN_06
	snd_inc_vol 5
	snd_note $3A, NOTELEN_03
	snd_inc_vol -5
	snd_note $3A
	snd_inc_vol 5
	snd_note $3C, NOTELEN_09
	snd_duty SNDDUTY_50, $00
	snd_note $3D, NOTELEN_03
	snd_inc_vol -5
	snd_note $3D, NOTELEN_06
	snd_inc_vol 5
	snd_note $3F, NOTELEN_09
	snd_jp .loop0
SndData_24_Ch4:
	snd_var iSndChInfo_LoopTimer0, $03
	.loop0:
		snd_noteex PRESET_01, NOTELEN_03
		snd_noteex PRESET_02
		snd_noteex PRESET_03
		snd_noteex PRESET_02
		snd_noteex PRESET_00, NOTELEN_06
		snd_noteex PRESET_03, NOTELEN_03
		snd_noteex PRESET_02
		snd_noteex PRESET_01
		snd_noteex PRESET_03
		snd_noteex PRESET_01
		snd_noteex PRESET_02
		snd_noteex PRESET_00, NOTELEN_06
		snd_noteex PRESET_01, NOTELEN_03
		snd_noteex PRESET_02
		snd_noteex PRESET_03
		snd_noteex PRESET_02
		snd_noteex PRESET_01
		snd_noteex PRESET_02
		snd_noteex PRESET_00, NOTELEN_06
		snd_noteex PRESET_03, NOTELEN_03
		snd_noteex PRESET_01
		snd_noteex PRESET_02
		snd_noteex PRESET_03
		snd_noteex PRESET_01
		snd_noteex PRESET_02
		snd_noteex PRESET_00, NOTELEN_06
		snd_noteex PRESET_01, NOTELEN_03
		snd_noteex PRESET_02
		snd_noteex PRESET_03
		snd_noteex PRESET_02
		snd_noteex PRESET_02
		snd_noteex PRESET_01
		snd_noteex PRESET_00, NOTELEN_06
		snd_noteex PRESET_03, NOTELEN_03
		snd_noteex PRESET_02
		snd_noteex PRESET_01
		snd_noteex PRESET_03
		snd_noteex PRESET_01
		snd_noteex PRESET_02
		snd_noteex PRESET_00, NOTELEN_06
		snd_noteex PRESET_02, NOTELEN_03
		snd_noteex PRESET_03
		snd_noteex PRESET_01
		snd_noteex PRESET_04
		snd_noteex PRESET_04, NOTELEN_06
		snd_noteex PRESET_00
		snd_noteex PRESET_02, NOTELEN_03
		snd_noteex PRESET_01
		snd_noteex PRESET_02
		snd_noteex PRESET_04
		snd_noteex PRESET_01
		snd_noteex PRESET_02
		snd_noteex PRESET_00, NOTELEN_06
		snd_noteex PRESET_02, NOTELEN_03
		snd_noteex PRESET_03
		snd_djnz iSndChInfo_LoopTimer0, .loop0
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_03
	snd_noteex PRESET_02
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_03, NOTELEN_03
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_03
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_01, NOTELEN_03
	snd_noteex PRESET_02
	snd_noteex PRESET_03
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_03, NOTELEN_03
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_03
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_01, NOTELEN_03
	snd_noteex PRESET_02
	snd_noteex PRESET_03
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_03, NOTELEN_03
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_03
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_02, NOTELEN_03
	snd_noteex PRESET_03
	snd_noteex PRESET_01
	snd_noteex PRESET_04
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_01, NOTELEN_03
	snd_noteex PRESET_04
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_02, NOTELEN_03
	snd_note $00
	snd_var iSndChInfo_LoopTimer0, $02
	.loop1:
		snd_noteex PRESET_01, NOTELEN_03
		snd_noteex PRESET_02
		snd_noteex PRESET_02
		snd_noteex PRESET_02
		snd_noteex PRESET_00, NOTELEN_06
		snd_noteex PRESET_03, NOTELEN_03
		snd_noteex PRESET_02
		snd_noteex PRESET_01
		snd_noteex PRESET_02
		snd_noteex PRESET_01
		snd_noteex PRESET_02
		snd_noteex PRESET_00, NOTELEN_06
		snd_noteex PRESET_02, NOTELEN_03
		snd_noteex PRESET_03
		snd_noteex PRESET_01
		snd_noteex PRESET_02
		snd_noteex PRESET_03
		snd_noteex PRESET_02
		snd_noteex PRESET_00, NOTELEN_06
		snd_noteex PRESET_02, NOTELEN_03
		snd_noteex PRESET_01
		snd_noteex PRESET_02
		snd_noteex PRESET_02
		snd_noteex PRESET_01
		snd_noteex PRESET_02
		snd_noteex PRESET_00, NOTELEN_06
		snd_noteex PRESET_02, NOTELEN_03
		snd_noteex PRESET_03
		snd_noteex PRESET_01
		snd_noteex PRESET_02
		snd_noteex PRESET_02
		snd_noteex PRESET_02
		snd_noteex PRESET_00, NOTELEN_06
		snd_noteex PRESET_02, NOTELEN_03
		snd_noteex PRESET_02
		snd_noteex PRESET_01
		snd_noteex PRESET_02
		snd_noteex PRESET_01
		snd_noteex PRESET_02
		snd_noteex PRESET_00, NOTELEN_06
		snd_noteex PRESET_02, NOTELEN_03
		snd_noteex PRESET_03
		snd_noteex PRESET_01
		snd_noteex PRESET_02
		snd_noteex PRESET_02
		snd_noteex PRESET_02
		snd_noteex PRESET_00, NOTELEN_06
		snd_noteex PRESET_02, NOTELEN_03
		snd_noteex PRESET_01
		snd_noteex PRESET_02
		snd_noteex PRESET_04
		snd_noteex PRESET_01
		snd_noteex PRESET_02
		snd_noteex PRESET_00, NOTELEN_06
		snd_noteex PRESET_02, NOTELEN_03
		snd_noteex PRESET_03
		snd_noteex PRESET_01
		snd_noteex PRESET_02
		snd_noteex PRESET_02
		snd_noteex PRESET_02
		snd_noteex PRESET_00, NOTELEN_06
		snd_noteex PRESET_03, NOTELEN_03
		snd_noteex PRESET_02
		snd_noteex PRESET_01
		snd_noteex PRESET_02
		snd_noteex PRESET_01
		snd_noteex PRESET_02
		snd_noteex PRESET_00, NOTELEN_06
		snd_noteex PRESET_02, NOTELEN_03
		snd_noteex PRESET_03
		snd_noteex PRESET_01
		snd_noteex PRESET_02
		snd_noteex PRESET_03
		snd_noteex PRESET_02
		snd_noteex PRESET_00, NOTELEN_06
		snd_noteex PRESET_02, NOTELEN_03
		snd_noteex PRESET_01
		snd_noteex PRESET_02
		snd_noteex PRESET_02
		snd_noteex PRESET_01
		snd_noteex PRESET_02
		snd_noteex PRESET_00, NOTELEN_06
		snd_noteex PRESET_02, NOTELEN_03
		snd_noteex PRESET_03
		snd_noteex PRESET_01
		snd_noteex PRESET_02
		snd_noteex PRESET_02
		snd_noteex PRESET_02
		snd_noteex PRESET_00, NOTELEN_06
		snd_noteex PRESET_02, NOTELEN_03
		snd_noteex PRESET_02
		snd_noteex PRESET_01
		snd_noteex PRESET_02
		snd_noteex PRESET_01
		snd_noteex PRESET_02
		snd_noteex PRESET_00, NOTELEN_06
		snd_noteex PRESET_02, NOTELEN_03
		snd_noteex PRESET_03
		snd_noteex PRESET_01
		snd_noteex PRESET_02
		snd_noteex PRESET_02
		snd_noteex PRESET_02
		snd_noteex PRESET_00, NOTELEN_06
		snd_noteex PRESET_04, NOTELEN_03
		snd_noteex PRESET_01
		snd_noteex PRESET_04
		snd_noteex PRESET_04
		snd_noteex PRESET_01
		snd_noteex PRESET_02
		snd_noteex PRESET_00, NOTELEN_06
		snd_noteex PRESET_02, NOTELEN_03
		snd_noteex PRESET_04
		snd_djnz iSndChInfo_LoopTimer0, .loop1
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_03
	snd_noteex PRESET_02
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_03, NOTELEN_03
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_03
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_02, NOTELEN_03
	snd_noteex PRESET_03
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_03
	snd_noteex PRESET_02
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_03, NOTELEN_03
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_03
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_02, NOTELEN_03
	snd_noteex PRESET_03
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_03
	snd_noteex PRESET_02
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_03, NOTELEN_03
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_03
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_02, NOTELEN_03
	snd_noteex PRESET_03
	snd_noteex PRESET_01
	snd_noteex PRESET_04
	snd_noteex PRESET_04, NOTELEN_06
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_04
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_03
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_03
	snd_noteex PRESET_02
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_03, NOTELEN_03
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_03
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_02, NOTELEN_03
	snd_noteex PRESET_03
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_03
	snd_noteex PRESET_02
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_03, NOTELEN_03
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_03
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_02, NOTELEN_03
	snd_noteex PRESET_03
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_03
	snd_noteex PRESET_02
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_03, NOTELEN_03
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_03
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_02, NOTELEN_03
	snd_noteex PRESET_03
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_00
	snd_noteex PRESET_01, NOTELEN_03
	snd_noteex PRESET_00
	snd_noteex PRESET_04, NOTELEN_02
	snd_noteex PRESET_04
	snd_noteex PRESET_04
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_04
	snd_noteex PRESET_01
	snd_noteex PRESET_04
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_04, NOTELEN_03
	snd_noteex PRESET_00
	snd_jp SndData_24_Ch4
