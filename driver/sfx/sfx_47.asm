SndHeader_47:
	db 1 ; Number of slots
.slot0:
	db SNDSLOT6 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 11 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -12 ; iSndChInfo_NoteIdBase
	db 0 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_47_Ch2 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_47_Ch2:
	snd_sets3
	snd_note $27, NOTELEN_01
	snd_note $33
	snd_clrs3
	snd_note_slide SSE_NSUP, 6
	snd_fade SSF_FADEOUT, 0, 64
	.loop:
		snd_note $2C, NOTELEN_0C
		snd_jpfade .loop
	snd_end
