INCLUDE "driver/inc/macro.asm"
INCLUDE "driver/inc/constants.asm"
INCLUDE "driver/inc/memory.asm"

; 
; BANK $00 - ???
; 
SECTION "bank00", ROM0
; INCLUDE "src/bank00.asm"
INCLUDE "driver/driver.asm"
; INCLUDE "src/bank00b.asm"

; 
; BANK $01 - ???
; 
SECTION "bank01", ROMX, BANK[$01]
; INCLUDE "src/bank01.asm"

; 
; BANK $02 - ???
; 
SECTION "bank02", ROMX, BANK[$02]
; INCLUDE "src/bank02.asm"

; 
; BANK $03 - ???
; 
SECTION "bank03", ROMX, BANK[$03]
; INCLUDE "src/bank03.asm"

; 
; BANK $04 - ???
; 
SECTION "bank04", ROMX, BANK[$04]
; INCLUDE "src/bank04.asm"

; 
; BANK $05 - ???
; 
SECTION "bank05", ROMX, BANK[$05]
; INCLUDE "src/bank05.asm"

; 
; BANK $06 - ???
; 
SECTION "bank06", ROMX, BANK[$06]
Sound_BaseDataMarker:
INCLUDE "driver/data/bank6_ptrs_deleteme.asm"
INCLUDE "driver/data/waves.asm"
INCLUDE "driver/data/note_presets.asm"
INCLUDE "driver/data/vibrato_p0.asm"
INCLUDE "driver/data/instruments_p0.asm"
INCLUDE "driver/data/vibrato_p1.asm"
INCLUDE "driver/data/instruments_p1.asm"
INCLUDE "driver/data/vibrato_p2.asm"
INCLUDE "driver/data/instruments_p2.asm"
INCLUDE "driver/sfx/sfxpause_00_p0.asm"
INCLUDE "driver/data/song_headers.asm"
INCLUDE "driver/sfx/sfxpause_00_p1.asm"

