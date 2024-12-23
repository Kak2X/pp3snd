; =============== Sound_InstrumentPtrTable ===============
; Pointers to the various instruments.
; These can be used by all four channels, though the Wave channel will only use the topmost two volume bits.
; See also: Sound_DoInstrument
Sound_InstrumentPtrTable:
	dw SndInstrument_01   ; $01 ; INSTR_01
	dw SndInstrument_02   ; $02 ; INSTR_02
	dw SndInstrument_03   ; $03 ; INSTR_03
	dw SndInstrument_04   ; $04 ; INSTR_04
	dw SndInstrument_05   ; $05 ; INSTR_05
	dw SndInstrument_06   ; $06 ; INSTR_06
	dw SndInstrument_07   ; $07 ; INSTR_07
	dw SndInstrument_08   ; $08 ; INSTR_08
	dw SndInstrument_09   ; $09 ; INSTR_09
	dw SndInstrument_0A   ; $0A ; INSTR_0A
	dw SndInstrument_0B   ; $0B ; INSTR_0B
	dw SndInstrument_0C   ; $0C ; INSTR_0C
	dw SndInstrument_0D   ; $0D ; INSTR_0D
	dw SndInstrument_0E   ; $0E ; INSTR_0E
	dw SndInstrument_0F   ; $0F ; INSTR_0F
	dw SndInstrument_10   ; $10 ; INSTR_10
	dw SndInstrument_11   ; $11 ; INSTR_11
	dw SndInstrument_12   ; $12 ; INSTR_12
	dw SndInstrument_13   ; $13 ; INSTR_13
	dw SndInstrument_14   ; $14 ; INSTR_14
	dw SndInstrument_15   ; $15 ; INSTR_15
	dw SndInstrument_16   ; $16 ; INSTR_16
	dw SndInstrument_17   ; $17 ; INSTR_17
	dw SndInstrument_18   ; $18 ; INSTR_18
	dw SndInstrument_19   ; $19 ; INSTR_19
	dw SndInstrument_1A   ; $1A ; INSTR_1A
	dw SndInstrument_1B   ; $1B ; INSTR_1B
	dw SndInstrument_1C;X ; $1C ; INSTR_1C
	dw SndInstrument_1C;X ; $1D ; INSTR_1D
	dw SndInstrument_1C   ; $1E ; INSTR_1E
	dw SndInstrument_1F;X ; $1F ; INSTR_1F
	dw SndInstrument_1F;X ; $20 ; INSTR_20
	dw SndInstrument_1F;X ; $21 ; INSTR_21
	dw SndInstrument_1F;X ; $22 ; INSTR_22
	dw SndInstrument_1F;X ; $23 ; INSTR_23
	dw SndInstrument_1F;X ; $24 ; INSTR_24
	dw SndInstrument_1F;X ; $25 ; INSTR_25
	dw SndInstrument_1F;X ; $26 ; INSTR_26
	dw SndInstrument_1F;X ; $27 ; INSTR_27
	dw SndInstrument_1F;X ; $28 ; INSTR_28
	dw SndInstrument_1F;X ; $29 ; INSTR_29
	dw SndInstrument_1F;X ; $2A ; INSTR_2A
	dw SndInstrument_1F;X ; $2B ; INSTR_2B
	dw SndInstrument_1F;X ; $2C ; INSTR_2C
	dw SndInstrument_1F;X ; $2D ; INSTR_2D
	dw SndInstrument_2E   ; $2E ; INSTR_2E
	dw SndInstrument_2F   ; $2F ; INSTR_2F
	dw SndInstrument_30   ; $30 ; INSTR_30
	dw SndInstrument_31   ; $31 ; INSTR_31
	dw SndInstrument_32   ; $32 ; INSTR_32
	dw SndInstrument_33   ; $33 ; INSTR_33
	dw SndInstrument_34   ; $34 ; INSTR_34
	dw SndInstrument_35   ; $35 ; INSTR_35
	dw SndInstrument_36   ; $36 ; INSTR_36
	dw SndInstrument_37   ; $37 ; INSTR_37
	dw SndInstrument_38   ; $38 ; INSTR_38
	dw SndInstrument_39   ; $39 ; INSTR_39
	dw SndInstrument_3A   ; $3A ; INSTR_3A
	dw SndInstrument_3B   ; $3B ; INSTR_3B
	dw SndInstrument_3C   ; $3C ; INSTR_3C
	dw SndInstrument_3D   ; $3D ; INSTR_3D
	dw SndInstrument_3E   ; $3E ; INSTR_3E
	dw SndVibrato_5B;X    ; $3F ; INSTR_3F
	dw SndInstrument_40   ; $40 ; INSTR_40
	dw SndInstrument_41   ; $41 ; INSTR_41
	dw SndInstrument_42   ; $42 ; INSTR_42
	dw SndVibrato_5B;X    ; $43 ; INSTR_43
	dw SndVibrato_5B;X    ; $44 ; INSTR_44
	dw SndVibrato_5B;X    ; $45 ; INSTR_45
	dw SndVibrato_5B;X    ; $46 ; INSTR_46
	dw SndVibrato_5B;X    ; $47 ; INSTR_47
	dw SndVibrato_5B;X    ; $48 ; INSTR_48
	dw SndVibrato_5B;X    ; $49 ; INSTR_49
	dw SndVibrato_5B;X    ; $4A ; INSTR_4A
	dw SndVibrato_5B;X    ; $4B ; INSTR_4B
	dw SndVibrato_5B;X    ; $4C ; INSTR_4C
	dw SndVibrato_5B;X    ; $4D ; INSTR_4D
	dw SndVibrato_5B;X    ; $4E ; INSTR_4E
	dw SndVibrato_5B;X    ; $4F ; INSTR_4F
	dw SndVibrato_5B;X    ; $50 ; INSTR_50
	dw SndVibrato_5B;X    ; $51 ; INSTR_51
	dw SndVibrato_5B;X    ; $52 ; INSTR_52
	dw SndVibrato_5B;X    ; $53 ; INSTR_53
	dw SndVibrato_5B;X    ; $54 ; INSTR_54
	dw SndVibrato_5B;X    ; $55 ; INSTR_55
	dw SndInstrument_56   ; $56 ; INSTR_56
	dw SndInstrument_57   ; $57 ; INSTR_57
	dw SndInstrument_58   ; $58 ; INSTR_58
	dw SndInstrument_59;X ; $59 ; INSTR_59
	dw SndInstrument_5A   ; $5A ; INSTR_5A
	dw SndInstrument_5B   ; $5B ; INSTR_5B
	dw SndInstrument_5C   ; $5C ; INSTR_5C
	dw SndInstrument_5D   ; $5D ; INSTR_5D
	dw SndInstrument_5E   ; $5E ; INSTR_5E
	dw SndInstrument_5F   ; $5F ; INSTR_5F
	dw SndInstrument_60   ; $60 ; INSTR_60
	dw SndInstrument_61   ; $61 ; INSTR_61
	dw SndInstrument_62   ; $62 ; INSTR_62
	dw SndInstrument_63   ; $63 ; INSTR_63
	dw SndInstrument_64;X ; $64 ; INSTR_64
	dw SndInstrument_65   ; $65 ; INSTR_65
	dw SndInstrument_66;X ; $66 ; INSTR_66
	dw SndInstrument_67   ; $67 ; INSTR_67
	dw SndInstrument_68   ; $68 ; INSTR_68
	dw SndInstrument_69   ; $69 ; INSTR_69
	dw SndInstrument_6A   ; $6A ; INSTR_6A
	dw SndInstrument_6B   ; $6B ; INSTR_6B
	dw SndInstrument_6C;X ; $6C ; INSTR_6C
	dw SndInstrument_6D   ; $6D ; INSTR_6D
	dw SndInstrument_6E   ; $6E ; INSTR_6E
	dw SndInstrument_6F   ; $6F ; INSTR_6F
	dw SndInstrument_70   ; $70 ; INSTR_70
	dw SndInstrument_71   ; $71 ; INSTR_71
	dw SndInstrument_72;X ; $72 ; INSTR_72
	dw SndInstrument_73   ; $73 ; INSTR_73
	dw SndHeader_SFXPause_00;X     ; $74 ; INSTR_74
	dw SndHeader_SFXPause_00;X     ; $75 ; INSTR_75
	dw SndHeader_SFXPause_00;X     ; $76 ; INSTR_76
	dw SndHeader_SFXPause_00;X     ; $77 ; INSTR_77
	dw SndHeader_SFXPause_00;X     ; $78 ; INSTR_78
	dw SndHeader_SFXPause_00;X     ; $79 ; INSTR_79
	dw SndInstrument_70;X ; $7A ; INSTR_7A
	dw SndHeader_SFXPause_00;X     ; $7B ; INSTR_7B
	dw SndHeader_SFXPause_00;X     ; $7C ; INSTR_7C
	dw SndHeader_SFXPause_00;X     ; $7D ; INSTR_7D
	dw SndHeader_SFXPause_00;X     ; $7E ; INSTR_7E
	dw SndHeader_SFXPause_00;X     ; $7F ; INSTR_7F
