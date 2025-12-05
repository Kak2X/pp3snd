SndHeader_SFX_58:
	db 2 ; Number of slots
.slot0:
	db SNDSLOT4 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 10 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db 0 ; iSndChInfo_NoteIdBase
	db 150 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_58_Ch2 ; Data pointer
	db $80 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot1:
	db SNDSLOT5 ; Slot location
	db SST_CH4 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db 0 ; iSndChInfo_NoteIdBase
	db 150 ; iSndChInfo_Speed
	db SNDCH_NOISE ; iSndChInfo_ChId
	dw SndData_58_Ch4 ; Data pointer
	db $80 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_58_Ch2:
	note $00, NOTELEN_09
	set_s3
	note $47, NOTELEN_03
	note $53
	note $47
	note $53
	note $47
	note $53
	note $47
	set_var iSndChInfo_LoopTimer0, $05
	.loop:
		note $4D
		note $59
		volume_add -2
		snd_loop .loop, iSndChInfo_LoopTimer0
	chan_stop
SndData_58_Ch4:
	noise_freq $32
	set_var iSndChInfo_LoopTimer0, $05
	.loop:
		note $25, NOTELEN_CUSTOM, $06
		volume_add -3
		snd_loop .loop, iSndChInfo_LoopTimer0
	chan_stop
