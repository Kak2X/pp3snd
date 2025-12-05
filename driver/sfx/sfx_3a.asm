SndHeader_SFX_3A:
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
	db $80 ; iSndChInfo_DutyOrWave
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
	db $80 ; iSndChInfo_DutyOrWave
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
	note $00, NOTELEN_04
SndData_3A_Ch1:
	vibrato VIBRATO_09
	note $31, NOTELEN_CUSTOM, $48
	set_s3
	note_slide SSE_NSUP, 4
	note $49, NOTELEN_01
	note $20, NOTELEN_CUSTOM, $30
	chan_stop
SndData_3A_Ch3:
	set_var iSndChInfo_LoopTimer0, $04
	.loop:
		note_slide SSE_NSDOWN, 1
		note $55, NOTELEN_0C
		note_slide SSE_NSUP, 2
		note $31, NOTELEN_0C
		snd_loop .loop, iSndChInfo_LoopTimer0
	chan_stop
