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
	nrx1 SNDDUTY_12, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_65_Ch4:
	snd_noise 0, 6, 0
	snd_inc_vol -3
	snd_var iSndChInfo_LoopTimer0, $02
	.loop0:
		snd_note $25, NOTELEN_01
		snd_inc_vol -4
		snd_note $25
		snd_inc_vol 4
		snd_djnz iSndChInfo_LoopTimer0, .loop0
	snd_noise 0, 3, 0
	snd_inc_vol 3
	snd_var iSndChInfo_LoopTimer0, $04
	.loop1:
		snd_note $25, NOTELEN_01
		snd_inc_vol -4
		snd_note $25
		snd_inc_vol 4
		snd_djnz iSndChInfo_LoopTimer0, .loop1
	snd_end
