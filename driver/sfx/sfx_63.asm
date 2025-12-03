SndHeader_SFX_63:
	db 1 ; Number of slots
.slot0:
	db SNDSLOT4 ; Slot location
	db SST_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_Vol
	db INSTR_NONE ; iSndChInfo_Instrument
	db VIBRATO_NONE ; iSndChInfo_Vibrato
	db -15 ; iSndChInfo_NoteIdBase
	db 0 ; iSndChInfo_Speed
	db SNDCH_NOISE ; iSndChInfo_ChId
	dw SndData_63_Ch4 ; Data pointer
	db $80 ; iSndChInfo_DutyOrWave
	db SNDOUT_CHALL ; iSndChInfo_Pan
SndData_63_Ch4:
	snd_fade SSF_FADEOUT, 0, 255
	snd_noise $47
	snd_note $25, NOTELEN_01
	snd_note $29
	snd_noise $36
	snd_note $19, NOTELEN_01
	snd_noise $30
	snd_note $19
	snd_noise $08
	snd_note $3D
	snd_noise $34
	snd_note $19, NOTELEN_01
	snd_noise $33
	snd_note $19
	snd_noise $32
	snd_note $19
	snd_noise $31
	snd_note $19
	snd_noise $30
	snd_note $19, NOTELEN_02
	snd_end
