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
	dw SndInstrument_3E;X ; $3F ; INSTR_3F
	dw SndInstrument_40   ; $40 ; INSTR_40
	dw SndInstrument_41   ; $41 ; INSTR_41
	dw SndInstrument_42   ; $42 ; INSTR_42
	dw SndInstrument_42;X ; $43 ; INSTR_43
	dw SndInstrument_42;X ; $44 ; INSTR_44
	dw SndInstrument_42;X ; $45 ; INSTR_45
	dw SndInstrument_42;X ; $46 ; INSTR_46
	dw SndInstrument_42;X ; $47 ; INSTR_47
	dw SndInstrument_42;X ; $48 ; INSTR_48
	dw SndInstrument_42;X ; $49 ; INSTR_49
	dw SndInstrument_42;X ; $4A ; INSTR_4A
	dw SndInstrument_42;X ; $4B ; INSTR_4B
	dw SndInstrument_42;X ; $4C ; INSTR_4C
	dw SndInstrument_42;X ; $4D ; INSTR_4D
	dw SndInstrument_42;X ; $4E ; INSTR_4E
	dw SndInstrument_42;X ; $4F ; INSTR_4F
	dw SndInstrument_42;X ; $50 ; INSTR_50
	dw SndInstrument_42;X ; $51 ; INSTR_51
	dw SndInstrument_42;X ; $52 ; INSTR_52
	dw SndInstrument_42;X ; $53 ; INSTR_53
	dw SndInstrument_42;X ; $54 ; INSTR_54
	dw SndInstrument_42;X ; $55 ; INSTR_55
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
	dw SndInstrument_73;X ; $74 ; INSTR_74
	dw SndInstrument_73;X ; $75 ; INSTR_75
	dw SndInstrument_73;X ; $76 ; INSTR_76
	dw SndInstrument_73;X ; $77 ; INSTR_77
	dw SndInstrument_73;X ; $78 ; INSTR_78
	dw SndInstrument_73;X ; $79 ; INSTR_79
	dw SndInstrument_70;X ; $7A ; INSTR_7A
	dw SndInstrument_70;X ; $7B ; INSTR_7B
	dw SndInstrument_70;X ; $7C ; INSTR_7C
	dw SndInstrument_70;X ; $7D ; INSTR_7D
	dw SndInstrument_70;X ; $7E ; INSTR_7E
	dw SndInstrument_70;X ; $7F ; INSTR_7F
SndInstrument_01:
	ivol $14, $F8
	ivol $04, $F1
	ivol $06, $A3 ;X
	ivol $10, $84 ;X
	ivol $08, $42 ;X
	ivol $64, $08 ;X
	iloop_prev ;X
SndInstrument_02:
	ivol $01, $C8
	ivol $06, $F1 ;X
	ivol $04, $D1 ;X
	ivol $64, $58 ;X
	iloop_prev ;X
SndInstrument_03:
	ivol $02, $F1
	ivol $02, $81
	ivol $64, $08
	iloop_prev ;X
SndInstrument_04:
	ivol $06, $F2
	ivol $10, $98 ;X
	ivol $28, $84 ;X
	ivol $64, $08 ;X
	iloop_prev ;X
SndInstrument_05:
	ivol $10, $A9
	ivol $64, $F8
	iloop_prev
SndInstrument_06:
	ivol $03, $F0
	ivol $0A, $B0
	ivol $64, $80
	iloop_prev ;X
SndInstrument_07:
	ivol $04, $F0
	ivol $3C, $A0
	ivol $06, $AB
	ivol $23, $C0
	ivol $50, $C7
	ivol $64, $00 ;X
	iloop_prev ;X
SndInstrument_08:
	ivol $03, $F1
	ivol $0A, $C0
	ivol $0A, $B0
	ivol $0A, $A0
	ivol $64, $90
	iloop_prev ;X
SndInstrument_09:
	ivol $02, $F1
	ivol $64, $80
	iloop_prev ;X
SndInstrument_0A:
	ivol $09, $91
	ivol $64, $08
	iloop_prev ;X
SndInstrument_0B:
	ivol $02, $F0
	ivol $64, $40
	iloop_prev ;X
SndInstrument_0C:
	ivol $01, $91
	ivol $08, $42
	ivol $64, $08
	iloop_prev ;X
SndInstrument_0D:
	ivol $02, $F8
	ivol $64, $08
	iloop_prev ;X
