SndHeader_SFX_62:
	db 2 ; Number of slots
.slot0:
	db SNDSLOT4 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db 0 ; iSndChInfo_NoteIdBase
	db 0 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_62_Ch2 ; Data pointer
	nrx1 SNDDUTY_25, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot1:
	db SNDSLOT5 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db 0 ; iSndChInfo_NoteIdBase
	db 0 ; iSndChInfo_Speed
	db SNDCH_NOISE ; iSndChInfo_ChId
	dw SndData_62_Ch4 ; Data pointer
	nrx1 SNDDUTY_12, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_62_Ch2:
	snd_sets3
	snd_note $14, NOTELEN_01
	snd_note $24
	snd_var iSndChInfo_LoopTimer0, $07
	.loop:
		snd_note $42
		snd_inc_vol -4
		snd_note $42
		snd_inc_vol 3
		snd_djnz iSndChInfo_LoopTimer0, .loop
	snd_end
SndData_62_Ch4:
	snd_noise 3, 7, 0
	snd_note $25, NOTELEN_01
	snd_noise 3, 1, 0
	snd_note $25
	snd_end
