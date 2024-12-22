SndHeader_SFX_41:
	db 2 ; Number of slots
.slot0:
	db SNDSLOT5 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -32 ; iSndChInfo_NoteIdBase
	db 0 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_41_Ch2 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot1:
	db SNDSLOT6 ; Slot location
	db SST_CH4 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -18 ; iSndChInfo_NoteIdBase
	db 0 ; iSndChInfo_Speed
	db SNDCH_NOISE ; iSndChInfo_ChId
	dw SndData_41_Ch4 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_41_Ch2:
	snd_var iSndChInfo_LoopTimer0, $0C
	.loop:
		snd_note $29, NOTELEN_01
		snd_note $24, NOTELEN_02
		snd_inc_vol -2
		snd_djnz iSndChInfo_LoopTimer0, .loop
	snd_end
SndData_41_Ch4:
	snd_toggle_keyhold
	snd_noise 8, 0, 0
	snd_fade SSF_FADEOUT, 4, 112
	.loop:
		snd_note $22, NOTELEN_06
		snd_jpfade .loop
	snd_end