SndInstrument_0E:
	ivol $01, $E8
	ivol $64, $08
	iloop_prev ;X
SndInstrument_0F:
	ivol $01, $F8
	ivol $64, $C1
	iloop_prev ;X
SndInstrument_10:
	ivol $01, $C1
	ivol $0C, $72
	ivol $64, $08
	iloop_prev
SndInstrument_11:
	ivol $02, $F1
	ivol $05, $B1
	ivol $64, $4F
	iloop_prev ;X
SndInstrument_12:
	ivol $04, $F1
	ivol $64, $82
	iloop_prev ;X
SndInstrument_13:
	ivol $01, $F0
	ivol $01, $D0
	ivol $01, $B0
	ivol $01, $90
	ivol $01, $70
	ivol $01, $50
	ivol $01, $30
	ivol $01, $10
	ivol $64, $00
	iloop_prev ;X
SndInstrument_14:
	ivol $02, $F1 ;X
	ivol $64, $B1 ;X
	iloop_prev ;X
SndInstrument_15:
	ivol $09, $BA
	ivol $02, $F2
	ivol $64, $E0
	iloop_prev
SndInstrument_16:
	ivol $02, $C1
	ivol $64, $40
	iloop_prev ;X
SndInstrument_17:
	ivol $0A, $F1
	ivol $0A, $40
	ivol $64, $4F
	iloop_prev ;X
SndInstrument_18:
	ivol $03, $F1
	ivol $64, $A0
	iloop_prev
SndInstrument_19:
	ivol $0C, $40
	ivol $0C, $50
	ivol $0C, $60
	ivol $0C, $70
	ivol $24, $80
	ivol $64, $87
	iloop_prev ;X
SndInstrument_1A:
	ivol $04, $F0 ;X
	ivol $04, $20 ;X
	iloop_prev ;X
SndInstrument_1B:
	ivol $04, $F0
	ivol $64, $C0
	iloop_prev
SndInstrument_1C:
	ivol $0F, $F1
	ivol $64, $08 ;X
	iloop_prev ;X
SndInstrument_1F:
	ivol $00, $00 ;X
	iloop_prev ;X
SndInstrument_2E:
	ivol $03, $F0
	ivol $0A, $B0
	ivol $64, $80
	iloop_prev
SndInstrument_2F:
	ivol $02, $F8
	ivol $02, $C8
	ivol $02, $98
	ivol $02, $58
	ivol $02, $B0
	ivol $02, $88
	ivol $02, $58
	ivol $64, $08
	iloop_prev ;X
SndInstrument_30:
	ivol $01, $B0
	ivol $02, $C0
	ivol $03, $D0
	ivol $04, $E0
	ivol $64, $F0
	iloop_prev
SndInstrument_31:
	ivol $02, $F8
	ivol $02, $C8
	ivol $04, $98
	ivol $04, $58
	ivol $64, $08
	iloop_prev ;X
SndInstrument_32:
	ivol $01, $F8
	ivol $01, $E0
	ivol $01, $D0
	ivol $01, $C0
	ivol $01, $B0
	ivol $01, $A0
	ivol $01, $90
	ivol $01, $80
	ivol $01, $78
	ivol $01, $60
	ivol $01, $50
	ivol $01, $40
	ivol $01, $30
	ivol $01, $20
	ivol $01, $10
	ivol $64, $00
	iloop_prev ;X
SndInstrument_33:
	ivol $02, $F8
	ivol $02, $C8
	ivol $02, $98
	ivol $02, $68
	ivol $02, $B0
	ivol $02, $88
	ivol $02, $58
	ivol $02, $28
	ivol $02, $90
	ivol $02, $68
	ivol $02, $38
	ivol $02, $08
	ivol $02, $70
	ivol $02, $48
	ivol $02, $18
	ivol $02, $08
	ivol $02, $50
	ivol $02, $28
	ivol $64, $08
	iloop_prev ;X
SndInstrument_34:
	ivol $03, $F8
	ivol $05, $E8
	ivol $02, $D8
	ivol $02, $C8
	ivol $06, $B8
	ivol $0A, $A8
	ivol $0F, $98
	ivol $14, $88
	ivol $14, $78
	ivol $14, $68
	ivol $14, $58
	ivol $14, $48 ;X
	ivol $64, $08 ;X
	iloop_prev ;X
