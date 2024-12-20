Sound_SndHeaderPtrTablePtr: dw Sound_SndHeaderPtrTable
Sound_SlotPresetTablePtr: dw Sound_SlotPresetTable
Sound_InstrumentPtrTablePtr: dw Sound_InstrumentPtrTable-2
Sound_VibratoPtrTablePtr: dw Sound_VibratoPtrTable-2
Sound_WaveTablePtr: dw Sound_WaveTable

; =============== Sound_WaveTable ===============
; Sets of Wave data for channel 3, copied directly to the rWave registers.
Sound_WaveTable:
	db $00,$00,$00,$00,$00,$00,$00,$00,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ; $00 ; WAVE_00
	db $00,$00,$00,$00,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ; $01 ; WAVE_01
	db $00,$00,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ; $02 ; WAVE_02
	db $00,$0F,$FF,$00,$00,$0F,$FF,$FF,$00,$00,$00,$00,$FF,$FF,$FF,$FF;X ; $03 ; WAVE_03
	db $01,$23,$45,$67,$89,$AB,$CD,$EF,$FE,$DC,$BA,$98,$76,$54,$32,$10   ; $04 ; WAVE_04
	db $8B,$68,$84,$4A,$DC,$59,$51,$CB,$65,$09,$59,$F3,$49,$8D,$8A,$60   ; $05 ; WAVE_05
	db $75,$64,$24,$20,$22,$02,$54,$58,$77,$BC,$BF,$FE,$EF,$CD,$EB,$AB   ; $06 ; WAVE_06
	db $8F,$DB,$AB,$B0,$04,$7B,$65,$76,$50,$35,$8A,$CA,$6A,$53,$12,$54   ; $07 ; WAVE_07
	db $9F,$EA,$AF,$FB,$8A,$CB,$A8,$75,$45,$55,$57,$BD,$73,$02,$47,$B3   ; $08 ; WAVE_08
	db $00,$11,$22,$33,$44,$55,$66,$77,$88,$99,$AA,$BB,$CC,$DD,$EE,$FF   ; $09 ; WAVE_09
	db $AA,$CB,$02,$AB,$AB,$F9,$D8,$5E,$EA,$8A,$94,$52,$8C,$C7,$7F,$D6;X ; $0A ; WAVE_0A
	db $64,$98,$FA,$B3,$86,$3A,$8C,$9A,$B7,$8C,$9B,$D8,$20,$65,$9D,$D9   ; $0B ; WAVE_0B
	db $02,$46,$8A,$CE,$FD,$B9,$75,$31,$00,$11,$22,$33,$44,$55,$66,$77;X ; $0C ; WAVE_0C
	db $01,$12,$34,$55,$67,$78,$89,$9A,$BC,$DE,$FD,$CA,$86,$42,$06,$77   ; $0D ; WAVE_0D
	db $03,$68,$AB,$CD,$DE,$EE,$FF,$FB,$40,$00,$11,$12,$23,$45,$79,$CF   ; $0E ; WAVE_0E
	db $44,$44,$44,$20,$24,$44,$44,$44,$BB,$BB,$BB,$DF,$DB,$BB,$BB,$BB;X ; $0F ; WAVE_0F
	db $03,$68,$9A,$BC,$DD,$EE,$EF,$FF,$FE,$DC,$BA,$98,$B6,$54,$32,$10   ; $10 ; WAVE_10
	db $FF,$FF,$FF,$FF,$AA,$AA,$AA,$AA,$55,$55,$55,$55,$00,$00,$00,$00;X ; $11 ; WAVE_11
	db $9B,$CE,$CC,$AA,$97,$53,$55,$77,$99,$BB,$97,$53,$22,$00,$23,$57   ; $12 ; WAVE_12
	db $88,$99,$AA,$BB,$77,$88,$99,$AA,$55,$66,$77,$88,$44,$55,$66,$77;X ; $13 ; WAVE_13
	db $89,$AB,$CD,$78,$95,$67,$89,$AB,$56,$78,$9A,$B7,$89,$23,$45,$67;X ; $14 ; WAVE_14