SndInstrument_01:
	ivol $14, $F, SNDENV_INC, $00 ; SNDCH3VOL_100
	ivol $04, $F, SNDENV_DEC, $01 ; SNDCH3VOL_100
	ivol $06, $A, SNDENV_DEC, $03 ; SNDCH3VOL_050 ;X
	ivol $10, $8, SNDENV_DEC, $04 ; SNDCH3VOL_050 ;X
	ivol $08, $4, SNDENV_DEC, $02 ; SNDCH3VOL_025 ;X
	ivol $64, $0, SNDENV_INC, $00 ; SNDCH3VOL_000 ;X
	iloop_prev ;X
SndInstrument_02:
	ivol $01, $C, SNDENV_INC, $00 ; SNDCH3VOL_100
	ivol $06, $F, SNDENV_DEC, $01 ; SNDCH3VOL_100 ;X
	ivol $04, $D, SNDENV_DEC, $01 ; SNDCH3VOL_100 ;X
	ivol $64, $5, SNDENV_INC, $00 ; SNDCH3VOL_025 ;X
	iloop_prev ;X
SndInstrument_03:
	ivol $02, $F, SNDENV_DEC, $01 ; SNDCH3VOL_100
	ivol $02, $8, SNDENV_DEC, $01 ; SNDCH3VOL_050
	ivol $64, $0, SNDENV_INC, $00 ; SNDCH3VOL_000
	iloop_prev ;X
SndInstrument_04:
	ivol $06, $F, SNDENV_DEC, $02 ; SNDCH3VOL_100
	ivol $10, $9, SNDENV_INC, $00 ; SNDCH3VOL_050 ;X
	ivol $28, $8, SNDENV_DEC, $04 ; SNDCH3VOL_050 ;X
	ivol $64, $0, SNDENV_INC, $00 ; SNDCH3VOL_000 ;X
	iloop_prev ;X
SndInstrument_05:
	ivol $10, $A, SNDENV_INC, $01 ; SNDCH3VOL_050
	ivol $64, $F, SNDENV_INC, $00 ; SNDCH3VOL_100
	iloop_prev
SndInstrument_06:
	ivol $03, $F, SNDENV_DEC, $00 ; SNDCH3VOL_100
	ivol $0A, $B, SNDENV_DEC, $00 ; SNDCH3VOL_050
	ivol $64, $8, SNDENV_DEC, $00 ; SNDCH3VOL_050
	iloop_prev ;X
SndInstrument_07:
	ivol $04, $F, SNDENV_DEC, $00 ; SNDCH3VOL_100
	ivol $3C, $A, SNDENV_DEC, $00 ; SNDCH3VOL_050
	ivol $06, $A, SNDENV_INC, $03 ; SNDCH3VOL_050
	ivol $23, $C, SNDENV_DEC, $00 ; SNDCH3VOL_100
	ivol $50, $C, SNDENV_DEC, $07 ; SNDCH3VOL_100
	ivol $64, $0, SNDENV_DEC, $00 ; SNDCH3VOL_000 ;X
	iloop_prev ;X
SndInstrument_08:
	ivol $03, $F, SNDENV_DEC, $01 ; SNDCH3VOL_100
	ivol $0A, $C, SNDENV_DEC, $00 ; SNDCH3VOL_100
	ivol $0A, $B, SNDENV_DEC, $00 ; SNDCH3VOL_050
	ivol $0A, $A, SNDENV_DEC, $00 ; SNDCH3VOL_050
	ivol $64, $9, SNDENV_DEC, $00 ; SNDCH3VOL_050
	iloop_prev ;X
