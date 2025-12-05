SndHeader_SFX_5F:
	db 1 ; Number of slots
.slot0:
	db SNDSLOT6 ; Slot location
	db SST_CH123|SST_PAUSEREST ; iSndChInfo_Status
	db 11 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_16 ; iSndChInfo_Vibrato
	db 0 ; iSndChInfo_NoteIdBase
	db 90 ; iSndChInfo_Speed
	db SNDCH_PULSE1 ; iSndChInfo_ChId
	dw SndData_5F_Ch1 ; Data pointer
	db $80 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_5F_Ch1:
	note $25, NOTELEN_01
	fade SSF_FADEOUT, 15, 32
	note $20, NOTELEN_04
	chan_stop