; =============== Sound_SlotPresetTable ===============
; Table of slot presets, used by SoundDataCmd_NoteEx.
Sound_SlotPresetTable: 
	;  Duty | Stereo | Instrument | Vibrato/Sweep | NoiseFreq | Flags                      | Portamento Speed | Note ID | Preset ID
	db $80,   $FF,     $10,         $00,            $50,        SNDX_CH4,                    $00,               $19     ; $C0 | PRESET_00
	db $80,   $FF,     $0D,         $01,            $44,        SNDNPR_USECH4SWEEP|SNDX_CH4, $00,               $19     ; $C1 | PRESET_01
	db $80,   $F0,     $0E,         $00,            $00,        SNDX_CH4,                    $00,               $19     ; $C2 | PRESET_02
	db $80,   $F0,     $0F,         $00,            $00,        SNDX_CH4,                    $00,               $19     ; $C3 | PRESET_03
	db $80,   $FF,     $0C,         $00,            $50,        SNDX_CH4,                    $00,               $19     ; $C4 | PRESET_04
	db $80,   $F0,     $0C,         $00,            $50,        SNDX_CH4,                    $00,               $19     ; $C5 | PRESET_05
	db $80,   $FF,     $0C,         $00,            $50,        SNDX_CH4,                    $00,               $19     ; $C6 | PRESET_06
	db $80,   $0F,     $0C,         $00,            $50,        SNDX_CH4,                    $00,               $19     ; $C7 | PRESET_07
	db $80,   $F0,     $0B,         $00,            $02,        SNDX_CH4,                    $00,               $19     ; $C8 | PRESET_08
	db $80,   $FF,     $3A,         $00,            $02,        SNDX_CH4,                    $00,               $19     ; $C9 | PRESET_09
	
