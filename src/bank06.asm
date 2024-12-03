Sound_SndHeaderPtrTablePtr: dw Sound_SndHeaderPtrTable
Sound_SlotPresetTablePtr: dw Sound_SlotPresetTable
Sound_InstrumentPtrTablePtr: dw Sound_InstrumentPtrTable-2
Sound_VibratoPtrTablePtr: dw Sound_VibratoPtrTable-2
Sound_WaveTablePtr: dw Sound_WaveTable

; =============== Sound_WaveTable ===============
; Sets of Wave data for channel 3, copied directly to the rWave registers.
Sound_WaveTable:
	db $00,$00,$00,$00,$00,$00,$00,$00,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ; $00
	db $00,$00,$00,$00,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ; $01
	db $00,$00,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ; $02
	db $00,$0F,$FF,$00,$00,$0F,$FF,$FF,$00,$00,$00,$00,$FF,$FF,$FF,$FF;X ; $03
	db $01,$23,$45,$67,$89,$AB,$CD,$EF,$FE,$DC,$BA,$98,$76,$54,$32,$10   ; $04
	db $8B,$68,$84,$4A,$DC,$59,$51,$CB,$65,$09,$59,$F3,$49,$8D,$8A,$60   ; $05
	db $75,$64,$24,$20,$22,$02,$54,$58,$77,$BC,$BF,$FE,$EF,$CD,$EB,$AB   ; $06
	db $8F,$DB,$AB,$B0,$04,$7B,$65,$76,$50,$35,$8A,$CA,$6A,$53,$12,$54   ; $07
	db $9F,$EA,$AF,$FB,$8A,$CB,$A8,$75,$45,$55,$57,$BD,$73,$02,$47,$B3   ; $08
	db $00,$11,$22,$33,$44,$55,$66,$77,$88,$99,$AA,$BB,$CC,$DD,$EE,$FF   ; $09
	db $AA,$CB,$02,$AB,$AB,$F9,$D8,$5E,$EA,$8A,$94,$52,$8C,$C7,$7F,$D6;X ; $0A
	db $64,$98,$FA,$B3,$86,$3A,$8C,$9A,$B7,$8C,$9B,$D8,$20,$65,$9D,$D9   ; $0B
	db $02,$46,$8A,$CE,$FD,$B9,$75,$31,$00,$11,$22,$33,$44,$55,$66,$77;X ; $0C
	db $01,$12,$34,$55,$67,$78,$89,$9A,$BC,$DE,$FD,$CA,$86,$42,$06,$77   ; $0D
	db $03,$68,$AB,$CD,$DE,$EE,$FF,$FB,$40,$00,$11,$12,$23,$45,$79,$CF   ; $0E
	db $44,$44,$44,$20,$24,$44,$44,$44,$BB,$BB,$BB,$DF,$DB,$BB,$BB,$BB;X ; $0F
	db $03,$68,$9A,$BC,$DD,$EE,$EF,$FF,$FE,$DC,$BA,$98,$B6,$54,$32,$10   ; $10
	db $FF,$FF,$FF,$FF,$AA,$AA,$AA,$AA,$55,$55,$55,$55,$00,$00,$00,$00;X ; $11
	db $9B,$CE,$CC,$AA,$97,$53,$55,$77,$99,$BB,$97,$53,$22,$00,$23,$57   ; $12
	db $88,$99,$AA,$BB,$77,$88,$99,$AA,$55,$66,$77,$88,$44,$55,$66,$77;X ; $13
	db $89,$AB,$CD,$78,$95,$67,$89,$AB,$56,$78,$9A,$B7,$89,$23,$45,$67;X ; $14

; =============== Sound_SlotPresetTable ===============
; Table of slot presets, used by SoundDataCmd_NoteEx.
; In practice, these all set up the slot for exclusive use by the Noise channel.
Sound_SlotPresetTable: 
	;  Duty | Stereo | Instrument | Vibrato/Sweep | NoiseFreq | Flags                      | Portamento Speed | Note ID | Preset ID
	db $80,   $FF,     $10,         $00,            $50,        SNDX_CH4,                    $00,               $19     ; $C0
	db $80,   $FF,     $0D,         $01,            $44,        SNDNPR_USECH4SWEEP|SNDX_CH4, $00,               $19     ; $C1
	db $80,   $F0,     $0E,         $00,            $00,        SNDX_CH4,                    $00,               $19     ; $C2
	db $80,   $F0,     $0F,         $00,            $00,        SNDX_CH4,                    $00,               $19     ; $C3
	db $80,   $FF,     $0C,         $00,            $50,        SNDX_CH4,                    $00,               $19     ; $C4
	db $80,   $F0,     $0C,         $00,            $50,        SNDX_CH4,                    $00,               $19     ; $C5
	db $80,   $FF,     $0C,         $00,            $50,        SNDX_CH4,                    $00,               $19     ; $C6
	db $80,   $0F,     $0C,         $00,            $50,        SNDX_CH4,                    $00,               $19     ; $C7
	db $80,   $F0,     $0B,         $00,            $02,        SNDX_CH4,                    $00,               $19     ; $C8
	db $80,   $FF,     $3A,         $00,            $02,        SNDX_CH4,                    $00,               $19     ; $C9
	