SndInstrument_09:
	ivol $02, $F, SNDENV_DEC, $01 ; SNDCH3VOL_100
	ivol $64, $8, SNDENV_DEC, $00 ; SNDCH3VOL_050
	iloop_prev ;X
SndInstrument_0A:
	ivol $09, $9, SNDENV_DEC, $01 ; SNDCH3VOL_050
	ivol $64, $0, SNDENV_INC, $00 ; SNDCH3VOL_000
	iloop_prev ;X
SndInstrument_0B:
	ivol $02, $F, SNDENV_DEC, $00 ; SNDCH3VOL_100
	ivol $64, $4, SNDENV_DEC, $00 ; SNDCH3VOL_025
	iloop_prev ;X
SndInstrument_0C:
	ivol $01, $9, SNDENV_DEC, $01 ; SNDCH3VOL_050
	ivol $08, $4, SNDENV_DEC, $02 ; SNDCH3VOL_025
	ivol $64, $0, SNDENV_INC, $00 ; SNDCH3VOL_000
	iloop_prev ;X
SndInstrument_0D:
	ivol $02, $F, SNDENV_INC, $00 ; SNDCH3VOL_100
	ivol $64, $0, SNDENV_INC, $00 ; SNDCH3VOL_000
	iloop_prev ;X
SndInstrument_0E:
	ivol $01, $E, SNDENV_INC, $00 ; SNDCH3VOL_100
	ivol $64, $0, SNDENV_INC, $00 ; SNDCH3VOL_000
	iloop_prev ;X
SndInstrument_0F:
	ivol $01, $F, SNDENV_INC, $00 ; SNDCH3VOL_100
	ivol $64, $C, SNDENV_DEC, $01 ; SNDCH3VOL_100
	iloop_prev ;X
SndInstrument_10:
	ivol $01, $C, SNDENV_DEC, $01 ; SNDCH3VOL_100
	ivol $0C, $7, SNDENV_DEC, $02 ; SNDCH3VOL_025
	ivol $64, $0, SNDENV_INC, $00 ; SNDCH3VOL_000
	iloop_prev
SndInstrument_11:
	ivol $02, $F, SNDENV_DEC, $01 ; SNDCH3VOL_100
	ivol $05, $B, SNDENV_DEC, $01 ; SNDCH3VOL_050
	ivol $64, $4, SNDENV_INC, $07 ; SNDCH3VOL_025
	iloop_prev ;X
SndInstrument_12:
	ivol $04, $F, SNDENV_DEC, $01 ; SNDCH3VOL_100
	ivol $64, $8, SNDENV_DEC, $02 ; SNDCH3VOL_050
	iloop_prev ;X
SndInstrument_13:
	ivol $01, $F, SNDENV_DEC, $00 ; SNDCH3VOL_100
	ivol $01, $D, SNDENV_DEC, $00 ; SNDCH3VOL_100
	ivol $01, $B, SNDENV_DEC, $00 ; SNDCH3VOL_050
	ivol $01, $9, SNDENV_DEC, $00 ; SNDCH3VOL_050
	ivol $01, $7, SNDENV_DEC, $00 ; SNDCH3VOL_025
	ivol $01, $5, SNDENV_DEC, $00 ; SNDCH3VOL_025
	ivol $01, $3, SNDENV_DEC, $00 ; SNDCH3VOL_000
	ivol $01, $1, SNDENV_DEC, $00 ; SNDCH3VOL_000
	ivol $64, $0, SNDENV_DEC, $00 ; SNDCH3VOL_000
	iloop_prev ;X
SndInstrument_14:
	ivol $02, $F, SNDENV_DEC, $01 ; SNDCH3VOL_100 ;X
	ivol $64, $B, SNDENV_DEC, $01 ; SNDCH3VOL_050 ;X
	iloop_prev ;X
SndInstrument_15:
	ivol $09, $B, SNDENV_INC, $02 ; SNDCH3VOL_050
	ivol $02, $F, SNDENV_DEC, $02 ; SNDCH3VOL_100
	ivol $64, $E, SNDENV_DEC, $00 ; SNDCH3VOL_100
	iloop_prev
SndInstrument_16:
	ivol $02, $C, SNDENV_DEC, $01 ; SNDCH3VOL_100
	ivol $64, $4, SNDENV_DEC, $00 ; SNDCH3VOL_025
	iloop_prev ;X
SndInstrument_17:
	ivol $0A, $F, SNDENV_DEC, $01 ; SNDCH3VOL_100
	ivol $0A, $4, SNDENV_DEC, $00 ; SNDCH3VOL_025
	ivol $64, $4, SNDENV_INC, $07 ; SNDCH3VOL_025
	iloop_prev ;X
SndInstrument_18:
	ivol $03, $F, SNDENV_DEC, $01 ; SNDCH3VOL_100
	ivol $64, $A, SNDENV_DEC, $00 ; SNDCH3VOL_050
	iloop_prev
SndInstrument_19:
	ivol $0C, $4, SNDENV_DEC, $00 ; SNDCH3VOL_025
	ivol $0C, $5, SNDENV_DEC, $00 ; SNDCH3VOL_025
	ivol $0C, $6, SNDENV_DEC, $00 ; SNDCH3VOL_025
	ivol $0C, $7, SNDENV_DEC, $00 ; SNDCH3VOL_025
	ivol $24, $8, SNDENV_DEC, $00 ; SNDCH3VOL_050
	ivol $64, $8, SNDENV_DEC, $07 ; SNDCH3VOL_050
	iloop_prev ;X
SndInstrument_1A:
	ivol $04, $F, SNDENV_DEC, $00 ; SNDCH3VOL_100 ;X
	ivol $04, $2, SNDENV_DEC, $00 ; SNDCH3VOL_000 ;X
	iloop_prev ;X
SndInstrument_1B:
	ivol $04, $F, SNDENV_DEC, $00 ; SNDCH3VOL_100
	ivol $64, $C, SNDENV_DEC, $00 ; SNDCH3VOL_100
	iloop_prev
SndInstrument_1C:
	ivol $0F, $F, SNDENV_DEC, $01 ; SNDCH3VOL_100
	ivol $64, $0, SNDENV_INC, $00 ; SNDCH3VOL_000 ;X
	iloop_prev ;X