; 
; BANK $07 - ???
; 
SECTION "bank07", ROMX, BANK[$07]
INCLUDE "driver/bgm/bgm_1f.asm"
INCLUDE "driver/bgm/bgm_03.asm"
INCLUDE "driver/bgm/bgm_0e.asm"
INCLUDE "driver/bgm/bgm_0f.asm"
INCLUDE "driver/bgm/bgm_20.asm"
INCLUDE "driver/bgm/bgm_21.asm"
INCLUDE "driver/bgm/bgm_15.asm"
INCLUDE "driver/bgm/bgm_11.asm"
INCLUDE "driver/bgm/bgm_12.asm"
INCLUDE "driver/bgm/bgm_08.asm"
INCLUDE "driver/sfx/sfx_53.asm"
INCLUDE "driver/sfx/sfxpause_54.asm"
INCLUDE "driver/sfx/sfx_55.asm"
INCLUDE "driver/sfx/sfx_56.asm"
INCLUDE "driver/sfx/sfx_57.asm"
INCLUDE "driver/sfx/sfx_58.asm"
INCLUDE "driver/sfx/sfx_59.asm"
INCLUDE "driver/sfx/sfx_29.asm"
INCLUDE "driver/sfx/sfx_2a.asm"
INCLUDE "driver/sfx/sfx_2b.asm"
INCLUDE "driver/sfx/sfx_2c.asm"
INCLUDE "driver/sfx/sfx_2d.asm"
INCLUDE "driver/sfx/sfx_2e.asm"
INCLUDE "driver/sfx/sfx_2f.asm"
INCLUDE "driver/sfx/sfx_30.asm"
INCLUDE "driver/sfx/sfx_31.asm"
INCLUDE "driver/sfx/sfx_32.asm"
INCLUDE "driver/sfx/sfx_33.asm"
INCLUDE "driver/sfx/sfx_34.asm"
INCLUDE "driver/sfx/sfx_35.asm"
INCLUDE "driver/sfx/sfx_36.asm"
INCLUDE "driver/sfx/sfx_37.asm"
INCLUDE "driver/sfx/sfx_38.asm"
INCLUDE "driver/sfx/sfx_39.asm"
INCLUDE "driver/sfx/sfx_3a.asm"
INCLUDE "driver/sfx/sfx_3b.asm"
INCLUDE "driver/sfx/sfx_3c.asm"
INCLUDE "driver/sfx/sfx_3d.asm"
INCLUDE "driver/sfx/sfx_3e.asm"
INCLUDE "driver/sfx/sfx_3f.asm"
INCLUDE "driver/sfx/sfx_40.asm"
INCLUDE "driver/sfx/sfx_41.asm"
INCLUDE "driver/sfx/sfx_42.asm"
INCLUDE "driver/sfx/sfx_43.asm"
INCLUDE "driver/sfx/sfx_44.asm"
INCLUDE "driver/sfx/sfx_45.asm"
INCLUDE "driver/sfx/sfx_46.asm"
INCLUDE "driver/sfx/sfx_47.asm"
INCLUDE "driver/sfx/sfx_48.asm"
INCLUDE "driver/sfx/sfx_49.asm"
INCLUDE "driver/sfx/sfx_4a.asm"
INCLUDE "driver/sfx/sfx_4b.asm"
INCLUDE "driver/sfx/sfx_4c.asm"
INCLUDE "driver/sfx/sfx_4d.asm"
INCLUDE "driver/sfx/sfx_4e.asm"
INCLUDE "driver/sfx/sfx_4f.asm"
INCLUDE "driver/sfx/sfx_50.asm"
INCLUDE "driver/sfx/sfx_51.asm"
INCLUDE "driver/sfx/sfx_52.asm"
INCLUDE "driver/sfx/sfx_5a.asm"
INCLUDE "driver/sfx/sfx_5b.asm"
INCLUDE "driver/sfx/sfx_5c.asm"
INCLUDE "driver/sfx/sfx_5d.asm"
INCLUDE "driver/sfx/sfx_5e.asm"
INCLUDE "driver/sfx/sfx_5f.asm"
INCLUDE "driver/sfx/sfx_60.asm"
INCLUDE "driver/sfx/sfx_61.asm"
INCLUDE "driver/sfx/sfx_62.asm"
INCLUDE "driver/sfx/sfx_63.asm"
INCLUDE "driver/sfx/sfx_64.asm"
INCLUDE "driver/sfx/sfx_65.asm"
INCLUDE "driver/sfx/sfx_66.asm"
INCLUDE "driver/sfx/sfx_67.asm"
INCLUDE "driver/sfx/sfx_68.asm"

; 
; BANK $08 - ???
; 
SECTION "bank08", ROMX, BANK[$08]
INCLUDE "driver/bgm/bgm_01.asm"
INCLUDE "driver/bgm/bgm_04.asm"
INCLUDE "driver/bgm/bgm_06.asm"
INCLUDE "driver/bgm/bgm_09.asm"
INCLUDE "driver/bgm/bgm_0b.asm"
INCLUDE "driver/bgm/bgm_0c.asm"
INCLUDE "driver/bgm/bgm_0d.asm"
INCLUDE "driver/bgm/bgm_14.asm"
INCLUDE "driver/bgm/bgm_16.asm"
INCLUDE "driver/bgm/bgm_18.asm"

; 
; BANK $09 - ???
; 
SECTION "bank09", ROMX, BANK[$09]
INCLUDE "driver/bgm/bgm_17.asm"
INCLUDE "driver/bgm/bgm_19.asm"
INCLUDE "driver/bgm/bgm_10.asm"
INCLUDE "driver/bgm/bgm_0a.asm"
INCLUDE "driver/bgm/bgm_1a.asm"
INCLUDE "driver/bgm/bgm_1b.asm"
INCLUDE "driver/bgm/bgm_13.asm"
INCLUDE "driver/bgm/bgm_07.asm"
INCLUDE "driver/bgm/bgm_05.asm"
INCLUDE "driver/bgm/bgm_24.asm"
INCLUDE "driver/bgm/bgm_22.asm"

; 
; BANK $0A - ???
; 
SECTION "bank0A", ROMX, BANK[$0A]
; INCLUDE "src/bank0A.asm"

; 
; BANK $0F - ???
; 
SECTION "bank0F", ROMX, BANK[$0F]
INCLUDE "driver/data/pcm_headers.asm"

