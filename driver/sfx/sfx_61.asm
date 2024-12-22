SndHeader_61:
	db 1 ; Number of slots
.slot0:
	db SNDSLOT5 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db 0 ; iSndChInfo_NoteIdBase
	db 220 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_61_Ch2 ; Data pointer
	nrx1 SNDDUTY_25, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_61_Ch2:
	snd_var iSndChInfo_LoopTimer0, $0F
	.loop:
		snd_note $16, NOTELEN_01
		snd_inc_vol -1
		snd_inc_freq_offset 8
		snd_djnz iSndChInfo_LoopTimer0, .loop
	snd_end
