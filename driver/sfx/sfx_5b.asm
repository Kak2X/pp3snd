SndHeader_SFX_5B:
	db 1 ; Number of slots
.slot0:
	db SNDSLOT4 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 12 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_15 ; iSndChInfo_Vibrato
	db -18 ; iSndChInfo_NoteIdBase
	db 200 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_5B_Ch2 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_5B_Ch2:
	snd_note $34, NOTELEN_03
	snd_note $40, NOTELEN_01
	snd_instrument INSTR_0A
	snd_note $3A, NOTELEN_0C
	snd_end
