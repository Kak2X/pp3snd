SndHeader_49:
	db 2 ; Number of slots
.slot0:
	db SNDSLOT5 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -14 ; iSndChInfo_NoteIdBase
	db 0 ; iSndChInfo_Speed
	db SNDCH_PULSE1 ; iSndChInfo_ChId
	dw SndData_49_Ch1 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot1:
	db SNDSLOT6 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 11 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -14 ; iSndChInfo_NoteIdBase
	db 0 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_49_Ch2 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_49_Ch2:
	snd_note $00, NOTELEN_09
	snd_inc_freq_offset -2
SndData_49_Ch1:
	snd_inc_vol -4
	snd_note_slide SSE_NSDOWN, 4
	snd_sets3
	snd_note $38, NOTELEN_02
	snd_inc_vol 1
	snd_note $38, NOTELEN_01
	snd_inc_vol 2
	snd_clrs3
	snd_note_slide SSE_NSUP, 3
	snd_inc_vol -2
	snd_note $30, NOTELEN_08
	snd_inc_vol -2
	snd_note $36
	snd_note $3D
	snd_note $44
	snd_note $49
	snd_end
