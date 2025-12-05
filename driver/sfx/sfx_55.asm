SndHeader_SFX_55:
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
	db $80 ; iSndChInfo_DutyOrWave
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
	db $80 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_55_Ch4:
	fade SSF_FADEOUT, 0, 144
	.loop:
		noise_freq $70
		note $19, NOTELEN_03
		noise_freq $60
		note $19
		noise_freq $71
		note $19
		noise_freq $61
		note $19
		noise_freq $72
		note $19
		noise_freq $62
		note $19
		noise_freq $73
		note $19
		noise_freq $63
		note $19
		noise_freq $74
		note $19
		noise_freq $64
		note $19
		noise_freq $75
		note $19
		snd_loop_fade .loop
	chan_stop
SndData_55_Ch2:
	note_slide SSE_NSDOWN, 48
	set_var iSndChInfo_LoopTimer0, $08
	.loop:
		note $27, NOTELEN_04
		fine_tune -1
		volume_add -2
		snd_loop .loop, iSndChInfo_LoopTimer0
	chan_stop
