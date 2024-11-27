<?php


const PATH = "../src/*.asm";

const REPLMAP = [

	'L003352' => 'SoundDataCmd_80',
	'L003358' => 'SoundDataCmd_81',
	'L00336E' => 'SoundDataCmd_82',
	'L003394' => 'SoundDataCmd_83',
	'L0033C4' => 'SoundDataCmd_84',
	'L003421' => 'SoundDataCmd_85',
	'L003364' => 'SoundDataCmd_86',
	'L00338D' => 'SoundDataCmd_87',
	'L003380' => 'SoundDataCmd_88',
	'L0033DE' => 'SoundDataCmd_89',
	'L003408' => 'SoundDataCmd_8A',
	'L003B4E' => 'SoundDataCmd_8B',
	'L003356' => 'SoundDataCmd_8C',
	'L0033EF' => 'SoundDataCmd_8D',
	'L00339A' => 'SoundDataCmd_8E',
	'L0033F8' => 'SoundDataCmd_8F',
	'L003405' => 'SoundDataCmd_90',
	'L00342B' => 'SoundDataCmd_91',
	'L0033A0' => 'SoundDataCmd_92',
	'L00344C' => 'SoundDataCmd_93',
	'L003472' => 'SoundDataCmd_94',
	'L003493' => 'SoundDataCmd_95',
	'L0033A6' => 'SoundDataCmd_96',
	'L0034D9' => 'SoundDataCmd_97',
	'L0033AC' => 'SoundDataCmd_98',
	'L00349C' => 'SoundDataCmd_99',
	'L0034BE' => 'SoundDataCmd_9A',
	'L0034CF' => 'SoundDataCmd_9B',
	'L003431' => 'SoundDataCmd_9C',
	'L0033B2' => 'SoundDataCmd_9D',
	'L0034E3' => 'SoundDataCmd_9E',
	'L0034F0' => 'SoundDataCmd_9F',
	'L0033B8' => 'SoundDataCmd_A0',
	'L0033BE' => 'SoundDataCmd_A1',
	'L0034AE' => 'SoundDataCmd_A2',
	'L0034B6' => 'SoundDataCmd_A3',
	'L003506' => 'SoundDataCmd_A4',
	'L0034FE' => 'SoundDataCmd_A5',
//
//'$FFE0' => "h_Unk_TmpFreq_Low",
//'$FFE1' => "h_Unk_TmpFreq_High",
//'$D000' => "wSndSetQueue", // 8 bytes
//'$D008' => "wSndSetQueueSec", // 8 bytes
//
//'$D011' => "wSndFlags1",
//'$D012' => "wSndSetLength",
//'$D01A' => "wUnk_SecBankNum",
//'$D01B' => "wTAC",
//
//'$D01D' => "wTIMAOverride",
//
//'$D020' => "wNR51_Ch1_Unk_Final",
//'$D021' => "wNR11_Unk_Final",
//'$D022' => "wNR12_Unk_Final",
//'$D023' => "wNR13_Unk_Final",
//'$D024' => "wNR14_Unk_Final",
//
//'$D025' => "wNR51_Ch2_Unk_Final",
//'$D026' => "wNR21_Unk_Final",
//'$D027' => "wNR22_Unk_Final",
//'$D028' => "wNR23_Unk_Final",
//'$D029' => "wNR24_Unk_Final",
//
//'$D02A' => "wNR51_Ch3_Unk_Final",
//'$D02B' => "wNR31_Unk_Final",
//'$D02C' => "wNR32_Unk_Final",
//'$D02D' => "wNR33_Unk_Final",
//'$D02E' => "wNR34_Unk_Final",
//
//'$D02F' => "wNR51_Ch4_Unk_Final",
//'$D030' => "wNR41_Unk_Final",
//'$D031' => "wNR42_Unk_Final",
//'$D032' => "wNR43_Unk_Final",
//'$D033' => "wNR44_Unk_Final",
//
//'$D034' => "wNR51_Unk_Final",
//'$D035' => "wWaveSetId",
//'$D036' => "wWaveCurId",
//
//'$D037' => "wNR10_Unk_Final",
//
//
//'$D040' => "w_Unk_SndChInfo0",
//'$D070' => "w_Unk_SndChInfo1",
//'$D0A0' => "w_Unk_SndChInfo2",
//'$D0D0' => "w_Unk_SndChInfo3",
//'$D100' => "w_Unk_SndChInfo4",
//'$D130' => "w_Unk_SndChInfo5",
//'$D160' => "w_Unk_SndChInfo6",
//'$D190' => "w_Unk_SndChInfo7",
//'$D1C0' => "w_Unk_SndChInfo8",
	
	
];

foreach (glob(PATH) as $x) {
	$f = file_get_contents($x);
	$f = strtr($f, REPLMAP);
	file_put_contents($x, $f);
}