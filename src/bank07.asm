SndHeader_1F:
	db 4 ; Number of slots
.slot0:
	db SNDSLOT0 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -24 ; iSndChInfo_NoteIdBase
	db 196 ; iSndChInfo_Speed
	db SNDCH_PULSE1 ; iSndChInfo_ChId
	dw SndData_1F_Ch1 ; Data pointer
	nrx1 SNDDUTY_12, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot1:
	db SNDSLOT1 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -24 ; iSndChInfo_NoteIdBase
	db 196 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_1F_Ch2 ; Data pointer
	nrx1 SNDDUTY_12, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot2:
	db SNDSLOT2 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -12 ; iSndChInfo_NoteIdBase
	db 196 ; iSndChInfo_Speed
	db SNDCH_WAVE ; iSndChInfo_ChId
	dw SndData_1F_Ch3 ; Data pointer
	db WAVE_00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot3:
	db SNDSLOT3 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db 0 ; iSndChInfo_NoteIdBase
	db 196 ; iSndChInfo_Speed
	db SNDCH_NOISE ; iSndChInfo_ChId
	dw SndData_1F_Ch4 ; Data pointer
	nrx1 SNDDUTY_12, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_1F_Ch1:
	snd_duty SNDDUTY_75, $00
	snd_note $32, NOTELEN_01
	snd_note $32
	snd_note $2B
	snd_note $30
	snd_note $30
	snd_note $29
	snd_note $32
	snd_note $32
	snd_note $2B
	snd_note $34
	snd_note $34
	snd_note $2D
	snd_note $32
	snd_note $32
	snd_note $2B
	snd_note $34
	snd_note $34
	snd_note $2D
	snd_note $35
	snd_note $35
	snd_note $2E
	snd_note $34
	snd_note $34
	snd_note $2D
	snd_note $35
	snd_note $35
	snd_note $2E
	snd_note $37
	snd_note $37
	snd_note $30
	snd_note $35
	snd_note $35
	snd_note $2E
	snd_note $37
	snd_note $37
	snd_note $30
	snd_note $39
	snd_note $39
	snd_note $32
	snd_note $37
	snd_note $37
	snd_note $30
	snd_note $39
	snd_note $39
	snd_note $32
	snd_note $3A
	snd_note $3A
	snd_note $34
	snd_note $39
	snd_note $39
	snd_note $32
	snd_note $3A
	snd_note $3A
	snd_note $34
	snd_note $3C
	snd_note $3C
	snd_note $35
	snd_note $3E
	snd_note $3E
	snd_note $37
	snd_note $40
	snd_note $40
	snd_note $39
	snd_note $41
	snd_note $41
	snd_note $3A
	snd_note $43
	snd_note $43
	snd_note $3C
	snd_note $37
	snd_note $37
	snd_note $30
	snd_note $43
	snd_note $43
	snd_inc_vol -3
	snd_note $3C
	snd_note $37
	snd_note $37
	snd_note $30
	snd_inc_vol -4
	snd_note $43
	snd_note $43
	snd_note $3C
	snd_note $37
	snd_note $37
	snd_note $30
	snd_inc_vol -2
	snd_note $43
	snd_note $43
	snd_note $3C
	snd_note $37
	snd_note $37
	snd_note $30
	snd_inc_vol -1
	snd_note $43
	snd_note $43
	snd_note $3C
	snd_note $37
	snd_note $37
	snd_note $30
	snd_inc_vol -2
	snd_note $43
	snd_note $43
	snd_note $3C
	snd_note $37
	snd_note $37
	snd_note $30
	snd_note $00, NOTELEN_2A
	snd_end
SndData_1F_Ch2:
	snd_duty SNDDUTY_25, $00
	snd_note $2E, NOTELEN_03
	snd_note $2D
	snd_note $2E
	snd_note $30
	snd_note $2E
	snd_note $30
	snd_note $32
	snd_note $30
	snd_note $32
	snd_note $34
	snd_note $32
	snd_note $34
	snd_note $35
	snd_note $34
	snd_note $35
	snd_note $37
	snd_note $35
	snd_note $37
	snd_note $39
	snd_note $3A
	snd_note $3C
	snd_note $3E
	snd_note $40
	snd_inc_vol -2
	snd_note $34
	snd_inc_vol 2
	snd_note $40
	snd_inc_vol -4
	snd_note $34
	snd_inc_vol -3
	snd_note $40
	snd_inc_vol -1
	snd_note $34
	snd_inc_vol -1
	snd_note $40
	snd_inc_vol -1
	snd_note $34
	snd_note $40
	snd_inc_vol -1
	snd_note $34
	snd_inc_vol -1
	snd_note $40
	snd_inc_vol -1
	snd_note $34
	snd_note $00, NOTELEN_2A
	snd_end
SndData_1F_Ch3:
	snd_wave WAVE_02
	snd_instrument INSTR_05
	snd_note $18, NOTELEN_30
	snd_note $18, NOTELEN_12
	snd_inc_vol -3
	snd_note $18, NOTELEN_03
	snd_note $00
	snd_inc_vol -1
	snd_note $18
	snd_note $00
	snd_inc_vol -4
	snd_note $18
	snd_note $00
	snd_inc_vol -2
	snd_note $18
	snd_note $00
	snd_inc_vol -3
	snd_note $18
	snd_note $00
	snd_inc_vol -1
	snd_note $18
	snd_note $00, NOTELEN_CUSTOM, $2D
	snd_end
SndData_1F_Ch4:
	snd_duty SNDDUTY_12, $01
	snd_note $00, NOTELEN_30
	snd_note $00, NOTELEN_12
	snd_note $1B, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol -2
	snd_note $1B, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol -1
	snd_note $1B, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol -1
	snd_note $1B, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol -1
	snd_note $1B, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol -2
	snd_note $1B, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol -1
	snd_note $1B, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol -1
	snd_note $1B, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol -1
	snd_note $1B, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol -2
	snd_note $1B, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol -1
	snd_note $1B, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol -1
	snd_note $1B, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_note $1B, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_note $1B, NOTELEN_02
	snd_note $00, NOTELEN_CUSTOM, $25
	snd_end
SndHeader_03:
	db 4 ; Number of slots
.slot0:
	db SNDSLOT0 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -24 ; iSndChInfo_NoteIdBase
	db 104 ; iSndChInfo_Speed
	db SNDCH_PULSE1 ; iSndChInfo_ChId
	dw SndData_03_Ch1 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot1:
	db SNDSLOT1 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 12 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -12 ; iSndChInfo_NoteIdBase
	db 104 ; iSndChInfo_Speed
	db SNDCH_WAVE ; iSndChInfo_ChId
	dw SndData_03_Ch3 ; Data pointer
	db WAVE_0D ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot2:
	db SNDSLOT2 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 10 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -12 ; iSndChInfo_NoteIdBase
	db 104 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_03_Ch2 ; Data pointer
	nrx1 SNDDUTY_12, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot3:
	db SNDSLOT3 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db 0 ; iSndChInfo_NoteIdBase
	db 104 ; iSndChInfo_Speed
	db SNDCH_NOISE ; iSndChInfo_ChId
	dw SndData_03_Ch4 ; Data pointer
	nrx1 SNDDUTY_12, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_03_Ch1:
	snd_instrument INSTR_56
	snd_note $3C, NOTELEN_04
	snd_note $00, NOTELEN_02
	snd_instrument INSTR_NONE
	snd_inc_vol -13
	snd_note $3C, NOTELEN_04
	snd_note $00, NOTELEN_02
	snd_instrument INSTR_56
	snd_inc_vol 13
	snd_note $38, NOTELEN_04
	snd_note $00, NOTELEN_02
	snd_note $3A, NOTELEN_04
	snd_note $00, NOTELEN_02
	snd_instrument INSTR_NONE
	snd_inc_vol -13
	snd_note $3A, NOTELEN_04
	snd_note $00, NOTELEN_02
	snd_instrument INSTR_56
	snd_inc_vol 13
	snd_note $36, NOTELEN_04
	snd_note $00, NOTELEN_02
	snd_instrument INSTR_NONE
	snd_inc_vol -13
	snd_note $36, NOTELEN_04
	snd_note $00, NOTELEN_02
	snd_instrument INSTR_56
	snd_inc_vol 13
	snd_note $3C, NOTELEN_04
	snd_note $00, NOTELEN_02
	snd_instrument INSTR_NONE
	snd_inc_vol -13
	snd_note $3C, NOTELEN_04
	snd_note $00, NOTELEN_02
	snd_instrument INSTR_56
	snd_inc_vol 13
	snd_note $38, NOTELEN_04
	snd_note $00, NOTELEN_02
	snd_instrument INSTR_NONE
	snd_inc_vol -13
	snd_note $38, NOTELEN_04
	snd_note $00, NOTELEN_02
	snd_instrument INSTR_56
	snd_inc_vol 13
	snd_note $3A, NOTELEN_04
	snd_note $00, NOTELEN_02
	snd_instrument INSTR_NONE
	snd_inc_vol -13
	snd_note $3A, NOTELEN_04
	snd_note $00, NOTELEN_02
	snd_instrument INSTR_56
	snd_inc_vol 13
	snd_note $36, NOTELEN_04
	snd_note $00, NOTELEN_02
	snd_instrument INSTR_NONE
	snd_inc_vol -13
	snd_note $36, NOTELEN_04
	snd_note $00, NOTELEN_02
	snd_instrument INSTR_56
	snd_inc_vol 13
	snd_note $3D, NOTELEN_04
	snd_note $00, NOTELEN_02
	snd_note $3C, NOTELEN_04
	snd_note $00, NOTELEN_02
	snd_instrument INSTR_NONE
	snd_inc_vol -13
	snd_note $3C, NOTELEN_04
	snd_note $00, NOTELEN_02
	snd_instrument INSTR_56
	snd_inc_vol 13
	snd_note $38, NOTELEN_04
	snd_note $00, NOTELEN_02
	snd_note $3A, NOTELEN_04
	snd_note $00, NOTELEN_02
	snd_instrument INSTR_NONE
	snd_inc_vol -13
	snd_note $3A, NOTELEN_04
	snd_note $00, NOTELEN_02
	snd_instrument INSTR_56
	snd_inc_vol 13
	snd_note $36, NOTELEN_04
	snd_note $00, NOTELEN_02
	snd_instrument INSTR_NONE
	snd_inc_vol -13
	snd_note $36, NOTELEN_04
	snd_note $00, NOTELEN_02
	snd_instrument INSTR_56
	snd_inc_vol 13
	snd_note $3A, NOTELEN_04
	snd_note $00, NOTELEN_02
	snd_instrument INSTR_NONE
	snd_inc_vol -13
	snd_note $3A, NOTELEN_04
	snd_note $00, NOTELEN_02
	snd_instrument INSTR_56
	snd_inc_vol 13
	snd_note $36, NOTELEN_04
	snd_note $00, NOTELEN_02
	snd_instrument INSTR_NONE
	snd_inc_vol -13
	snd_note $36, NOTELEN_04
	snd_note $00, NOTELEN_02
	snd_instrument INSTR_56
	snd_inc_vol 13
	snd_note $38, NOTELEN_04
	snd_note $00, NOTELEN_02
	snd_instrument INSTR_NONE
	snd_inc_vol -13
	snd_note $38, NOTELEN_04
	snd_note $00, NOTELEN_02
	snd_instrument INSTR_56
	snd_inc_vol 13
	snd_note $35, NOTELEN_04
	snd_note $00, NOTELEN_02
	snd_instrument INSTR_NONE
	snd_inc_vol -13
	snd_note $35, NOTELEN_04
	snd_note $00, NOTELEN_02
	snd_instrument INSTR_56
	snd_inc_vol 13
	snd_note $38, NOTELEN_04
	snd_note $00, NOTELEN_02
	snd_note $3C, NOTELEN_04
	snd_note $00, NOTELEN_02
	snd_instrument INSTR_NONE
	snd_inc_vol -13
	snd_note $3C, NOTELEN_04
	snd_note $00, NOTELEN_02
	snd_instrument INSTR_56
	snd_inc_vol 13
	snd_note $38, NOTELEN_04
	snd_note $00, NOTELEN_02
	snd_note $3A, NOTELEN_04
	snd_note $00, NOTELEN_02
	snd_instrument INSTR_NONE
	snd_inc_vol -13
	snd_note $3A, NOTELEN_04
	snd_note $00, NOTELEN_02
	snd_instrument INSTR_56
	snd_inc_vol 13
	snd_note $36, NOTELEN_04
	snd_note $00, NOTELEN_02
	snd_instrument INSTR_NONE
	snd_inc_vol -13
	snd_note $36, NOTELEN_04
	snd_note $00, NOTELEN_02
	snd_instrument INSTR_56
	snd_inc_vol 13
	snd_note $3C, NOTELEN_04
	snd_note $00, NOTELEN_02
	snd_instrument INSTR_NONE
	snd_inc_vol -13
	snd_note $3C, NOTELEN_04
	snd_note $00, NOTELEN_02
	snd_instrument INSTR_56
	snd_inc_vol 13
	snd_note $38, NOTELEN_04
	snd_note $00, NOTELEN_02
	snd_instrument INSTR_NONE
	snd_inc_vol -13
	snd_note $38, NOTELEN_04
	snd_note $00, NOTELEN_02
	snd_instrument INSTR_56
	snd_inc_vol 13
	snd_note $3A, NOTELEN_04
	snd_note $00, NOTELEN_02
	snd_instrument INSTR_NONE
	snd_inc_vol -13
	snd_note $3A, NOTELEN_04
	snd_note $00, NOTELEN_02
	snd_instrument INSTR_56
	snd_inc_vol 13
	snd_note $36, NOTELEN_04
	snd_note $00, NOTELEN_02
	snd_instrument INSTR_NONE
	snd_inc_vol -13
	snd_note $36, NOTELEN_04
	snd_note $00, NOTELEN_02
	snd_instrument INSTR_56
	snd_inc_vol 13
	snd_note $3D, NOTELEN_04
	snd_note $00, NOTELEN_02
	snd_note $3C, NOTELEN_04
	snd_note $00, NOTELEN_02
	snd_instrument INSTR_NONE
	snd_inc_vol -13
	snd_note $3C, NOTELEN_04
	snd_note $00, NOTELEN_02
	snd_instrument INSTR_56
	snd_inc_vol 13
	snd_note $38, NOTELEN_04
	snd_note $00, NOTELEN_02
	snd_note $3A, NOTELEN_04
	snd_note $00, NOTELEN_02
	snd_instrument INSTR_NONE
	snd_inc_vol -13
	snd_note $3A, NOTELEN_04
	snd_note $00, NOTELEN_02
	snd_instrument INSTR_56
	snd_inc_vol 13
	snd_note $36, NOTELEN_04
	snd_note $00, NOTELEN_02
	snd_instrument INSTR_NONE
	snd_inc_vol -13
	snd_note $36, NOTELEN_04
	snd_note $00, NOTELEN_02
	snd_instrument INSTR_56
	snd_inc_vol 13
	snd_note $38, NOTELEN_04
	snd_note $00, NOTELEN_02
	snd_instrument INSTR_NONE
	snd_inc_vol -13
	snd_note $38, NOTELEN_04
	snd_note $00, NOTELEN_CUSTOM, $2C
	snd_inc_vol 13
	snd_jp SndData_03_Ch1
SndData_03_Ch3:
	snd_instrument INSTR_56
	snd_note $20, NOTELEN_03
	snd_note $00, NOTELEN_09
	snd_note $27, NOTELEN_03
	snd_note $00
	snd_note $1E
	snd_note $00, NOTELEN_09
	snd_note $25, NOTELEN_03
	snd_note $00, NOTELEN_09
	snd_note $20, NOTELEN_03
	snd_note $00
	snd_note $00, NOTELEN_06
	snd_note $27, NOTELEN_03
	snd_note $00, NOTELEN_09
	snd_note $1E, NOTELEN_03
	snd_note $00, NOTELEN_09
	snd_note $25, NOTELEN_03
	snd_note $00, NOTELEN_09
	snd_note $1E, NOTELEN_03
	snd_note $00
	snd_note $20
	snd_note $00, NOTELEN_09
	snd_note $27, NOTELEN_03
	snd_note $00
	snd_note $1E
	snd_note $00, NOTELEN_09
	snd_note $25, NOTELEN_03
	snd_note $00, NOTELEN_09
	snd_note $23, NOTELEN_03
	snd_note $00
	snd_note $00, NOTELEN_06
	snd_note $27, NOTELEN_03
	snd_note $00, NOTELEN_09
	snd_note $22, NOTELEN_03
	snd_note $00, NOTELEN_09
	snd_note $24, NOTELEN_03
	snd_note $00
	snd_note $25
	snd_note $00
	snd_note $27
	snd_note $00
	snd_note $20
	snd_note $00, NOTELEN_09
	snd_note $27, NOTELEN_03
	snd_note $00
	snd_note $1E
	snd_note $00, NOTELEN_09
	snd_note $25, NOTELEN_03
	snd_note $00, NOTELEN_09
	snd_note $20, NOTELEN_03
	snd_note $00
	snd_note $00, NOTELEN_06
	snd_note $27, NOTELEN_03
	snd_note $00, NOTELEN_09
	snd_note $1E, NOTELEN_03
	snd_note $00, NOTELEN_09
	snd_note $25, NOTELEN_03
	snd_note $00, NOTELEN_09
	snd_note $1E, NOTELEN_03
	snd_note $00
	snd_note $20
	snd_note $00, NOTELEN_09
	snd_note $27, NOTELEN_03
	snd_note $00
	snd_note $1E
	snd_note $00, NOTELEN_09
	snd_note $25, NOTELEN_03
	snd_note $00, NOTELEN_09
	snd_note $20, NOTELEN_03
	snd_note $00
	snd_note $00, NOTELEN_30
	snd_jp SndData_03_Ch3