; =============== Sound_VibratoPtrTable ===============
; Pointers to the various Vibrato settings.
Sound_VibratoPtrTable:
	dw SndVibrato_01   ; $01
	dw SndVibrato_02   ; $02
	dw SndVibrato_03   ; $03
	dw SndVibrato_04   ; $04
	dw SndVibrato_05   ; $05
	dw SndVibrato_06   ; $06
	dw SndVibrato_07   ; $07
	dw SndVibrato_08   ; $08
	dw SndVibrato_09   ; $09
	dw SndVibrato_0A;X ; $0A
	dw SndVibrato_0B   ; $0B
	dw SndVibrato_0C   ; $0C
	dw SndVibrato_0D   ; $0D
	dw SndVibrato_0E;X ; $0E
	dw SndVibrato_0F   ; $0F
	dw SndVibrato_10;X ; $10
	dw SndVibrato_11   ; $11
	dw SndVibrato_12   ; $12
	dw SndVibrato_13   ; $13
	dw SndVibrato_14;X ; $14
	dw SndVibrato_14   ; $15
	dw SndVibrato_16   ; $16
	dw SndVibrato_17   ; $17
	dw SndVibrato_18;X ; $18
	dw SndVibrato_18;X ; $19
	dw SndVibrato_18;X ; $1A
	dw SndVibrato_18;X ; $1B
	dw SndVibrato_18;X ; $1C
	dw SndVibrato_18;X ; $1D
	dw SndVibrato_18;X ; $1E
	dw SndVibrato_18;X ; $1F
	dw SndVibrato_18;X ; $20
	dw SndVibrato_18;X ; $21
	dw SndVibrato_18;X ; $22
	dw SndVibrato_18;X ; $23
	dw SndVibrato_18;X ; $24
	dw SndVibrato_18;X ; $25
	dw SndVibrato_18;X ; $26
	dw SndVibrato_18;X ; $27
	dw SndVibrato_18;X ; $28
	dw SndVibrato_18;X ; $29
	dw SndVibrato_18;X ; $2A
	dw SndVibrato_18;X ; $2B
	dw SndVibrato_18;X ; $2C
	dw SndVibrato_18;X ; $2D
	dw SndVibrato_18;X ; $2E
	dw SndVibrato_18;X ; $2F
	dw SndVibrato_18;X ; $30
	dw SndVibrato_18;X ; $31
	dw SndVibrato_18;X ; $32
	dw SndVibrato_33   ; $33
	dw SndVibrato_34   ; $34
	dw SndVibrato_35   ; $35
	dw SndVibrato_36   ; $36
	dw SndVibrato_37   ; $37
	dw SndVibrato_38;X ; $38
	dw SndVibrato_39;X ; $39
	dw SndVibrato_39;X ; $3A
	dw SndVibrato_39;X ; $3B
	dw SndVibrato_39;X ; $3C
	dw SndVibrato_39   ; $3D
	dw SndVibrato_39;X ; $3E
	dw SndVibrato_39;X ; $3F
	dw SndVibrato_39;X ; $40
	dw SndVibrato_39;X ; $41
	dw SndVibrato_39;X ; $42
	dw SndVibrato_39;X ; $43
	dw SndVibrato_39;X ; $44
	dw SndVibrato_39;X ; $45
	dw SndVibrato_39;X ; $46
	dw SndVibrato_39;X ; $47
	dw SndVibrato_39;X ; $48
	dw SndVibrato_39;X ; $49
	dw SndVibrato_39;X ; $4A
	dw SndVibrato_39;X ; $4B
	dw SndVibrato_39;X ; $4C
	dw SndVibrato_39;X ; $4D
	dw SndVibrato_39;X ; $4E
	dw SndVibrato_39;X ; $4F
	dw SndVibrato_39;X ; $50
	dw SndVibrato_39;X ; $51
	dw SndVibrato_39;X ; $52
	dw SndVibrato_39;X ; $53
	dw SndVibrato_39;X ; $54
	dw SndVibrato_39;X ; $55
	dw SndVibrato_39;X ; $56
	dw SndVibrato_39;X ; $57
	dw SndVibrato_39;X ; $58
	dw SndVibrato_39;X ; $59
	dw SndVibrato_39;X ; $5A
	dw SndVibrato_5B   ; $5B
	dw SndVibrato_5C   ; $5C
	dw SndVibrato_5D   ; $5D
	dw SndVibrato_5E;X ; $5E
	dw SndVibrato_5F   ; $5F
	dw SndVibrato_60   ; $60
	dw SndVibrato_61   ; $61
	dw SndVibrato_62   ; $62
	dw SndVibrato_63   ; $63
	dw SndVibrato_64;X ; $64
	dw SndVibrato_65   ; $65
	dw SndVibrato_66   ; $66
	dw SndVibrato_67;X ; $67
	dw SndVibrato_68   ; $68
	dw SndVibrato_69;X ; $69
	dw SndVibrato_69;X ; $6A
	dw SndVibrato_69;X ; $6B
	dw SndVibrato_69;X ; $6C
	dw SndVibrato_69;X ; $6D
	dw SndVibrato_69;X ; $6E
	dw SndVibrato_69;X ; $6F
	dw SndVibrato_69;X ; $70
	dw SndVibrato_69;X ; $71
	dw SndVibrato_69;X ; $72
	dw SndVibrato_69;X ; $73
	dw SndVibrato_69;X ; $74
	dw SndVibrato_69;X ; $75
	dw SndVibrato_69;X ; $76
	dw SndVibrato_69;X ; $77
	dw SndVibrato_69;X ; $78
	dw SndVibrato_69;X ; $79
	dw SndVibrato_69;X ; $7A
	dw SndVibrato_69;X ; $7B
	dw SndVibrato_69;X ; $7C
	dw SndVibrato_69;X ; $7D
	dw SndVibrato_69;X ; $7E
	dw SndVibrato_69;X ; $7F

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
; Pointers to the various instrument, not all used though.
; Each of the entries points to a list of commands, separate from normal sound commands.
; See also: Sound_DoInstrument
Sound_InstrumentPtrTable:
	dw SndInstrument_01   ; $01
	dw SndInstrument_02   ; $02
	dw SndInstrument_03   ; $03
	dw SndInstrument_04   ; $04
	dw SndInstrument_05   ; $05
	dw SndInstrument_06   ; $06
	dw SndInstrument_07   ; $07
	dw SndInstrument_08   ; $08
	dw SndInstrument_09   ; $09
	dw SndInstrument_0A   ; $0A
	dw SndInstrument_0B   ; $0B
	dw SndInstrument_0C   ; $0C
	dw SndInstrument_0D   ; $0D
	dw SndInstrument_0E   ; $0E
	dw SndInstrument_0F   ; $0F
	dw SndInstrument_10   ; $10
	dw SndInstrument_11   ; $11
	dw SndInstrument_12   ; $12
	dw SndInstrument_13   ; $13
	dw SndInstrument_14   ; $14
	dw SndInstrument_15   ; $15
	dw SndInstrument_16   ; $16
	dw SndInstrument_17   ; $17
	dw SndInstrument_18   ; $18
	dw SndInstrument_19   ; $19
	dw SndInstrument_1A   ; $1A
	dw SndInstrument_1B   ; $1B
	dw SndInstrument_1C;X ; $1C
	dw SndInstrument_1C;X ; $1D
	dw SndInstrument_1C   ; $1E
	dw SndInstrument_1F;X ; $1F
	dw SndInstrument_1F;X ; $20
	dw SndInstrument_1F;X ; $21
	dw SndInstrument_1F;X ; $22
	dw SndInstrument_1F;X ; $23
	dw SndInstrument_1F;X ; $24
	dw SndInstrument_1F;X ; $25
	dw SndInstrument_1F;X ; $26
	dw SndInstrument_1F;X ; $27
	dw SndInstrument_1F;X ; $28
	dw SndInstrument_1F;X ; $29
	dw SndInstrument_1F;X ; $2A
	dw SndInstrument_1F;X ; $2B
	dw SndInstrument_1F;X ; $2C
	dw SndInstrument_1F;X ; $2D
	dw SndInstrument_2E   ; $2E
	dw SndInstrument_2F   ; $2F
	dw SndInstrument_30   ; $30
	dw SndInstrument_31   ; $31
	dw SndInstrument_32   ; $32
	dw SndInstrument_33   ; $33
	dw SndInstrument_34   ; $34
	dw SndInstrument_35   ; $35
	dw SndInstrument_36   ; $36
	dw SndInstrument_37   ; $37
	dw SndInstrument_38   ; $38
	dw SndInstrument_39   ; $39
	dw SndInstrument_3A   ; $3A
	dw SndInstrument_3B   ; $3B
	dw SndInstrument_3C   ; $3C
	dw SndInstrument_3D   ; $3D
	dw SndInstrument_3E   ; $3E
	dw SndVibrato_5B;X    ; $3F
	dw SndInstrument_40   ; $40
	dw SndInstrument_41   ; $41
	dw SndInstrument_42   ; $42
	dw SndVibrato_5B;X    ; $43
	dw SndVibrato_5B;X    ; $44
	dw SndVibrato_5B;X    ; $45
	dw SndVibrato_5B;X    ; $46
	dw SndVibrato_5B;X    ; $47
	dw SndVibrato_5B;X    ; $48
	dw SndVibrato_5B;X    ; $49
	dw SndVibrato_5B;X    ; $4A
	dw SndVibrato_5B;X    ; $4B
	dw SndVibrato_5B;X    ; $4C
	dw SndVibrato_5B;X    ; $4D
	dw SndVibrato_5B;X    ; $4E
	dw SndVibrato_5B;X    ; $4F
	dw SndVibrato_5B;X    ; $50
	dw SndVibrato_5B;X    ; $51
	dw SndVibrato_5B;X    ; $52
	dw SndVibrato_5B;X    ; $53
	dw SndVibrato_5B;X    ; $54
	dw SndVibrato_5B;X    ; $55
	dw SndInstrument_56   ; $56
	dw SndInstrument_57   ; $57
	dw SndInstrument_58   ; $58
	dw SndInstrument_59;X ; $59
	dw SndInstrument_5A   ; $5A
	dw SndInstrument_5B   ; $5B
	dw SndInstrument_5C   ; $5C
	dw SndInstrument_5D   ; $5D
	dw SndInstrument_5E   ; $5E
	dw SndInstrument_5F   ; $5F
	dw SndInstrument_60   ; $60
	dw SndInstrument_61   ; $61
	dw SndInstrument_62   ; $62
	dw SndInstrument_63   ; $63
	dw SndInstrument_64;X ; $64
	dw SndInstrument_65   ; $65
	dw SndInstrument_66;X ; $66
	dw SndInstrument_67   ; $67
	dw SndInstrument_68   ; $68
	dw SndInstrument_69   ; $69
	dw SndInstrument_6A   ; $6A
	dw SndInstrument_6B   ; $6B
	dw SndInstrument_6C;X ; $6C
	dw SndInstrument_6D   ; $6D
	dw SndInstrument_6E   ; $6E
	dw SndInstrument_6F   ; $6F
	dw SndInstrument_70   ; $70
	dw SndInstrument_71   ; $71
	dw SndInstrument_72;X ; $72
	dw SndInstrument_73   ; $73
	dw SndHeader_00;X     ; $74
	dw SndHeader_00;X     ; $75
	dw SndHeader_00;X     ; $76
	dw SndHeader_00;X     ; $77
	dw SndHeader_00;X     ; $78
	dw SndHeader_00;X     ; $79
	dw SndInstrument_70;X ; $7A
	dw SndHeader_00;X     ; $7B
	dw SndHeader_00;X     ; $7C
	dw SndHeader_00;X     ; $7D
	dw SndHeader_00;X     ; $7E
	dw SndHeader_00;X     ; $7F
