SndHeader_55:
	db 2 ; Number of slots
.slot0:
	db SNDSLOT4 ; Slot location
	db SST_CH4 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db 0 ; iSndChInfo_NoteIdBase
	db 0 ; iSndChInfo_Speed
	db SNDCH_NOISE ; iSndChInfo_ChId
	dw SndData_55_Ch4 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot1:
	db SNDSLOT5 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -25 ; iSndChInfo_NoteIdBase
	db 0 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_55_Ch2 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_55_Ch4:
	snd_fade SSF_FADEOUT, 0, 144
	.loop:
		snd_noise 7, 0, 0
		snd_note $19, NOTELEN_03
		snd_noise 6, 0, 0
		snd_note $19
		snd_noise 7, 1, 0
		snd_note $19
		snd_noise 6, 1, 0
		snd_note $19
		snd_noise 7, 2, 0
		snd_note $19
		snd_noise 6, 2, 0
		snd_note $19
		snd_noise 7, 3, 0
		snd_note $19
		snd_noise 6, 3, 0
		snd_note $19
		snd_noise 7, 4, 0
		snd_note $19
		snd_noise 6, 4, 0
		snd_note $19
		snd_noise 7, 5, 0
		snd_note $19
		snd_jpfade .loop
	snd_end
SndData_55_Ch2:
	snd_note_slide SSE_NSDOWN, 48
	snd_var iSndChInfo_LoopTimer0, $08
	.loop:
		snd_note $27, NOTELEN_04
		snd_inc_base_note -1
		snd_inc_vol -2
		snd_djnz iSndChInfo_LoopTimer0, .loop
	snd_end
