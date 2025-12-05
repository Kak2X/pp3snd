SndHeader_SFX_65:
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
	db $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_65_Ch4:
	noise_freq $06
	volume_add -3
	set_var iSndChInfo_LoopTimer0, $02
	.loop0:
		note $25, NOTELEN_01
		volume_add -4
		note $25
		volume_add 4
		snd_loop .loop0, iSndChInfo_LoopTimer0
	noise_freq $03
	volume_add 3
	set_var iSndChInfo_LoopTimer0, $04
	.loop1:
		note $25, NOTELEN_01
		volume_add -4
		note $25
		volume_add 4
		snd_loop .loop1, iSndChInfo_LoopTimer0
	chan_stop
