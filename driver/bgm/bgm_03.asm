SndHeader_03:
	db 4 ; Number of slots
.slot0:
	db SNDSLOT0 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -24 ; iSndChInfo_NoteIdBase
	db 104 ; iSndChInfo_Speed
	db SNDCH_PULSE1 ; iSndChInfo_ChId
	dw SndData_03_Ch1 ; Data pointer
	nrx1 SNDDUTY_50, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot1:
	db SNDSLOT1 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 12 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -12 ; iSndChInfo_NoteIdBase
	db 104 ; iSndChInfo_Speed
	db SNDCH_WAVE ; iSndChInfo_ChId
	dw SndData_03_Ch3 ; Data pointer
	db WAVE_0D ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot2:
	db SNDSLOT2 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 10 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -12 ; iSndChInfo_NoteIdBase
	db 104 ; iSndChInfo_Speed
	db SNDCH_PULSE2 ; iSndChInfo_ChId
	dw SndData_03_Ch2 ; Data pointer
	nrx1 SNDDUTY_12, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
.slot3:
	db SNDSLOT3 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db 0 ; iSndChInfo_NoteIdBase
	db 104 ; iSndChInfo_Speed
	db SNDCH_NOISE ; iSndChInfo_ChId
	dw SndData_03_Ch4 ; Data pointer
	nrx1 SNDDUTY_12, $00 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_03_Ch1:
	snd_instrument INSTR_56
	snd_note $3C, NOTELEN_04
	snd_note $00, NOTELEN_02
	snd_instrument INSTR_NONE
	snd_inc_vol -13
	snd_note $3C, NOTELEN_04
	snd_note $00, NOTELEN_02
	snd_instrument INSTR_56
	snd_inc_vol 13
	snd_note $38, NOTELEN_04
	snd_note $00, NOTELEN_02
	snd_note $3A, NOTELEN_04
	snd_note $00, NOTELEN_02
	snd_instrument INSTR_NONE
	snd_inc_vol -13
	snd_note $3A, NOTELEN_04
	snd_note $00, NOTELEN_02
	snd_instrument INSTR_56
	snd_inc_vol 13
	snd_note $36, NOTELEN_04
	snd_note $00, NOTELEN_02
	snd_instrument INSTR_NONE
	snd_inc_vol -13
	snd_note $36, NOTELEN_04
	snd_note $00, NOTELEN_02
	snd_instrument INSTR_56
	snd_inc_vol 13
	snd_note $3C, NOTELEN_04
	snd_note $00, NOTELEN_02
	snd_instrument INSTR_NONE
	snd_inc_vol -13
	snd_note $3C, NOTELEN_04
	snd_note $00, NOTELEN_02
	snd_instrument INSTR_56
	snd_inc_vol 13
	snd_note $38, NOTELEN_04
	snd_note $00, NOTELEN_02
	snd_instrument INSTR_NONE
	snd_inc_vol -13
	snd_note $38, NOTELEN_04
	snd_note $00, NOTELEN_02
	snd_instrument INSTR_56
	snd_inc_vol 13
	snd_note $3A, NOTELEN_04
	snd_note $00, NOTELEN_02
	snd_instrument INSTR_NONE
	snd_inc_vol -13
	snd_note $3A, NOTELEN_04
	snd_note $00, NOTELEN_02
	snd_instrument INSTR_56
	snd_inc_vol 13
	snd_note $36, NOTELEN_04
	snd_note $00, NOTELEN_02
	snd_instrument INSTR_NONE
	snd_inc_vol -13
	snd_note $36, NOTELEN_04
	snd_note $00, NOTELEN_02
	snd_instrument INSTR_56
	snd_inc_vol 13
	snd_note $3D, NOTELEN_04
	snd_note $00, NOTELEN_02
	snd_note $3C, NOTELEN_04
	snd_note $00, NOTELEN_02
	snd_instrument INSTR_NONE
	snd_inc_vol -13
	snd_note $3C, NOTELEN_04
	snd_note $00, NOTELEN_02
	snd_instrument INSTR_56
	snd_inc_vol 13
	snd_note $38, NOTELEN_04
	snd_note $00, NOTELEN_02
	snd_note $3A, NOTELEN_04
	snd_note $00, NOTELEN_02
	snd_instrument INSTR_NONE
	snd_inc_vol -13
	snd_note $3A, NOTELEN_04
	snd_note $00, NOTELEN_02
	snd_instrument INSTR_56
	snd_inc_vol 13
	snd_note $36, NOTELEN_04
	snd_note $00, NOTELEN_02
	snd_instrument INSTR_NONE
	snd_inc_vol -13
	snd_note $36, NOTELEN_04
	snd_note $00, NOTELEN_02
	snd_instrument INSTR_56
	snd_inc_vol 13
	snd_note $3A, NOTELEN_04
	snd_note $00, NOTELEN_02
	snd_instrument INSTR_NONE
	snd_inc_vol -13
	snd_note $3A, NOTELEN_04
	snd_note $00, NOTELEN_02
	snd_instrument INSTR_56
	snd_inc_vol 13
	snd_note $36, NOTELEN_04
	snd_note $00, NOTELEN_02
	snd_instrument INSTR_NONE
	snd_inc_vol -13
	snd_note $36, NOTELEN_04
	snd_note $00, NOTELEN_02
	snd_instrument INSTR_56
	snd_inc_vol 13
	snd_note $38, NOTELEN_04
	snd_note $00, NOTELEN_02
	snd_instrument INSTR_NONE
	snd_inc_vol -13
	snd_note $38, NOTELEN_04
	snd_note $00, NOTELEN_02
	snd_instrument INSTR_56
	snd_inc_vol 13
	snd_note $35, NOTELEN_04
	snd_note $00, NOTELEN_02
	snd_instrument INSTR_NONE
	snd_inc_vol -13
	snd_note $35, NOTELEN_04
	snd_note $00, NOTELEN_02
	snd_instrument INSTR_56
	snd_inc_vol 13
	snd_note $38, NOTELEN_04
	snd_note $00, NOTELEN_02
	snd_note $3C, NOTELEN_04
	snd_note $00, NOTELEN_02
	snd_instrument INSTR_NONE
	snd_inc_vol -13
	snd_note $3C, NOTELEN_04
	snd_note $00, NOTELEN_02
	snd_instrument INSTR_56
	snd_inc_vol 13
	snd_note $38, NOTELEN_04
	snd_note $00, NOTELEN_02
	snd_note $3A, NOTELEN_04
	snd_note $00, NOTELEN_02
	snd_instrument INSTR_NONE
	snd_inc_vol -13
	snd_note $3A, NOTELEN_04
	snd_note $00, NOTELEN_02
	snd_instrument INSTR_56
	snd_inc_vol 13
	snd_note $36, NOTELEN_04
	snd_note $00, NOTELEN_02
	snd_instrument INSTR_NONE
	snd_inc_vol -13
	snd_note $36, NOTELEN_04
	snd_note $00, NOTELEN_02
	snd_instrument INSTR_56
	snd_inc_vol 13
	snd_note $3C, NOTELEN_04
	snd_note $00, NOTELEN_02
	snd_instrument INSTR_NONE
	snd_inc_vol -13
	snd_note $3C, NOTELEN_04
	snd_note $00, NOTELEN_02
	snd_instrument INSTR_56
	snd_inc_vol 13
	snd_note $38, NOTELEN_04
	snd_note $00, NOTELEN_02
	snd_instrument INSTR_NONE
	snd_inc_vol -13
	snd_note $38, NOTELEN_04
	snd_note $00, NOTELEN_02
	snd_instrument INSTR_56
	snd_inc_vol 13
	snd_note $3A, NOTELEN_04
	snd_note $00, NOTELEN_02
	snd_instrument INSTR_NONE
	snd_inc_vol -13
	snd_note $3A, NOTELEN_04
	snd_note $00, NOTELEN_02
	snd_instrument INSTR_56
	snd_inc_vol 13
	snd_note $36, NOTELEN_04
	snd_note $00, NOTELEN_02
	snd_instrument INSTR_NONE
	snd_inc_vol -13
	snd_note $36, NOTELEN_04
	snd_note $00, NOTELEN_02
	snd_instrument INSTR_56
	snd_inc_vol 13
	snd_note $3D, NOTELEN_04
	snd_note $00, NOTELEN_02
	snd_note $3C, NOTELEN_04
	snd_note $00, NOTELEN_02
	snd_instrument INSTR_NONE
	snd_inc_vol -13
	snd_note $3C, NOTELEN_04
	snd_note $00, NOTELEN_02
	snd_instrument INSTR_56
	snd_inc_vol 13
	snd_note $38, NOTELEN_04
	snd_note $00, NOTELEN_02
	snd_note $3A, NOTELEN_04
	snd_note $00, NOTELEN_02
	snd_instrument INSTR_NONE
	snd_inc_vol -13
	snd_note $3A, NOTELEN_04
	snd_note $00, NOTELEN_02
	snd_instrument INSTR_56
	snd_inc_vol 13
	snd_note $36, NOTELEN_04
	snd_note $00, NOTELEN_02
	snd_instrument INSTR_NONE
	snd_inc_vol -13
	snd_note $36, NOTELEN_04
	snd_note $00, NOTELEN_02
	snd_instrument INSTR_56
	snd_inc_vol 13
	snd_note $38, NOTELEN_04
	snd_note $00, NOTELEN_02
	snd_instrument INSTR_NONE
	snd_inc_vol -13
	snd_note $38, NOTELEN_04
	snd_note $00, NOTELEN_CUSTOM, $2C
	snd_inc_vol 13
	snd_jp SndData_03_Ch1