; =============== Sound_VibratoPtrTable ===============
; Pointers to the various Vibrato settings.
Sound_VibratoPtrTable:
	dw SndVibrato_01   ; $01 ; VIBRATO_01
	dw SndVibrato_02   ; $02 ; VIBRATO_02
	dw SndVibrato_03   ; $03 ; VIBRATO_03
	dw SndVibrato_04   ; $04 ; VIBRATO_04
	dw SndVibrato_05   ; $05 ; VIBRATO_05
	dw SndVibrato_06   ; $06 ; VIBRATO_06
	dw SndVibrato_07   ; $07 ; VIBRATO_07
	dw SndVibrato_08   ; $08 ; VIBRATO_08
	dw SndVibrato_09   ; $09 ; VIBRATO_09
	dw SndVibrato_0A;X ; $0A ; VIBRATO_0A
	dw SndVibrato_0B   ; $0B ; VIBRATO_0B
	dw SndVibrato_0C   ; $0C ; VIBRATO_0C
	dw SndVibrato_0D   ; $0D ; VIBRATO_0D
	dw SndVibrato_0E;X ; $0E ; VIBRATO_0E
	dw SndVibrato_0F   ; $0F ; VIBRATO_0F
	dw SndVibrato_10;X ; $10 ; VIBRATO_10
	dw SndVibrato_11   ; $11 ; VIBRATO_11
	dw SndVibrato_12   ; $12 ; VIBRATO_12
	dw SndVibrato_13   ; $13 ; VIBRATO_13
	dw SndVibrato_14;X ; $14 ; VIBRATO_14
	dw SndVibrato_14   ; $15 ; VIBRATO_15
	dw SndVibrato_16   ; $16 ; VIBRATO_16
	dw SndVibrato_17   ; $17 ; VIBRATO_17
	dw SndVibrato_18;X ; $18 ; VIBRATO_18
	dw SndVibrato_18;X ; $19 ; VIBRATO_19
	dw SndVibrato_18;X ; $1A ; VIBRATO_1A
	dw SndVibrato_18;X ; $1B ; VIBRATO_1B
	dw SndVibrato_18;X ; $1C ; VIBRATO_1C
	dw SndVibrato_18;X ; $1D ; VIBRATO_1D
	dw SndVibrato_18;X ; $1E ; VIBRATO_1E
	dw SndVibrato_18;X ; $1F ; VIBRATO_1F
	dw SndVibrato_18;X ; $20 ; VIBRATO_20
	dw SndVibrato_18;X ; $21 ; VIBRATO_21
	dw SndVibrato_18;X ; $22 ; VIBRATO_22
	dw SndVibrato_18;X ; $23 ; VIBRATO_23
	dw SndVibrato_18;X ; $24 ; VIBRATO_24
	dw SndVibrato_18;X ; $25 ; VIBRATO_25
	dw SndVibrato_18;X ; $26 ; VIBRATO_26
	dw SndVibrato_18;X ; $27 ; VIBRATO_27
	dw SndVibrato_18;X ; $28 ; VIBRATO_28
	dw SndVibrato_18;X ; $29 ; VIBRATO_29
	dw SndVibrato_18;X ; $2A ; VIBRATO_2A
	dw SndVibrato_18;X ; $2B ; VIBRATO_2B
	dw SndVibrato_18;X ; $2C ; VIBRATO_2C
	dw SndVibrato_18;X ; $2D ; VIBRATO_2D
	dw SndVibrato_18;X ; $2E ; VIBRATO_2E
	dw SndVibrato_18;X ; $2F ; VIBRATO_2F
	dw SndVibrato_18;X ; $30 ; VIBRATO_30
	dw SndVibrato_18;X ; $31 ; VIBRATO_31
	dw SndVibrato_18;X ; $32 ; VIBRATO_32
	dw SndVibrato_33   ; $33 ; VIBRATO_33
	dw SndVibrato_34   ; $34 ; VIBRATO_34
	dw SndVibrato_35   ; $35 ; VIBRATO_35
	dw SndVibrato_36   ; $36 ; VIBRATO_36
	dw SndVibrato_37   ; $37 ; VIBRATO_37
	dw SndVibrato_38;X ; $38 ; VIBRATO_38
	dw SndVibrato_39;X ; $39 ; VIBRATO_39
	dw SndVibrato_39;X ; $3A ; VIBRATO_3A
	dw SndVibrato_39;X ; $3B ; VIBRATO_3B
	dw SndVibrato_39;X ; $3C ; VIBRATO_3C
	dw SndVibrato_39   ; $3D ; VIBRATO_3D
	dw SndVibrato_39;X ; $3E ; VIBRATO_3E
	dw SndVibrato_39;X ; $3F ; VIBRATO_3F
	dw SndVibrato_39;X ; $40 ; VIBRATO_40
	dw SndVibrato_39;X ; $41 ; VIBRATO_41
	dw SndVibrato_39;X ; $42 ; VIBRATO_42
	dw SndVibrato_39;X ; $43 ; VIBRATO_43
	dw SndVibrato_39;X ; $44 ; VIBRATO_44
	dw SndVibrato_39;X ; $45 ; VIBRATO_45
	dw SndVibrato_39;X ; $46 ; VIBRATO_46
	dw SndVibrato_39;X ; $47 ; VIBRATO_47
	dw SndVibrato_39;X ; $48 ; VIBRATO_48
	dw SndVibrato_39;X ; $49 ; VIBRATO_49
	dw SndVibrato_39;X ; $4A ; VIBRATO_4A
	dw SndVibrato_39;X ; $4B ; VIBRATO_4B
	dw SndVibrato_39;X ; $4C ; VIBRATO_4C
	dw SndVibrato_39;X ; $4D ; VIBRATO_4D
	dw SndVibrato_39;X ; $4E ; VIBRATO_4E
	dw SndVibrato_39;X ; $4F ; VIBRATO_4F
	dw SndVibrato_39;X ; $50 ; VIBRATO_50
	dw SndVibrato_39;X ; $51 ; VIBRATO_51
	dw SndVibrato_39;X ; $52 ; VIBRATO_52
	dw SndVibrato_39;X ; $53 ; VIBRATO_53
	dw SndVibrato_39;X ; $54 ; VIBRATO_54
	dw SndVibrato_39;X ; $55 ; VIBRATO_55
	dw SndVibrato_39;X ; $56 ; VIBRATO_56
	dw SndVibrato_39;X ; $57 ; VIBRATO_57
	dw SndVibrato_39;X ; $58 ; VIBRATO_58
	dw SndVibrato_39;X ; $59 ; VIBRATO_59
	dw SndVibrato_39;X ; $5A ; VIBRATO_5A
	dw SndVibrato_5B   ; $5B ; VIBRATO_5B
	dw SndVibrato_5C   ; $5C ; VIBRATO_5C
	dw SndVibrato_5D   ; $5D ; VIBRATO_5D
	dw SndVibrato_5E;X ; $5E ; VIBRATO_5E
	dw SndVibrato_5F   ; $5F ; VIBRATO_5F
	dw SndVibrato_60   ; $60 ; VIBRATO_60
	dw SndVibrato_61   ; $61 ; VIBRATO_61
	dw SndVibrato_62   ; $62 ; VIBRATO_62
	dw SndVibrato_63   ; $63 ; VIBRATO_63
	dw SndVibrato_64;X ; $64 ; VIBRATO_64
	dw SndVibrato_65   ; $65 ; VIBRATO_65
	dw SndVibrato_66   ; $66 ; VIBRATO_66
	dw SndVibrato_67;X ; $67 ; VIBRATO_67
	dw SndVibrato_68   ; $68 ; VIBRATO_68
	dw SndVibrato_69;X ; $69 ; VIBRATO_69
	dw SndVibrato_69;X ; $6A ; VIBRATO_6A
	dw SndVibrato_69;X ; $6B ; VIBRATO_6B
	dw SndVibrato_69;X ; $6C ; VIBRATO_6C
	dw SndVibrato_69;X ; $6D ; VIBRATO_6D
	dw SndVibrato_69;X ; $6E ; VIBRATO_6E
	dw SndVibrato_69;X ; $6F ; VIBRATO_6F
	dw SndVibrato_69;X ; $70 ; VIBRATO_70
	dw SndVibrato_69;X ; $71 ; VIBRATO_71
	dw SndVibrato_69;X ; $72 ; VIBRATO_72
	dw SndVibrato_69;X ; $73 ; VIBRATO_73
	dw SndVibrato_69;X ; $74 ; VIBRATO_74
	dw SndVibrato_69;X ; $75 ; VIBRATO_75
	dw SndVibrato_69;X ; $76 ; VIBRATO_76
	dw SndVibrato_69;X ; $77 ; VIBRATO_77
	dw SndVibrato_69;X ; $78 ; VIBRATO_78
	dw SndVibrato_69;X ; $79 ; VIBRATO_79
	dw SndVibrato_69;X ; $7A ; VIBRATO_7A
	dw SndVibrato_69;X ; $7B ; VIBRATO_7B
	dw SndVibrato_69;X ; $7C ; VIBRATO_7C
	dw SndVibrato_69;X ; $7D ; VIBRATO_7D
	dw SndVibrato_69;X ; $7E ; VIBRATO_7E
	dw SndVibrato_69;X ; $7F ; VIBRATO_7F

