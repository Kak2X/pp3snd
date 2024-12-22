SndHeader_SFX_3B:
	db 1 ; Number of slots
.slot0:
	db SNDSLOT4 ; Slot location
	db SST_CH4 ; iSndChInfo_Status
	db 12 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -12 ; iSndChInfo_NoteIdBase
	db 0 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_3B_Ch2 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_3B_Ch2:
	snd_noise_sweep 0, 7, 0
	snd_note $33, NOTELEN_01
	snd_note $6A
	snd_note $62
	snd_end
