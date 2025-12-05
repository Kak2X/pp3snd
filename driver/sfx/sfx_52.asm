SndHeader_SFX_52:
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
	db $80 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_52_Ch2:
	note_slide SSE_NSUP, 1
	fade SSF_FADEOUT, 4, 48
	.loop:
		note $31, NOTELEN_0C
		note $35
		snd_loop_fade .loop
	chan_stop