SndData_03_Ch2:
	snd_note $00, NOTELEN_30
	snd_note $00
	snd_note $00
	snd_note $00
	snd_note $00
	snd_note $00
	snd_note $00
	snd_note $00
	snd_instrument INSTR_05
	snd_note $3F, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol -10
	snd_note $3F, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol 10
	snd_note $3C, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol -10
	snd_note $3C, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol 10
	snd_note $3F, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol -10
	snd_note $3F, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol 10
	snd_note $3D, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol -10
	snd_note $3D, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol 10
	snd_note $3F, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol -10
	snd_note $3F, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol 10
	snd_note $3D, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol -10
	snd_note $3D, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol 10
	snd_note $3F, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol -10
	snd_note $3F, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol 10
	snd_note $3C, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol -10
	snd_note $3C, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol 10
	snd_note $3F, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol -10
	snd_note $3F, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol 10
	snd_note $3C, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol -10
	snd_note $3C, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol 10
	snd_note $3F, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol -10
	snd_note $3F, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol 10
	snd_note $3D, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol -10
	snd_note $3D, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol 10
	snd_note $3A, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol -10
	snd_note $3A, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol 10
	snd_note $3D, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol -10
	snd_note $3D, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol 10
	snd_note $3A, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol -10
	snd_note $3A, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol 10
	snd_note $3D, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol -10
	snd_note $3D, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol 10
	snd_note $3C, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol -10
	snd_note $3C, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol 10
	snd_note $3F, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol -10
	snd_note $3F, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol 10
	snd_note $3C, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol -10
	snd_note $3C, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol 10
	snd_note $3D, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol -10
	snd_note $3D, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol 10
	snd_note $3F, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol -10
	snd_note $3F, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol 10
	snd_note $3D, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol -10
	snd_note $3D, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol 10
	snd_note $3F, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol -10
	snd_note $3F, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol 10
	snd_note $3F, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol -10
	snd_note $3F, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol 10
	snd_note $3A, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol -10
	snd_note $3A, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol 10
	snd_note $3F, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol -10
	snd_note $3F, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol 10
	snd_note $3A, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol -10
	snd_note $3A, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol 10
	snd_note $3D, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol -10
	snd_note $3D, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol 10
	snd_note $3A, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol -10
	snd_note $3A, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol 10
	snd_note $3D, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol -10
	snd_note $3D, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol 10
	snd_note $3A, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol -10
	snd_note $3A, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol 10
	snd_note $3D, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol -10
	snd_note $3D, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol 10
	snd_note $3C, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol -10
	snd_note $3C, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol 10
	snd_note $3F, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol -10
	snd_note $3F, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol 10
	snd_note $3C, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol -10
	snd_note $3C, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol 10
	snd_note $3F, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol -10
	snd_note $3F, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol 10
	snd_note $3D, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol -10
	snd_note $3D, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol 10
	snd_note $3F, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol -10
	snd_note $3F, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol 10
	snd_note $3D, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol -10
	snd_note $3D, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol 10
	snd_note $3F, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol -10
	snd_note $3F, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol 10
	snd_note $3C, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol -10
	snd_note $3C, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol 10
	snd_note $3F, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol -10
	snd_note $3F, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol 10
	snd_note $3C, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol -10
	snd_note $3C, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol 10
	snd_note $3D, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol -10
	snd_note $3D, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol 10
	snd_note $3A, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol -10
	snd_note $3A, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol 10
	snd_note $3D, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol -10
	snd_note $3D, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol 10
	snd_note $3A, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol -10
	snd_note $3A, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol 10
	snd_note $3D, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol -10
	snd_note $3D, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol 10
	snd_note $3C, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol -10
	snd_note $3C, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol 10
	snd_note $3F, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol -10
	snd_note $3F, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol 10
	snd_note $3C, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol -10
	snd_note $3C, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol 10
	snd_note $3F, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol -10
	snd_note $3F, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol 10
	snd_note $3D, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol -10
	snd_note $3D, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol 10
	snd_note $3F, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol -10
	snd_note $3F, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol 10
	snd_note $3D, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol -10
	snd_note $3D, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol 10
	snd_note $3C, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol -10
	snd_note $3C, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_note $00, NOTELEN_30
	snd_inc_vol 10
	snd_jp SndData_03_Ch2
SndData_03_Ch4:
	snd_var iSndChInfo_LoopTimer1, $02
	.loop0:
		snd_var iSndChInfo_LoopTimer0, $03
		.loop1:
			snd_noteex PRESET_04, NOTELEN_06
			snd_noteex PRESET_02
			snd_noteex PRESET_04
			snd_noteex PRESET_02
			snd_noteex PRESET_04
			snd_noteex PRESET_02
			snd_noteex PRESET_04
			snd_noteex PRESET_02
			snd_noteex PRESET_04
			snd_noteex PRESET_02
			snd_noteex PRESET_04
			snd_noteex PRESET_02
			snd_noteex PRESET_04
			snd_noteex PRESET_02
			snd_noteex PRESET_04
			snd_noteex PRESET_02, NOTELEN_03
			snd_noteex PRESET_02
			snd_djnz iSndChInfo_LoopTimer0, .loop1
		snd_noteex PRESET_04, NOTELEN_0C
		snd_noteex PRESET_04
		snd_noteex PRESET_04
		snd_noteex PRESET_04
		snd_noteex PRESET_04
		snd_noteex PRESET_04, NOTELEN_06
		snd_noteex PRESET_02
		snd_noteex PRESET_04
		snd_noteex PRESET_02
		snd_noteex PRESET_04, NOTELEN_0C
	snd_djnz iSndChInfo_LoopTimer1, .loop0
	snd_jp SndData_03_Ch4
	
SndHeader_0E:
	db 4 ; Number of slots
.slot0:
	db SNDSLOT0 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db 12 ; iSndChInfo_NoteIdBase
	db 119 ; iSndChInfo_Speed
	db SNDCH_WAVE ; iSndChInfo_ChId
	dw SndData_0E_Ch3 ; Data pointer
	db WAVE_00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot1:
	db SNDSLOT1 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 8 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db 0 ; iSndChInfo_NoteIdBase
	db 119 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_0E_Ch2 ; Data pointer
	nrx1 SNDDUTY_12, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot2:
	db SNDSLOT2 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 12 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -12 ; iSndChInfo_NoteIdBase
	db 119 ; iSndChInfo_Speed
	db SNDCH_PULSE1 ; iSndChInfo_ChId
	dw SndData_0E_Ch1 ; Data pointer
	nrx1 SNDDUTY_12, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot3:
	db SNDSLOT3 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db 0 ; iSndChInfo_NoteIdBase
	db 119 ; iSndChInfo_Speed
	db SNDCH_NOISE ; iSndChInfo_ChId
	dw SndData_0E_Ch4 ; Data pointer
	nrx1 SNDDUTY_12, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_0E_Ch3:
	snd_wave WAVE_0D
	snd_inc_vol 5
	snd_call .sub0
	snd_call .sub0
	snd_call .sub0
	snd_call .sub0
	snd_call .sub0
	snd_call .sub0
	snd_call .sub0
	snd_call .sub0
	snd_call .sub1
	snd_call .sub0
	snd_call .sub0
	snd_call .sub0
	snd_call .sub0
	snd_inc_base_note -3
	snd_call .sub0
	snd_call .sub0
	snd_call .sub0
	snd_inc_base_note 3
	snd_call .sub2
	snd_inc_vol -5
	snd_jp SndData_0E_Ch3
.sub0:
	snd_note $10, NOTELEN_CUSTOM, $05
	snd_note $00, NOTELEN_01
	snd_note $09, NOTELEN_CUSTOM, $05
	snd_note $00, NOTELEN_01
	snd_note $0B, NOTELEN_CUSTOM, $05
	snd_note $00, NOTELEN_01
	snd_note $0D, NOTELEN_CUSTOM, $05
	snd_note $00, NOTELEN_01
	snd_note $0E, NOTELEN_CUSTOM, $05
	snd_note $00, NOTELEN_01
	snd_note $10, NOTELEN_CUSTOM, $05
	snd_note $00, NOTELEN_01
	snd_pitchbend 1
	snd_note $12, NOTELEN_CUSTOM, $05
	snd_note $00, NOTELEN_01
	snd_inc_vol 1
	snd_note $10, NOTELEN_0C
	snd_pitchbend 0
	snd_inc_vol -1
	snd_note $09, NOTELEN_CUSTOM, $05
	snd_note $00, NOTELEN_01
	snd_note $0B, NOTELEN_CUSTOM, $05
	snd_note $00, NOTELEN_01
	snd_note $0D, NOTELEN_CUSTOM, $05
	snd_note $00, NOTELEN_01
	snd_note $0E, NOTELEN_CUSTOM, $05
	snd_note $00, NOTELEN_01
	snd_note $10, NOTELEN_CUSTOM, $05
	snd_note $00, NOTELEN_01
	snd_note $12, NOTELEN_CUSTOM, $05
	snd_note $00, NOTELEN_01
	snd_note $0E, NOTELEN_CUSTOM, $05
	snd_note $00, NOTELEN_01
	snd_ret
.sub1:
	snd_note $0D, NOTELEN_09
	snd_note $0D, NOTELEN_03
	snd_note $14, NOTELEN_06
	snd_note $19
	snd_note $0D, NOTELEN_09
	snd_note $0D, NOTELEN_03
	snd_note $14, NOTELEN_06
	snd_note $19
	snd_note $0D, NOTELEN_09
	snd_note $0D, NOTELEN_03
	snd_note $14, NOTELEN_06
	snd_note $19
	snd_note $0D, NOTELEN_09
	snd_note $0D, NOTELEN_03
	snd_note $14, NOTELEN_06
	snd_note $19
	snd_note $0E, NOTELEN_09
	snd_note $0E, NOTELEN_03
	snd_note $15, NOTELEN_06
	snd_note $1A
	snd_note $0E, NOTELEN_09
	snd_note $0E, NOTELEN_03
	snd_note $15, NOTELEN_06
	snd_note $1A
	snd_note $0E, NOTELEN_09
	snd_note $0E, NOTELEN_03
	snd_note $15, NOTELEN_06
	snd_note $1A
	snd_note $0E, NOTELEN_09
	snd_note $0E, NOTELEN_03
	snd_note $15, NOTELEN_06
	snd_note $1A
	snd_note $0D, NOTELEN_09
	snd_note $0D, NOTELEN_03
	snd_note $14, NOTELEN_06
	snd_note $19
	snd_note $0D, NOTELEN_09
	snd_note $0D, NOTELEN_03
	snd_note $14, NOTELEN_06
	snd_note $19
	snd_note $0D, NOTELEN_09
	snd_note $0D, NOTELEN_03
	snd_note $14, NOTELEN_06
	snd_note $19
	snd_note $0D, NOTELEN_09
	snd_note $0D, NOTELEN_03
	snd_note $14, NOTELEN_06
	snd_note $19
	snd_note $0C, NOTELEN_09
	snd_note $0C, NOTELEN_03
	snd_note $13, NOTELEN_06
	snd_note $18
	snd_note $0C, NOTELEN_09
	snd_note $0C, NOTELEN_03
	snd_note $13, NOTELEN_06
	snd_note $18
	snd_note $0B, NOTELEN_09
	snd_note $0B, NOTELEN_03
	snd_note $12, NOTELEN_06
	snd_note $17
	snd_note $0B, NOTELEN_09
	snd_note $0B, NOTELEN_03
	snd_note $12, NOTELEN_06
	snd_note $17
	snd_ret
.sub2:
	snd_note $0D, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_inc_vol -2
	snd_note $0D, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_inc_vol -1
	snd_note $0D, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_inc_vol -1
	snd_note $0D, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_inc_vol -1
	snd_note $0D, NOTELEN_03
	snd_inc_vol 1
	snd_note $00, NOTELEN_06
	snd_note $0D, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_inc_vol 1
	snd_note $0D, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_inc_vol 1
	snd_note $0D, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_inc_vol 2
	snd_note $0D, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_inc_vol 1
	snd_note $0D, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_inc_vol 1
	snd_note $0D, NOTELEN_03
	snd_note $00, NOTELEN_03
	snd_inc_vol -2
	snd_ret
SndData_0E_Ch2:
	snd_duty SNDDUTY_25, $00
	snd_inc_freq_offset -1
	snd_instrument INSTR_5A
	snd_vibrato VIBRATO_60
	snd_inc_vol -2
	snd_call .sub0
	snd_call .sub1
	snd_call .sub0
	snd_call .sub2
	snd_call .sub3
	snd_call .sub3
	snd_inc_base_note -12
	snd_inc_vol 2
	snd_call .sub4
	snd_inc_base_note 12
	snd_inc_vol -2
	snd_call .sub0
	snd_call .sub1
	snd_call .sub0
	snd_call .sub1
	snd_inc_base_note -3
	snd_call .sub0
	snd_call .sub1
	snd_inc_base_note 3
	snd_call .sub5
	snd_inc_vol 2
	snd_inc_freq_offset 1
	snd_jp SndData_0E_Ch2
.sub0:
	snd_note $2D, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $2C, NOTELEN_03
	snd_note $00, NOTELEN_03
	snd_note $2C, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $2C, NOTELEN_03
	snd_note $00, NOTELEN_03
	snd_note $2C, NOTELEN_03
	snd_note $2C
	snd_note $00, NOTELEN_03
	snd_note $2C, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $2D, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $2C, NOTELEN_03
	snd_note $00, NOTELEN_03
	snd_note $2C, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $2C, NOTELEN_03
	snd_note $00, NOTELEN_03
	snd_note $2C, NOTELEN_03
	snd_note $2C
	snd_note $00, NOTELEN_03
	snd_note $2C, NOTELEN_03
	snd_note $00, NOTELEN_03
	snd_note $2C, NOTELEN_03
	snd_ret
.sub1:
	snd_note $28, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $26, NOTELEN_03
	snd_note $00, NOTELEN_03
	snd_note $26, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $26, NOTELEN_03
	snd_note $00, NOTELEN_03
	snd_note $26, NOTELEN_03
	snd_note $26
	snd_note $00, NOTELEN_03
	snd_note $26, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $28, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $26, NOTELEN_03
	snd_note $00, NOTELEN_03
	snd_note $26, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $26, NOTELEN_03
	snd_note $00, NOTELEN_03
	snd_note $26, NOTELEN_03
	snd_note $26
	snd_note $00, NOTELEN_03
	snd_note $26, NOTELEN_03
	snd_note $00, NOTELEN_03
	snd_note $26, NOTELEN_03
	snd_ret
.sub2:
	snd_note $28, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $26, NOTELEN_03
	snd_note $00, NOTELEN_03
	snd_note $26, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $26, NOTELEN_03
	snd_note $00, NOTELEN_03
	snd_note $26, NOTELEN_03
	snd_note $26
	snd_note $00, NOTELEN_03
	snd_note $26, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $28, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $26, NOTELEN_03
	snd_note $00, NOTELEN_03
	snd_note $26, NOTELEN_03
	snd_note $26
	snd_note $00
	snd_note $26
	snd_note $00
	snd_note $26
	snd_note $26
	snd_inc_vol -3
	snd_note $25
	snd_note $26
	snd_note $25
	snd_note $21
	snd_inc_vol 3
	snd_ret
.sub3:
	snd_note $2D, NOTELEN_03
	snd_inc_vol -2
	snd_note $28
	snd_note $00
	snd_inc_vol 2
	snd_note $2C, NOTELEN_03
	snd_note $00
	snd_note $2C
	snd_note $00
	snd_inc_vol -2
	snd_note $28, NOTELEN_03
	snd_inc_vol 2
	snd_note $2C
	snd_note $00
	snd_note $2C
	snd_note $2C
	snd_inc_vol -2
	snd_note $28
	snd_inc_vol 2
	snd_note $2C
	snd_inc_vol -2
	snd_note $28
	snd_note $00
	snd_inc_vol 2
	snd_note $2D, NOTELEN_03
	snd_inc_vol -2
	snd_note $28
	snd_note $00
	snd_inc_vol 2
	snd_note $2C, NOTELEN_03
	snd_note $00
	snd_note $2C
	snd_note $00
	snd_inc_vol -2
	snd_note $28, NOTELEN_03
	snd_inc_vol 2
	snd_note $2C
	snd_note $00
	snd_note $2C
	snd_note $2C
	snd_inc_vol -2
	snd_note $28
	snd_inc_vol 2
	snd_note $2C
	snd_inc_vol -2
	snd_note $28
	snd_note $00
	snd_inc_vol 2
	snd_note $28, NOTELEN_03
	snd_inc_vol -2
	snd_note $21
	snd_note $00
	snd_inc_vol 2
	snd_note $26, NOTELEN_03
	snd_note $00
	snd_note $26
	snd_note $00
	snd_inc_vol -2
	snd_note $21, NOTELEN_03
	snd_inc_vol 2
	snd_note $26
	snd_note $00
	snd_note $26, NOTELEN_03
	snd_note $26
	snd_inc_vol -2
	snd_note $21
	snd_inc_vol 2
	snd_note $26
	snd_inc_vol -2
	snd_note $21
	snd_note $00
	snd_inc_vol 2
	snd_note $28, NOTELEN_03
	snd_inc_vol -2
	snd_note $21
	snd_note $00
	snd_inc_vol 2
	snd_note $26, NOTELEN_03
	snd_note $00
	snd_note $26
	snd_note $00
	snd_inc_vol -2
	snd_note $21, NOTELEN_03
	snd_inc_vol 2
	snd_note $26
	snd_note $00
	snd_note $26
	snd_note $26
	snd_inc_vol -2
	snd_note $21
	snd_inc_vol 2
	snd_note $26
	snd_inc_vol -2
	snd_note $21
	snd_note $00
	snd_inc_vol 2
	snd_ret
.sub4:
	snd_inc_vol 2
	snd_note $27, NOTELEN_03
	snd_note $2F
	snd_note $2A
	snd_note $27
	snd_note $2F
	snd_note $2A
	snd_note $27
	snd_note $2F
	snd_note $2A
	snd_note $27
	snd_note $2F
	snd_note $2A
	snd_note $27
	snd_note $2F
	snd_note $2A
	snd_note $27
	snd_note $2F
	snd_note $2A
	snd_note $27
	snd_note $2F
	snd_note $2A
	snd_note $27
	snd_note $2F
	snd_note $2A
	snd_note $27
	snd_note $2F
	snd_note $2A
	snd_note $27
	snd_note $2F
	snd_note $2A
	snd_note $27
	snd_note $2F
	snd_note $25
	snd_note $2D
	snd_note $2A
	snd_note $25
	snd_note $2D
	snd_note $2A
	snd_note $25
	snd_note $2D
	snd_note $2A
	snd_note $25
	snd_note $2D
	snd_note $2A
	snd_note $25
	snd_note $2D
	snd_note $2A
	snd_note $25
	snd_note $2D
	snd_note $2A
	snd_note $25
	snd_note $2D
	snd_note $2A
	snd_note $25
	snd_note $2D
	snd_note $2A
	snd_note $25
	snd_note $2D
	snd_note $2A
	snd_note $25
	snd_note $2D
	snd_note $2A
	snd_note $25
	snd_note $2D
	snd_note $27
	snd_note $2F
	snd_note $2A
	snd_note $27
	snd_note $2F
	snd_note $2A
	snd_note $27
	snd_note $2F
	snd_note $2A
	snd_note $27
	snd_note $2F
	snd_note $2A
	snd_note $27
	snd_note $2F
	snd_note $2A
	snd_note $27
	snd_note $2F
	snd_note $2A
	snd_note $27
	snd_note $2F
	snd_note $2A
	snd_note $27
	snd_note $2F
	snd_note $2A
	snd_note $27
	snd_note $2F
	snd_note $2A
	snd_note $27
	snd_note $2F
	snd_note $2A
	snd_note $27
	snd_note $2F
	snd_note $28
	snd_note $2F
	snd_note $2B
	snd_note $28
	snd_note $2F
	snd_note $2B
	snd_note $28
	snd_note $2F
	snd_note $2B
	snd_note $28
	snd_note $2F
	snd_note $2B
	snd_note $28
	snd_note $2F
	snd_note $2B
	snd_note $28
	snd_note $28
	snd_note $31
	snd_note $2D
	snd_note $28
	snd_note $31
	snd_note $2D
	snd_note $28
	snd_note $31
	snd_note $2D
	snd_note $28
	snd_note $31
	snd_note $2D
	snd_inc_vol -3
	snd_note $3D
	snd_note $3E
	snd_note $3D
	snd_note $2D
	snd_inc_vol 1
	snd_ret