SndData_03_Ch3:
	snd_instrument INSTR_56
	snd_note $20, NOTELEN_03
	snd_note $00, NOTELEN_09
	snd_note $27, NOTELEN_03
	snd_note $00
	snd_note $1E
	snd_note $00, NOTELEN_09
	snd_note $25, NOTELEN_03
	snd_note $00, NOTELEN_09
	snd_note $20, NOTELEN_03
	snd_note $00
	snd_note $00, NOTELEN_06
	snd_note $27, NOTELEN_03
	snd_note $00, NOTELEN_09
	snd_note $1E, NOTELEN_03
	snd_note $00, NOTELEN_09
	snd_note $25, NOTELEN_03
	snd_note $00, NOTELEN_09
	snd_note $1E, NOTELEN_03
	snd_note $00
	snd_note $20
	snd_note $00, NOTELEN_09
	snd_note $27, NOTELEN_03
	snd_note $00
	snd_note $1E
	snd_note $00, NOTELEN_09
	snd_note $25, NOTELEN_03
	snd_note $00, NOTELEN_09
	snd_note $23, NOTELEN_03
	snd_note $00
	snd_note $00, NOTELEN_06
	snd_note $27, NOTELEN_03
	snd_note $00, NOTELEN_09
	snd_note $22, NOTELEN_03
	snd_note $00, NOTELEN_09
	snd_note $24, NOTELEN_03
	snd_note $00
	snd_note $25
	snd_note $00
	snd_note $27
	snd_note $00
	snd_note $20
	snd_note $00, NOTELEN_09
	snd_note $27, NOTELEN_03
	snd_note $00
	snd_note $1E
	snd_note $00, NOTELEN_09
	snd_note $25, NOTELEN_03
	snd_note $00, NOTELEN_09
	snd_note $20, NOTELEN_03
	snd_note $00
	snd_note $00, NOTELEN_06
	snd_note $27, NOTELEN_03
	snd_note $00, NOTELEN_09
	snd_note $1E, NOTELEN_03
	snd_note $00, NOTELEN_09
	snd_note $25, NOTELEN_03
	snd_note $00, NOTELEN_09
	snd_note $1E, NOTELEN_03
	snd_note $00
	snd_note $20
	snd_note $00, NOTELEN_09
	snd_note $27, NOTELEN_03
	snd_note $00
	snd_note $1E
	snd_note $00, NOTELEN_09
	snd_note $25, NOTELEN_03
	snd_note $00, NOTELEN_09
	snd_note $20, NOTELEN_03
	snd_note $00
	snd_note $00, NOTELEN_30
	snd_jp SndData_03_Ch3
