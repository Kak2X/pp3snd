SndHeader_36:
	db 1 ; Number of slots
.slot0:
	db SNDSLOT7 ; Slot location
	db SST_CH123|SST_PRIORITY ; iSndChInfo_Status
	db 10 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -18 ; iSndChInfo_NoteIdBase
	db 0 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_36_Ch2 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_36_Ch2:
	snd_var iSndChInfo_LoopTimer0, $0C
	.loop:
		snd_note_slide SSE_NSUP, 2
		snd_note $3D, NOTELEN_03
		snd_inc_base_note 2
		snd_djnz iSndChInfo_LoopTimer0, .loop
	snd_end