.sub5:
	snd_inc_vol 3
	snd_note $2A, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $29, NOTELEN_03
	snd_note $00, NOTELEN_03
	snd_note $29, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $29, NOTELEN_03
	snd_note $00
	snd_note $29, NOTELEN_03
	snd_note $29
	snd_note $00, NOTELEN_03
	snd_note $29, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $2A, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $29, NOTELEN_03
	snd_note $00
	snd_note $29, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $29, NOTELEN_03
	snd_note $00
	snd_note $29, NOTELEN_03
	snd_note $29
	snd_note $00
	snd_note $29, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_inc_vol -3
	snd_note $31, NOTELEN_02
	snd_note $00, NOTELEN_CUSTOM, $07
	snd_instrument INSTR_63
	snd_vibrato VIBRATO_0F
	snd_inc_vol -2
	snd_note $2F, NOTELEN_CUSTOM, $57
	snd_inc_vol 2
	snd_instrument INSTR_NONE
	snd_vibrato VIBRATO_NONE
	snd_ret
SndData_0E_Ch1:
	snd_duty SNDDUTY_12, $00
	snd_vibrato VIBRATO_5D
	snd_pitchbend 40
	snd_note $2A, NOTELEN_03
	snd_note $00, NOTELEN_CUSTOM, $06
	snd_inc_vol -2
	snd_instrument INSTR_5E
	snd_vibrato VIBRATO_5B
	snd_note $28, NOTELEN_CUSTOM, $57
	snd_vibrato VIBRATO_NONE
	snd_instrument INSTR_NONE
	snd_inc_vol 2
	snd_note $25, NOTELEN_03
	snd_note $00, NOTELEN_CUSTOM, $06
	snd_inc_vol -2
	snd_instrument INSTR_5E
	snd_vibrato VIBRATO_5B
	snd_note $23, NOTELEN_CUSTOM, $57
	snd_vibrato VIBRATO_NONE
	snd_instrument INSTR_NONE
	snd_inc_vol 2
	snd_note $2A, NOTELEN_03
	snd_note $00, NOTELEN_CUSTOM, $06
	snd_inc_vol -2
	snd_instrument INSTR_5E
	snd_vibrato VIBRATO_5B
	snd_note $28, NOTELEN_CUSTOM, $57
	snd_vibrato VIBRATO_NONE
	snd_instrument INSTR_NONE
	snd_inc_vol 2
	snd_note $25, NOTELEN_03
	snd_note $00, NOTELEN_CUSTOM, $06
	snd_inc_vol -2
	snd_instrument INSTR_5E
	snd_vibrato VIBRATO_5B
	snd_note $23, NOTELEN_CUSTOM, $4B
	snd_vibrato VIBRATO_NONE
	snd_inc_vol 2
	snd_instrument INSTR_NONE
	snd_duty SNDDUTY_12, $00
	snd_vibrato VIBRATO_5D
	snd_pitchbend 20
	snd_duty SNDDUTY_25, $00
	snd_note $31, NOTELEN_03
	snd_note $32
	snd_note $31
	snd_note $2D
	snd_note $31, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_instrument INSTR_5E
	snd_vibrato VIBRATO_5B
	snd_note $2F, NOTELEN_CUSTOM, $4B
	snd_vibrato VIBRATO_NONE
	snd_instrument INSTR_NONE
	snd_note $2C, NOTELEN_03
	snd_note $2D
	snd_note $2C
	snd_note $28
	snd_note $2C, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_instrument INSTR_5E
	snd_vibrato VIBRATO_5B
	snd_note $2A, NOTELEN_CUSTOM, $4B
	snd_vibrato VIBRATO_NONE
	snd_instrument INSTR_NONE
	snd_note $31, NOTELEN_03
	snd_note $32
	snd_note $31
	snd_note $2D
	snd_note $31, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_instrument INSTR_5E
	snd_vibrato VIBRATO_5B
	snd_note $2F, NOTELEN_CUSTOM, $4B
	snd_vibrato VIBRATO_NONE
	snd_instrument INSTR_NONE
	snd_note $2C, NOTELEN_03
	snd_note $2D
	snd_note $2C
	snd_note $28
	snd_note $2C, NOTELEN_02
	snd_note $00, NOTELEN_CUSTOM, $07
	snd_instrument INSTR_5E
	snd_vibrato VIBRATO_5B
	snd_note $2A, NOTELEN_CUSTOM, $57
	snd_vibrato VIBRATO_NONE
	snd_instrument INSTR_NONE
	snd_inc_vol -4
	snd_pitchbend 0
	snd_vibrato VIBRATO_5C
	snd_instrument INSTR_5B
	snd_note $36, NOTELEN_CUSTOM, $60
	snd_instrument INSTR_NONE
	snd_vibrato VIBRATO_5B
	snd_note $36, NOTELEN_CUSTOM, $90
	snd_vibrato VIBRATO_NONE
	snd_instrument INSTR_5C
	snd_note $36, NOTELEN_30
	snd_inc_vol 5
	snd_instrument INSTR_58
	snd_note $37, NOTELEN_30
	snd_vibrato VIBRATO_61
	snd_instrument INSTR_5F
	snd_note $39, NOTELEN_24
	snd_vibrato VIBRATO_NONE
	snd_instrument INSTR_NONE
	snd_inc_vol -1
	snd_pitchbend 20
	snd_note $31, NOTELEN_03
	snd_note $32
	snd_note $31
	snd_note $2D
	snd_note $31, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_instrument INSTR_5E
	snd_vibrato VIBRATO_5B
	snd_note $2F, NOTELEN_CUSTOM, $4B
	snd_vibrato VIBRATO_NONE
	snd_instrument INSTR_NONE
	snd_note $2C, NOTELEN_03
	snd_note $2D
	snd_note $2C
	snd_note $28
	snd_note $2C, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_instrument INSTR_5E
	snd_vibrato VIBRATO_5B
	snd_note $2A, NOTELEN_CUSTOM, $4B
	snd_vibrato VIBRATO_NONE
	snd_instrument INSTR_NONE
	snd_note $31, NOTELEN_03
	snd_note $32
	snd_note $31
	snd_note $2D
	snd_note $31, NOTELEN_02
	snd_note $00, NOTELEN_CUSTOM, $07
	snd_instrument INSTR_5E
	snd_vibrato VIBRATO_5B
	snd_note $2F, NOTELEN_CUSTOM, $4B
	snd_vibrato VIBRATO_NONE
	snd_instrument INSTR_NONE
	snd_note $2C, NOTELEN_03
	snd_note $2D
	snd_note $2C
	snd_note $28
	snd_note $2C, NOTELEN_02
	snd_note $00, NOTELEN_CUSTOM, $07
	snd_instrument INSTR_5E
	snd_vibrato VIBRATO_5B
	snd_note $2A, NOTELEN_CUSTOM, $57
	snd_vibrato VIBRATO_NONE
	snd_instrument INSTR_NONE
	snd_pitchbend 30
	snd_note $27, NOTELEN_02
	snd_note $00, NOTELEN_CUSTOM, $07
	snd_instrument INSTR_5E
	snd_vibrato VIBRATO_5B
	snd_note $25, NOTELEN_CUSTOM, $57
	snd_vibrato VIBRATO_NONE
	snd_instrument INSTR_NONE
	snd_note $22, NOTELEN_02
	snd_note $00, NOTELEN_CUSTOM, $07
	snd_instrument INSTR_5E
	snd_vibrato VIBRATO_5B
	snd_note $20, NOTELEN_CUSTOM, $57
	snd_vibrato VIBRATO_NONE
	snd_instrument INSTR_NONE
	snd_note $27, NOTELEN_02
	snd_note $00, NOTELEN_CUSTOM, $07
	snd_instrument INSTR_5E
	snd_vibrato VIBRATO_5B
	snd_note $25, NOTELEN_CUSTOM, $57
	snd_vibrato VIBRATO_NONE
	snd_instrument INSTR_NONE
	snd_note $22, NOTELEN_02
	snd_note $00, NOTELEN_CUSTOM, $07
	snd_vibrato VIBRATO_60
	snd_inc_vol -5
	snd_instrument INSTR_5B
	snd_note $20, NOTELEN_CUSTOM, $57
	snd_inc_vol 5
	snd_vibrato VIBRATO_NONE
	snd_pitchbend 0
	snd_jp SndData_0E_Ch1
SndData_0E_Ch4:
	snd_call .sub0
	snd_call .sub1
	snd_call .sub2
	snd_call .sub1
	snd_call .sub1
	snd_call .sub1
	snd_call .sub1
	snd_call .sub1
	snd_call .sub1
	snd_call .sub1
	snd_call .sub3
	snd_call .sub4
	snd_call .sub4
	snd_call .sub4
	snd_call .sub4
	snd_call .sub4
	snd_call .sub4
	snd_call .sub4
	snd_call .sub4
	snd_call .sub1
	snd_call .sub1
	snd_call .sub1
	snd_jp SndData_0E_Ch4
.sub0:
	snd_noteex PRESET_01, NOTELEN_0C
	snd_noteex PRESET_01
	snd_noteex PRESET_01, NOTELEN_09
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_00, NOTELEN_0C
	snd_noteex PRESET_01
	snd_noteex PRESET_01
	snd_noteex PRESET_01, NOTELEN_09
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_00, NOTELEN_0C
	snd_noteex PRESET_01
	snd_noteex PRESET_01
	snd_noteex PRESET_01, NOTELEN_09
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_00, NOTELEN_0C
	snd_noteex PRESET_01, NOTELEN_09
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_01, NOTELEN_06
	snd_noteex PRESET_00
	snd_noteex PRESET_01, NOTELEN_09
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_02
	snd_ret
.sub1:
	snd_noteex PRESET_01, NOTELEN_09
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_01, NOTELEN_0C
	snd_noteex PRESET_01, NOTELEN_09
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_02
	snd_noteex PRESET_01, NOTELEN_09
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_01, NOTELEN_0C
	snd_noteex PRESET_01, NOTELEN_09
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_02
	snd_ret
.sub2:
	snd_noteex PRESET_01, NOTELEN_09
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_01, NOTELEN_0C
	snd_noteex PRESET_01, NOTELEN_09
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_02
	snd_noteex PRESET_01, NOTELEN_09
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_01, NOTELEN_06
	snd_noteex PRESET_00
	snd_noteex PRESET_01, NOTELEN_09
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_02, NOTELEN_03
	snd_noteex PRESET_00
	snd_ret
.sub3:
	snd_noteex PRESET_01, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_01
	snd_note $00, NOTELEN_09
	snd_noteex PRESET_01, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_00
	snd_note $00
	snd_noteex PRESET_02
	snd_note $00
	snd_noteex PRESET_01
	snd_note $00, NOTELEN_06
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_01
	snd_note $00
	snd_noteex PRESET_00
	snd_noteex PRESET_00
	snd_noteex PRESET_01
	snd_note $00, NOTELEN_06
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_00
	snd_note $00
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_ret
.sub4:
	snd_noteex PRESET_01
	snd_note $00, NOTELEN_06
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_01
	snd_note $00
	snd_noteex PRESET_00
	snd_note $00
	snd_noteex PRESET_01
	snd_note $00, NOTELEN_06
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_00
	snd_note $00
	snd_noteex PRESET_02
	snd_note $00
	snd_ret
SndHeader_0F:
	db 4 ; Number of slots
.slot0:
	db SNDSLOT0 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 13 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -12 ; iSndChInfo_NoteIdBase
	db 153 ; iSndChInfo_Speed
	db SNDCH_PULSE1 ; iSndChInfo_ChId
	dw SndData_0F_Ch1 ; Data pointer
	nrx1 SNDDUTY_12, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot1:
	db SNDSLOT1 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db 0 ; iSndChInfo_NoteIdBase
	db 153 ; iSndChInfo_Speed
	db SNDCH_WAVE ; iSndChInfo_ChId
	dw SndData_0F_Ch3 ; Data pointer
	db WAVE_00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot2:
	db SNDSLOT2 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 11 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -12 ; iSndChInfo_NoteIdBase
	db 153 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_0F_Ch2 ; Data pointer
	nrx1 SNDDUTY_12, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot3:
	db SNDSLOT3 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db 0 ; iSndChInfo_NoteIdBase
	db 153 ; iSndChInfo_Speed
	db SNDCH_NOISE ; iSndChInfo_ChId
	dw SndData_0F_Ch4 ; Data pointer
	nrx1 SNDDUTY_12, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_0F_Ch1:
	snd_duty SNDDUTY_12, $00
	snd_inc_vol -6
	snd_inc_base_note 12
	snd_call SndData_0F_Ch3.sub0
	snd_inc_base_note -12
	snd_inc_vol 6
.loop0:
	snd_duty SNDDUTY_25, $00
	snd_inc_freq_offset -1
	snd_call .sub0
	snd_call .sub1
	snd_call .sub0
	snd_call .sub2
	snd_call .sub3
	snd_call .sub4
	snd_call .sub0
	snd_call .sub1
	snd_call .sub0
	snd_call .sub2
	snd_call .sub3
	snd_call .sub5
	snd_duty SNDDUTY_12, $00
	snd_inc_vol -2
	snd_call .sub6
	snd_inc_vol 2
	snd_duty SNDDUTY_25, $00
	snd_call .sub7
	snd_inc_freq_offset 1
	snd_jp .loop0
.sub0:
	snd_instrument INSTR_5B
	snd_vibrato VIBRATO_0D
	snd_note $00, NOTELEN_06
	snd_note $38
	snd_instrument INSTR_NONE
	snd_note $36
	snd_note $38, NOTELEN_0C
	snd_note $33
	snd_note $2F, NOTELEN_12
	snd_note $2C, NOTELEN_0C
	snd_note $2F
	snd_note $33
	snd_ret
.sub1:
	snd_vibrato VIBRATO_0D
	snd_instrument INSTR_5C
	snd_note $31, NOTELEN_CUSTOM, $5D
	snd_note $00, NOTELEN_03
	snd_instrument INSTR_NONE
	snd_vibrato VIBRATO_NONE
	snd_ret
.sub2:
	snd_vibrato VIBRATO_0D
	snd_instrument INSTR_5D
	snd_note $31, NOTELEN_30
	snd_note $33, NOTELEN_24
	snd_note $33, NOTELEN_0C
	snd_instrument INSTR_NONE
	snd_vibrato VIBRATO_NONE
	snd_ret
.sub3:
	snd_instrument INSTR_5B
	snd_vibrato VIBRATO_5D
	snd_note $38, NOTELEN_1E
	snd_vibrato VIBRATO_NONE
	snd_instrument INSTR_NONE
	snd_note $33, NOTELEN_0C
	snd_note $38, NOTELEN_06
	snd_instrument INSTR_5B
	snd_vibrato VIBRATO_0D
	snd_note $35, NOTELEN_30
	snd_instrument INSTR_NONE
	snd_vibrato VIBRATO_NONE
	snd_note $34, NOTELEN_1E
	snd_note $31, NOTELEN_0C
	snd_note $34, NOTELEN_06
	snd_instrument INSTR_5B
	snd_vibrato VIBRATO_0D
	snd_note $33, NOTELEN_30
	snd_vibrato VIBRATO_NONE
	snd_instrument INSTR_NONE
	snd_note $32, NOTELEN_1E
	snd_note $31, NOTELEN_0C
	snd_note $2F, NOTELEN_06
	snd_note $2E, NOTELEN_1E
	snd_note $2B, NOTELEN_0C
	snd_vibrato VIBRATO_0D
	snd_instrument INSTR_5D
	snd_note $2C, NOTELEN_CUSTOM, $36
	snd_instrument INSTR_NONE
	snd_vibrato VIBRATO_NONE
	snd_ret
.sub5:
	snd_note $2A, NOTELEN_30
	snd_ret
.sub6:
	snd_inc_base_note -12
	snd_vibrato VIBRATO_5D
	snd_note $33, NOTELEN_06
	snd_note $00
	snd_note $33, NOTELEN_24
	snd_note $33, NOTELEN_CUSTOM, $07
	snd_inc_vol -4
	snd_note $3A, NOTELEN_01
	snd_note $3B
	snd_note $3D
	snd_note $3F
	snd_note $40
	snd_note $3E, NOTELEN_02
	snd_note $3F, NOTELEN_04
	snd_note $00, NOTELEN_03
	snd_note $3F, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_note $3D, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_note $3F, NOTELEN_02
	snd_note $00, NOTELEN_CUSTOM, $07
	snd_note $3E, NOTELEN_02
	snd_note $3F, NOTELEN_CUSTOM, $0A
	snd_inc_vol 4
	snd_note $33, NOTELEN_06
	snd_note $00
	snd_note $33, NOTELEN_24
	snd_inc_vol -4
	snd_note $3D, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_note $3F, NOTELEN_02
	snd_note $00, NOTELEN_CUSTOM, $07
	snd_note $3E, NOTELEN_02
	snd_note $3F, NOTELEN_CUSTOM, $0A
	snd_note $3D, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_note $3F, NOTELEN_02
	snd_note $00, NOTELEN_CUSTOM, $07
	snd_note $3E, NOTELEN_02
	snd_note $3F, NOTELEN_CUSTOM, $0A
	snd_note $40, NOTELEN_01
	snd_note $3F
	snd_note $3D
	snd_note $3B
	snd_note $3A
	snd_note $38
	snd_note $36
	snd_note $34
	snd_note $00, NOTELEN_04
	snd_inc_vol 4
	snd_note $33, NOTELEN_24
	snd_note $33, NOTELEN_CUSTOM, $07
	snd_inc_vol -4
	snd_note $3A, NOTELEN_01
	snd_note $3B
	snd_note $3D
	snd_note $3F
	snd_note $40
	snd_note $3E, NOTELEN_02
	snd_note $3F, NOTELEN_04
	snd_note $00, NOTELEN_03
	snd_note $3F, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_note $3D, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_note $3F, NOTELEN_02
	snd_note $00, NOTELEN_CUSTOM, $07
	snd_note $3E, NOTELEN_02
	snd_note $3F, NOTELEN_CUSTOM, $0A
	snd_inc_vol 4
	snd_note $33, NOTELEN_06
	snd_note $00
	snd_note $33, NOTELEN_24
	snd_inc_vol -4
	snd_note $3D, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_note $3F, NOTELEN_02
	snd_note $00, NOTELEN_CUSTOM, $07
	snd_note $3E, NOTELEN_02
	snd_note $3F, NOTELEN_CUSTOM, $0A
	snd_note $3D, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_note $3F, NOTELEN_02
	snd_note $00, NOTELEN_CUSTOM, $07
	snd_note $3F, NOTELEN_06
	snd_note $40, NOTELEN_01
	snd_note $42
	snd_note $44
	snd_note $46
	snd_note $47
	snd_note $49
	snd_inc_vol 4
	snd_inc_base_note 12
	snd_vibrato VIBRATO_NONE
	snd_ret
.sub7:
	snd_note $27, NOTELEN_06
	snd_note $28, NOTELEN_0C
	snd_note $27
	snd_note $2A
	snd_note $28, NOTELEN_0C
	snd_note $27
	snd_note $25
	snd_note $23
	snd_note $22, NOTELEN_06
	snd_ret
.sub4:
	snd_note $00, NOTELEN_30
	snd_ret
SndData_0F_Ch3:
	snd_wave WAVE_09
	snd_inc_freq_offset -2
	snd_call .sub0
	snd_inc_freq_offset 2
.loop:
	snd_call .sub1
	snd_call .sub2
	snd_call .sub3
	snd_call .sub1
	snd_call .sub2
	snd_call .sub4
	snd_call .sub5
	snd_call .sub5
	snd_call .sub5
	snd_call .sub5
	snd_call .sub6
	snd_jp .loop