SndVibrato_01:
	vfrq 40
	vfrq 40
	vfrq 40
	vfrq 120
.jump0004:
	vfrq 0
	vfrq 0
	vloop_far .jump0004
SndVibrato_02:
	vfrq -9
	vfrq -9
	vfrq -9
	vfrq -9
	vfrq 6
	vfrq 6
	vfrq 6
	vfrq 6
	vloop_far SndVibrato_02
SndVibrato_03:
	vfrq 0
	vfrq 1
	vfrq 0
	vfrq -1
	vrewind ;X
SndVibrato_04:
	vfrq 4
.jump0018:
	vfrq -2
	vfrq -2
	vfrq -2
	vfrq -2
	vfrq 2
	vfrq 2
	vfrq 2
	vfrq 2
	vloop_far .jump0018 ;X
SndVibrato_05:
	vfrq 0
.jump0023:
	vfrq -10
	vfrq -20
	vfrq -30
	vfrq -30
	vfrq -20
	vfrq -10
	vfrq 0
	vfrq 27
	vfrq 27
	vfrq 27
	vfrq 27
	vfrq 27 ;X
	vfrq 0 ;X
	vloop_far .jump0023 ;X
SndVibrato_06:
	vfrq 5
	vfrq -5
	vloop_far SndVibrato_06
SndVibrato_07:
	vfrq 7
	vfrq 0
	vfrq -7 ;X
	vfrq 0 ;X
	vrewind ;X
SndVibrato_08:
	vfrq 12
	vfrq -12
	vfrq 4
	vfrq 4
	vfrq 4
	vfrq 4
	vfrq -4
	vfrq -4
	vfrq -4
	vfrq -4
.jump0045:
	vfrq 5
	vloop_far .jump0045
SndVibrato_09:
	vfrq -11
	vrewind
SndVibrato_0A:
	vfrq 0 ;X
	vfrq 0 ;X
	vrewind ;X
SndVibrato_0B:
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
.jump0061:
	vfrq 1
	vfrq 1
	vfrq 0
	vfrq -1
	vfrq -1
	vfrq -1
	vfrq -1
	vfrq 0
	vfrq 1
	vfrq 1
	vloop_far .jump0061
