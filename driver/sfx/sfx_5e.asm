SndHeader_SFX_5E:
	db 1 ; Number of slots
.slot0:
	db SNDSLOT5 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db 10 ; iSndChInfo_NoteIdBase
	db 220 ; iSndChInfo_Speed
	db SNDCH_NOISE ; iSndChInfo_ChId
	dw SndData_5E_Ch4 ; Data pointer
	db $80 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_5E_Ch4:
	noise_freq $67
	note $19, NOTELEN_06
	set_var iSndChInfo_LoopTimer0, $04
	.loop:
		noise_freq $05
		note $19, NOTELEN_01
		noise_freq $04
		note $19, NOTELEN_01
		noise_freq $03
		note $19, NOTELEN_01
		volume_add -2
		noise_freq $02
		note $19, NOTELEN_01
		noise_freq $01
		note $19, NOTELEN_01
		noise_freq $00
		note $19, NOTELEN_01
		volume_add -2
		snd_loop .loop, iSndChInfo_LoopTimer0
	chan_stop