SndInstrument_35:
	ivol $01, $B8
	ivol $02, $C8
	ivol $03, $D8
	ivol $04, $E8
	ivol $0F, $F8
	ivol $0F, $E0
	ivol $0F, $D0
	ivol $0F, $C0
	ivol $0F, $B0
	ivol $0F, $A0
	ivol $0F, $90
	ivol $64, $80
	iloop_prev ;X
SndInstrument_36:
	ivol $0A, $C0
	ivol $0A, $D0
	ivol $0A, $E0
	ivol $0A, $F0
	ivol $0D, $E8
	ivol $0D, $D8
	ivol $0D, $C8
	ivol $0D, $B8
	ivol $0D, $A8
	ivol $0D, $98
	ivol $0D, $88
	ivol $0D, $78
	ivol $0D, $68
	ivol $0D, $58
	ivol $0D, $48
	ivol $0D, $38
	ivol $0D, $28
	ivol $0D, $18
	ivol $64, $08
	iloop_prev ;X
SndInstrument_37:
	ivol $02, $B0
	ivol $03, $C0
	ivol $03, $D0
	ivol $04, $E0
	ivol $14, $F0
	ivol $05, $E8
	ivol $07, $D8
	ivol $09, $C8
	ivol $09, $B8
	ivol $64, $A0
	iloop_prev ;X
SndInstrument_38:
	ivol $02, $80
	ivol $02, $90
	ivol $02, $A0
	ivol $02, $B0
	ivol $02, $C0
	ivol $02, $D0
	ivol $02, $E0
	ivol $14, $F0
	ivol $0A, $E8
	ivol $0A, $D8
	ivol $0A, $C8
	ivol $0A, $B8 ;X
	ivol $0A, $A8 ;X
	ivol $0A, $98 ;X
	ivol $0A, $80 ;X
	iloop_prev ;X
SndInstrument_39:
	ivol $01, $F8
	ivol $01, $C8
	ivol $02, $98
	ivol $02, $68
	ivol $01, $B0
	ivol $01, $88
	ivol $02, $58 ;X
	ivol $02, $28 ;X
	ivol $01, $90 ;X
	ivol $01, $68 ;X
	ivol $02, $38 ;X
	ivol $02, $08 ;X
	ivol $01, $70 ;X
	ivol $01, $48 ;X
	ivol $02, $18 ;X
	ivol $02, $08 ;X
	ivol $01, $50 ;X
	ivol $01, $28 ;X
	ivol $64, $08 ;X
	iloop_prev ;X
SndInstrument_3A:
	ivol $02, $F8
	ivol $1C, $F3
	ivol $64, $00 ;X
	iloop_prev ;X
SndInstrument_3B:
	ivol $03, $A0
	ivol $03, $B0
	ivol $03, $C0
	ivol $03, $D0
	ivol $03, $E0
	ivol $64, $F0
	iloop_prev ;X
SndInstrument_3C:
	ivol $01, $F8
	ivol $01, $E0
	ivol $02, $D0
	ivol $02, $C0
	ivol $03, $B0
	ivol $04, $A0
	ivol $08, $90
	ivol $64, $80
	iloop_prev
SndInstrument_3D:
	ivol $01, $F0
	ivol $02, $E0
	ivol $03, $D0
	ivol $04, $C0
	ivol $05, $B0
	ivol $06, $A0
	ivol $08, $90
	ivol $64, $80
	iloop_prev
SndInstrument_3E:
	ivol $01, $F0
	ivol $01, $D0
	ivol $02, $B0
	ivol $02, $90
	ivol $64, $80
	iloop_prev ;X
SndInstrument_40:
	ivol $02, $F0
	ivol $01, $E0
	ivol $01, $D0
	ivol $01, $C0
	ivol $01, $B0
	ivol $01, $A0
	ivol $04, $90
	ivol $04, $80
	ivol $04, $70
	ivol $04, $60
	ivol $04, $50
	ivol $04, $40
	ivol $04, $30
	ivol $0A, $00
	ivol $02, $80
	ivol $01, $70
	ivol $01, $60
	ivol $01, $50
	ivol $01, $40
	ivol $01, $30
	ivol $04, $20
	ivol $04, $10
	ivol $64, $00
	iloop_prev ;X
SndInstrument_41:
	ivol $02, $F8
	ivol $02, $80
	ivol $02, $70
	ivol $02, $60
	ivol $02, $50
	ivol $02, $40
	ivol $02, $30
	ivol $64, $00
	iloop_prev ;X