SndInstrument_1F:
	ivol $00, $0, SNDENV_DEC, $00 ; SNDCH3VOL_000 ;X
	iloop_prev ;X
SndInstrument_2E:
	ivol $03, $F, SNDENV_DEC, $00 ; SNDCH3VOL_100
	ivol $0A, $B, SNDENV_DEC, $00 ; SNDCH3VOL_050
	ivol $64, $8, SNDENV_DEC, $00 ; SNDCH3VOL_050
	iloop_prev
SndInstrument_2F:
	ivol $02, $F, SNDENV_INC, $00 ; SNDCH3VOL_100
	ivol $02, $C, SNDENV_INC, $00 ; SNDCH3VOL_100
	ivol $02, $9, SNDENV_INC, $00 ; SNDCH3VOL_050
	ivol $02, $5, SNDENV_INC, $00 ; SNDCH3VOL_025
	ivol $02, $B, SNDENV_DEC, $00 ; SNDCH3VOL_050
	ivol $02, $8, SNDENV_INC, $00 ; SNDCH3VOL_050
	ivol $02, $5, SNDENV_INC, $00 ; SNDCH3VOL_025
	ivol $64, $0, SNDENV_INC, $00 ; SNDCH3VOL_000
	iloop_prev ;X
SndInstrument_30:
	ivol $01, $B, SNDENV_DEC, $00 ; SNDCH3VOL_050
	ivol $02, $C, SNDENV_DEC, $00 ; SNDCH3VOL_100
	ivol $03, $D, SNDENV_DEC, $00 ; SNDCH3VOL_100
	ivol $04, $E, SNDENV_DEC, $00 ; SNDCH3VOL_100
	ivol $64, $F, SNDENV_DEC, $00 ; SNDCH3VOL_100
	iloop_prev
SndInstrument_31:
	ivol $02, $F, SNDENV_INC, $00 ; SNDCH3VOL_100
	ivol $02, $C, SNDENV_INC, $00 ; SNDCH3VOL_100
	ivol $04, $9, SNDENV_INC, $00 ; SNDCH3VOL_050
	ivol $04, $5, SNDENV_INC, $00 ; SNDCH3VOL_025
	ivol $64, $0, SNDENV_INC, $00 ; SNDCH3VOL_000
	iloop_prev ;X
SndInstrument_32:
	ivol $01, $F, SNDENV_INC, $00 ; SNDCH3VOL_100
	ivol $01, $E, SNDENV_DEC, $00 ; SNDCH3VOL_100
	ivol $01, $D, SNDENV_DEC, $00 ; SNDCH3VOL_100
	ivol $01, $C, SNDENV_DEC, $00 ; SNDCH3VOL_100
	ivol $01, $B, SNDENV_DEC, $00 ; SNDCH3VOL_050
	ivol $01, $A, SNDENV_DEC, $00 ; SNDCH3VOL_050
	ivol $01, $9, SNDENV_DEC, $00 ; SNDCH3VOL_050
	ivol $01, $8, SNDENV_DEC, $00 ; SNDCH3VOL_050
	ivol $01, $7, SNDENV_INC, $00 ; SNDCH3VOL_025
	ivol $01, $6, SNDENV_DEC, $00 ; SNDCH3VOL_025
	ivol $01, $5, SNDENV_DEC, $00 ; SNDCH3VOL_025
	ivol $01, $4, SNDENV_DEC, $00 ; SNDCH3VOL_025
	ivol $01, $3, SNDENV_DEC, $00 ; SNDCH3VOL_000
	ivol $01, $2, SNDENV_DEC, $00 ; SNDCH3VOL_000
	ivol $01, $1, SNDENV_DEC, $00 ; SNDCH3VOL_000
	ivol $64, $0, SNDENV_DEC, $00 ; SNDCH3VOL_000
	iloop_prev ;X
SndInstrument_33:
	ivol $02, $F, SNDENV_INC, $00 ; SNDCH3VOL_100
	ivol $02, $C, SNDENV_INC, $00 ; SNDCH3VOL_100
	ivol $02, $9, SNDENV_INC, $00 ; SNDCH3VOL_050
	ivol $02, $6, SNDENV_INC, $00 ; SNDCH3VOL_025
	ivol $02, $B, SNDENV_DEC, $00 ; SNDCH3VOL_050
	ivol $02, $8, SNDENV_INC, $00 ; SNDCH3VOL_050
	ivol $02, $5, SNDENV_INC, $00 ; SNDCH3VOL_025
	ivol $02, $2, SNDENV_INC, $00 ; SNDCH3VOL_000
	ivol $02, $9, SNDENV_DEC, $00 ; SNDCH3VOL_050
	ivol $02, $6, SNDENV_INC, $00 ; SNDCH3VOL_025
	ivol $02, $3, SNDENV_INC, $00 ; SNDCH3VOL_000
	ivol $02, $0, SNDENV_INC, $00 ; SNDCH3VOL_000
	ivol $02, $7, SNDENV_DEC, $00 ; SNDCH3VOL_025
	ivol $02, $4, SNDENV_INC, $00 ; SNDCH3VOL_025
	ivol $02, $1, SNDENV_INC, $00 ; SNDCH3VOL_000
	ivol $02, $0, SNDENV_INC, $00 ; SNDCH3VOL_000
	ivol $02, $5, SNDENV_DEC, $00 ; SNDCH3VOL_025
	ivol $02, $2, SNDENV_INC, $00 ; SNDCH3VOL_000
	ivol $64, $0, SNDENV_INC, $00 ; SNDCH3VOL_000
	iloop_prev ;X
SndInstrument_34:
	ivol $03, $F, SNDENV_INC, $00 ; SNDCH3VOL_100
	ivol $05, $E, SNDENV_INC, $00 ; SNDCH3VOL_100
	ivol $02, $D, SNDENV_INC, $00 ; SNDCH3VOL_100
	ivol $02, $C, SNDENV_INC, $00 ; SNDCH3VOL_100
	ivol $06, $B, SNDENV_INC, $00 ; SNDCH3VOL_050
	ivol $0A, $A, SNDENV_INC, $00 ; SNDCH3VOL_050
	ivol $0F, $9, SNDENV_INC, $00 ; SNDCH3VOL_050
	ivol $14, $8, SNDENV_INC, $00 ; SNDCH3VOL_050
	ivol $14, $7, SNDENV_INC, $00 ; SNDCH3VOL_025
	ivol $14, $6, SNDENV_INC, $00 ; SNDCH3VOL_025
	ivol $14, $5, SNDENV_INC, $00 ; SNDCH3VOL_025
	ivol $14, $4, SNDENV_INC, $00 ; SNDCH3VOL_025 ;X
	ivol $64, $0, SNDENV_INC, $00 ; SNDCH3VOL_000 ;X
	iloop_prev ;X