.sub0:
	snd_note $14, NOTELEN_06
	snd_note $1B
	snd_note $1B, NOTELEN_04
	snd_note $00, NOTELEN_02
	snd_note $14, NOTELEN_06
	snd_note $1B
	snd_note $1B, NOTELEN_04
	snd_note $00, NOTELEN_02
	snd_note $14, NOTELEN_06
	snd_note $1B
	snd_note $1B, NOTELEN_06
	snd_note $1B
	snd_note $19
	snd_note $19
	snd_note $17
	snd_note $17
	snd_note $16
	snd_note $16
	snd_ret
.sub1:
	snd_note $14, NOTELEN_12
	snd_note $17
	snd_note $1B, NOTELEN_0C
	snd_note $14, NOTELEN_12
	snd_note $17
	snd_note $1B, NOTELEN_0C
	snd_note $19, NOTELEN_12
	snd_note $1D
	snd_note $20, NOTELEN_0C
	snd_note $19, NOTELEN_12
	snd_note $1D
	snd_note $19, NOTELEN_0C
	snd_note $14, NOTELEN_12
	snd_note $17
	snd_note $1B, NOTELEN_0C
	snd_note $14, NOTELEN_12
	snd_note $17
	snd_note $1B, NOTELEN_0C
	snd_note $19, NOTELEN_12
	snd_note $1D
	snd_note $20, NOTELEN_0C
	snd_note $1B, NOTELEN_12
	snd_note $1F
	snd_note $16, NOTELEN_0C
	snd_ret
.sub2:
	snd_note $14, NOTELEN_12
	snd_note $17
	snd_note $1B, NOTELEN_0C
	snd_note $19, NOTELEN_12
	snd_note $1D
	snd_note $20, NOTELEN_0C
	snd_note $19, NOTELEN_12
	snd_note $1C
	snd_note $19, NOTELEN_0C
	snd_note $14, NOTELEN_12
	snd_note $17
	snd_note $1B, NOTELEN_0C
	snd_ret
.sub3:
	snd_note $16, NOTELEN_12
	snd_note $1A
	snd_note $1D, NOTELEN_0C
	snd_note $1B, NOTELEN_12
	snd_note $1F
	snd_note $22, NOTELEN_0C
	snd_note $14, NOTELEN_12
	snd_note $17
	snd_note $1B, NOTELEN_0C
	snd_note $00, NOTELEN_06
	snd_note $1B, NOTELEN_0C
	snd_note $1B
	snd_note $1B
	snd_note $1B, NOTELEN_06
	snd_ret
.sub4:
	snd_note $16, NOTELEN_12
	snd_note $1A
	snd_note $1D, NOTELEN_0C
	snd_note $1B, NOTELEN_03
	snd_note $00, NOTELEN_09
	snd_note $1B, NOTELEN_24
	snd_note $14, NOTELEN_12
	snd_note $17
	snd_note $1B, NOTELEN_0C
	snd_note $1E, NOTELEN_12
	snd_note $1E, NOTELEN_0C
	snd_note $1C, NOTELEN_06
	snd_note $1E, NOTELEN_0C
	snd_ret
.sub5:
	snd_inc_base_note -12
	snd_note $17, NOTELEN_03
	snd_note $00, NOTELEN_09
	snd_note $23
	snd_note $21, NOTELEN_03
	snd_note $1E, NOTELEN_06
	snd_note $1E
	snd_note $15
	snd_note $16
	snd_note $17
	snd_note $17
	snd_note $23, NOTELEN_09
	snd_note $21, NOTELEN_03
	snd_note $1E, NOTELEN_06
	snd_note $1E
	snd_note $15
	snd_note $16
	snd_inc_base_note 12
	snd_ret
.sub6:
	snd_note $1B, NOTELEN_06
	snd_note $1C, NOTELEN_0C
	snd_note $1B
	snd_note $1E
	snd_note $1C, NOTELEN_0C
	snd_note $1B
	snd_note $19
	snd_note $17
	snd_note $16, NOTELEN_06
	snd_ret
SndData_0F_Ch2:
	snd_duty SNDDUTY_12, $00
	snd_note $00, NOTELEN_30
	snd_note $00
.loop:
	snd_inc_base_note -12
	snd_note $00, NOTELEN_30
	snd_note $00, NOTELEN_2A
	snd_note $2F, NOTELEN_02
	snd_note $31
	snd_note $33
	snd_note $35, NOTELEN_12
	snd_note $36, NOTELEN_03
	snd_note $37
	snd_note $38, NOTELEN_12
	snd_note $37, NOTELEN_03
	snd_note $36
	snd_note $35, NOTELEN_12
	snd_note $36, NOTELEN_03
	snd_note $37
	snd_note $38, NOTELEN_12
	snd_note $39, NOTELEN_03
	snd_note $3A
	snd_instrument INSTR_5B
	snd_vibrato VIBRATO_5B
	snd_note $3B, NOTELEN_CUSTOM, $60
	snd_vibrato VIBRATO_NONE
	snd_note $35, NOTELEN_12
	snd_note $36, NOTELEN_03
	snd_note $37
	snd_note $38, NOTELEN_18
	snd_note $37, NOTELEN_12
	snd_note $38, NOTELEN_03
	snd_note $39
	snd_note $3A, NOTELEN_18
	snd_vibrato VIBRATO_5B
	snd_note $3B, NOTELEN_CUSTOM, $90
	snd_vibrato VIBRATO_5D
	snd_note $38, NOTELEN_30
	snd_note $35
	snd_vibrato VIBRATO_5B
	snd_note $37, NOTELEN_CUSTOM, $2A
	snd_vibrato VIBRATO_NONE
	snd_note $38, NOTELEN_CUSTOM, $2A
	snd_note $3B, NOTELEN_02
	snd_note $3C
	snd_note $3D
	snd_note $3F
	snd_note $40
	snd_note $41
	snd_vibrato VIBRATO_0C
	snd_instrument INSTR_57
	snd_inc_vol 1
	snd_pitchbend 20
	snd_note $42, NOTELEN_18
	snd_vibrato VIBRATO_5D
	snd_note $40
	snd_pitchbend 0
	snd_instrument INSTR_5C
	snd_inc_vol -1
	snd_vibrato VIBRATO_NONE
	snd_note $3F, NOTELEN_CUSTOM, $44
	snd_note $40, NOTELEN_02
	snd_note $41
	snd_note $42, NOTELEN_18
	snd_instrument INSTR_5A
	snd_inc_vol 2
	snd_note $35, NOTELEN_06
	snd_note $3D
	snd_note $38
	snd_note $35
	snd_note $41
	snd_note $3D
	snd_note $38
	snd_note $3D
	snd_note $38
	snd_note $35
	snd_note $38
	snd_note $35
	snd_note $31
	snd_note $35
	snd_note $31
	snd_note $2C
	snd_inc_vol -2
	snd_instrument INSTR_NONE
	snd_note $3F, NOTELEN_CUSTOM, $44
	snd_note $40, NOTELEN_02
	snd_note $41
	snd_note $42, NOTELEN_18
	snd_instrument INSTR_5A
	snd_inc_vol 2
	snd_note $35, NOTELEN_06
	snd_note $3D
	snd_note $38
	snd_note $35
	snd_note $41
	snd_note $38
	snd_note $35
	snd_note $3D
	snd_note $37
	snd_note $3F
	snd_note $3A
	snd_note $37
	snd_note $43
	snd_note $3F
	snd_note $3A
	snd_note $3F
	snd_inc_vol -2
	snd_instrument INSTR_NONE
	snd_vibrato VIBRATO_5B
	snd_note $3B, NOTELEN_CUSTOM, $BA
	snd_inc_vol 0
	snd_note $3A, NOTELEN_02
	snd_note $38
	snd_note $36
	snd_note $35, NOTELEN_12
	snd_note $3A, NOTELEN_02
	snd_note $3B
	snd_note $3D
	snd_note $3E, NOTELEN_18
	snd_note $3D, NOTELEN_30
	snd_note $3B
	snd_note $3A, NOTELEN_CUSTOM, $28
	snd_note $38, NOTELEN_02
	snd_note $36
	snd_note $33
	snd_note $2F
	snd_vibrato VIBRATO_5D
	snd_note $39, NOTELEN_06
	snd_note $00
	snd_note $39, NOTELEN_24
	snd_note $39, NOTELEN_0C
	snd_inc_vol -4
	snd_note $42, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_note $42, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_note $40, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_note $42, NOTELEN_02
	snd_note $00, NOTELEN_CUSTOM, $07
	snd_note $42, NOTELEN_0C
	snd_inc_vol 4
	snd_note $39, NOTELEN_06
	snd_note $00
	snd_note $39, NOTELEN_24
	snd_inc_vol -4
	snd_note $40, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_note $42, NOTELEN_02
	snd_note $00, NOTELEN_CUSTOM, $07
	snd_note $42, NOTELEN_0C
	snd_note $40, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_note $42, NOTELEN_02
	snd_note $00, NOTELEN_CUSTOM, $07
	snd_note $42, NOTELEN_0C
	snd_inc_vol 4
	snd_note $39, NOTELEN_06
	snd_note $00
	snd_note $39, NOTELEN_24
	snd_note $39, NOTELEN_0C
	snd_inc_vol -4
	snd_note $42, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_note $42, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_note $40, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_note $42, NOTELEN_02
	snd_note $00, NOTELEN_CUSTOM, $07
	snd_note $42, NOTELEN_0C
	snd_inc_vol 4
	snd_note $39, NOTELEN_06
	snd_note $00
	snd_note $39, NOTELEN_24
	snd_inc_vol -4
	snd_note $40, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_note $42, NOTELEN_02
	snd_note $00, NOTELEN_CUSTOM, $07
	snd_note $42, NOTELEN_0C
	snd_note $40, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_note $42, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol 4
	snd_note $2F, NOTELEN_02
	snd_note $31
	snd_note $33
	snd_note $34
	snd_note $36
	snd_note $38
	snd_note $39
	snd_note $3B
	snd_note $3D
	snd_vibrato VIBRATO_NONE
	snd_note $3F, NOTELEN_06
	snd_note $40, NOTELEN_0C
	snd_note $3F
	snd_note $42
	snd_note $40, NOTELEN_0C
	snd_note $3F
	snd_note $3D
	snd_note $3B
	snd_note $3A, NOTELEN_06
	snd_inc_base_note 12
	snd_jp .loop
SndData_0F_Ch4:
	snd_call .sub0
.loop:
	snd_inc_vol 7
	snd_call .sub1
	snd_call .sub1
	snd_call .sub1
	snd_call .sub1
	snd_call .sub1
	snd_call .sub1
	snd_call .sub1
	snd_call .sub1
	snd_call .sub1
	snd_call .sub1
	snd_call .sub1
	snd_call .sub1
	snd_call .sub1
	snd_call .sub1
	snd_call .sub1
	snd_call .sub6
	snd_call .sub1
	snd_call .sub1
	snd_call .sub1
	snd_call .sub1
	snd_call .sub1
	snd_call .sub1
	snd_call .sub1
	snd_call .sub1
	snd_call .sub1
	snd_call .sub1
	snd_call .sub1
	snd_call .sub1
	snd_call .sub1
	snd_call .sub2
	snd_call .sub1
	snd_call .sub7
	snd_call .sub3
	snd_call .sub3
	snd_call .sub3
	snd_call .sub4
	snd_call .sub5
	snd_inc_vol -7
	snd_jp .loop
.sub0:
	snd_inc_vol -2
	snd_noteex PRESET_04, NOTELEN_01
	snd_inc_vol 4
	snd_noteex PRESET_00, NOTELEN_06
	snd_inc_vol -4
	snd_noteex PRESET_04
	snd_noteex PRESET_04, NOTELEN_CUSTOM, $05
	snd_inc_vol 2
	snd_noteex PRESET_00, NOTELEN_01
	snd_inc_vol -2
	snd_noteex PRESET_04, NOTELEN_06
	snd_noteex PRESET_04
	snd_noteex PRESET_04, NOTELEN_CUSTOM, $05
	snd_inc_vol 4
	snd_noteex PRESET_00, NOTELEN_01
	snd_inc_vol -4
	snd_noteex PRESET_04, NOTELEN_06
	snd_inc_vol 2
	snd_noteex PRESET_00, NOTELEN_CUSTOM, $05
	snd_inc_vol -2
	snd_noteex PRESET_04, NOTELEN_01
	snd_inc_vol 2
	snd_noteex PRESET_00, NOTELEN_03
	snd_inc_vol -4
	snd_noteex PRESET_04, NOTELEN_01
	snd_inc_vol 2
	snd_noteex PRESET_00
	snd_inc_vol -2
	snd_noteex PRESET_04
	snd_inc_vol 4
	snd_noteex PRESET_00, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol 2
	snd_noteex PRESET_00, NOTELEN_02
	snd_noteex PRESET_01, NOTELEN_01
	snd_inc_vol -2
	snd_noteex PRESET_00, NOTELEN_03
	snd_note $00, NOTELEN_03
	snd_noteex PRESET_01, NOTELEN_CUSTOM, $03
	snd_note $00, NOTELEN_02
	snd_inc_vol -2
	snd_noteex PRESET_01, NOTELEN_CUSTOM, $01
	snd_inc_vol 2
	snd_noteex PRESET_00, NOTELEN_CUSTOM, $03
	snd_note $00, NOTELEN_02
	snd_inc_vol -3
	snd_noteex PRESET_01, NOTELEN_01
	snd_inc_vol 3
	snd_noteex PRESET_00, NOTELEN_04
	snd_inc_vol -2
	snd_noteex PRESET_04, NOTELEN_01
	snd_inc_vol 2
	snd_inc_vol 2
	snd_noteex PRESET_00, NOTELEN_03
	snd_inc_vol -2
	snd_noteex PRESET_04, NOTELEN_03
	snd_inc_vol 3
	snd_noteex PRESET_00, NOTELEN_03
	snd_inc_vol -3
	snd_noteex PRESET_04, NOTELEN_03
	snd_ret
.sub1:
	snd_noteex PRESET_01, NOTELEN_06
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_ret
.sub2:
	snd_noteex PRESET_01, NOTELEN_06
	snd_noteex PRESET_02
	snd_noteex PRESET_08, NOTELEN_0C
	snd_noteex PRESET_00, NOTELEN_09
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_00
	snd_ret
.sub3:
	snd_noteex PRESET_01, NOTELEN_06
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_ret
.sub4:
	snd_noteex PRESET_01, NOTELEN_06
	snd_noteex PRESET_02
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_02
	snd_noteex PRESET_02, NOTELEN_06
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_02
	snd_noteex PRESET_01, NOTELEN_06
	snd_noteex PRESET_02
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_02
	snd_noteex PRESET_01, NOTELEN_06
	snd_noteex PRESET_01
	snd_noteex PRESET_08
	snd_noteex PRESET_02
	snd_noteex PRESET_01, NOTELEN_03
	snd_noteex PRESET_00
	snd_noteex PRESET_04, NOTELEN_06
	snd_noteex PRESET_00
	snd_noteex PRESET_04, NOTELEN_03
	snd_noteex PRESET_00
	snd_ret
.sub5:
	snd_noteex PRESET_01, NOTELEN_06
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_01
	snd_noteex PRESET_02, NOTELEN_03
	snd_noteex PRESET_00, NOTELEN_01
	snd_noteex PRESET_04
	snd_noteex PRESET_00
	snd_noteex PRESET_04, NOTELEN_06
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_02, NOTELEN_03
	snd_inc_vol -7
	snd_noteex PRESET_04, NOTELEN_01
	snd_noteex PRESET_04
	snd_noteex PRESET_04
	snd_inc_vol 7
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_04
	snd_noteex PRESET_02, NOTELEN_06
	snd_noteex PRESET_00
	snd_note $00, NOTELEN_03
	snd_inc_vol -7
	snd_noteex PRESET_04, NOTELEN_01
	snd_noteex PRESET_04
	snd_noteex PRESET_04
	snd_inc_vol 7
	snd_noteex PRESET_08, NOTELEN_03
	snd_noteex PRESET_00
	snd_noteex PRESET_04, NOTELEN_06
	snd_noteex PRESET_00
	snd_ret
.sub6:
	snd_inc_vol -7
	snd_noteex PRESET_00, NOTELEN_06
	snd_inc_vol 7
	snd_noteex PRESET_04, NOTELEN_03
	snd_noteex PRESET_04
	snd_noteex PRESET_00, NOTELEN_06
	snd_inc_vol -7
	snd_noteex PRESET_00
	snd_inc_vol 7
	snd_noteex PRESET_04, NOTELEN_03
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_04, NOTELEN_03
	snd_noteex PRESET_00, NOTELEN_06
	snd_noteex PRESET_00
	snd_ret
.sub7:
	snd_inc_vol -7
	snd_noteex PRESET_00, NOTELEN_06
	snd_inc_vol 7
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_00
	snd_noteex PRESET_04, NOTELEN_06
	snd_inc_vol -7
	snd_noteex PRESET_00
	snd_inc_vol 7
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_04
	snd_inc_vol -7
	snd_noteex PRESET_00, NOTELEN_06
	snd_inc_vol 7
	snd_noteex PRESET_00
	snd_noteex PRESET_04
	snd_ret
SndHeader_20:
	db 4 ; Number of slots
.slot0:
	db SNDSLOT0 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 14 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -12 ; iSndChInfo_NoteIdBase
	db 102 ; iSndChInfo_Speed
	db SNDCH_PULSE1 ; iSndChInfo_ChId
	dw SndData_20_Ch1 ; Data pointer
	nrx1 SNDDUTY_12, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot1:
	db SNDSLOT1 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 12 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -12 ; iSndChInfo_NoteIdBase
	db 102 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_20_Ch2 ; Data pointer
	nrx1 SNDDUTY_12, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot2:
	db SNDSLOT2 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db 0 ; iSndChInfo_NoteIdBase
	db 102 ; iSndChInfo_Speed
	db SNDCH_WAVE ; iSndChInfo_ChId
	dw SndData_20_Ch3 ; Data pointer
	db WAVE_00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot3:
	db SNDSLOT3 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db 0 ; iSndChInfo_NoteIdBase
	db 102 ; iSndChInfo_Speed
	db SNDCH_NOISE ; iSndChInfo_ChId
	dw SndData_20_Ch4 ; Data pointer
	nrx1 SNDDUTY_12, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_20_Ch1:
	snd_duty SNDDUTY_50, $00
	snd_instrument INSTR_60
	snd_call .sub0
	snd_call .sub1
	snd_call .sub2
	snd_call .sub3
	snd_call .sub0
	snd_call .sub4
	snd_call .sub2
	snd_call .sub5
	snd_call .sub6
	snd_jp SndData_20_Ch1
.sub0:
	snd_note $31, NOTELEN_03
	snd_note $2C
	snd_note $31, NOTELEN_06
	snd_note $31
	snd_note $2C, NOTELEN_03
	snd_note $31, NOTELEN_06
	snd_note $2C
	snd_note $35
	snd_note $31, NOTELEN_03
	snd_note $2C
	snd_note $29
	snd_ret
.sub1:
	snd_note $38, NOTELEN_09
	snd_note $29
	snd_note $2C
	snd_note $29, NOTELEN_CUSTOM, $15
	snd_ret
.sub2:
	snd_note $31, NOTELEN_03
	snd_note $2C
	snd_note $31, NOTELEN_06
	snd_note $31
	snd_note $2C, NOTELEN_03
	snd_note $2A, NOTELEN_06
	snd_note $29
	snd_note $2A
	snd_note $29, NOTELEN_03
	snd_note $2A
	snd_note $2C
	snd_ret
