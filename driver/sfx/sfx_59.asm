SndHeader_59:
	db 4 ; Number of slots
.slot0:
	db SNDSLOT4 ; Slot location
	db SST_CH123|SST_PRIORITY|SST_7 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -18 ; iSndChInfo_NoteIdBase
	db 157 ; iSndChInfo_Speed
	db SNDCH_PULSE1 ; iSndChInfo_ChId
	dw SndData_59_Ch1 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot1:
	db SNDSLOT5 ; Slot location
	db SST_CH123|SST_7 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -6 ; iSndChInfo_NoteIdBase
	db 157 ; iSndChInfo_Speed
	db SNDCH_WAVE ; iSndChInfo_ChId
	dw SndData_59_Ch3 ; Data pointer
	db $80 ; [PLACEHOLDER] ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot2:
	db SNDSLOT6 ; Slot location
	db SST_CH123|SST_7 ; iSndChInfo_Status
	db 10 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -18 ; iSndChInfo_NoteIdBase
	db 157 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_59_Ch2 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot3:
	db SNDSLOT7 ; Slot location
	db SST_CH4|SST_7 ; iSndChInfo_Status
	db 0 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db 0 ; iSndChInfo_NoteIdBase
	db 157 ; iSndChInfo_Speed
	db SNDCH_NOISE ; iSndChInfo_ChId
	dw SndData_59_Ch4 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_59_Ch2:
	snd_note $00, NOTELEN_CUSTOM, $05
	snd_inc_freq_offset -2
SndData_59_Ch1:
	snd_duty SNDDUTY_25, $00
	snd_note $2F, NOTELEN_03
	snd_note $2C
	snd_note $2F
	snd_note $34
	snd_note $32
	snd_note $2D
	snd_note $32
	snd_fade SSF_FADEOUT, 0, 72
	snd_note $38
	snd_note $34
	snd_note $2C
	snd_note $2F
	snd_note $34
	snd_note $38
	snd_note $2C
	snd_note $2F
	snd_note $34
	snd_note $38
	snd_note $2C
	snd_note $2F
	snd_note $34
	snd_note $38
	snd_end
SndData_59_Ch3:
	snd_wave WAVE_09
	snd_note $34, NOTELEN_03
	snd_note $2F
	snd_note $34
	snd_note $38
	snd_note $36
	snd_note $32
	snd_note $36
	snd_fade SSF_FADEOUT, 0, 72
	snd_note $3D
	snd_note $3B
	snd_note $2F
	snd_note $34
	snd_note $38
	snd_note $3B
	snd_note $2F
	snd_note $34
	snd_note $38
	snd_note $3B
	snd_note $2F
	snd_note $34
	snd_note $38
	snd_note $3B
	snd_end
SndData_59_Ch4:
	snd_note $25, NOTELEN_CUSTOM, $3F
	snd_end
