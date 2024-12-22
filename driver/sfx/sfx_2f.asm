SndHeader_SFX_2F:
	db 1 ; Number of slots
.slot0:
	db SNDSLOT7 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -12 ; iSndChInfo_NoteIdBase
	db 0 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_2F_Ch2 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_2F_Ch2:
	snd_inc_vol -5
	snd_fade SSF_FADEOUT, 1, 64
	snd_inc_base_note -8
	.loop:
		snd_note_slide SSE_NSUP, 3
		snd_note $44, NOTELEN_03
		snd_note $4D
		snd_pan SNDOUT_CHL
		snd_note $44, NOTELEN_03
		snd_note $4D
		snd_pan SNDOUT_CHR
		snd_note $44, NOTELEN_03
		snd_note $4D
		snd_pan SNDOUT_CHALL
		snd_jpfade .loop
	snd_end