.sub3:
	snd_note $31
	snd_note $00
	snd_inc_vol -9
	snd_instrument INSTR_NONE
	snd_note $29
	snd_note $2A
	snd_note $2C
	snd_note $31
	snd_inc_vol 9
	snd_instrument INSTR_60
	snd_note $2C
	snd_note $29
	snd_note $31
	snd_note $2E, NOTELEN_06
	snd_note $2C
	snd_note $2A, NOTELEN_03
	snd_note $27
	snd_note $20
	snd_ret
.sub4:
	snd_note $38, NOTELEN_09
	snd_note $29
	snd_note $2C
	snd_note $29, NOTELEN_06
	snd_note $29, NOTELEN_03
	snd_note $2A
	snd_note $29
	snd_note $2A
	snd_note $2C
	snd_ret
.sub5:
	snd_note $31, NOTELEN_03
	snd_note $00
	snd_inc_vol -9
	snd_instrument INSTR_NONE
	snd_note $29
	snd_note $2A
	snd_note $2C
	snd_note $31
	snd_inc_vol 9
	snd_instrument INSTR_60
	snd_note $2C
	snd_note $29
	snd_note $31
	snd_note $33, NOTELEN_06
	snd_note $35
	snd_note $33, NOTELEN_03
	snd_note $35
	snd_note $36
	snd_ret
.sub6:
	snd_note $38, NOTELEN_CUSTOM, $14
	snd_inc_vol -9
	snd_note $2C, NOTELEN_01
	snd_inc_vol 2
	snd_note $33
	snd_inc_vol 3
	snd_note $35
	snd_inc_vol 4
	snd_note $36
	snd_note $38, NOTELEN_03
	snd_note $36, NOTELEN_06
	snd_note $35
	snd_note $33
	snd_note $2C, NOTELEN_03
	snd_note $31
	snd_note $30
	snd_note $31
	snd_note $33, NOTELEN_06
	snd_note $35
	snd_note $36
	snd_note $35
	snd_note $33
	snd_note $35, NOTELEN_03
	snd_note $2C, NOTELEN_06
	snd_note $2E, NOTELEN_03
	snd_note $30
	snd_note $31
	snd_note $2C, NOTELEN_09
	snd_note $2E, NOTELEN_03
	snd_note $30
	snd_note $31
	snd_note $2C, NOTELEN_09
	snd_note $31, NOTELEN_06
	snd_note $30
	snd_note $31, NOTELEN_09
	snd_note $33
	snd_note $35
	snd_note $36
	snd_note $38, NOTELEN_0C
	snd_ret
SndData_20_Ch2:
	snd_duty SNDDUTY_12, $00
	snd_inc_freq_offset -1
	snd_instrument INSTR_61
	snd_note $25, NOTELEN_30
	snd_note $27, NOTELEN_18
	snd_note $2C
	snd_note $25, NOTELEN_24
	snd_instrument INSTR_NONE
	snd_note $27, NOTELEN_02
	snd_note $29
	snd_note $2A
	snd_note $2C
	snd_note $2E
	snd_note $30
	snd_instrument INSTR_5A
	snd_note $31
	snd_note $00, NOTELEN_CUSTOM, $07
	snd_inc_vol -3
	snd_note $31, NOTELEN_02
	snd_note $00, NOTELEN_CUSTOM, $07
	snd_inc_vol -2
	snd_note $31, NOTELEN_02
	snd_note $00, NOTELEN_CUSTOM, $07
	snd_inc_vol -3
	snd_note $31, NOTELEN_02
	snd_note $00, NOTELEN_CUSTOM, $07
	snd_inc_vol 3
	snd_note $31, NOTELEN_02
	snd_note $00, NOTELEN_04
	snd_inc_vol 3
	snd_note $31, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_note $31, NOTELEN_03
	snd_inc_vol 2
	snd_instrument INSTR_61
	snd_note $25, NOTELEN_30
	snd_note $2C, NOTELEN_18
	snd_note $33
	snd_note $31, NOTELEN_30
	snd_note $00
	snd_note $20
	snd_note $25, NOTELEN_18
	snd_note $29
	snd_note $27, NOTELEN_30
	snd_note $2C
	snd_inc_freq_offset 1
	snd_jp SndData_20_Ch2
SndData_20_Ch3:
	snd_wave WAVE_0D
	snd_instrument INSTR_62
	snd_call .sub0
	snd_call .sub0
	snd_call .sub1
	snd_jp SndData_20_Ch3
.sub0:
	snd_note $0D, NOTELEN_09
	snd_note $14
	snd_note $0D, NOTELEN_06
	snd_note $0D, NOTELEN_09
	snd_note $0D, NOTELEN_03
	snd_note $14
	snd_note $0D
	snd_note $0D, NOTELEN_0C
	snd_note $14, NOTELEN_06
	snd_note $0D
	snd_note $0D, NOTELEN_03
	snd_note $0D, NOTELEN_06
	snd_note $14
	snd_note $1B, NOTELEN_09
	snd_note $0D, NOTELEN_06
	snd_note $0D, NOTELEN_09
	snd_note $14
	snd_note $0D, NOTELEN_06
	snd_note $0D, NOTELEN_09
	snd_note $0D, NOTELEN_03
	snd_note $14
	snd_note $0D
	snd_note $0D, NOTELEN_06
	snd_note $19
	snd_note $00, NOTELEN_0C
	snd_note $14, NOTELEN_03
	snd_note $16
	snd_note $17
	snd_note $16
	snd_note $00
	snd_note $14
	snd_note $00
	snd_note $12
	snd_note $11, NOTELEN_06
	snd_ret
.sub1:
	snd_note $14, NOTELEN_06
	snd_note $00, NOTELEN_CUSTOM, $0F
	snd_note $14, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $14, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $14, NOTELEN_09
	snd_note $19, NOTELEN_06
	snd_note $00, NOTELEN_CUSTOM, $0F
	snd_note $14, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $19, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $14, NOTELEN_09
	snd_note $1B, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $14, NOTELEN_09
	snd_note $1B, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $14, NOTELEN_09
	snd_note $00, NOTELEN_0C
	snd_note $14, NOTELEN_03
	snd_note $14
	snd_note $14
	snd_note $1B
	snd_note $00, NOTELEN_06
	snd_note $14, NOTELEN_03
	snd_note $14
	snd_note $00, NOTELEN_18
	snd_ret
SndData_20_Ch4:
	snd_call .sub0
	snd_call .sub1
	snd_call .sub2
	snd_call .sub1
	snd_call .sub3
	snd_jp SndData_20_Ch4
.sub0:
	snd_noteex PRESET_01, NOTELEN_03
	snd_note $00
	snd_noteex PRESET_02
	snd_note $00
	snd_noteex PRESET_00
	snd_note $00
	snd_noteex PRESET_01
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_note $00
	snd_noteex PRESET_01
	snd_note $00
	snd_noteex PRESET_00
	snd_note $00
	snd_noteex PRESET_02
	snd_note $00
	snd_ret
.sub1:
	snd_noteex PRESET_02
	snd_note $00
	snd_noteex PRESET_01
	snd_note $00
	snd_noteex PRESET_00
	snd_note $00
	snd_noteex PRESET_01
	snd_note $00
	snd_noteex PRESET_02
	snd_note $00
	snd_noteex PRESET_01
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_note $00
	snd_noteex PRESET_03
	snd_note $00
	snd_noteex PRESET_01
	snd_note $00
	snd_noteex PRESET_01
	snd_note $00
	snd_noteex PRESET_00
	snd_note $00
	snd_noteex PRESET_01
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_note $00
	snd_noteex PRESET_01
	snd_note $00
	snd_noteex PRESET_00
	snd_note $00
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_08
	snd_note $00, NOTELEN_CUSTOM, $0F
	snd_noteex PRESET_01, NOTELEN_03
	snd_note $00
	snd_noteex PRESET_02
	snd_note $00
	snd_noteex PRESET_01
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_note $00
	snd_noteex PRESET_03
	snd_note $00
	snd_ret
.sub2:
	snd_noteex PRESET_01
	snd_note $00
	snd_noteex PRESET_02
	snd_note $00
	snd_noteex PRESET_00
	snd_note $00
	snd_noteex PRESET_01
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_note $00
	snd_noteex PRESET_01
	snd_note $00
	snd_noteex PRESET_00
	snd_note $00
	snd_noteex PRESET_02
	snd_note $00
	snd_ret
.sub3:
	snd_noteex PRESET_01, NOTELEN_03
	snd_note $00
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_note $00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_03
	snd_note $00
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_note $00
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_note $00
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_note $00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_03
	snd_note $00
	snd_noteex PRESET_01
	snd_note $00
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_00
	snd_noteex PRESET_08
	snd_note $00
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_note $00, NOTELEN_06
	snd_noteex PRESET_00, NOTELEN_03
	snd_note $00
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_note $00, NOTELEN_06
	snd_noteex PRESET_00, NOTELEN_03
	snd_noteex PRESET_00
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_note $00, NOTELEN_06
	snd_noteex PRESET_01, NOTELEN_03
	snd_note $00
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_note $00, NOTELEN_06
	snd_noteex PRESET_01, NOTELEN_03
	snd_note $00
	snd_noteex PRESET_01
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_ret
SndHeader_21:
	db 4 ; Number of slots
.slot0:
	db SNDSLOT0 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 13 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -12 ; iSndChInfo_NoteIdBase
	db 102 ; iSndChInfo_Speed
	db SNDCH_PULSE1 ; iSndChInfo_ChId
	dw SndData_21_Ch1 ; Data pointer
	nrx1 SNDDUTY_12, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot1:
	db SNDSLOT1 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 8 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -12 ; iSndChInfo_NoteIdBase
	db 102 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_21_Ch2 ; Data pointer
	nrx1 SNDDUTY_12, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot2:
	db SNDSLOT2 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db 0 ; iSndChInfo_NoteIdBase
	db 102 ; iSndChInfo_Speed
	db SNDCH_WAVE ; iSndChInfo_ChId
	dw SndData_21_Ch3 ; Data pointer
	db WAVE_00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot3:
	db SNDSLOT3 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db 0 ; iSndChInfo_NoteIdBase
	db 102 ; iSndChInfo_Speed
	db SNDCH_NOISE ; iSndChInfo_ChId
	dw SndData_21_Ch4 ; Data pointer
	nrx1 SNDDUTY_12, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_21_Ch1:
	snd_duty SNDDUTY_25, $00
	snd_inc_vol -1
	snd_vibrato VIBRATO_5F
	snd_note $33, NOTELEN_30
	snd_vibrato VIBRATO_NONE
	snd_pitchbend 30
	snd_inc_vol 2
	snd_note $38, NOTELEN_03
	snd_note $33
	snd_note $00
	snd_note $31
	snd_note $00
	snd_note $30
	snd_note $00
	snd_note $31
	snd_note $00
	snd_note $30
	snd_note $31
	snd_note $33
	snd_pitchbend 0
	snd_inc_vol -2
	snd_vibrato VIBRATO_62
	snd_note $2E, NOTELEN_0C
	snd_vibrato VIBRATO_5F
	snd_instrument INSTR_65
	snd_note $2C, NOTELEN_30
	snd_instrument INSTR_NONE
	snd_vibrato VIBRATO_NONE
	snd_pitchbend 50
	snd_inc_vol 2
	snd_note $38, NOTELEN_03
	snd_note $2C
	snd_note $00
	snd_note $30
	snd_note $00
	snd_note $31
	snd_note $00
	snd_note $33
	snd_note $00
	snd_note $31
	snd_note $00
	snd_note $33
	snd_pitchbend 0
	snd_inc_vol -2
	snd_vibrato VIBRATO_62
	snd_note $31
	snd_vibrato VIBRATO_NONE
	snd_note $30
	snd_note $2E, NOTELEN_06
	snd_vibrato VIBRATO_5F
	snd_instrument INSTR_65
	snd_note $2C, NOTELEN_30
	snd_instrument INSTR_NONE
	snd_vibrato VIBRATO_NONE
	snd_note $2C, NOTELEN_03
	snd_note $31
	snd_note $00
	snd_note $33
	snd_note $00
	snd_note $33
	snd_note $00
	snd_note $35
	snd_note $00
	snd_note $36
	snd_note $35
	snd_note $36
	snd_note $35, NOTELEN_06
	snd_note $33
	snd_note $38, NOTELEN_03
	snd_note $2C
	snd_note $00
	snd_note $2C
	snd_note $00
	snd_note $2C
	snd_note $00
	snd_note $36
	snd_note $35
	snd_note $00
	snd_note $33
	snd_note $00
	snd_note $31
	snd_note $33, NOTELEN_09
	snd_note $33, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $33, NOTELEN_03
	snd_note $00
	snd_note $33
	snd_note $00
	snd_vibrato VIBRATO_63
	snd_note $33, NOTELEN_09
	snd_vibrato VIBRATO_NONE
	snd_note $00, NOTELEN_12
	snd_vibrato VIBRATO_5F
	snd_note $35, NOTELEN_30
	snd_vibrato VIBRATO_62
	snd_note $36, NOTELEN_12
	snd_vibrato VIBRATO_NONE
	snd_note $35
	snd_note $31, NOTELEN_0C
	snd_vibrato VIBRATO_62
	snd_note $33, NOTELEN_12
	snd_vibrato VIBRATO_NONE
	snd_instrument INSTR_65
	snd_note $2C, NOTELEN_CUSTOM, $4E
	snd_instrument INSTR_NONE
	snd_vibrato VIBRATO_5F
	snd_note $35, NOTELEN_30
	snd_vibrato VIBRATO_NONE
	snd_note $36, NOTELEN_12
	snd_note $35
	snd_note $31, NOTELEN_0C
	snd_vibrato VIBRATO_62
	snd_note $33, NOTELEN_12
	snd_vibrato VIBRATO_NONE
	snd_instrument INSTR_65
	snd_note $38, NOTELEN_CUSTOM, $4E
	snd_instrument INSTR_NONE
	snd_vibrato VIBRATO_62
	snd_note $36, NOTELEN_06
	snd_vibrato VIBRATO_NONE
	snd_note $35, NOTELEN_03
	snd_note $33
	snd_note $00, NOTELEN_06
	snd_note $36
	snd_note $35, NOTELEN_03
	snd_note $33
	snd_note $00, NOTELEN_12
	snd_vibrato VIBRATO_62
	snd_note $36, NOTELEN_06
	snd_vibrato VIBRATO_NONE
	snd_note $35, NOTELEN_03
	snd_note $33
	snd_note $31
	snd_note $33
	snd_note $00
	snd_note $33, NOTELEN_06
	snd_note $38, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $38, NOTELEN_03
	snd_note $00, NOTELEN_09
	snd_vibrato VIBRATO_62
	snd_note $36, NOTELEN_06
	snd_vibrato VIBRATO_NONE
	snd_note $35, NOTELEN_03
	snd_note $33
	snd_note $00, NOTELEN_06
	snd_note $36
	snd_note $35, NOTELEN_03
	snd_note $33
	snd_note $00, NOTELEN_12
	snd_note $2C, NOTELEN_03
	snd_note $38, NOTELEN_04
	snd_note $00, NOTELEN_02
	snd_note $38, NOTELEN_03
	snd_note $00, NOTELEN_0C
	snd_vibrato VIBRATO_NONE
	snd_note $36, NOTELEN_09
	snd_vibrato VIBRATO_NONE
	snd_pitchbend 30
	snd_note $35
	snd_note $31, NOTELEN_06
	snd_pitchbend 0
	snd_inc_vol 2
	snd_jp SndData_21_Ch1
SndData_21_Ch2:
	snd_duty SNDDUTY_25, $00
	snd_inc_vol -5
	snd_inc_freq_offset -2
	snd_note $00, NOTELEN_09
	snd_vibrato VIBRATO_5F
	snd_note $33, NOTELEN_30
	snd_vibrato VIBRATO_NONE
	snd_pitchbend 30
	snd_inc_vol 2
	snd_note $38, NOTELEN_03
	snd_note $33
	snd_note $00
	snd_note $31
	snd_note $00
	snd_note $30
	snd_note $00
	snd_note $31
	snd_note $00
	snd_note $30
	snd_note $31
	snd_note $33
	snd_pitchbend 0
	snd_inc_vol -2
	snd_vibrato VIBRATO_62
	snd_note $2E, NOTELEN_0C
	snd_vibrato VIBRATO_5F
	snd_instrument INSTR_65
	snd_note $2C, NOTELEN_30
	snd_instrument INSTR_NONE
	snd_vibrato VIBRATO_NONE
	snd_pitchbend 50
	snd_inc_vol 2
	snd_note $38, NOTELEN_03
	snd_note $2C
	snd_note $00
	snd_note $30
	snd_note $00
	snd_note $31
	snd_note $00
	snd_note $33
	snd_note $00
	snd_note $31
	snd_note $00
	snd_note $33
	snd_pitchbend 0
	snd_inc_vol -2
	snd_vibrato VIBRATO_62
	snd_note $31
	snd_vibrato VIBRATO_NONE
	snd_note $30
	snd_note $2E, NOTELEN_06
	snd_vibrato VIBRATO_5F
	snd_instrument INSTR_65
	snd_note $2C, NOTELEN_30
	snd_instrument INSTR_NONE
	snd_vibrato VIBRATO_NONE
	snd_note $2C, NOTELEN_03
	snd_note $31
	snd_note $00
	snd_note $33
	snd_note $00
	snd_note $33
	snd_note $00
	snd_note $35
	snd_note $00
	snd_note $36
	snd_note $35
	snd_note $36
	snd_note $35, NOTELEN_06
	snd_note $33
	snd_note $38, NOTELEN_03
	snd_note $2C
	snd_note $00
	snd_note $2C
	snd_note $00
	snd_note $2C
	snd_note $00
	snd_note $36
	snd_note $35
	snd_note $00
	snd_note $33
	snd_note $00
	snd_note $31
	snd_note $33, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $33, NOTELEN_03
	snd_note $00
	snd_note $33
	snd_note $00
	snd_vibrato VIBRATO_63
	snd_note $33, NOTELEN_09
	snd_vibrato VIBRATO_NONE
	snd_note $00, NOTELEN_CUSTOM, $1B
	snd_vibrato VIBRATO_5F
	snd_note $35, NOTELEN_30
	snd_vibrato VIBRATO_62
	snd_note $36, NOTELEN_12
	snd_vibrato VIBRATO_NONE
	snd_note $35
	snd_note $31, NOTELEN_0C
	snd_vibrato VIBRATO_62
	snd_note $33, NOTELEN_12
	snd_vibrato VIBRATO_NONE
	snd_instrument INSTR_65
	snd_inc_vol -1
	snd_note $2C, NOTELEN_CUSTOM, $4E
	snd_inc_vol 1
	snd_instrument INSTR_NONE
	snd_vibrato VIBRATO_5F
	snd_note $35, NOTELEN_30
	snd_vibrato VIBRATO_NONE
	snd_note $36, NOTELEN_12
	snd_note $35
	snd_note $31, NOTELEN_0C
	snd_vibrato VIBRATO_62
	snd_note $33, NOTELEN_12
	snd_vibrato VIBRATO_NONE
	snd_instrument INSTR_65
	snd_inc_vol -1
	snd_note $38, NOTELEN_CUSTOM, $4E
	snd_inc_vol 1
	snd_instrument INSTR_NONE
	snd_vibrato VIBRATO_62
	snd_note $36, NOTELEN_06
	snd_vibrato VIBRATO_NONE
	snd_note $35, NOTELEN_03
	snd_note $33
	snd_note $00, NOTELEN_06
	snd_note $36
	snd_note $35, NOTELEN_03
	snd_note $33
	snd_note $00, NOTELEN_12
	snd_vibrato VIBRATO_62
	snd_note $36, NOTELEN_06
	snd_vibrato VIBRATO_NONE
	snd_note $35, NOTELEN_03
	snd_note $33
	snd_note $31
	snd_note $33
	snd_note $00
	snd_note $33, NOTELEN_06
	snd_note $38, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $38, NOTELEN_03
	snd_note $00, NOTELEN_09
	snd_vibrato VIBRATO_62
	snd_note $36, NOTELEN_06
	snd_vibrato VIBRATO_NONE
	snd_note $35, NOTELEN_03
	snd_note $33
	snd_note $00, NOTELEN_06
	snd_note $36
	snd_note $35, NOTELEN_03
	snd_note $33
	snd_note $00, NOTELEN_12
	snd_note $2C, NOTELEN_03
	snd_note $38, NOTELEN_04
	snd_note $00, NOTELEN_02
	snd_note $38, NOTELEN_03
	snd_note $00, NOTELEN_0C
	snd_vibrato VIBRATO_NONE
	snd_note $36, NOTELEN_09
	snd_vibrato VIBRATO_NONE
	snd_pitchbend 30
	snd_note $00, NOTELEN_06
	snd_pitchbend 0
	snd_inc_freq_offset 2
	snd_inc_vol 5
	snd_jp SndData_21_Ch2
