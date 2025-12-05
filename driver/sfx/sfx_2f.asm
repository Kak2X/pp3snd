SndHeader_SFX_2F:
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
	db $80 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_2F_Ch2:
	volume_add -5
	fade SSF_FADEOUT, 1, 64
	fine_tune -8
	.loop:
		note_slide SSE_NSUP, 3
		note $44, NOTELEN_03
		note $4D
		panning SNDOUT_CHL
		note $44, NOTELEN_03
		note $4D
		panning SNDOUT_CHR
		note $44, NOTELEN_03
		note $4D
		panning SNDOUT_CHALL
		snd_loop_fade .loop
	chan_stop
