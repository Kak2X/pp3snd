<?php


//const MOVEGROUP_BASE_START = 0;
//const MOVEGROUP_ATTACK_START = 0x30/2;
const MOVEGROUP_ATTACKSPEC_START = 0x64/2;
const MOVEGROUP_ATTACKSPEC_END = 0x80/2;
//const MOVEGROUP_HIT_START = 0x70/2;


const OLF_USETILEFLAGS = 1 << 4;
const OBJLST_FLAGS = [
	0 => "OLF_BIT0",
	1 => "OLF_BIT1",
	2 => "OLF_BIT2",
	3 => "OLF_BIT3",
	4 => "OLF_USETILEFLAGS",
	5 => "OLF_XFLIP",
	6 => "OLF_YFLIP",
	7 => "OLF_NOBUF",
];

const OBJLST_ROMFLAGS = [
	6 => "OLR_XFLIP",
	7 => "OLR_YFLIP",
];

const PLFLAGS3 = [
	0 => "PF3_HEAVYHIT",
	1 => "PF3_FIRE",
	2 => "PF3_HITLOW",
	3 => "PF3_OVERHEAD",
	4 => "PF3_LASTHIT",
	5 => "PF3_HALFSPEED",
	6 => "PF3_SUPERALT",
	7 => "PF3_LIGHTHIT",
];

const HIT_ANIMS = [
	"\$00",
	"HITTYPE_HIT_MID0",
	"HITTYPE_HIT_MID1",
	"HITTYPE_HIT_LOW",
	"HITTYPE_SWEEP",
	"HITTYPE_HIT_A",
	"HITTYPE_LAUNCH_HIGH_UB",
	"HITTYPE_HIT_MULTI0",
	"HITTYPE_HIT_MULTI1",
	"HITTYPE_LAUNCH_FAST_DB",
	"HITTYPE_LAUNCH_SWOOPUP",
	"HITTYPE_LAUNCH_MID_UB_NOSTUN",
	"HITTYPE_GRAB_START",
	"HITTYPE_GRAB_UB_NOSYNC",
	"HITTYPE_GRAB_FG_NOSYNC",
	"HITTYPE_GRAB_UB_SYNC",
	0x81 => "HITTYPE_DUMMY"
];

const CHAR_NAMES = [
	"KYO",
	"BENIMARU",
	"RYO",
	"YURI",
	"TERRY",
	"JOE",
	"HEIDERN",
	"RALF",
	"ATHENA",
	"KENSOU",
	"KIM",
	"MAI",
	"IORI",
	"EIJI",
	"BILLY",
	"SAISYU",
	"RUGAL",
	"NAKORURU",
];

const MOVES_POOL = [
	"NONE",
	"IDLE",
	"WALK_F",
	"WALK_B",
	"CROUCH",
	"CROUCHWALK_F",
	"JUMP_N",
	"JUMP_F",
	"JUMP_B",
	"BLOCK_G",
	"BLOCK_C",
	"HOP_F",
	"HOP_B",
	"CHARGEMETER",
	"TAUNT",
	"DODGE",
	"WAKEUP",
	"DIZZY",
	"WIN",
	"LOST_TIMEOVER",
	"INTRO",
	"PUNCH_LN",
	"PUNCH_HN",
	"PUNCH_LM",
	"PUNCH_HM",
	"KICK_LN",
	"KICK_HN",
	"KICK_LM",
	"KICK_HM",
	"PUNCH_CL",
	"PUNCH_CH",
	"KICK_CL",
	"KICK_CH",
	"DODGE_COUNTER",
	"STRIKE",
	"PUNCH_FH",
	"KICK_FH",
	"KICK_FCH",
	"PUNCH_ALI",
	"PUNCH_AHI",
	"KICK_ALI",
	"KICK_AHI",
	"PUNCH_ALX",
	"PUNCH_AHX",
	"KICK_ALX",
	"KICK_AHX",
	"ATTACK_A",
	"PUNCH_AHD",
	"KICK_AHD",
	"KICK_AHB",
	"64",
	"66",
	"68",
	"6A",
	"6C",
	"6E",
	"70",
	"72",
	"74",
	"76",
	"78",
	"7A",
	"7C",
	"7E",
	"SUPER",
	"THROW_G",
	"THROW_A",
	"POST_BLOCKSTUN",
	"HIT0MID",
	"HIT1MID",
	"HITLOW",
	"LAUNCH_UB",
	"LAUNCH_DB_SHAKE",
	"LAUNCH_SWOOPUP",
	"HIT_SWEEP",
	"LAUNCH_UB_REC",
	"HIT_MULTIMID0",
	"HIT_MULTIMID1",
	"LAUNCH_UB_SHAKE",
	"GRAB_UB_NOSYNC",
	"GRAB_FG_NOSYNC",
	"GRAB_UB_SYNC",
];

