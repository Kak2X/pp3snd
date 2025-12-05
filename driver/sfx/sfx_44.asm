SndHeader_SFX_44:
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
	db $80 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_44_Ch2:
	toggle_hold
	note $31, NOTELEN_01
	note $25
	note $19
	note $0D
	fade SSF_FADEOUT, 2, 200
	.loop:
		note_slide SSE_NSDOWN, 6
		note $25, NOTELEN_03
		note $2C
		note $20
		snd_loop_fade .loop
	chan_stop
