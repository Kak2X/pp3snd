SndHeader_4E:
	db 2 ; Number of slots
.slot0:
	db SNDSLOT5 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 11 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -12 ; iSndChInfo_NoteIdBase
	db 0 ; iSndChInfo_Speed
	db SNDCH_PULSE1 ; iSndChInfo_ChId
	dw SndData_4E_Ch1 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot1:
	db SNDSLOT6 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 8 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -12 ; iSndChInfo_NoteIdBase
	db 0 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_4E_Ch2 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_4E_Ch2:
	snd_note $00, NOTELEN_03
	snd_inc_freq_offset -1
SndData_4E_Ch1:
	snd_inc_base_note 3
	snd_instrument INSTR_04
	snd_vibrato VIBRATO_03
	snd_var iSndChInfo_LoopTimer0, $05
	.loop:
		snd_note $50, NOTELEN_04
		snd_inc_vol 2
		snd_note $55
		snd_inc_vol 1
		snd_note $59
		snd_inc_vol 1
		snd_note $5C
		snd_inc_base_note -1
		snd_inc_vol -6
		snd_djnz iSndChInfo_LoopTimer0, .loop
	snd_end
