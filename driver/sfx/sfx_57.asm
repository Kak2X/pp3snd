SndHeader_SFX_57:
	db 2 ; Number of slots
.slot0:
	db SNDSLOT4 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -13 ; iSndChInfo_NoteIdBase
	db 255 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_57_Ch2 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot1:
	db SNDSLOT5 ; Slot location
	db SST_CH4 ; iSndChInfo_Status
	db 4 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -13 ; iSndChInfo_NoteIdBase
	db 255 ; iSndChInfo_Speed
	db SNDCH_NOISE ; iSndChInfo_ChId
	dw SndData_57_Ch4 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_57_Ch2:
	snd_note $00, NOTELEN_04
	snd_sets3
	snd_var iSndChInfo_LoopTimer0, $03
	.loop:
		snd_note $3B, NOTELEN_01
		snd_note $35
		snd_note $2F
		snd_note $23
		snd_note $00, NOTELEN_04
		snd_inc_vol -4
		snd_djnz iSndChInfo_LoopTimer0, .loop
	snd_end
SndData_57_Ch4:
	snd_noise 4, 5, 0
	snd_note $25, NOTELEN_01
	snd_noise 4, 3, 0
	snd_inc_vol 4
	snd_note $25
	snd_noise 4, 1, 0
	snd_inc_vol 4
	snd_note $25
	snd_noise 3, 1, 0
	snd_inc_vol 4
	snd_note $25
	snd_end