SndVibrato_0C:
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
.jump0081:
	vfrq 1
	vfrq 1
	vfrq 0
	vfrq 0
	vfrq -1
	vfrq -1
	vfrq 0
	vfrq 0
	vfrq -1
	vfrq -1
	vfrq 0
	vfrq 0
	vfrq 1
	vfrq 1
	vfrq 0
	vfrq 0
	vloop_far .jump0081
SndVibrato_0D:
	vfrq -4
	vfrq 0
	vfrq 0
	vfrq 2
	vfrq 1
	vfrq 1
.jump0099:
	vfrq 0
	vloop_far .jump0099
SndVibrato_0E:
	vfrq -6 ;X
	vfrq 0 ;X
	vfrq 0 ;X
	vfrq 0 ;X
	vfrq 0 ;X
	vfrq 1 ;X
	vfrq 1 ;X
	vfrq 1 ;X
	vfrq 1 ;X
	vfrq 1 ;X
	vfrq 1 ;X
.jump00A7:
	vfrq 0 ;X
	vloop_far .jump00A7 ;X
SndVibrato_0F:
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
.jump00BE:
	vfrq 1
	vfrq 0
	vfrq 0
	vfrq -1
	vfrq 0
	vfrq 0
	vfrq -1
	vfrq 0
	vfrq 0
	vfrq 1
	vfrq 0
	vfrq 0
	vloop_far .jump00BE
SndVibrato_10:
	vfrq 0 ;X
	vfrq 0 ;X
	vfrq 0 ;X
	vfrq 0 ;X
	vfrq 0 ;X
	vfrq 0 ;X
	vfrq 0 ;X
	vfrq 0 ;X
	vfrq 0 ;X
	vfrq 0 ;X
	vfrq 0 ;X
	vfrq 0 ;X
	vfrq 0 ;X
	vfrq 0 ;X
	vfrq 0 ;X
	vfrq 0 ;X
	vfrq 0 ;X
	vfrq 0 ;X
	vfrq 0 ;X
	vfrq 0 ;X
.jump00E0:
	vfrq 1 ;X
	vfrq 0 ;X
	vfrq 1 ;X
	vfrq 0 ;X
	vfrq 1 ;X
	vfrq 0 ;X
	vfrq -1 ;X
	vfrq 0 ;X
	vfrq -1 ;X
	vfrq 0 ;X
	vfrq -1 ;X
	vfrq 0 ;X
	vfrq -1 ;X
	vfrq 0 ;X
	vfrq -1 ;X
	vfrq 0 ;X
	vfrq -1 ;X
	vfrq 0 ;X
	vfrq 1 ;X
	vfrq 0 ;X
	vfrq 1 ;X
	vfrq 0 ;X
	vfrq 1 ;X
	vfrq 0 ;X
	vloop_far .jump00E0 ;X
SndVibrato_11:
	vfrq -10
	vrewind
SndVibrato_12:
	vfrq 0
	vfrq 0
	vfrq -2
	vfrq -2
	vfrq -2
	vfrq -2
	vfrq -2
	vfrq -2
	vfrq -2
	vfrq -2
	vfrq -2
	vfrq -2
	vfrq -2
	vfrq -2
	vfrq 3
	vfrq 3
	vfrq 3
	vfrq 3
	vfrq 3
	vfrq 3
	vfrq 3
	vfrq 3
	vfrq 3
	vfrq 3
	vfrq 3
	vfrq 3 ;X
	vfrq 3 ;X
	vfrq 3 ;X
	vfrq 3 ;X
	vfrq 3 ;X
.jump011A:
	vfrq 0 ;X
	vloop_far .jump011A ;X
SndVibrato_13:
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq -1
	vfrq -1
.jump0128:
	vfrq -2
	vloop_far .jump0128
SndVibrato_14:
	vfrq 0
.jump012C:
	vfrq -4
	vloop_far .jump012C
SndVibrato_16:
	vfrq 0
.jump0130:
	vfrq 24
	vloop_far .jump0130
SndVibrato_17:
	vfrq 1
	vfrq -1
	vfrq -1
	vfrq 1
	vloop_far SndVibrato_17