const MOVES_CHAR = [
[
	"YAMI_BARAI_L",
	"YAMI_BARAI_H",
	"ONI_YAKI_L",
	"ONI_YAKI_H",
	"OBORO_GURUMA_L",
	"OBORO_GURUMA_H",
	"KOTOTSUKI_YOU_L",
	"KOTOTSUKI_YOU_H",
	"KAI_L",
	"KAI_H",
	"78",
	"7A",
	"7C",
	"7E",
	"URA_OROCHI_NAGI_S",
],[
	"RAIJINKEN_L",
	"RAIJINKEN_H",
	"SHINKUU_KATATE_GOMA_L",
	"SHINKUU_KATATE_GOMA_H",
	"IAI_GERI_L",
	"IAI_GERI_H",
	"SUPER_INAZUMA_KICK_L",
	"SUPER_INAZUMA_KICK_H",
	"74",
	"76",
	"78",
	"7A",
	"7C",
	"7E",
	"RAIKOUKEN_S",
],[
	"KO_OU_KEN_GL",
	"KO_OU_KEN_GH",
	"HIEN_SHIPPUU_KYAKU_L",
	"HIEN_SHIPPUU_KYAKU_H",
	"ZENRETSUKEN_L",
	"ZENRETSUKEN_H",
	"KO_HOU_L",
	"KO_HOU_H",
	"KO_OU_KEN_AL",
	"KO_OU_KEN_AH",
	"HAOH_SHOKOU_KEN_L",
	"HAOH_SHOKOU_KEN_H",
	"KYOKUKEN_RYU_RENBU_KEN_L",
	"KYOKUKEN_RYU_RENBU_KEN_H",
	"RYU_KO_RANBU_S",
],[
	"KO_OU_KEN_L",
	"KO_OU_KEN_H",
	"SAI_HA_L",
	"SAI_HA_H",
	"HYAKU_RETSU_BINTA_L",
	"HYAKU_RETSU_BINTA_H",
	"KUU_GA_L",
	"KUU_GA_H",
	"RAI_OH_KEN_L",
	"RAI_OH_KEN_H",
	"HAOH_SHOUKOU_KEN_L",
	"HAOH_SHOUKOU_KEN_H",
	"7C",
	"7E",
	"HIEN_HOU_OU_KYA_KU_S",
],[
	"POWER_WAVE_L",
	"POWER_WAVE_H",
	"BURN_KNUCKLE_L",
	"BURN_KNUCKLE_H",
	"CRACK_SHOT_L",
	"CRACK_SHOT_H",
	"RISING_TACKLE_L",
	"RISING_TACKLE_H",
	"POWER_DUNK_L",
	"POWER_DUNK_H",
	"78",
	"7A",
	"7C",
	"7E",
	"POWER_GEYSER_S",
],[
	"HURRICANE_UPPER_L",
	"HURRICANE_UPPER_H",
	"SLASH_KICK_L",
	"SLASH_KICK_H",
	"BAKURETSUKEN_L",
	"BAKURETSUKEN_H",
	"TIGER_KICK_L",
	"TIGER_KICK_H",
	"OUGON_NO_KAKATO_L",
	"OUGON_NO_KAKATO_H",
	"78",
	"7A",
	"7C",
	"7E",
	"SCREW_UPPER_S",
],[
	"CROSS_CUTTER_L",
	"CROSS_CUTTER_H",
	"NECK_ROLLER_L",
	"NECK_ROLLER_H",
	"STORM_BRINGER_L",
	"STORM_BRINGER_H",
	"MOON_SLASHER_L",
	"MOON_SLASHER_H",
	"74",
	"76",
	"78",
	"7A",
	"7C",
	"7E",
	"FINAL_BRINGER_S",
],[
	"VULCAN_PUNCH_L",
	"VULCAN_PUNCH_H",
	"GATLING_ATTACK_L",
	"GATLING_ATTACK_H",
	"BACK_BREAKER_L",
	"BACK_BREAKER_H",
	"BAKUDAN_PUNCH_L",
	"BAKUDAN_PUNCH_H",
	"74",
	"76",
	"78",
	"7A",
	"7C",
	"7E",
	"BARIBARI_VULCAN_PUNCH_S",
],[
	"PSYCHO_BALL_L",
	"PSYCHO_BALL_H",
	"PSYCHO_REFLECTOR_L",
	"PSYCHO_REFLECTOR_H",
	"PSYCHO_SWORD_L",
	"PSYCHO_SWORD_H",
	"PHOENIX_ARROW_L",
	"PHOENIX_ARROW_H",
	"74",
	"PHOENIX_ARROW_KICK_H",
	"78",
	"7A",
	"7C",
	"7E",
	"SHINING_CRYSTAL_BIT_GS",
],[
	"CHOU_KYUU_DAN_L",
	"CHOU_KYUU_DAN_H",
	"RYUU_GAKU_SAI_L",
	"RYUU_GAKU_SAI_H",
	"RYUU_REN_GA_L",
	"RYUU_REN_GA_H",
	"RYUU_SOU_GEKI_L",
	"RYUU_SOU_GEKI_H",
	"74",
	"76",
	"78",
	"7A",
	"7C",
	"7E",
	"SHINRYUU_TENBU_KYAKU_S",
],[
	"HAN_GETSU_ZAN_L",
	"HAN_GETSU_ZAN_H",
	"HIEN_ZAN_L",
	"HIEN_ZAN_H",
	"HISHOU_KYAKU_L",
	"HISHOU_KYAKU_H",
	"RYUUSEI_RANKU_L",
	"RYUUSEI_RANKU_H",
	"74",
	"76",
	"78",
	"7A",
	"7C",
	"7E",
	"HOU_OU_KYAKU_S",
],[
	"KA_CHO_SEN_L",
	"KA_CHO_SEN_H",
	"HISSATSU_SHINOBIBACHI_L",
	"HISSATSU_SHINOBIBACHI_H",
	"RYU_EN_BU_L",
	"RYU_EN_BU_H",
	"HISHO_RYU_EN_JIN_L",
	"HISHO_RYU_EN_JIN_H",
	"CHIJOU_MUSASABI_L",
	"CHIJOU_MUSASABI_H",
	"KUUCHUU_MUSASABI_L",
	"KUUCHUU_MUSASABI_H",
	"7C",
	"7E",
	"CHO_HISSATSU_SHINOBIBACHI_S",
],[
	"YAMI_BARAI_L",
	"YAMI_BARAI_H",
	"ONI_YAKI_L",
	"ONI_YAKI_H",
	"AOI_HANA_L",
	"AOI_HANA_H",
	"KOTO_TSUKI_IN_L",
	"KOTO_TSUKI_IN_H",
	"74",
	"76",
	"78",
	"7A",
	"7C",
	"7E",
	"KIN_YA_OTOME_S",
],[
	"KIKOUHOU_L",
	"KIKOUHOU_H",
	"KOTSU_HAZAKI_KIRI_L",
	"KOTSU_HAZAKI_KIRI_H",
	"RYUU_EIJIN_L",
	"RYUU_EIJIN_H",
	"KASUMI_GERI_L",
	"KASUMI_GERI_H",
	"ZANTETSUHA_L",
	"ZANTETSUHA_H",
	"KAGE_UTSUSHI_L",
	"KAGE_UTSUSHI_H",
	"TENBAKYAKU_L",
	"TENBAKYAKU_H",
	"ZANTETSU_TOUROUKEN_S",
],[
	"SANSETSU_KON_CHUUDAN_UCHI_L",
	"SANSETSU_KON_CHUUDAN_UCHI_H",
	"SENPUU_KON_L",
	"SENPUU_KON_H",
	"SUZUME_OTOSHI_L",
	"SUZUME_OTOSHI_H",
	"KYOUSHUU_HISHOU_KON_L",
	"KYOUSHUU_HISHOU_KON_H",
	"74",
	"76",
	"78",
	"7A",
	"7C",
	"7E",
	"CHOU_KAEN_SENPUU_KON_S",
],[
	"YAMI_BARAI_L",
	"YAMI_BARAI_H",
	"ONI_YAKI_L",
	"ONI_YAKI_H",
	"EN_JOU_L",
	"EN_JOU_H",
	"70",
	"72",
	"74",
	"76",
	"78",
	"7A",
	"7C",
	"7E",
	"URA_OROCHI_NAGI_S",
],[
	"REPPU_KEN_L",
	"REPPU_KEN_H",
	"GOD_PRESS_L",
	"GOD_PRESS_H",
	"DARK_BARRIER_L",
	"DARK_BARRIER_H",
	"GENOCIDE_CUTTER_L",
	"GENOCIDE_CUTTER_H",
	"KAISER_WAVE_L",
	"KAISER_WAVE_H",
	"78",
	"7A",
	"7C",
	"7E",
	"GIGANTIC_PRESSURE_S",
],[
	"AMUBE_YATORO_L",
	"AMUBE_YATORO_H",
	"ANNU_MUTSUBE_L",
	"ANNU_MUTSUBE_H",
	"KAMUI_RIMSE_L",
	"KAMUI_RIMSE_H",
	"LELA_MUTSUBE_L",
	"LELA_MUTSUBE_H",
	"MAMAHAHA_FLIGHT_L",
	"MAMAHAHA_FLIGHT_H",
	"YATORO_POKKU_L",
	"YATORO_POKKU_H",
	"KAMUI_MUTSUBE_L",
	"KAMUI_MUTSUBE_H",
	"ELERUSH_KAMUI_RIMSE_S",
]
];
