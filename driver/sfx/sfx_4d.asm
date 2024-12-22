SndHeader_SFX_4D:
	db 2 ; Number of slots
.slot0:
	db SNDSLOT5 ; Slot location
	db SST_CH123|SST_2 ; iSndChInfo_Status
	db 13 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -12 ; iSndChInfo_NoteIdBase
	db 0 ; iSndChInfo_Speed
	db SNDCH_PULSE1 ; iSndChInfo_ChId
	dw SndData_4D_Ch1 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot1:
	db SNDSLOT6 ; Slot location
	db SST_CH123|SST_2 ; iSndChInfo_Status
	db 10 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -12 ; iSndChInfo_NoteIdBase
	db 0 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_4D_Ch2 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_4D_Ch2:
	snd_note $00, NOTELEN_03
	snd_inc_freq_offset -1
SndData_4D_Ch1:
	snd_instrument INSTR_05
	snd_vibrato VIBRATO_02
	snd_note $5C, NOTELEN_CUSTOM, $73
	snd_end
