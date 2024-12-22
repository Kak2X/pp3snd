SndHeader_SFX_44:
	db 1 ; Number of slots
.slot0:
	db SNDSLOT5 ; Slot location
	db SST_CH123|SST_PRIORITY ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -12 ; iSndChInfo_NoteIdBase
	db 0 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_44_Ch2 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_44_Ch2:
	snd_toggle_keyhold
	snd_note $31, NOTELEN_01
	snd_note $25
	snd_note $19
	snd_note $0D
	snd_fade SSF_FADEOUT, 2, 200
	.loop:
		snd_note_slide SSE_NSDOWN, 6
		snd_note $25, NOTELEN_03
		snd_note $2C
		snd_note $20
		snd_jpfade .loop
	snd_end