SndInstrument_01:
	ivol $14, $F, SNDENV_INC, $00 ; vol3 $14, SNDCH3VOL_100
	ivol $04, $F, SNDENV_DEC, $01 ; vol3 $04, SNDCH3VOL_100
	ivol $06, $A, SNDENV_DEC, $03 ; vol3 $06, SNDCH3VOL_050 ;X
	ivol $10, $8, SNDENV_DEC, $04 ; vol3 $10, SNDCH3VOL_050 ;X
	ivol $08, $4, SNDENV_DEC, $02 ; vol3 $08, SNDCH3VOL_025 ;X
	ivol $64, $0, SNDENV_INC, $00 ; vol3 $64, SNDCH3VOL_000 ;X
	iloop_prev ;X
SndInstrument_02:
	ivol $01, $C, SNDENV_INC, $00 ; vol3 $01, SNDCH3VOL_100
	ivol $06, $F, SNDENV_DEC, $01 ; vol3 $06, SNDCH3VOL_100 ;X
	ivol $04, $D, SNDENV_DEC, $01 ; vol3 $04, SNDCH3VOL_100 ;X
	ivol $64, $5, SNDENV_INC, $00 ; vol3 $64, SNDCH3VOL_025 ;X
	iloop_prev ;X
SndInstrument_03:
	ivol $02, $F, SNDENV_DEC, $01 ; vol3 $02, SNDCH3VOL_100
	ivol $02, $8, SNDENV_DEC, $01 ; vol3 $02, SNDCH3VOL_050
	ivol $64, $0, SNDENV_INC, $00 ; vol3 $64, SNDCH3VOL_000
	iloop_prev ;X
SndInstrument_04:
	ivol $06, $F, SNDENV_DEC, $02 ; vol3 $06, SNDCH3VOL_100
	ivol $10, $9, SNDENV_INC, $00 ; vol3 $10, SNDCH3VOL_050 ;X
	ivol $28, $8, SNDENV_DEC, $04 ; vol3 $28, SNDCH3VOL_050 ;X
	ivol $64, $0, SNDENV_INC, $00 ; vol3 $64, SNDCH3VOL_000 ;X
	iloop_prev ;X
SndInstrument_05:
	ivol $10, $A, SNDENV_INC, $01 ; vol3 $10, SNDCH3VOL_050
	ivol $64, $F, SNDENV_INC, $00 ; vol3 $64, SNDCH3VOL_100
	iloop_prev
SndInstrument_06:
	ivol $03, $F, SNDENV_DEC, $00 ; vol3 $03, SNDCH3VOL_100
	ivol $0A, $B, SNDENV_DEC, $00 ; vol3 $0A, SNDCH3VOL_050
	ivol $64, $8, SNDENV_DEC, $00 ; vol3 $64, SNDCH3VOL_050
	iloop_prev ;X
SndInstrument_07:
	ivol $04, $F, SNDENV_DEC, $00 ; vol3 $04, SNDCH3VOL_100
	ivol $3C, $A, SNDENV_DEC, $00 ; vol3 $3C, SNDCH3VOL_050
	ivol $06, $A, SNDENV_INC, $03 ; vol3 $06, SNDCH3VOL_050
	ivol $23, $C, SNDENV_DEC, $00 ; vol3 $23, SNDCH3VOL_100
	ivol $50, $C, SNDENV_DEC, $07 ; vol3 $50, SNDCH3VOL_100
	ivol $64, $0, SNDENV_DEC, $00 ; vol3 $64, SNDCH3VOL_000 ;X
	iloop_prev ;X
SndInstrument_08:
	ivol $03, $F, SNDENV_DEC, $01 ; vol3 $03, SNDCH3VOL_100
	ivol $0A, $C, SNDENV_DEC, $00 ; vol3 $0A, SNDCH3VOL_100
	ivol $0A, $B, SNDENV_DEC, $00 ; vol3 $0A, SNDCH3VOL_050
	ivol $0A, $A, SNDENV_DEC, $00 ; vol3 $0A, SNDCH3VOL_050
	ivol $64, $9, SNDENV_DEC, $00 ; vol3 $64, SNDCH3VOL_050
	iloop_prev ;X
SndInstrument_09:
	ivol $02, $F, SNDENV_DEC, $01 ; vol3 $02, SNDCH3VOL_100
	ivol $64, $8, SNDENV_DEC, $00 ; vol3 $64, SNDCH3VOL_050
	iloop_prev ;X
SndInstrument_0A:
	ivol $09, $9, SNDENV_DEC, $01 ; vol3 $09, SNDCH3VOL_050
	ivol $64, $0, SNDENV_INC, $00 ; vol3 $64, SNDCH3VOL_000
	iloop_prev ;X
SndInstrument_0B:
	ivol $02, $F, SNDENV_DEC, $00 ; vol3 $02, SNDCH3VOL_100
	ivol $64, $4, SNDENV_DEC, $00 ; vol3 $64, SNDCH3VOL_025
	iloop_prev ;X
SndInstrument_0C:
	ivol $01, $9, SNDENV_DEC, $01 ; vol3 $01, SNDCH3VOL_050
	ivol $08, $4, SNDENV_DEC, $02 ; vol3 $08, SNDCH3VOL_025
	ivol $64, $0, SNDENV_INC, $00 ; vol3 $64, SNDCH3VOL_000
	iloop_prev ;X
SndInstrument_0D:
	ivol $02, $F, SNDENV_INC, $00 ; vol3 $02, SNDCH3VOL_100
	ivol $64, $0, SNDENV_INC, $00 ; vol3 $64, SNDCH3VOL_000
	iloop_prev ;X
SndInstrument_0E:
	ivol $01, $E, SNDENV_INC, $00 ; vol3 $01, SNDCH3VOL_100
	ivol $64, $0, SNDENV_INC, $00 ; vol3 $64, SNDCH3VOL_000
	iloop_prev ;X
SndInstrument_0F:
	ivol $01, $F, SNDENV_INC, $00 ; vol3 $01, SNDCH3VOL_100
	ivol $64, $C, SNDENV_DEC, $01 ; vol3 $64, SNDCH3VOL_100
	iloop_prev ;X
SndInstrument_10:
	ivol $01, $C, SNDENV_DEC, $01 ; vol3 $01, SNDCH3VOL_100
	ivol $0C, $7, SNDENV_DEC, $02 ; vol3 $0C, SNDCH3VOL_025
	ivol $64, $0, SNDENV_INC, $00 ; vol3 $64, SNDCH3VOL_000
	iloop_prev
SndInstrument_11:
	ivol $02, $F, SNDENV_DEC, $01 ; vol3 $02, SNDCH3VOL_100
	ivol $05, $B, SNDENV_DEC, $01 ; vol3 $05, SNDCH3VOL_050
	ivol $64, $4, SNDENV_INC, $07 ; vol3 $64, SNDCH3VOL_025
	iloop_prev ;X
SndInstrument_12:
	ivol $04, $F, SNDENV_DEC, $01 ; vol3 $04, SNDCH3VOL_100
	ivol $64, $8, SNDENV_DEC, $02 ; vol3 $64, SNDCH3VOL_050
	iloop_prev ;X
SndInstrument_13:
	ivol $01, $F, SNDENV_DEC, $00 ; vol3 $01, SNDCH3VOL_100
	ivol $01, $D, SNDENV_DEC, $00 ; vol3 $01, SNDCH3VOL_100
	ivol $01, $B, SNDENV_DEC, $00 ; vol3 $01, SNDCH3VOL_050
	ivol $01, $9, SNDENV_DEC, $00 ; vol3 $01, SNDCH3VOL_050
	ivol $01, $7, SNDENV_DEC, $00 ; vol3 $01, SNDCH3VOL_025
	ivol $01, $5, SNDENV_DEC, $00 ; vol3 $01, SNDCH3VOL_025
	ivol $01, $3, SNDENV_DEC, $00 ; vol3 $01, SNDCH3VOL_000
	ivol $01, $1, SNDENV_DEC, $00 ; vol3 $01, SNDCH3VOL_000
	ivol $64, $0, SNDENV_DEC, $00 ; vol3 $64, SNDCH3VOL_000
	iloop_prev ;X