SndData_03_Ch2:
	snd_note $00, NOTELEN_30
	snd_note $00
	snd_note $00
	snd_note $00
	snd_note $00
	snd_note $00
	snd_note $00
	snd_note $00
	snd_instrument INSTR_05
	snd_note $3F, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol -10
	snd_note $3F, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol 10
	snd_note $3C, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol -10
	snd_note $3C, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol 10
	snd_note $3F, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol -10
	snd_note $3F, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol 10
	snd_note $3D, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol -10
	snd_note $3D, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol 10
	snd_note $3F, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol -10
	snd_note $3F, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol 10
	snd_note $3D, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol -10
	snd_note $3D, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol 10
	snd_note $3F, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol -10
	snd_note $3F, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol 10
	snd_note $3C, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol -10
	snd_note $3C, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol 10
	snd_note $3F, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol -10
	snd_note $3F, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol 10
	snd_note $3C, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol -10
	snd_note $3C, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol 10
	snd_note $3F, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol -10
	snd_note $3F, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol 10
	snd_note $3D, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol -10
	snd_note $3D, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol 10
	snd_note $3A, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol -10
	snd_note $3A, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol 10
	snd_note $3D, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol -10
	snd_note $3D, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol 10
	snd_note $3A, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol -10
	snd_note $3A, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol 10
	snd_note $3D, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol -10
	snd_note $3D, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol 10
	snd_note $3C, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol -10
	snd_note $3C, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol 10
	snd_note $3F, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol -10
	snd_note $3F, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol 10
	snd_note $3C, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol -10
	snd_note $3C, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol 10
	snd_note $3D, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol -10
	snd_note $3D, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol 10
	snd_note $3F, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol -10
	snd_note $3F, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol 10
	snd_note $3D, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol -10
	snd_note $3D, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol 10
	snd_note $3F, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol -10
	snd_note $3F, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol 10
	snd_note $3F, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol -10
	snd_note $3F, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol 10
	snd_note $3A, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol -10
	snd_note $3A, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol 10
	snd_note $3F, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol -10
	snd_note $3F, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol 10
	snd_note $3A, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol -10
	snd_note $3A, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol 10
	snd_note $3D, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol -10
	snd_note $3D, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol 10
	snd_note $3A, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol -10
	snd_note $3A, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol 10
	snd_note $3D, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol -10
	snd_note $3D, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol 10
	snd_note $3A, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol -10
	snd_note $3A, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol 10
	snd_note $3D, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol -10
	snd_note $3D, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol 10
	snd_note $3C, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol -10
	snd_note $3C, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol 10
	snd_note $3F, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol -10
	snd_note $3F, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol 10
	snd_note $3C, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol -10
	snd_note $3C, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol 10
	snd_note $3F, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol -10
	snd_note $3F, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol 10
	snd_note $3D, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol -10
	snd_note $3D, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol 10
	snd_note $3F, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol -10
	snd_note $3F, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol 10
	snd_note $3D, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol -10
	snd_note $3D, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol 10
	snd_note $3F, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol -10
	snd_note $3F, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol 10
	snd_note $3C, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol -10
	snd_note $3C, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol 10
	snd_note $3F, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol -10
	snd_note $3F, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol 10
	snd_note $3C, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol -10
	snd_note $3C, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol 10
	snd_note $3D, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol -10
	snd_note $3D, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol 10
	snd_note $3A, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol -10
	snd_note $3A, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol 10
	snd_note $3D, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol -10
	snd_note $3D, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol 10
	snd_note $3A, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol -10
	snd_note $3A, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol 10
	snd_note $3D, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol -10
	snd_note $3D, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol 10
	snd_note $3C, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol -10
	snd_note $3C, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol 10
	snd_note $3F, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol -10
	snd_note $3F, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol 10
	snd_note $3C, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol -10
	snd_note $3C, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol 10
	snd_note $3F, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol -10
	snd_note $3F, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol 10
	snd_note $3D, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol -10
	snd_note $3D, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol 10
	snd_note $3F, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol -10
	snd_note $3F, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol 10
	snd_note $3D, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol -10
	snd_note $3D, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol 10
	snd_note $3C, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_inc_vol -10
	snd_note $3C, NOTELEN_02
	snd_note $00, NOTELEN_01
	snd_note $00, NOTELEN_30
	snd_inc_vol 10
	snd_jp SndData_03_Ch2