; 
; BANK $11 - ???
; 
SECTION "bank11", ROMX, BANK[$11]
; INCLUDE "src/bank11.asm"

; 
; BANK $12 - ???
; 
SECTION "bank12", ROMX, BANK[$12]
; INCLUDE "src/bank12.asm"

; 
; BANK $13 - ???
; 
SECTION "bank13", ROMX, BANK[$13]
; INCLUDE "src/bank13.asm"

; 
; BANK $14 - ???
; 
SECTION "bank14", ROMX, BANK[$14]
; INCLUDE "src/bank14.asm"

; 
; BANK $15 - ???
; 
SECTION "bank15", ROMX, BANK[$15]
; INCLUDE "src/bank15.asm"

; 
; BANK $16 - ???
; 
SECTION "bank16", ROMX, BANK[$16]
; INCLUDE "src/bank16.asm"

; 
; BANK $17 - ???
; 
SECTION "bank17", ROMX, BANK[$17]
; INCLUDE "src/bank17.asm"

; 
; BANK $18 - ???
; 
SECTION "bank18", ROMX, BANK[$18]
; INCLUDE "src/bank18.asm"

; 
; BANK $19 - ???
; 
SECTION "bank19", ROMX, BANK[$19]
; INCLUDE "src/bank19.asm"

; 
; BANK $1A - ???
; 
SECTION "bank1A", ROMX, BANK[$1A]
; INCLUDE "src/bank1A.asm"

; 
; BANK $1B - ???
; 
SECTION "bank1B", ROMX, BANK[$1B]
; INCLUDE "src/bank1B.asm"

; 
; BANK $1C - ???
; 
SECTION "bank1C", ROMX, BANK[$1C]
; INCLUDE "src/bank1C.asm"

; 
; BANK $1D - ???
; 
SECTION "bank1D", ROMX, BANK[$1D]
; INCLUDE "src/bank1D.asm"

; 
; BANK $1E - ???
; 
SECTION "bank1E", ROMX, BANK[$1E]
; INCLUDE "src/bank1E.asm"

; 
; BANK $1F - ???
; 
SECTION "bank1F", ROMX, BANK[$1F]
; INCLUDE "src/bank1F.asm"

; 
; BANK $20 - ???
; 
SECTION "bank20", ROMX, BANK[$20]
; INCLUDE "src/bank20.asm"

; 
; BANK $21 - ???
; 
SECTION "bank21", ROMX, BANK[$21]
; INCLUDE "src/bank21.asm"

; 
; BANK $22 - ???
; 
SECTION "bank22", ROMX, BANK[$22]
; INCLUDE "src/bank22.asm"

; 
; BANK $23 - ???
; 
SECTION "bank23", ROMX, BANK[$23]
; INCLUDE "src/bank23.asm"

; 
; BANK $24 - ???
; 
SECTION "bank24", ROMX, BANK[$24]
; INCLUDE "src/bank24.asm"

; 
; BANK $25 - ???
; 
SECTION "bank25", ROMX, BANK[$25]
; INCLUDE "src/bank25.asm"

; 
; BANK $26 - ???
; 
SECTION "bank26", ROMX, BANK[$26]
; INCLUDE "src/bank26.asm"

; 
; BANK $27 - ???
; 
SECTION "bank27", ROMX, BANK[$27]
; INCLUDE "src/bank27.asm"

; 
; BANK $28 - ???
; 
SECTION "bank28", ROMX, BANK[$28]
; INCLUDE "src/bank28.asm"

; 
; BANK $29 - ???
; 
SECTION "bank29", ROMX, BANK[$29]
; INCLUDE "src/bank29.asm"

; 
; BANK $2A - ???
; 
SECTION "bank2A", ROMX, BANK[$2A]
; INCLUDE "src/bank2A.asm"

; 
; BANK $2B - ???
; 
SECTION "bank2B", ROMX, BANK[$2B]
; INCLUDE "src/bank2B.asm"

; 
; BANK $2C - ???
; 
SECTION "bank2C", ROMX, BANK[$2C]
; INCLUDE "src/bank2C.asm"