SndInstrument_14:
	ivol $02, $F, SNDENV_DEC, $01 ; vol3 $02, SNDCH3VOL_100 ;X
	ivol $64, $B, SNDENV_DEC, $01 ; vol3 $64, SNDCH3VOL_050 ;X
	iloop_prev ;X
SndInstrument_15:
	ivol $09, $B, SNDENV_INC, $02 ; vol3 $09, SNDCH3VOL_050
	ivol $02, $F, SNDENV_DEC, $02 ; vol3 $02, SNDCH3VOL_100
	ivol $64, $E, SNDENV_DEC, $00 ; vol3 $64, SNDCH3VOL_100
	iloop_prev
SndInstrument_16:
	ivol $02, $C, SNDENV_DEC, $01 ; vol3 $02, SNDCH3VOL_100
	ivol $64, $4, SNDENV_DEC, $00 ; vol3 $64, SNDCH3VOL_025
	iloop_prev ;X
SndInstrument_17:
	ivol $0A, $F, SNDENV_DEC, $01 ; vol3 $0A, SNDCH3VOL_100
	ivol $0A, $4, SNDENV_DEC, $00 ; vol3 $0A, SNDCH3VOL_025
	ivol $64, $4, SNDENV_INC, $07 ; vol3 $64, SNDCH3VOL_025
	iloop_prev ;X
SndInstrument_18:
	ivol $03, $F, SNDENV_DEC, $01 ; vol3 $03, SNDCH3VOL_100
	ivol $64, $A, SNDENV_DEC, $00 ; vol3 $64, SNDCH3VOL_050
	iloop_prev
SndInstrument_19:
	ivol $0C, $4, SNDENV_DEC, $00 ; vol3 $0C, SNDCH3VOL_025
	ivol $0C, $5, SNDENV_DEC, $00 ; vol3 $0C, SNDCH3VOL_025
	ivol $0C, $6, SNDENV_DEC, $00 ; vol3 $0C, SNDCH3VOL_025
	ivol $0C, $7, SNDENV_DEC, $00 ; vol3 $0C, SNDCH3VOL_025
	ivol $24, $8, SNDENV_DEC, $00 ; vol3 $24, SNDCH3VOL_050
	ivol $64, $8, SNDENV_DEC, $07 ; vol3 $64, SNDCH3VOL_050
	iloop_prev ;X
SndInstrument_1A:
	ivol $04, $F, SNDENV_DEC, $00 ; vol3 $04, SNDCH3VOL_100 ;X
	ivol $04, $2, SNDENV_DEC, $00 ; vol3 $04, SNDCH3VOL_000 ;X
	iloop_prev ;X
SndInstrument_1B:
	ivol $04, $F, SNDENV_DEC, $00 ; vol3 $04, SNDCH3VOL_100
	ivol $64, $C, SNDENV_DEC, $00 ; vol3 $64, SNDCH3VOL_100
	iloop_prev
SndInstrument_1C:
	ivol $0F, $F, SNDENV_DEC, $01 ; vol3 $0F, SNDCH3VOL_100
	ivol $64, $0, SNDENV_INC, $00 ; vol3 $64, SNDCH3VOL_000 ;X
	iloop_prev ;X
SndInstrument_1F:
	ivol $00, $0, SNDENV_DEC, $00 ; vol3 $00, SNDCH3VOL_000 ;X
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
	ivol $03, $F, SNDENV_DEC, $00 ; vol3 $03, SNDCH3VOL_100
	ivol $0A, $B, SNDENV_DEC, $00 ; vol3 $0A, SNDCH3VOL_050
	ivol $64, $8, SNDENV_DEC, $00 ; vol3 $64, SNDCH3VOL_050
	iloop_prev
SndInstrument_2F:
	ivol $02, $F, SNDENV_INC, $00 ; vol3 $02, SNDCH3VOL_100
	ivol $02, $C, SNDENV_INC, $00 ; vol3 $02, SNDCH3VOL_100
	ivol $02, $9, SNDENV_INC, $00 ; vol3 $02, SNDCH3VOL_050
	ivol $02, $5, SNDENV_INC, $00 ; vol3 $02, SNDCH3VOL_025
	ivol $02, $B, SNDENV_DEC, $00 ; vol3 $02, SNDCH3VOL_050
	ivol $02, $8, SNDENV_INC, $00 ; vol3 $02, SNDCH3VOL_050
	ivol $02, $5, SNDENV_INC, $00 ; vol3 $02, SNDCH3VOL_025
	ivol $64, $0, SNDENV_INC, $00 ; vol3 $64, SNDCH3VOL_000
	iloop_prev ;X
SndInstrument_30:
	ivol $01, $B, SNDENV_DEC, $00 ; vol3 $01, SNDCH3VOL_050
	ivol $02, $C, SNDENV_DEC, $00 ; vol3 $02, SNDCH3VOL_100
	ivol $03, $D, SNDENV_DEC, $00 ; vol3 $03, SNDCH3VOL_100
	ivol $04, $E, SNDENV_DEC, $00 ; vol3 $04, SNDCH3VOL_100
	ivol $64, $F, SNDENV_DEC, $00 ; vol3 $64, SNDCH3VOL_100
	iloop_prev
SndInstrument_31:
	ivol $02, $F, SNDENV_INC, $00 ; vol3 $02, SNDCH3VOL_100
	ivol $02, $C, SNDENV_INC, $00 ; vol3 $02, SNDCH3VOL_100
	ivol $04, $9, SNDENV_INC, $00 ; vol3 $04, SNDCH3VOL_050
	ivol $04, $5, SNDENV_INC, $00 ; vol3 $04, SNDCH3VOL_025
	ivol $64, $0, SNDENV_INC, $00 ; vol3 $64, SNDCH3VOL_000
	iloop_prev ;X
SndInstrument_32:
	ivol $01, $F, SNDENV_INC, $00 ; vol3 $01, SNDCH3VOL_100
	ivol $01, $E, SNDENV_DEC, $00 ; vol3 $01, SNDCH3VOL_100
	ivol $01, $D, SNDENV_DEC, $00 ; vol3 $01, SNDCH3VOL_100
	ivol $01, $C, SNDENV_DEC, $00 ; vol3 $01, SNDCH3VOL_100
	ivol $01, $B, SNDENV_DEC, $00 ; vol3 $01, SNDCH3VOL_050
	ivol $01, $A, SNDENV_DEC, $00 ; vol3 $01, SNDCH3VOL_050
	ivol $01, $9, SNDENV_DEC, $00 ; vol3 $01, SNDCH3VOL_050
	ivol $01, $8, SNDENV_DEC, $00 ; vol3 $01, SNDCH3VOL_050
	ivol $01, $7, SNDENV_INC, $00 ; vol3 $01, SNDCH3VOL_025
	ivol $01, $6, SNDENV_DEC, $00 ; vol3 $01, SNDCH3VOL_025
	ivol $01, $5, SNDENV_DEC, $00 ; vol3 $01, SNDCH3VOL_025
	ivol $01, $4, SNDENV_DEC, $00 ; vol3 $01, SNDCH3VOL_025
	ivol $01, $3, SNDENV_DEC, $00 ; vol3 $01, SNDCH3VOL_000
	ivol $01, $2, SNDENV_DEC, $00 ; vol3 $01, SNDCH3VOL_000
	ivol $01, $1, SNDENV_DEC, $00 ; vol3 $01, SNDCH3VOL_000
	ivol $64, $0, SNDENV_DEC, $00 ; vol3 $64, SNDCH3VOL_000
	iloop_prev ;X
