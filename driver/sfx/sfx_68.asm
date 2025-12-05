SndHeader_SFX_68:
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
	db $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_68_Ch4:
	set_var iSndChInfo_LoopTimer0, $07
	.loop:
		noise_freq $30
		note $19, NOTELEN_01
		noise_freq $31
		note $19
		noise_freq $32
		note $19
		noise_freq $33
		note $19
		noise_freq $44
		note $19, NOTELEN_02
		noise_freq $45
		note $19
		noise_freq $46
		note $19
		noise_freq $47
		note $19
		volume_add -2
		snd_loop .loop, iSndChInfo_LoopTimer0
	chan_stop