SndVibrato_18:
	vfrq 0 ;X
	vrewind ;X

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
	dw SndHeader_00;X     ; $74 ; INSTR_74
	dw SndHeader_00;X     ; $75 ; INSTR_75
	dw SndHeader_00;X     ; $76 ; INSTR_76
	dw SndHeader_00;X     ; $77 ; INSTR_77
	dw SndHeader_00;X     ; $78 ; INSTR_78
	dw SndHeader_00;X     ; $79 ; INSTR_79
	dw SndInstrument_70;X ; $7A ; INSTR_7A
	dw SndHeader_00;X     ; $7B ; INSTR_7B
	dw SndHeader_00;X     ; $7C ; INSTR_7C
	dw SndHeader_00;X     ; $7D ; INSTR_7D
	dw SndHeader_00;X     ; $7E ; INSTR_7E
	dw SndHeader_00;X     ; $7F ; INSTR_7F
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
SndVibrato_34:
	vfrq -16
	vfrq 19
	vfrq -3
SndVibrato_33:
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
.jump0223:
	vfrq 1
	vfrq 1
	vfrq 0
	vfrq -1
	vfrq -1
	vfrq -1
	vfrq -1
	vfrq 0
	vfrq 1
	vfrq 1
	vloop_far .jump0223
SndVibrato_35:
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
.jump0243:
	vfrq 1
	vfrq 0
	vfrq 0
	vfrq -1
	vfrq 0
	vfrq 0
	vfrq -1
	vfrq 0
	vfrq 0
	vfrq 1
	vfrq 0
	vfrq 0
	vloop_far .jump0243
SndVibrato_36:
	vfrq -6
	vfrq 2
	vfrq 2
	vfrq 1
	vfrq 1
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
.jump0265:
	vfrq 1
	vfrq 1
	vfrq 0
	vfrq -1
	vfrq -1
	vfrq -1
	vfrq -1
	vfrq 0
	vfrq 1
	vfrq 1
	vloop_far .jump0265
SndVibrato_37:
	vfrq 0
	vfrq -1
	vfrq -2
	vfrq -4
	vfrq -8
	vfrq -16
.jump0277:
	vfrq -32
	vloop_far .jump0277
SndVibrato_38:
	vfrq 50 ;X
	vfrq 50 ;X
	vfrq 50 ;X
	vfrq 50 ;X
	vfrq -100 ;X
	vfrq -100 ;X
	vfrq -100 ;X
	vfrq -100 ;X
	vfrq 50 ;X
	vfrq 50 ;X
	vfrq 50 ;X
	vfrq 50 ;X
	vrewind ;X
SndVibrato_39:
	vfrq 0
	vrewind
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
SndVibrato_5B:
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 1
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq -1
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 1
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq -1
	vfrq 0
	vfrq 0
.jump049E:
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 1
	vfrq 0
	vfrq 1
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq -1
	vfrq 0
	vfrq -1
	vfrq 0
	vfrq 0
	vfrq 0
	vloop_far .jump049E
SndVibrato_5C:
	vfrq -13
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 1
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 1
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 1
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 1
	vfrq 0
	vfrq 0
	vfrq 1
	vfrq 0
	vfrq 0
	vfrq 1
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 1
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 1
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 1
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 1
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 1
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 1
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 1
.jump0504:
	vfrq 0
	vloop_far .jump0504
SndVibrato_5D:
	vfrq 0
.jump0508:
	vfrq 0
	vfrq -1
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 1
	vfrq 0
	vfrq 0
	vfrq -1
	vfrq 0
	vfrq 1
	vloop_far .jump0508
SndVibrato_5E:
	vfrq 0 ;X
	vfrq 0 ;X
	vfrq 0 ;X
	vfrq 0 ;X
	vfrq 0 ;X
	vfrq 0 ;X
	vfrq -2 ;X
	vfrq 0 ;X
	vfrq 0 ;X
	vfrq 0 ;X
	vfrq -2 ;X
	vfrq 0 ;X
	vfrq 0 ;X
	vfrq 0 ;X
	vfrq -3 ;X
	vfrq 0 ;X
	vfrq 0 ;X
	vfrq 0 ;X
	vfrq -3 ;X
	vfrq 0 ;X
	vfrq 0 ;X
	vfrq -2 ;X
	vfrq 0 ;X
	vfrq 0 ;X
	vfrq 2 ;X
	vfrq 0 ;X
	vfrq 0 ;X
	vfrq 3 ;X
	vfrq 0 ;X
	vfrq 0 ;X
	vfrq 0 ;X
	vfrq 3 ;X
	vfrq 0 ;X
	vfrq 0 ;X
	vfrq 0 ;X
	vfrq 2 ;X
	vfrq 0 ;X
	vfrq 0 ;X
	vfrq 0 ;X
	vfrq 2 ;X
