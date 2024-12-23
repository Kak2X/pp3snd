INCLUDE "driver/inc/macro.asm"
INCLUDE "driver/inc/constants.asm"
INCLUDE "driver/inc/memory.asm"

SECTION "Sound Driver Code", ROM0
INCLUDE "driver/driver.asm"
INCLUDE "driver/data/frequencies.asm"

SECTION "Sound Driver Base Data", ROMX, BANK[$01]
Sound_BaseDataMarker:
INCLUDE "driver/data/waves.asm"
INCLUDE "driver/data/note_presets.asm"
INCLUDE "driver/data/vibrato.asm"
INCLUDE "driver/data/instruments.asm"
INCLUDE "driver/data/song_headers.asm"

SECTION "Songs #1", ROMX, BANK[$02]
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
INCLUDE "driver/sfx/sfxpause_00.asm"
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

SECTION "Songs #2", ROMX, BANK[$03]
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

SECTION "Songs #3", ROMX, BANK[$04]
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

SECTION "PCM", ROMX, BANK[$04]
INCLUDE "driver/data/pcm_headers.asm"