SndInstrument_35:
	ivol $01, $B, SNDENV_INC, $00 ; SNDCH3VOL_050
	ivol $02, $C, SNDENV_INC, $00 ; SNDCH3VOL_100
	ivol $03, $D, SNDENV_INC, $00 ; SNDCH3VOL_100
	ivol $04, $E, SNDENV_INC, $00 ; SNDCH3VOL_100
	ivol $0F, $F, SNDENV_INC, $00 ; SNDCH3VOL_100
	ivol $0F, $E, SNDENV_DEC, $00 ; SNDCH3VOL_100
	ivol $0F, $D, SNDENV_DEC, $00 ; SNDCH3VOL_100
	ivol $0F, $C, SNDENV_DEC, $00 ; SNDCH3VOL_100
	ivol $0F, $B, SNDENV_DEC, $00 ; SNDCH3VOL_050
	ivol $0F, $A, SNDENV_DEC, $00 ; SNDCH3VOL_050
	ivol $0F, $9, SNDENV_DEC, $00 ; SNDCH3VOL_050
	ivol $64, $8, SNDENV_DEC, $00 ; SNDCH3VOL_050
	iloop_prev ;X
SndInstrument_36:
	ivol $0A, $C, SNDENV_DEC, $00 ; SNDCH3VOL_100
	ivol $0A, $D, SNDENV_DEC, $00 ; SNDCH3VOL_100
	ivol $0A, $E, SNDENV_DEC, $00 ; SNDCH3VOL_100
	ivol $0A, $F, SNDENV_DEC, $00 ; SNDCH3VOL_100
	ivol $0D, $E, SNDENV_INC, $00 ; SNDCH3VOL_100
	ivol $0D, $D, SNDENV_INC, $00 ; SNDCH3VOL_100
	ivol $0D, $C, SNDENV_INC, $00 ; SNDCH3VOL_100
	ivol $0D, $B, SNDENV_INC, $00 ; SNDCH3VOL_050
	ivol $0D, $A, SNDENV_INC, $00 ; SNDCH3VOL_050
	ivol $0D, $9, SNDENV_INC, $00 ; SNDCH3VOL_050
	ivol $0D, $8, SNDENV_INC, $00 ; SNDCH3VOL_050
	ivol $0D, $7, SNDENV_INC, $00 ; SNDCH3VOL_025
	ivol $0D, $6, SNDENV_INC, $00 ; SNDCH3VOL_025
	ivol $0D, $5, SNDENV_INC, $00 ; SNDCH3VOL_025
	ivol $0D, $4, SNDENV_INC, $00 ; SNDCH3VOL_025
	ivol $0D, $3, SNDENV_INC, $00 ; SNDCH3VOL_000
	ivol $0D, $2, SNDENV_INC, $00 ; SNDCH3VOL_000
	ivol $0D, $1, SNDENV_INC, $00 ; SNDCH3VOL_000
	ivol $64, $0, SNDENV_INC, $00 ; SNDCH3VOL_000
	iloop_prev ;X
SndInstrument_37:
	ivol $02, $B, SNDENV_DEC, $00 ; SNDCH3VOL_050
	ivol $03, $C, SNDENV_DEC, $00 ; SNDCH3VOL_100
	ivol $03, $D, SNDENV_DEC, $00 ; SNDCH3VOL_100
	ivol $04, $E, SNDENV_DEC, $00 ; SNDCH3VOL_100
	ivol $14, $F, SNDENV_DEC, $00 ; SNDCH3VOL_100
	ivol $05, $E, SNDENV_INC, $00 ; SNDCH3VOL_100
	ivol $07, $D, SNDENV_INC, $00 ; SNDCH3VOL_100
	ivol $09, $C, SNDENV_INC, $00 ; SNDCH3VOL_100
	ivol $09, $B, SNDENV_INC, $00 ; SNDCH3VOL_050
	ivol $64, $A, SNDENV_DEC, $00 ; SNDCH3VOL_050
	iloop_prev ;X
SndInstrument_38:
	ivol $02, $8, SNDENV_DEC, $00 ; SNDCH3VOL_050
	ivol $02, $9, SNDENV_DEC, $00 ; SNDCH3VOL_050
	ivol $02, $A, SNDENV_DEC, $00 ; SNDCH3VOL_050
	ivol $02, $B, SNDENV_DEC, $00 ; SNDCH3VOL_050
	ivol $02, $C, SNDENV_DEC, $00 ; SNDCH3VOL_100
	ivol $02, $D, SNDENV_DEC, $00 ; SNDCH3VOL_100
	ivol $02, $E, SNDENV_DEC, $00 ; SNDCH3VOL_100
	ivol $14, $F, SNDENV_DEC, $00 ; SNDCH3VOL_100
	ivol $0A, $E, SNDENV_INC, $00 ; SNDCH3VOL_100
	ivol $0A, $D, SNDENV_INC, $00 ; SNDCH3VOL_100
	ivol $0A, $C, SNDENV_INC, $00 ; SNDCH3VOL_100
	ivol $0A, $B, SNDENV_INC, $00 ; SNDCH3VOL_050 ;X
	ivol $0A, $A, SNDENV_INC, $00 ; SNDCH3VOL_050 ;X
	ivol $0A, $9, SNDENV_INC, $00 ; SNDCH3VOL_050 ;X
	ivol $0A, $8, SNDENV_DEC, $00 ; SNDCH3VOL_050 ;X
	iloop_prev ;X
