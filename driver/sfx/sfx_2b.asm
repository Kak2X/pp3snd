SndHeader_SFX_2B:
	db 1 ; Number of slots
.slot0:
	db SNDSLOT5 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 12 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -11 ; iSndChInfo_NoteIdBase
	db 0 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_2B_Ch2 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_2B_Ch2:
	snd_var iSndChInfo_LoopTimer0, $03
	.loop:
		snd_sets3
		snd_note $4E, NOTELEN_01
		snd_note $42, NOTELEN_06
		snd_clrs3
		snd_inc_vol -7
		snd_djnz iSndChInfo_LoopTimer0, .loop
	snd_end
