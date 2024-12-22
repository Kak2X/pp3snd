SndHeader_SFX_2A:
	db 1 ; Number of slots
.slot0:
	db SNDSLOT4 ; Slot location
	db SST_CH123|SST_PRIORITY ; iSndChInfo_Status
	db 11 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -12 ; iSndChInfo_NoteIdBase
	db 0 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_2A_Ch2 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_2A_Ch2:
	snd_note $4D, NOTELEN_01
	snd_note $40
	snd_end