SndData_21_Ch3:
	snd_wave WAVE_0D
	snd_inc_vol 5
	snd_note $14, NOTELEN_03
	snd_note $00
	snd_note $19
	snd_note $1B, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_note $14
	snd_note $00
	snd_note $19
	snd_note $1B, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_note $1B, NOTELEN_06
	snd_note $20
	snd_note $14, NOTELEN_03
	snd_note $00
	snd_note $19
	snd_note $1B, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_note $14
	snd_note $00
	snd_note $19
	snd_note $1B, NOTELEN_06
	snd_note $1E
	snd_note $00, NOTELEN_09
	snd_note $14, NOTELEN_03
	snd_note $00
	snd_note $19
	snd_note $1B, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_note $14
	snd_note $00
	snd_note $20
	snd_note $14
	snd_note $20, NOTELEN_06
	snd_note $1E
	snd_note $1D
	snd_note $0F, NOTELEN_03
	snd_note $1B
	snd_note $00
	snd_note $0F
	snd_note $1B
	snd_note $00
	snd_note $0F
	snd_note $1B
	snd_note $00, NOTELEN_18
	snd_note $14, NOTELEN_03
	snd_note $00
	snd_note $19
	snd_note $1B, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_note $14
	snd_note $00
	snd_note $19
	snd_note $1B, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_note $1B, NOTELEN_06
	snd_note $20
	snd_note $14, NOTELEN_03
	snd_note $00
	snd_note $19
	snd_note $1B, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_note $14
	snd_note $00
	snd_note $19
	snd_note $1B, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_note $1B, NOTELEN_06
	snd_note $20
	snd_note $20, NOTELEN_03
	snd_note $14
	snd_note $14
	snd_note $18
	snd_note $00
	snd_note $19
	snd_note $00
	snd_note $1B
	snd_note $00
	snd_note $1E
	snd_note $00
	snd_note $1E
	snd_note $1D
	snd_note $1D
	snd_note $1B, NOTELEN_06
	snd_note $38, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $38, NOTELEN_03
	snd_note $00
	snd_note $38
	snd_note $00
	snd_note $38, NOTELEN_09
	snd_note $00, NOTELEN_12
	snd_note $0D, NOTELEN_06
	snd_note $00, NOTELEN_0C
	snd_note $19, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_note $19, NOTELEN_09
	snd_note $0D, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $0D
	snd_note $00, NOTELEN_03
	snd_note $0D, NOTELEN_09
	snd_note $19, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $14
	snd_note $0F
	snd_note $00, NOTELEN_03
	snd_note $11, NOTELEN_06
	snd_note $00, NOTELEN_03
	snd_note $12, NOTELEN_06
	snd_note $0C, NOTELEN_09
	snd_note $08, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $08
	snd_note $00, NOTELEN_0C
	snd_note $08, NOTELEN_03
	snd_note $12
	snd_note $11
	snd_note $12
	snd_note $14, NOTELEN_06
	snd_note $12, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_note $11, NOTELEN_03
	snd_note $00
	snd_note $0F, NOTELEN_02
	snd_note $00, NOTELEN_04
	snd_note $14, NOTELEN_0C
	snd_note $00, NOTELEN_CUSTOM, $0F
	snd_note $0D, NOTELEN_06
	snd_note $00, NOTELEN_0C
	snd_note $19, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_note $19, NOTELEN_09
	snd_note $0D, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $0D
	snd_note $00, NOTELEN_03
	snd_note $0D, NOTELEN_06
	snd_note $00, NOTELEN_0C
	snd_note $19, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_note $19, NOTELEN_09
	snd_note $0D, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $0D
	snd_note $00, NOTELEN_03
	snd_note $18
	snd_note $08, NOTELEN_06
	snd_note $08
	snd_note $00, NOTELEN_0C
	snd_note $0F, NOTELEN_03
	snd_note $08
	snd_note $00
	snd_note $08
	snd_note $00, NOTELEN_09
	snd_note $08, NOTELEN_03
	snd_note $00
	snd_note $14
	snd_note $08
	snd_note $00
	snd_note $14
	snd_note $08
	snd_note $00
	snd_note $14, NOTELEN_09
	snd_note $0F
	snd_note $08, NOTELEN_06
	snd_note $14, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $0F, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $08, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $0F, NOTELEN_03
	snd_note $00, NOTELEN_06
	snd_note $1B, NOTELEN_03
	snd_vibrato VIBRATO_63
	snd_note $0F, NOTELEN_09
	snd_vibrato VIBRATO_62
	snd_note $18, NOTELEN_06
	snd_vibrato VIBRATO_NONE
	snd_note $19, NOTELEN_03
	snd_note $1B
	snd_note $18
	snd_note $14
	snd_note $00
	snd_note $14
	snd_note $00
	snd_note $2C
	snd_note $00, NOTELEN_06
	snd_note $2C, NOTELEN_03
	snd_note $00, NOTELEN_09
	snd_note $14, NOTELEN_06
	snd_note $20, NOTELEN_03
	snd_note $0F
	snd_note $00, NOTELEN_06
	snd_note $14, NOTELEN_03
	snd_note $00
	snd_note $1B
	snd_note $20
	snd_note $00, NOTELEN_12
	snd_note $08, NOTELEN_03
	snd_note $08
	snd_note $00
	snd_note $08, NOTELEN_02
	snd_note $00, NOTELEN_CUSTOM, $0D
	snd_note $12, NOTELEN_09
	snd_note $11
	snd_note $0D, NOTELEN_06
	snd_inc_vol -5
	snd_jp SndData_21_Ch3
SndData_21_Ch4:
	snd_call .sub0
	snd_call .sub1
	snd_call .sub0
	snd_call .sub2
	snd_call .sub3
	snd_call .sub3
	snd_call .sub3
	snd_call .sub3
	snd_call .sub3
	snd_call .sub3
	snd_call .sub3
	snd_call .sub4
	snd_call .sub5
	snd_jp SndData_21_Ch4
.sub0:
	snd_noteex PRESET_01, NOTELEN_03
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_01
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_01
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_ret
.sub1:
	snd_noteex PRESET_01, NOTELEN_03
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_01
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_01
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_04
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_ret
.sub2:
	snd_noteex PRESET_01, NOTELEN_03
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_01
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_01
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_04
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_ret
.sub3:
	snd_noteex PRESET_01, NOTELEN_03
	snd_noteex PRESET_02
	snd_noteex PRESET_03
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_03
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_03
	snd_noteex PRESET_01
	snd_ret
.sub4:
	snd_noteex PRESET_01, NOTELEN_03
	snd_noteex PRESET_04
	snd_noteex PRESET_00
	snd_noteex PRESET_01
	snd_noteex PRESET_04
	snd_noteex PRESET_00
	snd_noteex PRESET_03
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_04
	snd_noteex PRESET_01
	snd_noteex PRESET_01
	snd_ret
.sub5:
	snd_noteex PRESET_00
	snd_note $00
	snd_noteex PRESET_01
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_04
	snd_noteex PRESET_01
	snd_noteex PRESET_04
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
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_04
	snd_noteex PRESET_01
	snd_noteex PRESET_01
	snd_noteex PRESET_02
	snd_noteex PRESET_01
	snd_noteex PRESET_00
	snd_noteex PRESET_03
	snd_noteex PRESET_02
	snd_noteex PRESET_04
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_02
	snd_noteex PRESET_02
	snd_noteex PRESET_00
	snd_noteex PRESET_04
	snd_noteex PRESET_02
	snd_noteex PRESET_04
	snd_noteex PRESET_00
	snd_ret
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
SndHeader_11:
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
SndHeader_12:
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
SndHeader_53:
	db 1 ; Number of slots
.slot0:
	db SNDSLOT4 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -13 ; iSndChInfo_NoteIdBase
	db 0 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_53_Ch2 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_53_Ch2:
	snd_note $2B, NOTELEN_01
	snd_note $37
	snd_note $43
	snd_note $4F
	snd_note $5B
	snd_inc_vol -6
	snd_note $5B
	snd_end
SndHeader_54:
	db 1 ; Number of slots
.slot0:
	db SNDSLOTPAUSE ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -13 ; iSndChInfo_NoteIdBase
	db 0 ; iSndChInfo_Speed
	db SNDCH_WAVE ; iSndChInfo_ChId
	dw SndData_54_Ch3 ; Data pointer
	db WAVE_10 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_54_Ch3:
	snd_sets3
	snd_note $41, NOTELEN_01
	snd_note $43
	snd_note $46
	snd_note $00
	snd_note $39
	snd_note $3C
	snd_note $3E
	snd_note $00
	snd_note $41, NOTELEN_01
	snd_note $43
	snd_note $46
	snd_note $00
	snd_note $39
	snd_note $3C
	snd_note $3E
	snd_clrs3
	snd_note $00
	snd_end
SndHeader_55:
	db 2 ; Number of slots
.slot0:
	db SNDSLOT4 ; Slot location
	db SST_CH4 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db 0 ; iSndChInfo_NoteIdBase
	db 0 ; iSndChInfo_Speed
	db SNDCH_NOISE ; iSndChInfo_ChId
	dw SndData_55_Ch4 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot1:
	db SNDSLOT5 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -25 ; iSndChInfo_NoteIdBase
	db 0 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_55_Ch2 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_55_Ch4:
	snd_fade SSF_FADEOUT, 0, 144
	.loop:
		snd_noise 7, 0, 0
		snd_note $19, NOTELEN_03
		snd_noise 6, 0, 0
		snd_note $19
		snd_noise 7, 1, 0
		snd_note $19
		snd_noise 6, 1, 0
		snd_note $19
		snd_noise 7, 2, 0
		snd_note $19
		snd_noise 6, 2, 0
		snd_note $19
		snd_noise 7, 3, 0
		snd_note $19
		snd_noise 6, 3, 0
		snd_note $19
		snd_noise 7, 4, 0
		snd_note $19
		snd_noise 6, 4, 0
		snd_note $19
		snd_noise 7, 5, 0
		snd_note $19
		snd_jpfade .loop
	snd_end
SndData_55_Ch2:
	snd_note_slide SSE_NSDOWN, 48
	snd_var iSndChInfo_LoopTimer0, $08
	.loop:
		snd_note $27, NOTELEN_04
		snd_inc_base_note -1
		snd_inc_vol -2
		snd_djnz iSndChInfo_LoopTimer0, .loop
	snd_end
SndHeader_56:
	db 1 ; Number of slots
.slot0:
	db SNDSLOT4 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -20 ; iSndChInfo_NoteIdBase
	db 0 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_56_Ch2 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_56_Ch2:
	snd_fade SSF_FADEOUT, 0, 176
	snd_sets3
	snd_note $3A, NOTELEN_01
	snd_note $3C
	snd_note $3E
	snd_note $40
	snd_note $3D
	snd_note $3A
	snd_note $37
	snd_note $34
	snd_note $31
	snd_note $2F
	snd_note $31
	snd_note $34
	snd_note $37
	snd_note $3A
	snd_note $3D
	snd_note $40
	snd_note $3D
	snd_note $3A
	snd_note $37
	snd_note $34
	snd_note $31
	snd_note $2F
	snd_end
SndHeader_57:
	db 2 ; Number of slots
.slot0:
	db SNDSLOT4 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -13 ; iSndChInfo_NoteIdBase
	db 255 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_57_Ch2 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot1:
	db SNDSLOT5 ; Slot location
	db SST_CH4 ; iSndChInfo_Status
	db 4 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -13 ; iSndChInfo_NoteIdBase
	db 255 ; iSndChInfo_Speed
	db SNDCH_NOISE ; iSndChInfo_ChId
	dw SndData_57_Ch4 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_57_Ch2:
	snd_note $00, NOTELEN_04
	snd_sets3
	snd_var iSndChInfo_LoopTimer0, $03
	.loop:
		snd_note $3B, NOTELEN_01
		snd_note $35
		snd_note $2F
		snd_note $23
		snd_note $00, NOTELEN_04
		snd_inc_vol -4
		snd_djnz iSndChInfo_LoopTimer0, .loop
	snd_end
SndData_57_Ch4:
	snd_noise 4, 5, 0
	snd_note $25, NOTELEN_01
	snd_noise 4, 3, 0
	snd_inc_vol 4
	snd_note $25
	snd_noise 4, 1, 0
	snd_inc_vol 4
	snd_note $25
	snd_noise 3, 1, 0
	snd_inc_vol 4
	snd_note $25
	snd_end
SndHeader_58:
	db 2 ; Number of slots
.slot0:
	db SNDSLOT4 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 10 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db 0 ; iSndChInfo_NoteIdBase
	db 150 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_58_Ch2 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot1:
	db SNDSLOT5 ; Slot location
	db SST_CH4 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db 0 ; iSndChInfo_NoteIdBase
	db 150 ; iSndChInfo_Speed
	db SNDCH_NOISE ; iSndChInfo_ChId
	dw SndData_58_Ch4 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_58_Ch2:
	snd_note $00, NOTELEN_09
	snd_sets3
	snd_note $47, NOTELEN_03
	snd_note $53
	snd_note $47
	snd_note $53
	snd_note $47
	snd_note $53
	snd_note $47
	snd_var iSndChInfo_LoopTimer0, $05
	.loop:
		snd_note $4D
		snd_note $59
		snd_inc_vol -2
		snd_djnz iSndChInfo_LoopTimer0, .loop
	snd_end
SndData_58_Ch4:
	snd_noise 3, 2, 0
	snd_var iSndChInfo_LoopTimer0, $05
	.loop:
		snd_note $25, NOTELEN_CUSTOM, $06
		snd_inc_vol -3
		snd_djnz iSndChInfo_LoopTimer0, .loop
	snd_end
SndHeader_59:
	db 4 ; Number of slots
.slot0:
	db SNDSLOT4 ; Slot location
	db SST_CH123|SST_PRIORITY|SST_7 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -18 ; iSndChInfo_NoteIdBase
	db 157 ; iSndChInfo_Speed
	db SNDCH_PULSE1 ; iSndChInfo_ChId
	dw SndData_59_Ch1 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot1:
	db SNDSLOT5 ; Slot location
	db SST_CH123|SST_7 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -6 ; iSndChInfo_NoteIdBase
	db 157 ; iSndChInfo_Speed
	db SNDCH_WAVE ; iSndChInfo_ChId
	dw SndData_59_Ch3 ; Data pointer
	db $80 ; [PLACEHOLDER] ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot2:
	db SNDSLOT6 ; Slot location
	db SST_CH123|SST_7 ; iSndChInfo_Status
	db 10 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -18 ; iSndChInfo_NoteIdBase
	db 157 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_59_Ch2 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot3:
	db SNDSLOT7 ; Slot location
	db SST_CH4|SST_7 ; iSndChInfo_Status
	db 0 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db 0 ; iSndChInfo_NoteIdBase
	db 157 ; iSndChInfo_Speed
	db SNDCH_NOISE ; iSndChInfo_ChId
	dw SndData_59_Ch4 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_59_Ch2:
	snd_note $00, NOTELEN_CUSTOM, $05
	snd_inc_freq_offset -2
SndData_59_Ch1:
	snd_duty SNDDUTY_25, $00
	snd_note $2F, NOTELEN_03
	snd_note $2C
	snd_note $2F
	snd_note $34
	snd_note $32
	snd_note $2D
	snd_note $32
	snd_fade SSF_FADEOUT, 0, 72
	snd_note $38
	snd_note $34
	snd_note $2C
	snd_note $2F
	snd_note $34
	snd_note $38
	snd_note $2C
	snd_note $2F
	snd_note $34
	snd_note $38
	snd_note $2C
	snd_note $2F
	snd_note $34
	snd_note $38
	snd_end
SndData_59_Ch3:
	snd_wave WAVE_09
	snd_note $34, NOTELEN_03
	snd_note $2F
	snd_note $34
	snd_note $38
	snd_note $36
	snd_note $32
	snd_note $36
	snd_fade SSF_FADEOUT, 0, 72
	snd_note $3D
	snd_note $3B
	snd_note $2F
	snd_note $34
	snd_note $38
	snd_note $3B
	snd_note $2F
	snd_note $34
	snd_note $38
	snd_note $3B
	snd_note $2F
	snd_note $34
	snd_note $38
	snd_note $3B
	snd_end
SndData_59_Ch4:
	snd_note $25, NOTELEN_CUSTOM, $3F
	snd_end
SndHeader_29:
	db 1 ; Number of slots
.slot0:
	db SNDSLOT4 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 12 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -25 ; iSndChInfo_NoteIdBase
	db 0 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_29_Ch2 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_29_Ch2:
	snd_sets3
	snd_note $50, NOTELEN_01
	snd_inc_vol -5
	snd_note $44
	snd_end
SndHeader_2A:
	db 1 ; Number of slots
.slot0:
	db SNDSLOT4 ; Slot location
	db SST_CH123|SST_PRIORITY ; iSndChInfo_Status
	db 11 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -12 ; iSndChInfo_NoteIdBase
	db 0 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_2A_Ch2 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_2A_Ch2:
	snd_note $4D, NOTELEN_01
	snd_note $40
	snd_end
SndHeader_2B:
	db 1 ; Number of slots
.slot0:
	db SNDSLOT5 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 12 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -11 ; iSndChInfo_NoteIdBase
	db 0 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_2B_Ch2 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_2B_Ch2:
	snd_var iSndChInfo_LoopTimer0, $03
	.loop:
		snd_sets3
		snd_note $4E, NOTELEN_01
		snd_note $42, NOTELEN_06
		snd_clrs3
		snd_inc_vol -7
		snd_djnz iSndChInfo_LoopTimer0, .loop
	snd_end
SndHeader_2C:
	db 1 ; Number of slots
.slot0:
	db SNDSLOT4 ; Slot location
	db SST_CH4 ; iSndChInfo_Status
	db 11 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -12 ; iSndChInfo_NoteIdBase
	db 0 ; iSndChInfo_Speed
	db SNDCH_NOISE ; iSndChInfo_ChId
	dw SndData_2C_Ch4 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_2C_Ch4:
	snd_noise_sweep 3, 0, 0
	snd_noise 11, 0, 0
	snd_note $44, NOTELEN_02
	snd_noise_sweep 1, 0, 0
	snd_noise 0, 0, 0
	snd_note $68, NOTELEN_03
	snd_end
SndHeader_2D:
	db 2 ; Number of slots
