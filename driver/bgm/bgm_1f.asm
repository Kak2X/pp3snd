SndHeader_BGM_1F:
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
	db $00 ; iSndChInfo_DutyOrWave
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
	db $00 ; iSndChInfo_DutyOrWave
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
	db $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_1F_Ch1:
	duty_cycle $C0
	note $32, NOTELEN_01
	note $32
	note $2B
	note $30
	note $30
	note $29
	note $32
	note $32
	note $2B
	note $34
	note $34
	note $2D
	note $32
	note $32
	note $2B
	note $34
	note $34
	note $2D
	note $35
	note $35
	note $2E
	note $34
	note $34
	note $2D
	note $35
	note $35
	note $2E
	note $37
	note $37
	note $30
	note $35
	note $35
	note $2E
	note $37
	note $37
	note $30
	note $39
	note $39
	note $32
	note $37
	note $37
	note $30
	note $39
	note $39
	note $32
	note $3A
	note $3A
	note $34
	note $39
	note $39
	note $32
	note $3A
	note $3A
	note $34
	note $3C
	note $3C
	note $35
	note $3E
	note $3E
	note $37
	note $40
	note $40
	note $39
	note $41
	note $41
	note $3A
	note $43
	note $43
	note $3C
	note $37
	note $37
	note $30
	note $43
	note $43
	volume_add -3
	note $3C
	note $37
	note $37
	note $30
	volume_add -4
	note $43
	note $43
	note $3C
	note $37
	note $37
	note $30
	volume_add -2
	note $43
	note $43
	note $3C
	note $37
	note $37
	note $30
	volume_add -1
	note $43
	note $43
	note $3C
	note $37
	note $37
	note $30
	volume_add -2
	note $43
	note $43
	note $3C
	note $37
	note $37
	note $30
	note $00, NOTELEN_2A
	chan_stop
SndData_1F_Ch2:
	duty_cycle $40
	note $2E, NOTELEN_03
	note $2D
	note $2E
	note $30
	note $2E
	note $30
	note $32
	note $30
	note $32
	note $34
	note $32
	note $34
	note $35
	note $34
	note $35
	note $37
	note $35
	note $37
	note $39
	note $3A
	note $3C
	note $3E
	note $40
	volume_add -2
	note $34
	volume_add 2
	note $40
	volume_add -4
	note $34
	volume_add -3
	note $40
	volume_add -1
	note $34
	volume_add -1
	note $40
	volume_add -1
	note $34
	note $40
	volume_add -1
	note $34
	volume_add -1
	note $40
	volume_add -1
	note $34
	note $00, NOTELEN_2A
	chan_stop
SndData_1F_Ch3:
	wave_id WAVE_02
	instrument INSTR_05
	note $18, NOTELEN_30
	note $18, NOTELEN_12
	volume_add -3
	note $18, NOTELEN_03
	note $00
	volume_add -1
	note $18
	note $00
	volume_add -4
	note $18
	note $00
	volume_add -2
	note $18
	note $00
	volume_add -3
	note $18
	note $00
	volume_add -1
	note $18
	note $00, NOTELEN_CUSTOM, $2D
	chan_stop
SndData_1F_Ch4:
	duty_cycle $01
	note $00, NOTELEN_30
	note $00, NOTELEN_12
	note $1B, NOTELEN_02
	note $00, NOTELEN_01
	volume_add -2
	note $1B, NOTELEN_02
	note $00, NOTELEN_01
	volume_add -1
	note $1B, NOTELEN_02
	note $00, NOTELEN_01
	volume_add -1
	note $1B, NOTELEN_02
	note $00, NOTELEN_01
	volume_add -1
	note $1B, NOTELEN_02
	note $00, NOTELEN_01
	volume_add -2
	note $1B, NOTELEN_02
	note $00, NOTELEN_01
	volume_add -1
	note $1B, NOTELEN_02
	note $00, NOTELEN_01
	volume_add -1
	note $1B, NOTELEN_02
	note $00, NOTELEN_01
	volume_add -1
	note $1B, NOTELEN_02
	note $00, NOTELEN_01
	volume_add -2
	note $1B, NOTELEN_02
	note $00, NOTELEN_01
	volume_add -1
	note $1B, NOTELEN_02
	note $00, NOTELEN_01
	volume_add -1
	note $1B, NOTELEN_02
	note $00, NOTELEN_01
	note $1B, NOTELEN_02
	note $00, NOTELEN_01
	note $1B, NOTELEN_02
	note $00, NOTELEN_CUSTOM, $25
	chan_stop
