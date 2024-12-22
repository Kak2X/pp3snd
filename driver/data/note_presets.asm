; =============== Sound_SlotPresetTable ===============
; Table of slot presets, used by SoundDataCmd_NoteEx.
Sound_SlotPresetTable: 
	;  Duty | Stereo | Instrument | Vibrato/Sweep | NoiseFreq | Flags                  | Portamento Speed | Note ID | Preset ID
	db $80,   $FF,     $10,         $00,            $50,        SST_CH4,                 $00,               $19     ; $C0 | PRESET_00
	db $80,   $FF,     $0D,         $01,            $44,        SPR_USECH4SWEEP|SST_CH4, $00,               $19     ; $C1 | PRESET_01
	db $80,   $F0,     $0E,         $00,            $00,        SST_CH4,                 $00,               $19     ; $C2 | PRESET_02
	db $80,   $F0,     $0F,         $00,            $00,        SST_CH4,                 $00,               $19     ; $C3 | PRESET_03
	db $80,   $FF,     $0C,         $00,            $50,        SST_CH4,                 $00,               $19     ; $C4 | PRESET_04
	db $80,   $F0,     $0C,         $00,            $50,        SST_CH4,                 $00,               $19     ; $C5 | PRESET_05
	db $80,   $FF,     $0C,         $00,            $50,        SST_CH4,                 $00,               $19     ; $C6 | PRESET_06
	db $80,   $0F,     $0C,         $00,            $50,        SST_CH4,                 $00,               $19     ; $C7 | PRESET_07
	db $80,   $F0,     $0B,         $00,            $02,        SST_CH4,                 $00,               $19     ; $C8 | PRESET_08
	db $80,   $FF,     $3A,         $00,            $02,        SST_CH4,                 $00,               $19     ; $C9 | PRESET_09