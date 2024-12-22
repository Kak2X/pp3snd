SndHeader_SFX_56:
	db 1 ; Number of slots
.slot0:
	db SNDSLOT4 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -20 ; iSndChInfo_NoteIdBase
	db 0 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_56_Ch2 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_56_Ch2:
	snd_fade SSF_FADEOUT, 0, 176
	snd_sets3
	snd_note $3A, NOTELEN_01
	snd_note $3C
	snd_note $3E
	snd_note $40
	snd_note $3D
	snd_note $3A
	snd_note $37
	snd_note $34
	snd_note $31
	snd_note $2F
	snd_note $31
	snd_note $34
	snd_note $37
	snd_note $3A
	snd_note $3D
	snd_note $40
	snd_note $3D
	snd_note $3A
	snd_note $37
	snd_note $34
	snd_note $31
	snd_note $2F
	snd_end
