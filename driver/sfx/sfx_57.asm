SndHeader_SFX_57:
	db 2 ; Number of slots
.slot0:
	db SNDSLOT4 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -13 ; iSndChInfo_NoteIdBase
	db 255 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_57_Ch2 ; Data pointer
	db $80 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot1:
	db SNDSLOT5 ; Slot location
	db SST_CH4 ; iSndChInfo_Status
	db 4 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -13 ; iSndChInfo_NoteIdBase
	db 255 ; iSndChInfo_Speed
	db SNDCH_NOISE ; iSndChInfo_ChId
	dw SndData_57_Ch4 ; Data pointer
	db $80 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_57_Ch2:
	note $00, NOTELEN_04
	set_s3
	set_var iSndChInfo_LoopTimer0, $03
	.loop:
		note $3B, NOTELEN_01
		note $35
		note $2F
		note $23
		note $00, NOTELEN_04
		volume_add -4
		snd_loop .loop, iSndChInfo_LoopTimer0
	chan_stop
SndData_57_Ch4:
	noise_freq $45
	note $25, NOTELEN_01
	noise_freq $43
	volume_add 4
	note $25
	noise_freq $41
	volume_add 4
	note $25
	noise_freq $31
	volume_add 4
	note $25
	chan_stop