.jump053D:
	vfrq 0 ;X
	vloop_far .jump053D ;X
SndVibrato_5F:
	vfrq -12
	vfrq 1
	vfrq 0
	vfrq 1
	vfrq 0
	vfrq 1
	vfrq 0
	vfrq 0
	vfrq 1
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 1
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 1
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 1
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 1
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 1
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 1
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 1
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 1
.jump056C:
	vfrq 0
	vloop_far .jump056C
SndVibrato_60:
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 1
	vfrq 0
	vfrq 0
	vfrq -1
	vfrq 0
	vfrq 0
.jump057A:
	vfrq -2
	vfrq 0
	vfrq 0
	vfrq 2
	vfrq 0
	vfrq 0
	vloop_far .jump057A
SndVibrato_61:
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
.jump0596:
	vfrq 0
	vfrq 0
	vfrq 1
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq -1
	vfrq 0
	vfrq 0
	vloop_far .jump0596
SndVibrato_62:
	vfrq -12
	vfrq 1
	vfrq 3
	vfrq 0
	vfrq 2
	vfrq 0
	vfrq 0
	vfrq 2
	vfrq 0
	vfrq 0
	vfrq 2
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 1
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 1
	vfrq 0
.jump05B6:
	vfrq 0
	vloop_far .jump05B6
SndVibrato_63:
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq -1
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq -2
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq -2
	vfrq 0
	vfrq -2
	vfrq 0
	vfrq -3
	vfrq 0
	vfrq -2 ;X
.jump05D1:
	vfrq 0 ;X
	vloop_far .jump05D1 ;X
SndVibrato_64:
	vfrq 0 ;X
	vfrq -4 ;X
	vfrq 0 ;X
	vfrq -3 ;X
	vfrq 0 ;X
	vfrq -3 ;X
	vfrq 0 ;X
	vfrq 0 ;X
.jump05DC:
	vfrq -3 ;X
	vfrq 0 ;X
	vfrq 0 ;X
	vfrq 0 ;X
	vfrq 0 ;X
	vfrq 0 ;X
	vfrq 0 ;X
	vfrq 0 ;X
	vfrq 0 ;X
	vfrq 0 ;X
	vfrq 0 ;X
	vloop_far .jump05DC ;X
SndVibrato_65:
	vfrq -4
	vfrq 0
	vfrq 0
	vfrq 2
	vfrq 0
	vfrq 1
	vfrq 0
	vfrq 1
.jump05F1:
	vfrq 0 ;X
	vloop_far .jump05F1 ;X
SndVibrato_66:
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq -1
	vfrq 0
	vfrq 0
	vfrq 0
	vfrq 1
	vloop_far SndVibrato_66
SndVibrato_67:
	vfrq -6 ;X
	vfrq 2 ;X
	vfrq 3 ;X
	vfrq 1 ;X
	vfrq 0 ;X
.jump0603:
	vfrq 0 ;X
	vloop_far .jump0603 ;X
SndVibrato_68:
	vfrq 0
	vfrq -1
	vfrq -1
	vfrq -1
	vfrq 0
	vfrq 1
	vfrq 1
	vfrq 1
	vfrq 0
	vloop_far SndVibrato_68
SndVibrato_69:
	vfrq 0 ;X
	vrewind ;X
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


SndHeader_00:
	db 1 ; Number of slots
.slot0:
	db SNDSLOTPAUSE ; Slot location
	db SNDX_CH123 ; iSndChInfo_Status
	db 15 ; iSndChInfo_01
	db INSTR_NONE ; iSndChInfo_02
	db VIBRATO_NONE ; iSndChInfo_03
	db 0 ; iSndChInfo_04
	db 160 ; iSndChInfo_05
	db SNDCH_WAVE ; iSndChInfo_06
	dw SndData_00_Ch3 ; Data pointer
	db WAVE_06 ; iSndChInfo_09
	db SNDOUT_CHALL ; iSndChInfo_0A