SndInstrument_42:
	ivol $01, $98
	ivol $01, $C8
	ivol $01, $E8
	ivol $04, $F8
	ivol $02, $E0
	ivol $02, $D0
	ivol $02, $B0
	ivol $0F, $80
	ivol $06, $98
	ivol $06, $A8
	ivol $06, $B8
	ivol $06, $C8
	ivol $0F, $D8
	ivol $08, $C0 ;X
	ivol $08, $B0 ;X
	ivol $08, $A0 ;X
	ivol $08, $90 ;X
	ivol $64, $80 ;X
	iloop_prev ;X
SndInstrument_56:
	ivol $14, $F1
	ivol $08, $30
	ivol $05, $10
	iloop_prev
SndInstrument_57:
	ivol $17, $F5
	ivol $1B, $BF
	iloop_prev ;X
SndInstrument_58:
	ivol $0C, $F2
	ivol $0A, $B3
	ivol $1E, $70
	iloop_prev
SndInstrument_59:
	ivol $24, $8F ;X
	ivol $64, $B8 ;X
	iloop_prev ;X
SndInstrument_5A:
	ivol $06, $F1
	ivol $01, $81
	iloop_prev
SndInstrument_5B:
	ivol $05, $A9
	ivol $14, $F0
	iloop_prev
SndInstrument_5C:
	ivol $6E, $F0
	ivol $64, $F5
	iloop_prev ;X
SndInstrument_5D:
	ivol $3C, $F0
	ivol $64, $F4
	iloop_prev ;X
SndInstrument_5E:
	ivol $12, $F5
	ivol $68, $BF
	ivol $1E, $F7
	iloop_prev
SndInstrument_5F:
	ivol $0C, $F2
	ivol $12, $B3
	ivol $1E, $7D
	iloop_prev
SndInstrument_60:
	ivol $06, $F2
	ivol $06, $81
	ivol $01, $20
	iloop_prev
SndInstrument_61:
	ivol $3C, $8E
	ivol $3C, $B7
	ivol $01, $80
SndInstrument_62:
	ivol $0A, $F0
	ivol $05, $E0
	ivol $05, $D0
	ivol $05, $C0
	iloop_prev
SndInstrument_63:
	ivol $0A, $AA
	ivol $32, $F8
	iloop_prev
SndInstrument_64:
	ivol $06, $9A ;X
	ivol $10, $A6 ;X
	iloop_prev ;X
SndInstrument_65:
	ivol $1C, $5B
	ivol $64, $F0
	ivol $3C, $F4
	iloop_prev
SndInstrument_66:
	ivol $6E, $F0 ;X
	ivol $64, $F5 ;X
	iloop_prev ;X
SndInstrument_67:
	ivol $21, $6F
	ivol $01, $B0
	iloop_prev
SndInstrument_68:
	ivol $04, $9A
	ivol $08, $B2
	iloop_prev
SndInstrument_69:
	ivol $27, $B6
	ivol $0B, $43
	iloop_prev
SndInstrument_6A:
	ivol $03, $B0
	ivol $01, $30
	ivol $03, $31
	iloop_prev
SndInstrument_6B:
	ivol $0A, $F0
	ivol $0A, $D0
	ivol $0A, $B0
	ivol $0A, $90
	ivol $0A, $70
	ivol $0A, $50
	ivol $0A, $30
	ivol $0A, $10
	iloop_prev
SndInstrument_6C:
	ivol $05, $30 ;X
	ivol $05, $70 ;X
	ivol $0A, $B0 ;X
	ivol $0F, $D0 ;X
	ivol $14, $F0 ;X
	iloop_prev ;X
SndInstrument_6D:
	ivol $10, $F2
	iloop_prev
SndInstrument_6E:
	ivol $02, $AA
	ivol $03, $B0
	ivol $02, $B2
	iloop_prev
SndInstrument_6F:
	ivol $24, $F8
	iloop_prev
SndInstrument_70:
	ivol $04, $C0
	ivol $02, $B1
	iloop_prev
SndInstrument_71:
	ivol $04, $EC
	ivol $01, $F0
	iloop_prev
SndInstrument_72:
	ivol $02, $F8 ;X
	ivol $02, $80 ;X
	ivol $02, $70 ;X
	ivol $02, $60 ;X
	ivol $02, $50 ;X
	ivol $02, $40 ;X
	ivol $02, $30 ;X
	ivol $64, $00 ;X
	iloop_prev ;X
SndInstrument_73:
	ivol $04, $9A
	ivol $06, $B0
	ivol $0A, $B2
	iloop_prev