SndInstrument_39:
	ivol $01, $F, SNDENV_INC, $00 ; SNDCH3VOL_100
	ivol $01, $C, SNDENV_INC, $00 ; SNDCH3VOL_100
	ivol $02, $9, SNDENV_INC, $00 ; SNDCH3VOL_050
	ivol $02, $6, SNDENV_INC, $00 ; SNDCH3VOL_025
	ivol $01, $B, SNDENV_DEC, $00 ; SNDCH3VOL_050
	ivol $01, $8, SNDENV_INC, $00 ; SNDCH3VOL_050
	ivol $02, $5, SNDENV_INC, $00 ; SNDCH3VOL_025 ;X
	ivol $02, $2, SNDENV_INC, $00 ; SNDCH3VOL_000 ;X
	ivol $01, $9, SNDENV_DEC, $00 ; SNDCH3VOL_050 ;X
	ivol $01, $6, SNDENV_INC, $00 ; SNDCH3VOL_025 ;X
	ivol $02, $3, SNDENV_INC, $00 ; SNDCH3VOL_000 ;X
	ivol $02, $0, SNDENV_INC, $00 ; SNDCH3VOL_000 ;X
	ivol $01, $7, SNDENV_DEC, $00 ; SNDCH3VOL_025 ;X
	ivol $01, $4, SNDENV_INC, $00 ; SNDCH3VOL_025 ;X
	ivol $02, $1, SNDENV_INC, $00 ; SNDCH3VOL_000 ;X
	ivol $02, $0, SNDENV_INC, $00 ; SNDCH3VOL_000 ;X
	ivol $01, $5, SNDENV_DEC, $00 ; SNDCH3VOL_025 ;X
	ivol $01, $2, SNDENV_INC, $00 ; SNDCH3VOL_000 ;X
	ivol $64, $0, SNDENV_INC, $00 ; SNDCH3VOL_000 ;X
	iloop_prev ;X
SndInstrument_3A:
	ivol $02, $F, SNDENV_INC, $00 ; SNDCH3VOL_100
	ivol $1C, $F, SNDENV_DEC, $03 ; SNDCH3VOL_100
	ivol $64, $0, SNDENV_DEC, $00 ; SNDCH3VOL_000 ;X
	iloop_prev ;X
SndInstrument_3B:
	ivol $03, $A, SNDENV_DEC, $00 ; SNDCH3VOL_050
	ivol $03, $B, SNDENV_DEC, $00 ; SNDCH3VOL_050
	ivol $03, $C, SNDENV_DEC, $00 ; SNDCH3VOL_100
	ivol $03, $D, SNDENV_DEC, $00 ; SNDCH3VOL_100
	ivol $03, $E, SNDENV_DEC, $00 ; SNDCH3VOL_100
	ivol $64, $F, SNDENV_DEC, $00 ; SNDCH3VOL_100
	iloop_prev ;X
SndInstrument_3C:
	ivol $01, $F, SNDENV_INC, $00 ; SNDCH3VOL_100
	ivol $01, $E, SNDENV_DEC, $00 ; SNDCH3VOL_100
	ivol $02, $D, SNDENV_DEC, $00 ; SNDCH3VOL_100
	ivol $02, $C, SNDENV_DEC, $00 ; SNDCH3VOL_100
	ivol $03, $B, SNDENV_DEC, $00 ; SNDCH3VOL_050
	ivol $04, $A, SNDENV_DEC, $00 ; SNDCH3VOL_050
	ivol $08, $9, SNDENV_DEC, $00 ; SNDCH3VOL_050
	ivol $64, $8, SNDENV_DEC, $00 ; SNDCH3VOL_050
	iloop_prev
SndInstrument_3D:
	ivol $01, $F, SNDENV_DEC, $00 ; SNDCH3VOL_100
	ivol $02, $E, SNDENV_DEC, $00 ; SNDCH3VOL_100
	ivol $03, $D, SNDENV_DEC, $00 ; SNDCH3VOL_100
	ivol $04, $C, SNDENV_DEC, $00 ; SNDCH3VOL_100
	ivol $05, $B, SNDENV_DEC, $00 ; SNDCH3VOL_050
	ivol $06, $A, SNDENV_DEC, $00 ; SNDCH3VOL_050
	ivol $08, $9, SNDENV_DEC, $00 ; SNDCH3VOL_050
	ivol $64, $8, SNDENV_DEC, $00 ; SNDCH3VOL_050
	iloop_prev
SndInstrument_3E:
	ivol $01, $F, SNDENV_DEC, $00 ; SNDCH3VOL_100
	ivol $01, $D, SNDENV_DEC, $00 ; SNDCH3VOL_100
	ivol $02, $B, SNDENV_DEC, $00 ; SNDCH3VOL_050
	ivol $02, $9, SNDENV_DEC, $00 ; SNDCH3VOL_050
	ivol $64, $8, SNDENV_DEC, $00 ; SNDCH3VOL_050
	iloop_prev ;X
SndInstrument_40:
	ivol $02, $F, SNDENV_DEC, $00 ; SNDCH3VOL_100
	ivol $01, $E, SNDENV_DEC, $00 ; SNDCH3VOL_100
	ivol $01, $D, SNDENV_DEC, $00 ; SNDCH3VOL_100
	ivol $01, $C, SNDENV_DEC, $00 ; SNDCH3VOL_100
	ivol $01, $B, SNDENV_DEC, $00 ; SNDCH3VOL_050
	ivol $01, $A, SNDENV_DEC, $00 ; SNDCH3VOL_050
	ivol $04, $9, SNDENV_DEC, $00 ; SNDCH3VOL_050
	ivol $04, $8, SNDENV_DEC, $00 ; SNDCH3VOL_050
	ivol $04, $7, SNDENV_DEC, $00 ; SNDCH3VOL_025
	ivol $04, $6, SNDENV_DEC, $00 ; SNDCH3VOL_025
	ivol $04, $5, SNDENV_DEC, $00 ; SNDCH3VOL_025
	ivol $04, $4, SNDENV_DEC, $00 ; SNDCH3VOL_025
	ivol $04, $3, SNDENV_DEC, $00 ; SNDCH3VOL_000
	ivol $0A, $0, SNDENV_DEC, $00 ; SNDCH3VOL_000
	ivol $02, $8, SNDENV_DEC, $00 ; SNDCH3VOL_050
	ivol $01, $7, SNDENV_DEC, $00 ; SNDCH3VOL_025
	ivol $01, $6, SNDENV_DEC, $00 ; SNDCH3VOL_025
	ivol $01, $5, SNDENV_DEC, $00 ; SNDCH3VOL_025
	ivol $01, $4, SNDENV_DEC, $00 ; SNDCH3VOL_025
	ivol $01, $3, SNDENV_DEC, $00 ; SNDCH3VOL_000
	ivol $04, $2, SNDENV_DEC, $00 ; SNDCH3VOL_000
	ivol $04, $1, SNDENV_DEC, $00 ; SNDCH3VOL_000
	ivol $64, $0, SNDENV_DEC, $00 ; SNDCH3VOL_000
	iloop_prev ;X