SndInstrument_33:
	ivol $02, $F, SNDENV_INC, $00 ; vol3 $02, SNDCH3VOL_100
	ivol $02, $C, SNDENV_INC, $00 ; vol3 $02, SNDCH3VOL_100
	ivol $02, $9, SNDENV_INC, $00 ; vol3 $02, SNDCH3VOL_050
	ivol $02, $6, SNDENV_INC, $00 ; vol3 $02, SNDCH3VOL_025
	ivol $02, $B, SNDENV_DEC, $00 ; vol3 $02, SNDCH3VOL_050
	ivol $02, $8, SNDENV_INC, $00 ; vol3 $02, SNDCH3VOL_050
	ivol $02, $5, SNDENV_INC, $00 ; vol3 $02, SNDCH3VOL_025
	ivol $02, $2, SNDENV_INC, $00 ; vol3 $02, SNDCH3VOL_000
	ivol $02, $9, SNDENV_DEC, $00 ; vol3 $02, SNDCH3VOL_050
	ivol $02, $6, SNDENV_INC, $00 ; vol3 $02, SNDCH3VOL_025
	ivol $02, $3, SNDENV_INC, $00 ; vol3 $02, SNDCH3VOL_000
	ivol $02, $0, SNDENV_INC, $00 ; vol3 $02, SNDCH3VOL_000
	ivol $02, $7, SNDENV_DEC, $00 ; vol3 $02, SNDCH3VOL_025
	ivol $02, $4, SNDENV_INC, $00 ; vol3 $02, SNDCH3VOL_025
	ivol $02, $1, SNDENV_INC, $00 ; vol3 $02, SNDCH3VOL_000
	ivol $02, $0, SNDENV_INC, $00 ; vol3 $02, SNDCH3VOL_000
	ivol $02, $5, SNDENV_DEC, $00 ; vol3 $02, SNDCH3VOL_025
	ivol $02, $2, SNDENV_INC, $00 ; vol3 $02, SNDCH3VOL_000
	ivol $64, $0, SNDENV_INC, $00 ; vol3 $64, SNDCH3VOL_000
	iloop_prev ;X
SndInstrument_34:
	ivol $03, $F, SNDENV_INC, $00 ; vol3 $03, SNDCH3VOL_100
	ivol $05, $E, SNDENV_INC, $00 ; vol3 $05, SNDCH3VOL_100
	ivol $02, $D, SNDENV_INC, $00 ; vol3 $02, SNDCH3VOL_100
	ivol $02, $C, SNDENV_INC, $00 ; vol3 $02, SNDCH3VOL_100
	ivol $06, $B, SNDENV_INC, $00 ; vol3 $06, SNDCH3VOL_050
	ivol $0A, $A, SNDENV_INC, $00 ; vol3 $0A, SNDCH3VOL_050
	ivol $0F, $9, SNDENV_INC, $00 ; vol3 $0F, SNDCH3VOL_050
	ivol $14, $8, SNDENV_INC, $00 ; vol3 $14, SNDCH3VOL_050
	ivol $14, $7, SNDENV_INC, $00 ; vol3 $14, SNDCH3VOL_025
	ivol $14, $6, SNDENV_INC, $00 ; vol3 $14, SNDCH3VOL_025
	ivol $14, $5, SNDENV_INC, $00 ; vol3 $14, SNDCH3VOL_025
	ivol $14, $4, SNDENV_INC, $00 ; vol3 $14, SNDCH3VOL_025 ;X
	ivol $64, $0, SNDENV_INC, $00 ; vol3 $64, SNDCH3VOL_000 ;X
	iloop_prev ;X
SndInstrument_35:
	ivol $01, $B, SNDENV_INC, $00 ; vol3 $01, SNDCH3VOL_050
	ivol $02, $C, SNDENV_INC, $00 ; vol3 $02, SNDCH3VOL_100
	ivol $03, $D, SNDENV_INC, $00 ; vol3 $03, SNDCH3VOL_100
	ivol $04, $E, SNDENV_INC, $00 ; vol3 $04, SNDCH3VOL_100
	ivol $0F, $F, SNDENV_INC, $00 ; vol3 $0F, SNDCH3VOL_100
	ivol $0F, $E, SNDENV_DEC, $00 ; vol3 $0F, SNDCH3VOL_100
	ivol $0F, $D, SNDENV_DEC, $00 ; vol3 $0F, SNDCH3VOL_100
	ivol $0F, $C, SNDENV_DEC, $00 ; vol3 $0F, SNDCH3VOL_100
	ivol $0F, $B, SNDENV_DEC, $00 ; vol3 $0F, SNDCH3VOL_050
	ivol $0F, $A, SNDENV_DEC, $00 ; vol3 $0F, SNDCH3VOL_050
	ivol $0F, $9, SNDENV_DEC, $00 ; vol3 $0F, SNDCH3VOL_050
	ivol $64, $8, SNDENV_DEC, $00 ; vol3 $64, SNDCH3VOL_050
	iloop_prev ;X
SndInstrument_36:
	ivol $0A, $C, SNDENV_DEC, $00 ; vol3 $0A, SNDCH3VOL_100
	ivol $0A, $D, SNDENV_DEC, $00 ; vol3 $0A, SNDCH3VOL_100
	ivol $0A, $E, SNDENV_DEC, $00 ; vol3 $0A, SNDCH3VOL_100
	ivol $0A, $F, SNDENV_DEC, $00 ; vol3 $0A, SNDCH3VOL_100
	ivol $0D, $E, SNDENV_INC, $00 ; vol3 $0D, SNDCH3VOL_100
	ivol $0D, $D, SNDENV_INC, $00 ; vol3 $0D, SNDCH3VOL_100
	ivol $0D, $C, SNDENV_INC, $00 ; vol3 $0D, SNDCH3VOL_100
	ivol $0D, $B, SNDENV_INC, $00 ; vol3 $0D, SNDCH3VOL_050
	ivol $0D, $A, SNDENV_INC, $00 ; vol3 $0D, SNDCH3VOL_050
	ivol $0D, $9, SNDENV_INC, $00 ; vol3 $0D, SNDCH3VOL_050
	ivol $0D, $8, SNDENV_INC, $00 ; vol3 $0D, SNDCH3VOL_050
	ivol $0D, $7, SNDENV_INC, $00 ; vol3 $0D, SNDCH3VOL_025
	ivol $0D, $6, SNDENV_INC, $00 ; vol3 $0D, SNDCH3VOL_025
	ivol $0D, $5, SNDENV_INC, $00 ; vol3 $0D, SNDCH3VOL_025
	ivol $0D, $4, SNDENV_INC, $00 ; vol3 $0D, SNDCH3VOL_025
	ivol $0D, $3, SNDENV_INC, $00 ; vol3 $0D, SNDCH3VOL_000
	ivol $0D, $2, SNDENV_INC, $00 ; vol3 $0D, SNDCH3VOL_000
	ivol $0D, $1, SNDENV_INC, $00 ; vol3 $0D, SNDCH3VOL_000
	ivol $64, $0, SNDENV_INC, $00 ; vol3 $64, SNDCH3VOL_000
	iloop_prev ;X
SndInstrument_37:
	ivol $02, $B, SNDENV_DEC, $00 ; vol3 $02, SNDCH3VOL_050
	ivol $03, $C, SNDENV_DEC, $00 ; vol3 $03, SNDCH3VOL_100
	ivol $03, $D, SNDENV_DEC, $00 ; vol3 $03, SNDCH3VOL_100
	ivol $04, $E, SNDENV_DEC, $00 ; vol3 $04, SNDCH3VOL_100
	ivol $14, $F, SNDENV_DEC, $00 ; vol3 $14, SNDCH3VOL_100
	ivol $05, $E, SNDENV_INC, $00 ; vol3 $05, SNDCH3VOL_100
	ivol $07, $D, SNDENV_INC, $00 ; vol3 $07, SNDCH3VOL_100
	ivol $09, $C, SNDENV_INC, $00 ; vol3 $09, SNDCH3VOL_100
	ivol $09, $B, SNDENV_INC, $00 ; vol3 $09, SNDCH3VOL_050
	ivol $64, $A, SNDENV_DEC, $00 ; vol3 $64, SNDCH3VOL_050
	iloop_prev ;X
