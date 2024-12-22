SndHeader_3F:
	db 1 ; Number of slots
.slot0:
	db SNDSLOT5 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 12 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -12 ; iSndChInfo_NoteIdBase
	db 0 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_3F_Ch2 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_3F_Ch2:
	snd_note $1D, NOTELEN_01
	snd_status SST_CH4
	snd_noise_sweep 0, 7, 0
	snd_note $55, NOTELEN_02
	snd_inc_vol -5
	snd_note $3D
	snd_inc_vol -5
	snd_note $31
	snd_end