.slot0:
	db SNDSLOT5 ; Slot location
	db SST_CH4 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -12 ; iSndChInfo_NoteIdBase
	db 0 ; iSndChInfo_Speed
	db SNDCH_NOISE ; iSndChInfo_ChId
	dw SndData_2D_Ch4 ; Data pointer
	nrx1 SNDDUTY_12, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot1:
	db SNDSLOT6 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 13 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -12 ; iSndChInfo_NoteIdBase
	db 0 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_2D_Ch2 ; Data pointer
	nrx1 SNDDUTY_12, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_2D_Ch2:
	snd_note $1D, NOTELEN_01
	snd_note $19
	snd_end
SndData_2D_Ch4:
	snd_note $00, NOTELEN_02
	snd_noise 3, 7, 0
	snd_note $25, NOTELEN_02
	snd_noteex PRESET_09, NOTELEN_CUSTOM, $1E
	snd_end
SndHeader_2E:
	db 1 ; Number of slots
.slot0:
	db SNDSLOT5 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 13 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -24 ; iSndChInfo_NoteIdBase
	db 0 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_2E_Ch2 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_2E_Ch2:
	snd_toggle_keyhold
	snd_fade SSF_FADEOUT, 4, 255
	snd_note $23, NOTELEN_01
	snd_note $20
	snd_note_slide SSE_NSUP, 5
	snd_note $20, NOTELEN_08
	snd_end
SndHeader_2F:
	db 1 ; Number of slots
.slot0:
	db SNDSLOT7 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -12 ; iSndChInfo_NoteIdBase
	db 0 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_2F_Ch2 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_2F_Ch2:
	snd_inc_vol -5
	snd_fade SSF_FADEOUT, 1, 64
	snd_inc_base_note -8
	.loop:
		snd_note_slide SSE_NSUP, 3
		snd_note $44, NOTELEN_03
		snd_note $4D
		snd_pan SNDOUT_CHL
		snd_note $44, NOTELEN_03
		snd_note $4D
		snd_pan SNDOUT_CHR
		snd_note $44, NOTELEN_03
		snd_note $4D
		snd_pan SNDOUT_CHALL
		snd_jpfade .loop
	snd_end
SndHeader_30:
	db 1 ; Number of slots
.slot0:
	db SNDSLOT7 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -10 ; iSndChInfo_NoteIdBase
	db 0 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_2F_Ch2 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndHeader_31:
	db 1 ; Number of slots
.slot0:
	db SNDSLOT7 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -8 ; iSndChInfo_NoteIdBase
	db 0 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_2F_Ch2 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndHeader_32:
	db 1 ; Number of slots
.slot0:
	db SNDSLOT7 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -6 ; iSndChInfo_NoteIdBase
	db 0 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_2F_Ch2 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndHeader_33:
	db 1 ; Number of slots
.slot0:
	db SNDSLOT7 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -5 ; iSndChInfo_NoteIdBase
	db 0 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_2F_Ch2 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndHeader_34:
	db 1 ; Number of slots
.slot0:
	db SNDSLOT7 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -3 ; iSndChInfo_NoteIdBase
	db 0 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_2F_Ch2 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndHeader_35:
	db 1 ; Number of slots
.slot0:
	db SNDSLOT7 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -1 ; iSndChInfo_NoteIdBase
	db 0 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_2F_Ch2 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndHeader_36:
	db 1 ; Number of slots
.slot0:
	db SNDSLOT7 ; Slot location
	db SST_CH123|SST_PRIORITY ; iSndChInfo_Status
	db 10 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -18 ; iSndChInfo_NoteIdBase
	db 0 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_36_Ch2 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_36_Ch2:
	snd_var iSndChInfo_LoopTimer0, $0C
	.loop:
		snd_note_slide SSE_NSUP, 2
		snd_note $3D, NOTELEN_03
		snd_inc_base_note 2
		snd_djnz iSndChInfo_LoopTimer0, .loop
	snd_end
SndHeader_37:
	db 1 ; Number of slots
.slot0:
	db SNDSLOT4 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 9 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -12 ; iSndChInfo_NoteIdBase
	db 0 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_37_Ch2 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_37_Ch2:
	snd_note_slide SSE_NSDOWN, 2
	snd_note $55, NOTELEN_03
	snd_note_slide SSE_NSUP, 2
	snd_inc_vol -5
	snd_note $31
	snd_end
SndHeader_38:
	db 2 ; Number of slots
.slot0:
	db SNDSLOT6 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 12 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -22 ; iSndChInfo_NoteIdBase
	db 0 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_38_Ch2 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot1:
	db SNDSLOT7 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 6 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -22 ; iSndChInfo_NoteIdBase
	db 0 ; iSndChInfo_Speed
	db SNDCH_PULSE1 ; iSndChInfo_ChId
	dw SndData_38_Ch1 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_38_Ch1:
	snd_note $00, NOTELEN_0C
	snd_inc_freq_offset -2
SndData_38_Ch2:
	snd_sets3
	snd_fade SSF_FADEOUT, 1, 64
	snd_note_slide SSE_NSDOWN, 2
	snd_note $2E, NOTELEN_04
	snd_note_slide SSE_NSDOWN, 0
	snd_vibrato VIBRATO_05
	snd_var iSndChInfo_LoopTimer0, $03
	.loop:
		snd_note $2C, NOTELEN_0C
		snd_inc_base_note 2
		snd_djnz iSndChInfo_LoopTimer0, .loop
	snd_end
SndHeader_39:
	db 1 ; Number of slots
.slot0:
	db SNDSLOT4 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 9 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -9 ; iSndChInfo_NoteIdBase
	db 0 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_39_Ch2 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_39_Ch2:
	snd_inc_freq_offset -7
	snd_fade SSF_FADEOUT, 12, 255
	snd_note $3F, NOTELEN_01
	snd_note $4B
	snd_note $52, NOTELEN_04
	snd_end
SndHeader_3A:
	db 3 ; Number of slots
.slot0:
	db SNDSLOT4 ; Slot location
	db SST_CH123|SST_PRIORITY ; iSndChInfo_Status
	db 12 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -12 ; iSndChInfo_NoteIdBase
	db 0 ; iSndChInfo_Speed
	db SNDCH_PULSE1 ; iSndChInfo_ChId
	dw SndData_3A_Ch1 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot1:
	db SNDSLOT5 ; Slot location
	db SST_CH123|SST_PRIORITY ; iSndChInfo_Status
	db 12 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -12 ; iSndChInfo_NoteIdBase
	db 0 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_3A_Ch2 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot2:
	db SNDSLOT6 ; Slot location
	db SST_CH123|SST_PRIORITY ; iSndChInfo_Status
	db 8 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -20 ; iSndChInfo_NoteIdBase
	db 0 ; iSndChInfo_Speed
	db SNDCH_WAVE ; iSndChInfo_ChId
	dw SndData_3A_Ch3 ; Data pointer
	db WAVE_00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_3A_Ch2:
	snd_note $00, NOTELEN_04
SndData_3A_Ch1:
	snd_vibrato VIBRATO_09
	snd_note $31, NOTELEN_CUSTOM, $48
	snd_sets3
	snd_note_slide SSE_NSUP, 4
	snd_note $49, NOTELEN_01
	snd_note $20, NOTELEN_CUSTOM, $30
	snd_end
SndData_3A_Ch3:
	snd_var iSndChInfo_LoopTimer0, $04
	.loop:
		snd_note_slide SSE_NSDOWN, 1
		snd_note $55, NOTELEN_0C
		snd_note_slide SSE_NSUP, 2
		snd_note $31, NOTELEN_0C
		snd_djnz iSndChInfo_LoopTimer0, .loop
	snd_end
SndHeader_3B:
	db 1 ; Number of slots
.slot0:
	db SNDSLOT4 ; Slot location
	db SST_CH4 ; iSndChInfo_Status
	db 12 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -12 ; iSndChInfo_NoteIdBase
	db 0 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_3B_Ch2 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_3B_Ch2:
	snd_noise_sweep 0, 7, 0
	snd_note $33, NOTELEN_01
	snd_note $6A
	snd_note $62
	snd_end
SndHeader_3C:
	db 2 ; Number of slots
.slot0:
	db SNDSLOT5 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 10 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -12 ; iSndChInfo_NoteIdBase
	db 0 ; iSndChInfo_Speed
	db SNDCH_PULSE1 ; iSndChInfo_ChId
	dw SndData_3C_Ch1 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot1:
	db SNDSLOT6 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 10 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -6 ; iSndChInfo_NoteIdBase
	db 0 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_3C_Ch2 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_3C_Ch1:
	snd_note $5F, NOTELEN_01
	snd_status SST_CH4
	snd_noise_sweep 0, 7, 0
	snd_note $60, NOTELEN_02
	snd_note $3A, NOTELEN_01
	snd_status SST_CH123
	snd_note $54, NOTELEN_02
	snd_note $65, NOTELEN_01
	snd_status SST_CH4
	snd_noise_sweep 0, 7, 0
	snd_inc_base_note -12
	snd_fade SSF_FADEOUT, 4, 64
	.loop:
		snd_note $60, NOTELEN_02
		snd_note $5F
		snd_note $5D
		snd_note $59
		snd_inc_base_note -4
		snd_jpfade .loop
	snd_end
SndData_3C_Ch2:
	snd_sets3
	snd_note $29, NOTELEN_01
	snd_note $27
	snd_note $22
	snd_note $1D
	snd_note $16
	snd_inc_vol -6
	snd_instrument INSTR_02
	snd_inc_base_note 6
	snd_var iSndChInfo_LoopTimer0, $04
	.loop:
		snd_note $1D
		snd_note $00
		snd_note $16
		snd_note $27
		snd_note $1E
		snd_note $12
		snd_inc_base_note -2
		snd_djnz iSndChInfo_LoopTimer0, .loop
	snd_end
SndHeader_3D:
	db 2 ; Number of slots
.slot0:
	db SNDSLOT4 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 13 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_06 ; iSndChInfo_Vibrato
	db -12 ; iSndChInfo_NoteIdBase
	db 0 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_3D_Ch2 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot1:
	db SNDSLOT5 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 13 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_06 ; iSndChInfo_Vibrato
	db -12 ; iSndChInfo_NoteIdBase
	db 0 ; iSndChInfo_Speed
	db SNDCH_PULSE1 ; iSndChInfo_ChId
	dw SndData_3D_Ch1 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_3D_ChUnused:
	snd_note $00, NOTELEN_02 ;X
	snd_inc_freq_offset -7 ;X
SndData_3D_Ch1:
	snd_inc_freq_offset -4
SndData_3D_Ch2:
	snd_note $3F, NOTELEN_02
	snd_instrument INSTR_NONE
	snd_note $46
	snd_fade SSF_FADEOUT, 3, 208
	snd_note $4B, NOTELEN_18
	snd_end
SndHeader_3E:
	db 1 ; Number of slots
.slot0:
	db SNDSLOT5 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 11 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_07 ; iSndChInfo_Vibrato
	db -12 ; iSndChInfo_NoteIdBase
	db 0 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_3E_Ch2 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_3E_Ch2:
	snd_note $42, NOTELEN_02
	snd_end
SndHeader_3F:
	db 1 ; Number of slots
.slot0:
	db SNDSLOT5 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 12 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -12 ; iSndChInfo_NoteIdBase
	db 0 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_3F_Ch2 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_3F_Ch2:
	snd_note $1D, NOTELEN_01
	snd_status SST_CH4
	snd_noise_sweep 0, 7, 0
	snd_note $55, NOTELEN_02
	snd_inc_vol -5
	snd_note $3D
	snd_inc_vol -5
	snd_note $31
	snd_end
SndHeader_40:
	db 2 ; Number of slots
.slot0:
	db SNDSLOT5 ; Slot location
	db SST_CH4 ; iSndChInfo_Status
	db 12 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -12 ; iSndChInfo_NoteIdBase
	db 0 ; iSndChInfo_Speed
	db SNDCH_PULSE1 ; iSndChInfo_ChId
	dw SndData_40_Ch1 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot1:
	db SNDSLOT6 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 12 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -12 ; iSndChInfo_NoteIdBase
	db 0 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_40_Ch2 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_40_Ch1:
	snd_noise_sweep 0, 7, 0
	snd_note $25, NOTELEN_01
	snd_note $49
	snd_note $25
	snd_note $49
	snd_note $25
	snd_status SST_CH123
.fadeOut:
	snd_fade SSF_FADEOUT, 4, 160
	snd_note $4D, NOTELEN_12
	snd_end
SndData_40_Ch2:
	snd_note $3A, NOTELEN_01
	snd_note $00
	snd_note $2E
	snd_note $00
	snd_note $22
	snd_inc_freq_offset -5
	snd_jp SndData_40_Ch1.fadeOut
SndHeader_41:
	db 2 ; Number of slots
.slot0:
	db SNDSLOT5 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -32 ; iSndChInfo_NoteIdBase
	db 0 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_41_Ch2 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot1:
	db SNDSLOT6 ; Slot location
	db SST_CH4 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -18 ; iSndChInfo_NoteIdBase
	db 0 ; iSndChInfo_Speed
	db SNDCH_NOISE ; iSndChInfo_ChId
	dw SndData_41_Ch4 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_41_Ch2:
	snd_var iSndChInfo_LoopTimer0, $0C
	.loop:
		snd_note $29, NOTELEN_01
		snd_note $24, NOTELEN_02
		snd_inc_vol -2
		snd_djnz iSndChInfo_LoopTimer0, .loop
	snd_end
SndData_41_Ch4:
	snd_toggle_keyhold
	snd_noise 8, 0, 0
	snd_fade SSF_FADEOUT, 4, 112
	.loop:
		snd_note $22, NOTELEN_06
		snd_jpfade .loop
	snd_end
SndHeader_42:
	db 1 ; Number of slots
.slot0:
	db SNDSLOT6 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 10 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -12 ; iSndChInfo_NoteIdBase
	db 0 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_42_Ch2 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_42_Ch2:
	snd_note_slide SSE_NSUP, 3
	snd_note $2E, NOTELEN_02
	snd_note $31, NOTELEN_06
	snd_end
SndHeader_43:
	db 1 ; Number of slots
.slot0:
	db SNDSLOT5 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 12 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_04 ; iSndChInfo_Vibrato
	db -12 ; iSndChInfo_NoteIdBase
	db 0 ; iSndChInfo_Speed
	db SNDCH_PULSE1 ; iSndChInfo_ChId
	dw SndData_43_Ch1 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_43_Ch1:
	snd_note $2E, NOTELEN_01
	snd_note $33, NOTELEN_02
	snd_note $3A, NOTELEN_03
	snd_note $42, NOTELEN_09
	snd_end
SndHeader_44:
	db 1 ; Number of slots
.slot0:
	db SNDSLOT5 ; Slot location
	db SST_CH123|SST_PRIORITY ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -12 ; iSndChInfo_NoteIdBase
	db 0 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_44_Ch2 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_44_Ch2:
	snd_toggle_keyhold
	snd_note $31, NOTELEN_01
	snd_note $25
	snd_note $19
	snd_note $0D
	snd_fade SSF_FADEOUT, 2, 200
	.loop:
		snd_note_slide SSE_NSDOWN, 6
		snd_note $25, NOTELEN_03
		snd_note $2C
		snd_note $20
		snd_jpfade .loop
	snd_end
SndHeader_45:
	db 1 ; Number of slots
.slot0:
	db SNDSLOT4 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 12 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_08 ; iSndChInfo_Vibrato
	db -12 ; iSndChInfo_NoteIdBase
	db 0 ; iSndChInfo_Speed
	db SNDCH_PULSE1 ; iSndChInfo_ChId
	dw SndData_45_Ch1 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_45_Ch1:
	snd_note $3A, NOTELEN_24
	snd_end
SndHeader_46:
	db 2 ; Number of slots
.slot0:
	db SNDSLOT5 ; Slot location
	db SST_CH4 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -12 ; iSndChInfo_NoteIdBase
	db 0 ; iSndChInfo_Speed
	db SNDCH_PULSE1 ; iSndChInfo_ChId
	dw SndData_46_Ch1 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot1:
	db SNDSLOT6 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -12 ; iSndChInfo_NoteIdBase
	db 0 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_46_Ch2 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_46_Ch1:
	snd_noise_sweep 1, 0, 0
	snd_note $48, NOTELEN_02
	snd_inc_vol -3
	snd_note $4E, NOTELEN_01
	snd_note $65
	snd_note $63
	snd_inc_vol 1
	snd_note $60, NOTELEN_02
	snd_inc_vol 1
	snd_note $54
	snd_inc_vol 1
	snd_noise_sweep 0, 0, 0
	snd_fade SSF_FADEOUT, 3, 112
	.loop:
		snd_noise 7, 0, 0
		snd_note $25, NOTELEN_01
		snd_noise 8, 0, 0
		snd_note $25, NOTELEN_01
		snd_noise 9, 0, 0
		snd_note $25, NOTELEN_01
		snd_jpfade .loop
	snd_end
SndData_46_Ch2:
	snd_note $27, NOTELEN_01
	snd_note $1B
	snd_note $18
	snd_inc_base_note 3
	snd_var iSndChInfo_LoopTimer0, $06
	.loop:
		snd_note $11
		snd_note $14
		snd_note $12
		snd_note $14
		snd_djnz iSndChInfo_LoopTimer0, .loop
	snd_end
SndHeader_47:
	db 1 ; Number of slots
.slot0:
	db SNDSLOT6 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 11 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -12 ; iSndChInfo_NoteIdBase
	db 0 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_47_Ch2 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_47_Ch2:
	snd_sets3
	snd_note $27, NOTELEN_01
	snd_note $33
	snd_clrs3
	snd_note_slide SSE_NSUP, 6
	snd_fade SSF_FADEOUT, 0, 64
	.loop:
		snd_note $2C, NOTELEN_0C
		snd_jpfade .loop
	snd_end
SndHeader_48:
	db 2 ; Number of slots
.slot0:
	db SNDSLOT5 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 13 ; iSndChInfo_Vol
	db INSTR_03 ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -18 ; iSndChInfo_NoteIdBase
	db 0 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_48_Ch2 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot1:
	db SNDSLOT6 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 10 ; iSndChInfo_Vol
	db INSTR_03 ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -18 ; iSndChInfo_NoteIdBase
	db 0 ; iSndChInfo_Speed
	db SNDCH_PULSE1 ; iSndChInfo_ChId
	dw SndData_48_Ch1 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_48_Ch1:
	snd_note $00, NOTELEN_08
	snd_inc_freq_offset -4
SndData_48_Ch2:
	snd_note $49, NOTELEN_03
	snd_note $3D
	snd_note $41
	snd_note $44
	snd_note $4B
	snd_note $50, NOTELEN_12
	snd_end
SndHeader_49:
	db 2 ; Number of slots
.slot0:
	db SNDSLOT5 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -14 ; iSndChInfo_NoteIdBase
	db 0 ; iSndChInfo_Speed
	db SNDCH_PULSE1 ; iSndChInfo_ChId
	dw SndData_49_Ch1 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot1:
	db SNDSLOT6 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 11 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -14 ; iSndChInfo_NoteIdBase
	db 0 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_49_Ch2 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_49_Ch2:
	snd_note $00, NOTELEN_09
	snd_inc_freq_offset -2
SndData_49_Ch1:
	snd_inc_vol -4
	snd_note_slide SSE_NSDOWN, 4
	snd_sets3
	snd_note $38, NOTELEN_02
	snd_inc_vol 1
	snd_note $38, NOTELEN_01
	snd_inc_vol 2
	snd_clrs3
	snd_note_slide SSE_NSUP, 3
	snd_inc_vol -2
	snd_note $30, NOTELEN_08
	snd_inc_vol -2
	snd_note $36
	snd_note $3D
	snd_note $44
	snd_note $49
	snd_end