SndInstrument_38:
	ivol $02, $8, SNDENV_DEC, $00 ; vol3 $02, SNDCH3VOL_050
	ivol $02, $9, SNDENV_DEC, $00 ; vol3 $02, SNDCH3VOL_050
	ivol $02, $A, SNDENV_DEC, $00 ; vol3 $02, SNDCH3VOL_050
	ivol $02, $B, SNDENV_DEC, $00 ; vol3 $02, SNDCH3VOL_050
	ivol $02, $C, SNDENV_DEC, $00 ; vol3 $02, SNDCH3VOL_100
	ivol $02, $D, SNDENV_DEC, $00 ; vol3 $02, SNDCH3VOL_100
	ivol $02, $E, SNDENV_DEC, $00 ; vol3 $02, SNDCH3VOL_100
	ivol $14, $F, SNDENV_DEC, $00 ; vol3 $14, SNDCH3VOL_100
	ivol $0A, $E, SNDENV_INC, $00 ; vol3 $0A, SNDCH3VOL_100
	ivol $0A, $D, SNDENV_INC, $00 ; vol3 $0A, SNDCH3VOL_100
	ivol $0A, $C, SNDENV_INC, $00 ; vol3 $0A, SNDCH3VOL_100
	ivol $0A, $B, SNDENV_INC, $00 ; vol3 $0A, SNDCH3VOL_050 ;X
	ivol $0A, $A, SNDENV_INC, $00 ; vol3 $0A, SNDCH3VOL_050 ;X
	ivol $0A, $9, SNDENV_INC, $00 ; vol3 $0A, SNDCH3VOL_050 ;X
	ivol $0A, $8, SNDENV_DEC, $00 ; vol3 $0A, SNDCH3VOL_050 ;X
	iloop_prev ;X
SndInstrument_39:
	ivol $01, $F, SNDENV_INC, $00 ; vol3 $01, SNDCH3VOL_100
	ivol $01, $C, SNDENV_INC, $00 ; vol3 $01, SNDCH3VOL_100
	ivol $02, $9, SNDENV_INC, $00 ; vol3 $02, SNDCH3VOL_050
	ivol $02, $6, SNDENV_INC, $00 ; vol3 $02, SNDCH3VOL_025
	ivol $01, $B, SNDENV_DEC, $00 ; vol3 $01, SNDCH3VOL_050
	ivol $01, $8, SNDENV_INC, $00 ; vol3 $01, SNDCH3VOL_050
	ivol $02, $5, SNDENV_INC, $00 ; vol3 $02, SNDCH3VOL_025 ;X
	ivol $02, $2, SNDENV_INC, $00 ; vol3 $02, SNDCH3VOL_000 ;X
	ivol $01, $9, SNDENV_DEC, $00 ; vol3 $01, SNDCH3VOL_050 ;X
	ivol $01, $6, SNDENV_INC, $00 ; vol3 $01, SNDCH3VOL_025 ;X
	ivol $02, $3, SNDENV_INC, $00 ; vol3 $02, SNDCH3VOL_000 ;X
	ivol $02, $0, SNDENV_INC, $00 ; vol3 $02, SNDCH3VOL_000 ;X
	ivol $01, $7, SNDENV_DEC, $00 ; vol3 $01, SNDCH3VOL_025 ;X
	ivol $01, $4, SNDENV_INC, $00 ; vol3 $01, SNDCH3VOL_025 ;X
	ivol $02, $1, SNDENV_INC, $00 ; vol3 $02, SNDCH3VOL_000 ;X
	ivol $02, $0, SNDENV_INC, $00 ; vol3 $02, SNDCH3VOL_000 ;X
	ivol $01, $5, SNDENV_DEC, $00 ; vol3 $01, SNDCH3VOL_025 ;X
	ivol $01, $2, SNDENV_INC, $00 ; vol3 $01, SNDCH3VOL_000 ;X
	ivol $64, $0, SNDENV_INC, $00 ; vol3 $64, SNDCH3VOL_000 ;X
	iloop_prev ;X
SndInstrument_3A:
	ivol $02, $F, SNDENV_INC, $00 ; vol3 $02, SNDCH3VOL_100
	ivol $1C, $F, SNDENV_DEC, $03 ; vol3 $1C, SNDCH3VOL_100
	ivol $64, $0, SNDENV_DEC, $00 ; vol3 $64, SNDCH3VOL_000 ;X
	iloop_prev ;X
SndInstrument_3B:
	ivol $03, $A, SNDENV_DEC, $00 ; vol3 $03, SNDCH3VOL_050
	ivol $03, $B, SNDENV_DEC, $00 ; vol3 $03, SNDCH3VOL_050
	ivol $03, $C, SNDENV_DEC, $00 ; vol3 $03, SNDCH3VOL_100
	ivol $03, $D, SNDENV_DEC, $00 ; vol3 $03, SNDCH3VOL_100
	ivol $03, $E, SNDENV_DEC, $00 ; vol3 $03, SNDCH3VOL_100
	ivol $64, $F, SNDENV_DEC, $00 ; vol3 $64, SNDCH3VOL_100
	iloop_prev ;X
SndInstrument_3C:
	ivol $01, $F, SNDENV_INC, $00 ; vol3 $01, SNDCH3VOL_100
	ivol $01, $E, SNDENV_DEC, $00 ; vol3 $01, SNDCH3VOL_100
	ivol $02, $D, SNDENV_DEC, $00 ; vol3 $02, SNDCH3VOL_100
	ivol $02, $C, SNDENV_DEC, $00 ; vol3 $02, SNDCH3VOL_100
	ivol $03, $B, SNDENV_DEC, $00 ; vol3 $03, SNDCH3VOL_050
	ivol $04, $A, SNDENV_DEC, $00 ; vol3 $04, SNDCH3VOL_050
	ivol $08, $9, SNDENV_DEC, $00 ; vol3 $08, SNDCH3VOL_050
	ivol $64, $8, SNDENV_DEC, $00 ; vol3 $64, SNDCH3VOL_050
	iloop_prev
SndInstrument_3D:
	ivol $01, $F, SNDENV_DEC, $00 ; vol3 $01, SNDCH3VOL_100
	ivol $02, $E, SNDENV_DEC, $00 ; vol3 $02, SNDCH3VOL_100
	ivol $03, $D, SNDENV_DEC, $00 ; vol3 $03, SNDCH3VOL_100
	ivol $04, $C, SNDENV_DEC, $00 ; vol3 $04, SNDCH3VOL_100
	ivol $05, $B, SNDENV_DEC, $00 ; vol3 $05, SNDCH3VOL_050
	ivol $06, $A, SNDENV_DEC, $00 ; vol3 $06, SNDCH3VOL_050
	ivol $08, $9, SNDENV_DEC, $00 ; vol3 $08, SNDCH3VOL_050
	ivol $64, $8, SNDENV_DEC, $00 ; vol3 $64, SNDCH3VOL_050
	iloop_prev
SndInstrument_3E:
	ivol $01, $F, SNDENV_DEC, $00 ; vol3 $01, SNDCH3VOL_100
	ivol $01, $D, SNDENV_DEC, $00 ; vol3 $01, SNDCH3VOL_100
	ivol $02, $B, SNDENV_DEC, $00 ; vol3 $02, SNDCH3VOL_050
	ivol $02, $9, SNDENV_DEC, $00 ; vol3 $02, SNDCH3VOL_050
	ivol $64, $8, SNDENV_DEC, $00 ; vol3 $64, SNDCH3VOL_050
	iloop_prev ;X
SndInstrument_40:
	ivol $02, $F, SNDENV_DEC, $00 ; vol3 $02, SNDCH3VOL_100
	ivol $01, $E, SNDENV_DEC, $00 ; vol3 $01, SNDCH3VOL_100
	ivol $01, $D, SNDENV_DEC, $00 ; vol3 $01, SNDCH3VOL_100
	ivol $01, $C, SNDENV_DEC, $00 ; vol3 $01, SNDCH3VOL_100
	ivol $01, $B, SNDENV_DEC, $00 ; vol3 $01, SNDCH3VOL_050
	ivol $01, $A, SNDENV_DEC, $00 ; vol3 $01, SNDCH3VOL_050
	ivol $04, $9, SNDENV_DEC, $00 ; vol3 $04, SNDCH3VOL_050
	ivol $04, $8, SNDENV_DEC, $00 ; vol3 $04, SNDCH3VOL_050
	ivol $04, $7, SNDENV_DEC, $00 ; vol3 $04, SNDCH3VOL_025
	ivol $04, $6, SNDENV_DEC, $00 ; vol3 $04, SNDCH3VOL_025
	ivol $04, $5, SNDENV_DEC, $00 ; vol3 $04, SNDCH3VOL_025
	ivol $04, $4, SNDENV_DEC, $00 ; vol3 $04, SNDCH3VOL_025
	ivol $04, $3, SNDENV_DEC, $00 ; vol3 $04, SNDCH3VOL_000
	ivol $0A, $0, SNDENV_DEC, $00 ; vol3 $0A, SNDCH3VOL_000
	ivol $02, $8, SNDENV_DEC, $00 ; vol3 $02, SNDCH3VOL_050
	ivol $01, $7, SNDENV_DEC, $00 ; vol3 $01, SNDCH3VOL_025
	ivol $01, $6, SNDENV_DEC, $00 ; vol3 $01, SNDCH3VOL_025
	ivol $01, $5, SNDENV_DEC, $00 ; vol3 $01, SNDCH3VOL_025
	ivol $01, $4, SNDENV_DEC, $00 ; vol3 $01, SNDCH3VOL_025
	ivol $01, $3, SNDENV_DEC, $00 ; vol3 $01, SNDCH3VOL_000
	ivol $04, $2, SNDENV_DEC, $00 ; vol3 $04, SNDCH3VOL_000
	ivol $04, $1, SNDENV_DEC, $00 ; vol3 $04, SNDCH3VOL_000
	ivol $64, $0, SNDENV_DEC, $00 ; vol3 $64, SNDCH3VOL_000
	iloop_prev ;X
