SndHeader_SFX_5D:
	db 1 ; Number of slots
.slot0:
	db SNDSLOT4 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db 0 ; iSndChInfo_NoteIdBase
	db 220 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_5D_Ch2 ; Data pointer
	nrx1 SNDDUTY_25, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_5D_Ch2:
	snd_var iSndChInfo_LoopTimer0, $0A
	.loop:
		snd_note $19, NOTELEN_01
		snd_note $0D
		snd_inc_vol -2
		snd_inc_freq_offset -24
		snd_djnz iSndChInfo_LoopTimer0, .loop
	snd_end
	snd_noise 4, 7, 0
	snd_noise_sweep 0, 7, SBDCH4_LFSR7 ;X
	snd_note $0D, NOTELEN_30 ;X
	snd_end ;X