; =============== Sound_SndHeaderPtrTable ===============
; Pointer table with sound headers, by ID.
; Some of the unused entries point to SndData_00_Ch3, which is NOT a sound header.
Sound_SndHeaderPtrTable: 
	dp SndHeader_00 ; $00
	dp SndHeader_01 ; $01
	dp SndData_00_Ch3 ; $02
	dp SndHeader_03 ; $03
	dp SndHeader_04 ; $04
	dp SndHeader_05 ; $05
	dp SndHeader_06 ; $06
	dp SndHeader_07 ; $07
	dp SndHeader_08 ; $08
	dp SndHeader_09 ; $09
	dp SndHeader_0A ; $0A
	dp SndHeader_0B ; $0B
	dp SndHeader_0C ; $0C
	dp SndHeader_0D ; $0D
	dp SndHeader_0E ; $0E
	dp SndHeader_0F ; $0F
	dp SndHeader_10 ; $10
	dp SndHeader_11 ; $11
	dp SndHeader_12 ; $12
	dp SndHeader_13 ; $13
	dp SndHeader_14 ; $14
	dp SndHeader_15 ; $15
	dp SndHeader_16 ; $16
	dp SndHeader_17 ; $17
	dp SndHeader_18 ; $18
	dp SndHeader_19 ; $19
	dp SndHeader_1A ; $1A
	dp SndHeader_1B ; $1B
	dp SndData_00_Ch3 ; $1C
	dp SndData_00_Ch3 ; $1D
	dp SndData_00_Ch3 ; $1E
	dp SndHeader_1F ; $1F
	dp SndHeader_20 ; $20
	dp SndHeader_21 ; $21
	dp SndHeader_22 ; $22
	dp SndData_00_Ch3 ; $23
	dp SndHeader_24 ; $24
	dp SndData_00_Ch3 ; $25
	dp SndData_00_Ch3 ; $26
	dp SndData_00_Ch3 ; $27
	dp SndData_00_Ch3 ; $28
	dp SndHeader_29 ; $29
	dp SndHeader_2A ; $2A
	dp SndHeader_2B ; $2B
	dp SndHeader_2C ; $2C
	dp SndHeader_2D ; $2D
	dp SndHeader_2E ; $2E
	dp SndHeader_2F ; $2F
	dp SndHeader_30 ; $30
	dp SndHeader_31 ; $31
	dp SndHeader_32 ; $32
	dp SndHeader_33 ; $33
	dp SndHeader_34 ; $34
	dp SndHeader_35 ; $35
	dp SndHeader_36 ; $36
	dp SndHeader_37 ; $37
	dp SndHeader_38 ; $38
	dp SndHeader_39 ; $39
	dp SndHeader_3A ; $3A
	dp SndHeader_3B ; $3B
	dp SndHeader_3C ; $3C
	dp SndHeader_3D ; $3D
	dp SndHeader_3E ; $3E
	dp SndHeader_3F ; $3F
	dp SndHeader_40 ; $40
	dp SndHeader_41 ; $41
	dp SndHeader_42 ; $42
	dp SndHeader_43 ; $43
	dp SndHeader_44 ; $44
	dp SndHeader_45 ; $45
	dp SndHeader_46 ; $46
	dp SndHeader_47 ; $47
	dp SndHeader_48 ; $48
	dp SndHeader_49 ; $49
	dp SndHeader_4A ; $4A
	dp SndHeader_4B ; $4B
	dp SndHeader_4C ; $4C
	dp SndHeader_4D ; $4D
	dp SndHeader_4E ; $4E
	dp SndHeader_4F ; $4F
	dp SndHeader_50 ; $50
	dp SndHeader_51 ; $51
	dp SndHeader_52 ; $52
	dp SndHeader_53 ; $53
	dp SndHeader_54 ; $54
	dp SndHeader_55 ; $55
	dp SndHeader_56 ; $56
	dp SndHeader_57 ; $57
	dp SndHeader_58 ; $58
	dp SndHeader_59 ; $59
	dp SndHeader_5A ; $5A
	dp SndHeader_5B ; $5B
	dp SndHeader_5C ; $5C
	dp SndHeader_5D ; $5D
	dp SndHeader_5E ; $5E
	dp SndHeader_5F ; $5F
	dp SndHeader_60 ; $60
	dp SndHeader_61 ; $61
	dp SndHeader_62 ; $62
	dp SndHeader_63 ; $63
	dp SndHeader_64 ; $64
	dp SndHeader_65 ; $65
	dp SndHeader_66 ; $66
	dp SndHeader_67 ; $67
	dp SndHeader_68 ; $68
	
SndData_00_Ch3:
	snd_note $3D, NOTELEN_01
	snd_note $38
	snd_note $3A
	snd_note $3C
	snd_note $3D
	snd_note $38
	snd_note $3A
	snd_note $3C
	snd_end