SndInstrument_41:
	ivol $02, $F, SNDENV_INC, $00 ; vol3 $02, SNDCH3VOL_100
	ivol $02, $8, SNDENV_DEC, $00 ; vol3 $02, SNDCH3VOL_050
	ivol $02, $7, SNDENV_DEC, $00 ; vol3 $02, SNDCH3VOL_025
	ivol $02, $6, SNDENV_DEC, $00 ; vol3 $02, SNDCH3VOL_025
	ivol $02, $5, SNDENV_DEC, $00 ; vol3 $02, SNDCH3VOL_025
	ivol $02, $4, SNDENV_DEC, $00 ; vol3 $02, SNDCH3VOL_025
	ivol $02, $3, SNDENV_DEC, $00 ; vol3 $02, SNDCH3VOL_000
	ivol $64, $0, SNDENV_DEC, $00 ; vol3 $64, SNDCH3VOL_000
	iloop_prev ;X
SndInstrument_42:
	ivol $01, $9, SNDENV_INC, $00 ; vol3 $01, SNDCH3VOL_050
	ivol $01, $C, SNDENV_INC, $00 ; vol3 $01, SNDCH3VOL_100
	ivol $01, $E, SNDENV_INC, $00 ; vol3 $01, SNDCH3VOL_100
	ivol $04, $F, SNDENV_INC, $00 ; vol3 $04, SNDCH3VOL_100
	ivol $02, $E, SNDENV_DEC, $00 ; vol3 $02, SNDCH3VOL_100
	ivol $02, $D, SNDENV_DEC, $00 ; vol3 $02, SNDCH3VOL_100
	ivol $02, $B, SNDENV_DEC, $00 ; vol3 $02, SNDCH3VOL_050
	ivol $0F, $8, SNDENV_DEC, $00 ; vol3 $0F, SNDCH3VOL_050
	ivol $06, $9, SNDENV_INC, $00 ; vol3 $06, SNDCH3VOL_050
	ivol $06, $A, SNDENV_INC, $00 ; vol3 $06, SNDCH3VOL_050
	ivol $06, $B, SNDENV_INC, $00 ; vol3 $06, SNDCH3VOL_050
	ivol $06, $C, SNDENV_INC, $00 ; vol3 $06, SNDCH3VOL_100
	ivol $0F, $D, SNDENV_INC, $00 ; vol3 $0F, SNDCH3VOL_100
	ivol $08, $C, SNDENV_DEC, $00 ; vol3 $08, SNDCH3VOL_100 ;X
	ivol $08, $B, SNDENV_DEC, $00 ; vol3 $08, SNDCH3VOL_050 ;X
	ivol $08, $A, SNDENV_DEC, $00 ; vol3 $08, SNDCH3VOL_050 ;X
	ivol $08, $9, SNDENV_DEC, $00 ; vol3 $08, SNDCH3VOL_050 ;X
	ivol $64, $8, SNDENV_DEC, $00 ; vol3 $64, SNDCH3VOL_050 ;X
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
	ivol $14, $F, SNDENV_DEC, $01 ; vol3 $14, SNDCH3VOL_100
	ivol $08, $3, SNDENV_DEC, $00 ; vol3 $08, SNDCH3VOL_000
	ivol $05, $1, SNDENV_DEC, $00 ; vol3 $05, SNDCH3VOL_000
	iloop_prev
SndInstrument_57:
	ivol $17, $F, SNDENV_DEC, $05 ; vol3 $17, SNDCH3VOL_100
	ivol $1B, $B, SNDENV_INC, $07 ; vol3 $1B, SNDCH3VOL_050
	iloop_prev ;X
SndInstrument_58:
	ivol $0C, $F, SNDENV_DEC, $02 ; vol3 $0C, SNDCH3VOL_100
	ivol $0A, $B, SNDENV_DEC, $03 ; vol3 $0A, SNDCH3VOL_050
	ivol $1E, $7, SNDENV_DEC, $00 ; vol3 $1E, SNDCH3VOL_025
	iloop_prev
SndInstrument_59:
	ivol $24, $8, SNDENV_INC, $07 ; vol3 $24, SNDCH3VOL_050 ;X
	ivol $64, $B, SNDENV_INC, $00 ; vol3 $64, SNDCH3VOL_050 ;X
	iloop_prev ;X
SndInstrument_5A:
	ivol $06, $F, SNDENV_DEC, $01 ; vol3 $06, SNDCH3VOL_100
	ivol $01, $8, SNDENV_DEC, $01 ; vol3 $01, SNDCH3VOL_050
	iloop_prev
SndInstrument_5B:
	ivol $05, $A, SNDENV_INC, $01 ; vol3 $05, SNDCH3VOL_050
	ivol $14, $F, SNDENV_DEC, $00 ; vol3 $14, SNDCH3VOL_100
	iloop_prev
SndInstrument_5C:
	ivol $6E, $F, SNDENV_DEC, $00 ; vol3 $6E, SNDCH3VOL_100
	ivol $64, $F, SNDENV_DEC, $05 ; vol3 $64, SNDCH3VOL_100
	iloop_prev ;X
SndInstrument_5D:
	ivol $3C, $F, SNDENV_DEC, $00 ; vol3 $3C, SNDCH3VOL_100
	ivol $64, $F, SNDENV_DEC, $04 ; vol3 $64, SNDCH3VOL_100
	iloop_prev ;X
SndInstrument_5E:
	ivol $12, $F, SNDENV_DEC, $05 ; vol3 $12, SNDCH3VOL_100
	ivol $68, $B, SNDENV_INC, $07 ; vol3 $68, SNDCH3VOL_050
	ivol $1E, $F, SNDENV_DEC, $07 ; vol3 $1E, SNDCH3VOL_100
	iloop_prev
SndInstrument_5F:
	ivol $0C, $F, SNDENV_DEC, $02 ; vol3 $0C, SNDCH3VOL_100
	ivol $12, $B, SNDENV_DEC, $03 ; vol3 $12, SNDCH3VOL_050
	ivol $1E, $7, SNDENV_INC, $05 ; vol3 $1E, SNDCH3VOL_025
	iloop_prev
SndInstrument_60:
	ivol $06, $F, SNDENV_DEC, $02 ; vol3 $06, SNDCH3VOL_100
	ivol $06, $8, SNDENV_DEC, $01 ; vol3 $06, SNDCH3VOL_050
	ivol $01, $2, SNDENV_DEC, $00 ; vol3 $01, SNDCH3VOL_000
	iloop_prev
SndInstrument_61:
	ivol $3C, $8, SNDENV_INC, $06 ; vol3 $3C, SNDCH3VOL_050
	ivol $3C, $B, SNDENV_DEC, $07 ; vol3 $3C, SNDCH3VOL_050
	ivol $01, $8, SNDENV_DEC, $00 ; vol3 $01, SNDCH3VOL_050
SndInstrument_62:
	ivol $0A, $F, SNDENV_DEC, $00 ; vol3 $0A, SNDCH3VOL_100
	ivol $05, $E, SNDENV_DEC, $00 ; vol3 $05, SNDCH3VOL_100
	ivol $05, $D, SNDENV_DEC, $00 ; vol3 $05, SNDCH3VOL_100
	ivol $05, $C, SNDENV_DEC, $00 ; vol3 $05, SNDCH3VOL_100
	iloop_prev
SndInstrument_63:
	ivol $0A, $A, SNDENV_INC, $02 ; vol3 $0A, SNDCH3VOL_050
	ivol $32, $F, SNDENV_INC, $00 ; vol3 $32, SNDCH3VOL_100
	iloop_prev
