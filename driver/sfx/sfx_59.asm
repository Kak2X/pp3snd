SndHeader_SFX_59:
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
	db $80 ; iSndChInfo_DutyOrWave
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
	db $80 ; iSndChInfo_DutyOrWave
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
	db $80 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_59_Ch2:
	note $00, NOTELEN_CUSTOM, $05
	fine_tune_value -2
SndData_59_Ch1:
	duty_cycle $40
	note $2F, NOTELEN_03
	note $2C
	note $2F
	note $34
	note $32
	note $2D
	note $32
	fade SSF_FADEOUT, 0, 72
	note $38
	note $34
	note $2C
	note $2F
	note $34
	note $38
	note $2C
	note $2F
	note $34
	note $38
	note $2C
	note $2F
	note $34
	note $38
	chan_stop
SndData_59_Ch3:
	wave_id WAVE_09
	note $34, NOTELEN_03
	note $2F
	note $34
	note $38
	note $36
	note $32
	note $36
	fade SSF_FADEOUT, 0, 72
	note $3D
	note $3B
	note $2F
	note $34
	note $38
	note $3B
	note $2F
	note $34
	note $38
	note $3B
	note $2F
	note $34
	note $38
	note $3B
	chan_stop
SndData_59_Ch4:
	note $25, NOTELEN_CUSTOM, $3F
	chan_stop
