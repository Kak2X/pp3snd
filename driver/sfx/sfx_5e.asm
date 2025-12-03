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
	snd_noise $67
	snd_note $19, NOTELEN_06
	snd_var iSndChInfo_LoopTimer0, $04
	.loop:
		snd_noise $05
		snd_note $19, NOTELEN_01
		snd_noise $04
		snd_note $19, NOTELEN_01
		snd_noise $03
		snd_note $19, NOTELEN_01
		snd_inc_vol -2
		snd_noise $02
		snd_note $19, NOTELEN_01
		snd_noise $01
		snd_note $19, NOTELEN_01
		snd_noise $00
		snd_note $19, NOTELEN_01
		snd_inc_vol -2
		snd_djnz iSndChInfo_LoopTimer0, .loop
	snd_end
