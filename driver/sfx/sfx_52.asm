SndHeader_SFX_52:
	db 1 ; Number of slots
.slot0:
	db SNDSLOT6 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 12 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -12 ; iSndChInfo_NoteIdBase
	db 0 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_52_Ch2 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_52_Ch2:
	snd_note_slide SSE_NSUP, 1
	snd_fade SSF_FADEOUT, 4, 48
	.loop:
		snd_note $31, NOTELEN_0C
		snd_note $35
		snd_jpfade .loop
	snd_end
