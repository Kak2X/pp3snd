SndHeader_63:
	db 1 ; Number of slots
.slot0:
	db SNDSLOT4 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -15 ; iSndChInfo_NoteIdBase
	db 0 ; iSndChInfo_Speed
	db SNDCH_NOISE ; iSndChInfo_ChId
	dw SndData_63_Ch4 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_63_Ch4:
	snd_fade SSF_FADEOUT, 0, 255
	snd_noise 4, 7, 0
	snd_note $25, NOTELEN_01
	snd_note $29
	snd_noise 3, 6, 0
	snd_note $19, NOTELEN_01
	snd_noise 3, 0, 0
	snd_note $19
	snd_noise 0, 0, SBDCH4_LFSR7
	snd_note $3D
	snd_noise 3, 4, 0
	snd_note $19, NOTELEN_01
	snd_noise 3, 3, 0
	snd_note $19
	snd_noise 3, 2, 0
	snd_note $19
	snd_noise 3, 1, 0
	snd_note $19
	snd_noise 3, 0, 0
	snd_note $19, NOTELEN_02
	snd_end