SndHeader_4A:
	db 1 ; Number of slots
.slot0:
	db SNDSLOT6 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 12 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db 0 ; iSndChInfo_NoteIdBase
	db 0 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_4A_Ch2 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_4A_Ch2:
	snd_inc_base_note -2
	snd_note $0F, NOTELEN_01
	snd_note $0E
	snd_note $11
	snd_note $0D
	snd_inc_base_note 2
	snd_note_slide SSE_NSUP, 7
	snd_var iSndChInfo_LoopTimer0, $03
	.loop:
		snd_note $19, NOTELEN_06
		snd_inc_vol -5
		snd_inc_base_note 9
		snd_djnz iSndChInfo_LoopTimer0, .loop
	snd_end
SndHeader_4B:
	db 2 ; Number of slots
.slot0:
	db SNDSLOT5 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 12 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -12 ; iSndChInfo_NoteIdBase
	db 0 ; iSndChInfo_Speed
	db SNDCH_PULSE1 ; iSndChInfo_ChId
	dw SndData_4B_Ch1 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot1:
	db SNDSLOT6 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 7 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -12 ; iSndChInfo_NoteIdBase
	db 0 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_4B_Ch2 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_4B_Ch2:
	snd_note $00, NOTELEN_04
SndData_4B_Ch1:
	snd_fade SSF_FADEOUT, 4, 96
	snd_vibrato VIBRATO_02
	snd_note $33, NOTELEN_24
	snd_end
SndHeader_4C:
	db 1 ; Number of slots
.slot0:
	db SNDSLOT5 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -12 ; iSndChInfo_NoteIdBase
	db 0 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_4C_Ch2 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_4C_Ch2:
	snd_note $19, NOTELEN_01
	snd_note $00
	snd_status SST_CH4
	snd_note $3A, NOTELEN_03
	snd_noise 8, 0, 0
	snd_nrx2 8, SNDENV_DEC, 1 ; $81
	snd_note $31, NOTELEN_12
	snd_end
SndHeader_4D:
	db 2 ; Number of slots
.slot0:
	db SNDSLOT5 ; Slot location
	db SST_CH123|SST_2 ; iSndChInfo_Status
	db 13 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -12 ; iSndChInfo_NoteIdBase
	db 0 ; iSndChInfo_Speed
	db SNDCH_PULSE1 ; iSndChInfo_ChId
	dw SndData_4D_Ch1 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot1:
	db SNDSLOT6 ; Slot location
	db SST_CH123|SST_2 ; iSndChInfo_Status
	db 10 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -12 ; iSndChInfo_NoteIdBase
	db 0 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_4D_Ch2 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_4D_Ch2:
	snd_note $00, NOTELEN_03
	snd_inc_freq_offset -1
SndData_4D_Ch1:
	snd_instrument INSTR_05
	snd_vibrato VIBRATO_02
	snd_note $5C, NOTELEN_CUSTOM, $73
	snd_end
SndHeader_4E:
	db 2 ; Number of slots
.slot0:
	db SNDSLOT5 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 11 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -12 ; iSndChInfo_NoteIdBase
	db 0 ; iSndChInfo_Speed
	db SNDCH_PULSE1 ; iSndChInfo_ChId
	dw SndData_4E_Ch1 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot1:
	db SNDSLOT6 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 8 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -12 ; iSndChInfo_NoteIdBase
	db 0 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_4E_Ch2 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_4E_Ch2:
	snd_note $00, NOTELEN_03
	snd_inc_freq_offset -1
SndData_4E_Ch1:
	snd_inc_base_note 3
	snd_instrument INSTR_04
	snd_vibrato VIBRATO_03
	snd_var iSndChInfo_LoopTimer0, $05
	.loop:
		snd_note $50, NOTELEN_04
		snd_inc_vol 2
		snd_note $55
		snd_inc_vol 1
		snd_note $59
		snd_inc_vol 1
		snd_note $5C
		snd_inc_base_note -1
		snd_inc_vol -6
		snd_djnz iSndChInfo_LoopTimer0, .loop
	snd_end
SndHeader_4F:
	db 1 ; Number of slots
.slot0:
	db SNDSLOT5 ; Slot location
	db SST_CH4 ; iSndChInfo_Status
	db 5 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -12 ; iSndChInfo_NoteIdBase
	db 0 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_4F_Ch2 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_4F_Ch2:
	snd_noise_sweep 0, 7, 0
	snd_sets3
	snd_fade SSF_FADEIN, 13, 160
	snd_var iSndChInfo_LoopTimer0, $19
	.loop:
		snd_note $19, NOTELEN_03
		snd_inc_base_note 2
		snd_djnz iSndChInfo_LoopTimer0, .loop
	snd_end
SndHeader_50:
	db 2 ; Number of slots
.slot0:
	db SNDSLOT5 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 14 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -12 ; iSndChInfo_NoteIdBase
	db 0 ; iSndChInfo_Speed
	db SNDCH_PULSE1 ; iSndChInfo_ChId
	dw SndData_50_Ch1 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot1:
	db SNDSLOT6 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 12 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -12 ; iSndChInfo_NoteIdBase
	db 0 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_50_Ch2 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_50_Ch2:
	snd_note $00, NOTELEN_03
	snd_inc_freq_offset 1
SndData_50_Ch1:
	snd_note_slide SSE_NSUP, 1
	snd_fade SSF_FADEOUT, 4, 48
	.loop:
		snd_note $31, NOTELEN_0C
		snd_note $35
		snd_jpfade .loop
	snd_end
SndHeader_51:
	db 2 ; Number of slots
.slot0:
	db SNDSLOT5 ; Slot location
	db SST_CH123|SST_PAUSEREST|SST_PRIORITY ; iSndChInfo_Status
	db 11 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -12 ; iSndChInfo_NoteIdBase
	db 0 ; iSndChInfo_Speed
	db SNDCH_PULSE1 ; iSndChInfo_ChId
	dw SndData_51_Ch1 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot1:
	db SNDSLOT6 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 11 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -12 ; iSndChInfo_NoteIdBase
	db 0 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_51_Ch2 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_51_Ch2:
	snd_inc_freq_offset 10
SndData_51_Ch1:
	snd_note $25, NOTELEN_06
	snd_note $00
	snd_note $25, NOTELEN_18
	snd_end
SndHeader_52:
	db 1 ; Number of slots
.slot0:
	db SNDSLOT6 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 12 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -12 ; iSndChInfo_NoteIdBase
	db 0 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_52_Ch2 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_52_Ch2:
	snd_note_slide SSE_NSUP, 1
	snd_fade SSF_FADEOUT, 4, 48
	.loop:
		snd_note $31, NOTELEN_0C
		snd_note $35
		snd_jpfade .loop
	snd_end
SndHeader_5A:
	db 1 ; Number of slots
.slot0:
	db SNDSLOT4 ; Slot location
	db SST_CH4 ; iSndChInfo_Status
	db 13 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db 0 ; iSndChInfo_NoteIdBase
	db 200 ; iSndChInfo_Speed
	db SNDCH_NOISE ; iSndChInfo_ChId
	dw SndData_5A_Ch4 ; Data pointer
	nrx1 SNDDUTY_25, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_5A_Ch4:
	snd_noise 3, 7, 0
	snd_note $19, NOTELEN_01
	snd_noise 1, 7, 0
	snd_note $19, NOTELEN_02
	snd_inc_vol -5
	snd_noise 0, 7, 0
	snd_note $19, NOTELEN_02
	snd_inc_vol -8
	snd_noise 0, 0, 0
	snd_note $19, NOTELEN_03
	snd_end
SndHeader_5B:
	db 1 ; Number of slots
.slot0:
	db SNDSLOT4 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 12 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_15 ; iSndChInfo_Vibrato
	db -18 ; iSndChInfo_NoteIdBase
	db 200 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_5B_Ch2 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_5B_Ch2:
	snd_note $34, NOTELEN_03
	snd_note $40, NOTELEN_01
	snd_instrument INSTR_0A
	snd_note $3A, NOTELEN_0C
	snd_end
SndHeader_5C:
	db 1 ; Number of slots
.slot0:
	db SNDSLOT4 ; Slot location
	db SST_CH4 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_1E ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db 10 ; iSndChInfo_NoteIdBase
	db 220 ; iSndChInfo_Speed
	db SNDCH_NOISE ; iSndChInfo_ChId
	dw SndData_5C_Ch4 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_5C_Ch4:
	snd_noise 2, 7, 0
	snd_note $19, NOTELEN_04
	snd_noise 0, 0, 0
	snd_var iSndChInfo_LoopTimer0, $05
	.loop:
		snd_note $19, NOTELEN_01
		snd_inc_vol -3
		snd_djnz iSndChInfo_LoopTimer0, .loop
	snd_end
SndHeader_5D:
	db 1 ; Number of slots
.slot0:
	db SNDSLOT4 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db 0 ; iSndChInfo_NoteIdBase
	db 220 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_5D_Ch2 ; Data pointer
	nrx1 SNDDUTY_25, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_5D_Ch2:
	snd_var iSndChInfo_LoopTimer0, $0A
	.loop:
		snd_note $19, NOTELEN_01
		snd_note $0D
		snd_inc_vol -2
		snd_inc_freq_offset -24
		snd_djnz iSndChInfo_LoopTimer0, .loop
	snd_end
	snd_noise 4, 7, 0
	snd_noise_sweep 0, 7, SBDCH4_LFSR7 ;X
	snd_note $0D, NOTELEN_30 ;X
	snd_end ;X
SndHeader_5E:
	db 1 ; Number of slots
.slot0:
	db SNDSLOT5 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db 10 ; iSndChInfo_NoteIdBase
	db 220 ; iSndChInfo_Speed
	db SNDCH_NOISE ; iSndChInfo_ChId
	dw SndData_5E_Ch4 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_5E_Ch4:
	snd_noise 6, 7, 0
	snd_note $19, NOTELEN_06
	snd_var iSndChInfo_LoopTimer0, $04
	.loop:
		snd_noise 0, 5, 0
		snd_note $19, NOTELEN_01
		snd_noise 0, 4, 0
		snd_note $19, NOTELEN_01
		snd_noise 0, 3, 0
		snd_note $19, NOTELEN_01
		snd_inc_vol -2
		snd_noise 0, 2, 0
		snd_note $19, NOTELEN_01
		snd_noise 0, 1, 0
		snd_note $19, NOTELEN_01
		snd_noise 0, 0, 0
		snd_note $19, NOTELEN_01
		snd_inc_vol -2
		snd_djnz iSndChInfo_LoopTimer0, .loop
	snd_end
SndHeader_5F:
	db 1 ; Number of slots
.slot0:
	db SNDSLOT6 ; Slot location
	db SST_CH123|SST_PAUSEREST ; iSndChInfo_Status
	db 11 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_16 ; iSndChInfo_Vibrato
	db 0 ; iSndChInfo_NoteIdBase
	db 90 ; iSndChInfo_Speed
	db SNDCH_PULSE1 ; iSndChInfo_ChId
	dw SndData_5F_Ch1 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_5F_Ch1:
	snd_note $25, NOTELEN_01
	snd_fade SSF_FADEOUT, 15, 32
	snd_note $20, NOTELEN_04
	snd_end
SndHeader_60:
	db 2 ; Number of slots
.slot0:
	db SNDSLOT4 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_17 ; iSndChInfo_Vibrato
	db 1 ; iSndChInfo_NoteIdBase
	db 100 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_60_Ch2 ; Data pointer
	nrx1 SNDDUTY_12, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot1:
	db SNDSLOT5 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_17 ; iSndChInfo_Vibrato
	db 1 ; iSndChInfo_NoteIdBase
	db 100 ; iSndChInfo_Speed
	db SNDCH_PULSE1 ; iSndChInfo_ChId
	dw SndData_60_Ch1 ; Data pointer
	nrx1 SNDDUTY_12, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_60_Ch2:
	snd_note $49, NOTELEN_24
	snd_end
SndData_60_Ch1:
	snd_inc_freq_offset -1
	snd_note $4A, NOTELEN_24
	snd_end
SndHeader_61:
	db 1 ; Number of slots
.slot0:
	db SNDSLOT5 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db 0 ; iSndChInfo_NoteIdBase
	db 220 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_61_Ch2 ; Data pointer
	nrx1 SNDDUTY_25, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_61_Ch2:
	snd_var iSndChInfo_LoopTimer0, $0F
	.loop:
		snd_note $16, NOTELEN_01
		snd_inc_vol -1
		snd_inc_freq_offset 8
		snd_djnz iSndChInfo_LoopTimer0, .loop
	snd_end
SndHeader_62:
	db 2 ; Number of slots
.slot0:
	db SNDSLOT4 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db 0 ; iSndChInfo_NoteIdBase
	db 0 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_62_Ch2 ; Data pointer
	nrx1 SNDDUTY_25, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot1:
	db SNDSLOT5 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db 0 ; iSndChInfo_NoteIdBase
	db 0 ; iSndChInfo_Speed
	db SNDCH_NOISE ; iSndChInfo_ChId
	dw SndData_62_Ch4 ; Data pointer
	nrx1 SNDDUTY_12, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_62_Ch2:
	snd_sets3
	snd_note $14, NOTELEN_01
	snd_note $24
	snd_var iSndChInfo_LoopTimer0, $07
	.loop:
		snd_note $42
		snd_inc_vol -4
		snd_note $42
		snd_inc_vol 3
		snd_djnz iSndChInfo_LoopTimer0, .loop
	snd_end
SndData_62_Ch4:
	snd_noise 3, 7, 0
	snd_note $25, NOTELEN_01
	snd_noise 3, 1, 0
	snd_note $25
	snd_end
SndHeader_63:
	db 1 ; Number of slots
.slot0:
	db SNDSLOT4 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -15 ; iSndChInfo_NoteIdBase
	db 0 ; iSndChInfo_Speed
	db SNDCH_NOISE ; iSndChInfo_ChId
	dw SndData_63_Ch4 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_63_Ch4:
	snd_fade SSF_FADEOUT, 0, 255
	snd_noise 4, 7, 0
	snd_note $25, NOTELEN_01
	snd_note $29
	snd_noise 3, 6, 0
	snd_note $19, NOTELEN_01
	snd_noise 3, 0, 0
	snd_note $19
	snd_noise 0, 0, SBDCH4_LFSR7
	snd_note $3D
	snd_noise 3, 4, 0
	snd_note $19, NOTELEN_01
	snd_noise 3, 3, 0
	snd_note $19
	snd_noise 3, 2, 0
	snd_note $19
	snd_noise 3, 1, 0
	snd_note $19
	snd_noise 3, 0, 0
	snd_note $19, NOTELEN_02
	snd_end
SndHeader_64:
	db 1 ; Number of slots
.slot0:
	db SNDSLOT4 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -24 ; iSndChInfo_NoteIdBase
	db 0 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_64_Ch2 ; Data pointer
	nrx1 SNDDUTY_12, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_64_Ch2:
	snd_note $45, NOTELEN_01
	snd_note $48
	snd_note $47
	snd_duty SNDDUTY_25, $00
	snd_var iSndChInfo_LoopTimer0, $0A
	.loop:
		snd_note $4A
		snd_note $47
		snd_inc_base_note -1
		snd_inc_freq_offset -5
		snd_inc_vol -1
		snd_djnz iSndChInfo_LoopTimer0, .loop
	snd_end
SndHeader_65:
	db 1 ; Number of slots
.slot0:
	db SNDSLOT6 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db 0 ; iSndChInfo_NoteIdBase
	db 0 ; iSndChInfo_Speed
	db SNDCH_NOISE ; iSndChInfo_ChId
	dw SndData_65_Ch4 ; Data pointer
	nrx1 SNDDUTY_12, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_65_Ch4:
	snd_noise 0, 6, 0
	snd_inc_vol -3
	snd_var iSndChInfo_LoopTimer0, $02
	.loop0:
		snd_note $25, NOTELEN_01
		snd_inc_vol -4
		snd_note $25
		snd_inc_vol 4
		snd_djnz iSndChInfo_LoopTimer0, .loop0
	snd_noise 0, 3, 0
	snd_inc_vol 3
	snd_var iSndChInfo_LoopTimer0, $04
	.loop1:
		snd_note $25, NOTELEN_01
		snd_inc_vol -4
		snd_note $25
		snd_inc_vol 4
		snd_djnz iSndChInfo_LoopTimer0, .loop1
	snd_end
SndHeader_66:
	db 1 ; Number of slots
.slot0:
	db SNDSLOT6 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 12 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db 0 ; iSndChInfo_NoteIdBase
	db 0 ; iSndChInfo_Speed
	db SNDCH_NOISE ; iSndChInfo_ChId
	dw SndData_66_Ch4 ; Data pointer
	nrx1 SNDDUTY_12, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_66_Ch4:
	snd_sets3
	snd_noise 4, 2, 0
	snd_note $19, NOTELEN_03
	snd_inc_vol -6
	snd_noise 4, 4, 0
	snd_note $19, NOTELEN_06
	snd_end
SndHeader_67:
	db 2 ; Number of slots
.slot0:
	db SNDSLOT5 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -12 ; iSndChInfo_NoteIdBase
	db 0 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_67_Ch2 ; Data pointer
	nrx1 SNDDUTY_25, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot1:
	db SNDSLOT6 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db 0 ; iSndChInfo_NoteIdBase
	db 0 ; iSndChInfo_Speed
	db SNDCH_WAVE ; iSndChInfo_ChId
	dw SndData_67_Ch3 ; Data pointer
	db WAVE_05 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_67_Ch3:
	snd_note $00, NOTELEN_02
SndData_67_Ch2:
	snd_note $39, NOTELEN_01
	snd_note $3B
	snd_note $3D
	snd_note $3B
	snd_note $3D
	snd_note $3F
	snd_note $3D
	snd_note $3B
	snd_note $3D
	snd_note $41
	snd_note $3F
	snd_note $41
	snd_note $43
	snd_note $41
	snd_note $3F
	snd_note $45
	snd_note $43
	snd_note $47
	snd_note $43
	snd_note $41
	snd_note $43
	snd_note $45
	snd_note $43
	snd_note $49
	snd_note $45
	snd_note $47
	snd_note $43
	snd_note $45
	snd_end
SndHeader_68:
	db 1 ; Number of slots
.slot0:
	db SNDSLOT7 ; Slot location
	db SST_CH123|SST_PAUSEREST ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db 0 ; iSndChInfo_NoteIdBase
	db 0 ; iSndChInfo_Speed
	db SNDCH_NOISE ; iSndChInfo_ChId
	dw SndData_68_Ch4 ; Data pointer
	nrx1 SNDDUTY_12, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_68_Ch4:
	snd_var iSndChInfo_LoopTimer0, $07
	.loop:
		snd_noise 3, 0, 0
		snd_note $19, NOTELEN_01
		snd_noise 3, 1, 0
		snd_note $19
		snd_noise 3, 2, 0
		snd_note $19
		snd_noise 3, 3, 0
		snd_note $19
		snd_noise 4, 4, 0
		snd_note $19, NOTELEN_02
		snd_noise 4, 5, 0
		snd_note $19
		snd_noise 4, 6, 0
		snd_note $19
		snd_noise 4, 7, 0
		snd_note $19
		snd_inc_vol -2
		snd_djnz iSndChInfo_LoopTimer0, .loop
	snd_end