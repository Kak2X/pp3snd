SndHeader_67:
	db 2 ; Number of slots
.slot0:
	db SNDSLOT5 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -12 ; iSndChInfo_NoteIdBase
	db 0 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_67_Ch2 ; Data pointer
	nrx1 SNDDUTY_25, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot1:
	db SNDSLOT6 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db 0 ; iSndChInfo_NoteIdBase
	db 0 ; iSndChInfo_Speed
	db SNDCH_WAVE ; iSndChInfo_ChId
	dw SndData_67_Ch3 ; Data pointer
	db WAVE_05 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_67_Ch3:
	snd_note $00, NOTELEN_02
SndData_67_Ch2:
	snd_note $39, NOTELEN_01
	snd_note $3B
	snd_note $3D
	snd_note $3B
	snd_note $3D
	snd_note $3F
	snd_note $3D
	snd_note $3B
	snd_note $3D
	snd_note $41
	snd_note $3F
	snd_note $41
	snd_note $43
	snd_note $41
	snd_note $3F
	snd_note $45
	snd_note $43
	snd_note $47
	snd_note $43
	snd_note $41
	snd_note $43
	snd_note $45
	snd_note $43
	snd_note $49
	snd_note $45
	snd_note $47
	snd_note $43
	snd_note $45
	snd_end