SndInstrument_41:
	ivol $02, $F, SNDENV_INC, $00 ; SNDCH3VOL_100
	ivol $02, $8, SNDENV_DEC, $00 ; SNDCH3VOL_050
	ivol $02, $7, SNDENV_DEC, $00 ; SNDCH3VOL_025
	ivol $02, $6, SNDENV_DEC, $00 ; SNDCH3VOL_025
	ivol $02, $5, SNDENV_DEC, $00 ; SNDCH3VOL_025
	ivol $02, $4, SNDENV_DEC, $00 ; SNDCH3VOL_025
	ivol $02, $3, SNDENV_DEC, $00 ; SNDCH3VOL_000
	ivol $64, $0, SNDENV_DEC, $00 ; SNDCH3VOL_000
	iloop_prev ;X
SndInstrument_42:
	ivol $01, $9, SNDENV_INC, $00 ; SNDCH3VOL_050
	ivol $01, $C, SNDENV_INC, $00 ; SNDCH3VOL_100
	ivol $01, $E, SNDENV_INC, $00 ; SNDCH3VOL_100
	ivol $04, $F, SNDENV_INC, $00 ; SNDCH3VOL_100
	ivol $02, $E, SNDENV_DEC, $00 ; SNDCH3VOL_100
	ivol $02, $D, SNDENV_DEC, $00 ; SNDCH3VOL_100
	ivol $02, $B, SNDENV_DEC, $00 ; SNDCH3VOL_050
	ivol $0F, $8, SNDENV_DEC, $00 ; SNDCH3VOL_050
	ivol $06, $9, SNDENV_INC, $00 ; SNDCH3VOL_050
	ivol $06, $A, SNDENV_INC, $00 ; SNDCH3VOL_050
	ivol $06, $B, SNDENV_INC, $00 ; SNDCH3VOL_050
	ivol $06, $C, SNDENV_INC, $00 ; SNDCH3VOL_100
	ivol $0F, $D, SNDENV_INC, $00 ; SNDCH3VOL_100
	ivol $08, $C, SNDENV_DEC, $00 ; SNDCH3VOL_100 ;X
	ivol $08, $B, SNDENV_DEC, $00 ; SNDCH3VOL_050 ;X
	ivol $08, $A, SNDENV_DEC, $00 ; SNDCH3VOL_050 ;X
	ivol $08, $9, SNDENV_DEC, $00 ; SNDCH3VOL_050 ;X
	ivol $64, $8, SNDENV_DEC, $00 ; SNDCH3VOL_050 ;X
	iloop_prev ;X
SndInstrument_56:
	ivol $14, $F, SNDENV_DEC, $01 ; SNDCH3VOL_100
	ivol $08, $3, SNDENV_DEC, $00 ; SNDCH3VOL_000
	ivol $05, $1, SNDENV_DEC, $00 ; SNDCH3VOL_000
	iloop_prev
SndInstrument_57:
	ivol $17, $F, SNDENV_DEC, $05 ; SNDCH3VOL_100
	ivol $1B, $B, SNDENV_INC, $07 ; SNDCH3VOL_050
	iloop_prev ;X
SndInstrument_58:
	ivol $0C, $F, SNDENV_DEC, $02 ; SNDCH3VOL_100
	ivol $0A, $B, SNDENV_DEC, $03 ; SNDCH3VOL_050
	ivol $1E, $7, SNDENV_DEC, $00 ; SNDCH3VOL_025
	iloop_prev
SndInstrument_59:
	ivol $24, $8, SNDENV_INC, $07 ; SNDCH3VOL_050 ;X
	ivol $64, $B, SNDENV_INC, $00 ; SNDCH3VOL_050 ;X
	iloop_prev ;X
SndInstrument_5A:
	ivol $06, $F, SNDENV_DEC, $01 ; SNDCH3VOL_100
	ivol $01, $8, SNDENV_DEC, $01 ; SNDCH3VOL_050
	iloop_prev
SndInstrument_5B:
	ivol $05, $A, SNDENV_INC, $01 ; SNDCH3VOL_050
	ivol $14, $F, SNDENV_DEC, $00 ; SNDCH3VOL_100
	iloop_prev
SndInstrument_5C:
	ivol $6E, $F, SNDENV_DEC, $00 ; SNDCH3VOL_100
	ivol $64, $F, SNDENV_DEC, $05 ; SNDCH3VOL_100
	iloop_prev ;X
SndInstrument_5D:
	ivol $3C, $F, SNDENV_DEC, $00 ; SNDCH3VOL_100
	ivol $64, $F, SNDENV_DEC, $04 ; SNDCH3VOL_100
	iloop_prev ;X
SndInstrument_5E:
	ivol $12, $F, SNDENV_DEC, $05 ; SNDCH3VOL_100
	ivol $68, $B, SNDENV_INC, $07 ; SNDCH3VOL_050
	ivol $1E, $F, SNDENV_DEC, $07 ; SNDCH3VOL_100
	iloop_prev
SndInstrument_5F:
	ivol $0C, $F, SNDENV_DEC, $02 ; SNDCH3VOL_100
	ivol $12, $B, SNDENV_DEC, $03 ; SNDCH3VOL_050
	ivol $1E, $7, SNDENV_INC, $05 ; SNDCH3VOL_025
	iloop_prev
SndInstrument_60:
	ivol $06, $F, SNDENV_DEC, $02 ; SNDCH3VOL_100
	ivol $06, $8, SNDENV_DEC, $01 ; SNDCH3VOL_050
	ivol $01, $2, SNDENV_DEC, $00 ; SNDCH3VOL_000
	iloop_prev
