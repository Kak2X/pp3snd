SndHeader_40:
	db 2 ; Number of slots
.slot0:
	db SNDSLOT5 ; Slot location
	db SST_CH4 ; iSndChInfo_Status
	db 12 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -12 ; iSndChInfo_NoteIdBase
	db 0 ; iSndChInfo_Speed
	db SNDCH_PULSE1 ; iSndChInfo_ChId
	dw SndData_40_Ch1 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot1:
	db SNDSLOT6 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 12 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -12 ; iSndChInfo_NoteIdBase
	db 0 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_40_Ch2 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_40_Ch1:
	snd_noise_sweep 0, 7, 0
	snd_note $25, NOTELEN_01
	snd_note $49
	snd_note $25
	snd_note $49
	snd_note $25
	snd_status SST_CH123
.fadeOut:
	snd_fade SSF_FADEOUT, 4, 160
	snd_note $4D, NOTELEN_12
	snd_end
SndData_40_Ch2:
	snd_note $3A, NOTELEN_01
	snd_note $00
	snd_note $2E
	snd_note $00
	snd_note $22
	snd_inc_freq_offset -5
	snd_jp SndData_40_Ch1.fadeOut
