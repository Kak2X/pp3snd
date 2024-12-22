SndHeader_SFX_64:
	db 1 ; Number of slots
.slot0:
	db SNDSLOT4 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -24 ; iSndChInfo_NoteIdBase
	db 0 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_64_Ch2 ; Data pointer
	nrx1 SNDDUTY_12, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_64_Ch2:
	snd_note $45, NOTELEN_01
	snd_note $48
	snd_note $47
	snd_duty SNDDUTY_25, $00
	snd_var iSndChInfo_LoopTimer0, $0A
	.loop:
		snd_note $4A
		snd_note $47
		snd_inc_base_note -1
		snd_inc_freq_offset -5
		snd_inc_vol -1
		snd_djnz iSndChInfo_LoopTimer0, .loop
	snd_end