SndInstrument_61:
	ivol $3C, $8, SNDENV_INC, $06 ; SNDCH3VOL_050
	ivol $3C, $B, SNDENV_DEC, $07 ; SNDCH3VOL_050
	ivol $01, $8, SNDENV_DEC, $00 ; SNDCH3VOL_050
SndInstrument_62:
	ivol $0A, $F, SNDENV_DEC, $00 ; SNDCH3VOL_100
	ivol $05, $E, SNDENV_DEC, $00 ; SNDCH3VOL_100
	ivol $05, $D, SNDENV_DEC, $00 ; SNDCH3VOL_100
	ivol $05, $C, SNDENV_DEC, $00 ; SNDCH3VOL_100
	iloop_prev
SndInstrument_63:
	ivol $0A, $A, SNDENV_INC, $02 ; SNDCH3VOL_050
	ivol $32, $F, SNDENV_INC, $00 ; SNDCH3VOL_100
	iloop_prev
SndInstrument_64:
	ivol $06, $9, SNDENV_INC, $02 ; SNDCH3VOL_050 ;X
	ivol $10, $A, SNDENV_DEC, $06 ; SNDCH3VOL_050 ;X
	iloop_prev ;X
SndInstrument_65:
	ivol $1C, $5, SNDENV_INC, $03 ; SNDCH3VOL_025
	ivol $64, $F, SNDENV_DEC, $00 ; SNDCH3VOL_100
	ivol $3C, $F, SNDENV_DEC, $04 ; SNDCH3VOL_100
	iloop_prev
SndInstrument_66:
	ivol $6E, $F, SNDENV_DEC, $00 ; SNDCH3VOL_100 ;X
	ivol $64, $F, SNDENV_DEC, $05 ; SNDCH3VOL_100 ;X
	iloop_prev ;X
SndInstrument_67:
	ivol $21, $6, SNDENV_INC, $07 ; SNDCH3VOL_025
	ivol $01, $B, SNDENV_DEC, $00 ; SNDCH3VOL_050
	iloop_prev
SndInstrument_68:
	ivol $04, $9, SNDENV_INC, $02 ; SNDCH3VOL_050
	ivol $08, $B, SNDENV_DEC, $02 ; SNDCH3VOL_050
	iloop_prev
SndInstrument_69:
	ivol $27, $B, SNDENV_DEC, $06 ; SNDCH3VOL_050
	ivol $0B, $4, SNDENV_DEC, $03 ; SNDCH3VOL_025
	iloop_prev
SndInstrument_6A:
	ivol $03, $B, SNDENV_DEC, $00 ; SNDCH3VOL_050
	ivol $01, $3, SNDENV_DEC, $00 ; SNDCH3VOL_000
	ivol $03, $3, SNDENV_DEC, $01 ; SNDCH3VOL_000
	iloop_prev
SndInstrument_6B:
	ivol $0A, $F, SNDENV_DEC, $00 ; SNDCH3VOL_100
	ivol $0A, $D, SNDENV_DEC, $00 ; SNDCH3VOL_100
	ivol $0A, $B, SNDENV_DEC, $00 ; SNDCH3VOL_050
	ivol $0A, $9, SNDENV_DEC, $00 ; SNDCH3VOL_050
	ivol $0A, $7, SNDENV_DEC, $00 ; SNDCH3VOL_025
	ivol $0A, $5, SNDENV_DEC, $00 ; SNDCH3VOL_025
	ivol $0A, $3, SNDENV_DEC, $00 ; SNDCH3VOL_000
	ivol $0A, $1, SNDENV_DEC, $00 ; SNDCH3VOL_000
	iloop_prev
SndInstrument_6C:
	ivol $05, $3, SNDENV_DEC, $00 ; SNDCH3VOL_000 ;X
	ivol $05, $7, SNDENV_DEC, $00 ; SNDCH3VOL_025 ;X
	ivol $0A, $B, SNDENV_DEC, $00 ; SNDCH3VOL_050 ;X
	ivol $0F, $D, SNDENV_DEC, $00 ; SNDCH3VOL_100 ;X
	ivol $14, $F, SNDENV_DEC, $00 ; SNDCH3VOL_100 ;X
	iloop_prev ;X
SndInstrument_6D:
	ivol $10, $F, SNDENV_DEC, $02 ; SNDCH3VOL_100
	iloop_prev
SndInstrument_6E:
	ivol $02, $A, SNDENV_INC, $02 ; SNDCH3VOL_050
	ivol $03, $B, SNDENV_DEC, $00 ; SNDCH3VOL_050
	ivol $02, $B, SNDENV_DEC, $02 ; SNDCH3VOL_050
	iloop_prev
SndInstrument_6F:
	ivol $24, $F, SNDENV_INC, $00 ; SNDCH3VOL_100
	iloop_prev
SndInstrument_70:
	ivol $04, $C, SNDENV_DEC, $00 ; SNDCH3VOL_100
	ivol $02, $B, SNDENV_DEC, $01 ; SNDCH3VOL_050
	iloop_prev
SndInstrument_71:
	ivol $04, $E, SNDENV_INC, $04 ; SNDCH3VOL_100
	ivol $01, $F, SNDENV_DEC, $00 ; SNDCH3VOL_100
	iloop_prev
SndInstrument_72:
	ivol $02, $F, SNDENV_INC, $00 ; SNDCH3VOL_100 ;X
	ivol $02, $8, SNDENV_DEC, $00 ; SNDCH3VOL_050 ;X
	ivol $02, $7, SNDENV_DEC, $00 ; SNDCH3VOL_025 ;X
	ivol $02, $6, SNDENV_DEC, $00 ; SNDCH3VOL_025 ;X
	ivol $02, $5, SNDENV_DEC, $00 ; SNDCH3VOL_025 ;X
	ivol $02, $4, SNDENV_DEC, $00 ; SNDCH3VOL_025 ;X
	ivol $02, $3, SNDENV_DEC, $00 ; SNDCH3VOL_000 ;X
	ivol $64, $0, SNDENV_DEC, $00 ; SNDCH3VOL_000 ;X
	iloop_prev ;X
SndInstrument_73:
	ivol $04, $9, SNDENV_INC, $02 ; SNDCH3VOL_050
	ivol $06, $B, SNDENV_DEC, $00 ; SNDCH3VOL_050
	ivol $0A, $B, SNDENV_DEC, $02 ; SNDCH3VOL_050
	iloop_prev