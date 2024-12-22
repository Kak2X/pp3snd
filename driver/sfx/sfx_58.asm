SndHeader_58:
	db 2 ; Number of slots
.slot0:
	db SNDSLOT4 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 10 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db 0 ; iSndChInfo_NoteIdBase
	db 150 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_58_Ch2 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot1:
	db SNDSLOT5 ; Slot location
	db SST_CH4 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db 0 ; iSndChInfo_NoteIdBase
	db 150 ; iSndChInfo_Speed
	db SNDCH_NOISE ; iSndChInfo_ChId
	dw SndData_58_Ch4 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_58_Ch2:
	snd_note $00, NOTELEN_09
	snd_sets3
	snd_note $47, NOTELEN_03
	snd_note $53
	snd_note $47
	snd_note $53
	snd_note $47
	snd_note $53
	snd_note $47
	snd_var iSndChInfo_LoopTimer0, $05
	.loop:
		snd_note $4D
		snd_note $59
		snd_inc_vol -2
		snd_djnz iSndChInfo_LoopTimer0, .loop
	snd_end
SndData_58_Ch4:
	snd_noise 3, 2, 0
	snd_var iSndChInfo_LoopTimer0, $05
	.loop:
		snd_note $25, NOTELEN_CUSTOM, $06
		snd_inc_vol -3
		snd_djnz iSndChInfo_LoopTimer0, .loop
	snd_end
