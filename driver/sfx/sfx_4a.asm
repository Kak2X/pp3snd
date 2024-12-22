SndHeader_4A:
	db 1 ; Number of slots
.slot0:
	db SNDSLOT6 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 12 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db 0 ; iSndChInfo_NoteIdBase
	db 0 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_4A_Ch2 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_4A_Ch2:
	snd_inc_base_note -2
	snd_note $0F, NOTELEN_01
	snd_note $0E
	snd_note $11
	snd_note $0D
	snd_inc_base_note 2
	snd_note_slide SSE_NSUP, 7
	snd_var iSndChInfo_LoopTimer0, $03
	.loop:
		snd_note $19, NOTELEN_06
		snd_inc_vol -5
		snd_inc_base_note 9
		snd_djnz iSndChInfo_LoopTimer0, .loop
	snd_end