SndInstrument_64:
	ivol $06, $9, SNDENV_INC, $02 ; vol3 $06, SNDCH3VOL_050 ;X
	ivol $10, $A, SNDENV_DEC, $06 ; vol3 $10, SNDCH3VOL_050 ;X
	iloop_prev ;X
SndInstrument_65:
	ivol $1C, $5, SNDENV_INC, $03 ; vol3 $1C, SNDCH3VOL_025
	ivol $64, $F, SNDENV_DEC, $00 ; vol3 $64, SNDCH3VOL_100
	ivol $3C, $F, SNDENV_DEC, $04 ; vol3 $3C, SNDCH3VOL_100
	iloop_prev
SndInstrument_66:
	ivol $6E, $F, SNDENV_DEC, $00 ; vol3 $6E, SNDCH3VOL_100 ;X
	ivol $64, $F, SNDENV_DEC, $05 ; vol3 $64, SNDCH3VOL_100 ;X
	iloop_prev ;X
SndInstrument_67:
	ivol $21, $6, SNDENV_INC, $07 ; vol3 $21, SNDCH3VOL_025
	ivol $01, $B, SNDENV_DEC, $00 ; vol3 $01, SNDCH3VOL_050
	iloop_prev
SndInstrument_68:
	ivol $04, $9, SNDENV_INC, $02 ; vol3 $04, SNDCH3VOL_050
	ivol $08, $B, SNDENV_DEC, $02 ; vol3 $08, SNDCH3VOL_050
	iloop_prev
SndInstrument_69:
	ivol $27, $B, SNDENV_DEC, $06 ; vol3 $27, SNDCH3VOL_050
	ivol $0B, $4, SNDENV_DEC, $03 ; vol3 $0B, SNDCH3VOL_025
	iloop_prev
SndInstrument_6A:
	ivol $03, $B, SNDENV_DEC, $00 ; vol3 $03, SNDCH3VOL_050
	ivol $01, $3, SNDENV_DEC, $00 ; vol3 $01, SNDCH3VOL_000
	ivol $03, $3, SNDENV_DEC, $01 ; vol3 $03, SNDCH3VOL_000
	iloop_prev
SndInstrument_6B:
	ivol $0A, $F, SNDENV_DEC, $00 ; vol3 $0A, SNDCH3VOL_100
	ivol $0A, $D, SNDENV_DEC, $00 ; vol3 $0A, SNDCH3VOL_100
	ivol $0A, $B, SNDENV_DEC, $00 ; vol3 $0A, SNDCH3VOL_050
	ivol $0A, $9, SNDENV_DEC, $00 ; vol3 $0A, SNDCH3VOL_050
	ivol $0A, $7, SNDENV_DEC, $00 ; vol3 $0A, SNDCH3VOL_025
	ivol $0A, $5, SNDENV_DEC, $00 ; vol3 $0A, SNDCH3VOL_025
	ivol $0A, $3, SNDENV_DEC, $00 ; vol3 $0A, SNDCH3VOL_000
	ivol $0A, $1, SNDENV_DEC, $00 ; vol3 $0A, SNDCH3VOL_000
	iloop_prev
SndInstrument_6C:
	ivol $05, $3, SNDENV_DEC, $00 ; vol3 $05, SNDCH3VOL_000 ;X
	ivol $05, $7, SNDENV_DEC, $00 ; vol3 $05, SNDCH3VOL_025 ;X
	ivol $0A, $B, SNDENV_DEC, $00 ; vol3 $0A, SNDCH3VOL_050 ;X
	ivol $0F, $D, SNDENV_DEC, $00 ; vol3 $0F, SNDCH3VOL_100 ;X
	ivol $14, $F, SNDENV_DEC, $00 ; vol3 $14, SNDCH3VOL_100 ;X
	iloop_prev ;X
SndInstrument_6D:
	ivol $10, $F, SNDENV_DEC, $02 ; vol3 $10, SNDCH3VOL_100
	iloop_prev
SndInstrument_6E:
	ivol $02, $A, SNDENV_INC, $02 ; vol3 $02, SNDCH3VOL_050
	ivol $03, $B, SNDENV_DEC, $00 ; vol3 $03, SNDCH3VOL_050
	ivol $02, $B, SNDENV_DEC, $02 ; vol3 $02, SNDCH3VOL_050
	iloop_prev
SndInstrument_6F:
	ivol $24, $F, SNDENV_INC, $00 ; vol3 $24, SNDCH3VOL_100
	iloop_prev
SndInstrument_70:
	ivol $04, $C, SNDENV_DEC, $00 ; vol3 $04, SNDCH3VOL_100
	ivol $02, $B, SNDENV_DEC, $01 ; vol3 $02, SNDCH3VOL_050
	iloop_prev
SndInstrument_71:
	ivol $04, $E, SNDENV_INC, $04 ; vol3 $04, SNDCH3VOL_100
	ivol $01, $F, SNDENV_DEC, $00 ; vol3 $01, SNDCH3VOL_100
	iloop_prev
SndInstrument_72:
	ivol $02, $F, SNDENV_INC, $00 ; vol3 $02, SNDCH3VOL_100 ;X
	ivol $02, $8, SNDENV_DEC, $00 ; vol3 $02, SNDCH3VOL_050 ;X
	ivol $02, $7, SNDENV_DEC, $00 ; vol3 $02, SNDCH3VOL_025 ;X
	ivol $02, $6, SNDENV_DEC, $00 ; vol3 $02, SNDCH3VOL_025 ;X
	ivol $02, $5, SNDENV_DEC, $00 ; vol3 $02, SNDCH3VOL_025 ;X
	ivol $02, $4, SNDENV_DEC, $00 ; vol3 $02, SNDCH3VOL_025 ;X
	ivol $02, $3, SNDENV_DEC, $00 ; vol3 $02, SNDCH3VOL_000 ;X
	ivol $64, $0, SNDENV_DEC, $00 ; vol3 $64, SNDCH3VOL_000 ;X
	iloop_prev ;X
SndInstrument_73:
	ivol $04, $9, SNDENV_INC, $02 ; vol3 $04, SNDCH3VOL_050
	ivol $06, $B, SNDENV_DEC, $00 ; vol3 $06, SNDCH3VOL_050
	ivol $0A, $B, SNDENV_DEC, $02 ; vol3 $0A, SNDCH3VOL_050
	iloop_prev


SndHeader_00: db $01
L064A81: db $08
L064A82: db $01
L064A83: db $0F
L064A84: db $00
L064A85: db $00
L064A86: db $00
L064A87: db $A0
L064A88: db $02
L064A89: db $C8
L064A8A: db $4B
L064A8B: db $06
L064A8C: db $FF

; =============== Sound_SndHeaderPtrTable ===============
; Pointer table with sound headers, by ID.
; Some of the unused entries point to L064BC8, which is NOT a sound header, but somehow it works out ??? (due to a dubious check in the handler)
; so nothing bad happens then playing those.
Sound_SndHeaderPtrTable: 
	dp SndHeader_00 ; $00
	dp SndHeader_01 ; $01
	dp L064BC8 ; $02
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
	dp L064BC8 ; $1C
	dp L064BC8 ; $1D
	dp L064BC8 ; $1E
	dp SndHeader_1F ; $1F
	dp SndHeader_20 ; $20
	dp SndHeader_21 ; $21
	dp SndHeader_22 ; $22
	dp L064BC8 ; $23
	dp SndHeader_24 ; $24
	dp L064BC8 ; $25
	dp L064BC8 ; $26
	dp L064BC8 ; $27
	dp L064BC8 ; $28
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
	
	; [POI] This is a very bad way to implement the blank sound effect.
L064BC8:
	db $3D ; Slot count - Way out of range
L064BC9:
	db $DF ; Slot ID - Way out of range. 
	       ; This ends up indexing the slot pointer table out of bounds, and returns a null pointer.
	       ; By coincidence ??? (intentional? explains the direct return), at $0000 there's code whose first byte is $E0.
	       ; $E0 has bit 6 set, so it fails the check and the subroutine that plays a new sound returns early.
L064BCA: db $38
L064BCB: db $3A
L064BCC: db $3C
L064BCD: db $3D
L064BCE: db $38
L064BCF: db $3A
L064BD0: db $3C
L064BD1: db $82
L064BD2: db $00