SndData_03_Ch4:
	snd_var iSndChInfo_LoopTimer1, $02
	.loop0:
		snd_var iSndChInfo_LoopTimer0, $03
		.loop1:
			snd_noteex PRESET_04, NOTELEN_06
			snd_noteex PRESET_02
			snd_noteex PRESET_04
			snd_noteex PRESET_02
			snd_noteex PRESET_04
			snd_noteex PRESET_02
			snd_noteex PRESET_04
			snd_noteex PRESET_02
			snd_noteex PRESET_04
			snd_noteex PRESET_02
			snd_noteex PRESET_04
			snd_noteex PRESET_02
			snd_noteex PRESET_04
			snd_noteex PRESET_02
			snd_noteex PRESET_04
			snd_noteex PRESET_02, NOTELEN_03
			snd_noteex PRESET_02
			snd_djnz iSndChInfo_LoopTimer0, .loop1
		snd_noteex PRESET_04, NOTELEN_0C
		snd_noteex PRESET_04
		snd_noteex PRESET_04
		snd_noteex PRESET_04
		snd_noteex PRESET_04
		snd_noteex PRESET_04, NOTELEN_06
		snd_noteex PRESET_02
		snd_noteex PRESET_04
		snd_noteex PRESET_02
		snd_noteex PRESET_04, NOTELEN_0C
	snd_djnz iSndChInfo_LoopTimer1, .loop0
	snd_jp SndData_03_Ch4
	
