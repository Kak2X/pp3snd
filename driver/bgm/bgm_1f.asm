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
