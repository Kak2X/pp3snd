<?php

// Purpose: Convert sound header
// ==============================

require "lib/common.php";

const PATH = "src/*.asm";

print "Converting data...".PHP_EOL;


function go($lines) {

	$bit_status = [
		0 => "SND0_0",
		1 => "SND0_1",
		2 => "SND0_2",
		3 => "SND0_3",
		4 => "SND0_4",
		5 => "SND0_5",
		6 => "SND0_6",
		7 => "SND0_7",
	];
	$sndptr_map = [
		'13' => "SND_CH1_PTR",
		'18' => "SND_CH2_PTR",
		'1D' => "SND_CH3_PTR",
		'22' => "SND_CH4_PTR",
	];
	$sndptrlbl_map = [
		'13' => ".ch1",
		'18' => ".ch2",
		'1D' => ".ch3",
		'22' => ".ch4",
	];
	$sndprefix_map = [
		'13' => "_Ch1",
		'18' => "_Ch2",
		'1D' => "_Ch3",
		'22' => "_Ch4",
	];
	
	$sndslot_map = [
		'00' => "SNDSLOT0",
		'01' => "SNDSLOT1",
		'02' => "SNDSLOT2",
		'03' => "SNDSLOT3",
		'04' => "SNDSLOT4",
		'05' => "SNDSLOT5",
		'06' => "SNDSLOT6",
		'07' => "SNDSLOT7",
		'08' => "SNDSLOTPAUSE",
	];
	
	$reps = [];

	$res = "";

	for ($i = 0; $i < count($lines);) {
		
		if (strpos($lines[$i], "SndHeader_") !== 0 || strpos($lines[$i], "SndHeader_28") === 0){
			$res .= $lines[$i];
			++$i;
			continue;
		}
		
		$label = get_label($lines[$i]);
		$chcount = get_db($lines[$i]);
		
		$b = "
{$label}:
	db \${$chcount} ; Number of slots";
		

		++$i;
		for ($j = 0; $j < $chcount; $j++) {
			$slotid = get_db($lines[$i++]);
			$status = get_db($lines[$i++]);
			$b1 = get_db($lines[$i++]);
			$b2 = get_db($lines[$i++]);
			$b3 = get_db($lines[$i++]);
			$b4 = get_db($lines[$i++]);
			$b5 = get_db($lines[$i++]);
			$b6 = get_db($lines[$i++]);
			$b7 = get_db($lines[$i++]);
			$b8 = get_db($lines[$i++]);
			$b9 = get_db($lines[$i++]);
			$ba = get_db($lines[$i++]);
			
			//$dataptr_low = get_db($lines[$i++]);
			//$dataptr_high = get_db($lines[$i++]);
			//$freqbase = get_db($lines[$i++]);
			//$unused = get_db($lines[$i++]);
			//
			//$data_from = "L1F{$dataptr_high}{$dataptr_low}";
			//$data_to = str_replace("SndHeader_", "SndData_", $label).$sndprefix_map[$soundptr];
			//if (isset($reps[$data_from])) die("shit");
			//$reps[$data_from] = $data_to;
			
			$b .= "
.s{$j}:
	db ".($sndslot_map[$slotid] ?? '$'.$slotid)." ; Slot ID
	db ".generate_const_label($status, $bit_status)." ; Initial playback status
	db \${$b1} ; B1
	db \${$b2} ; B2
	db \${$b3} ; B3
	db \${$b4} ; B4
	db \${$b5} ; B5
	db \${$b6} ; B6
	db \${$b7} ; B7
	db \${$b8} ; B8
	db \${$b9} ; B9
	db \${$ba} ; Ba
";
		/*
		db ".$sndptr_map[$soundptr]." ; Sound channel ptr
		dw {$data_from} ; Data ptr
		db \${$freqbase} ; Base freq/note id
		db \${$unused} ; Unused";*/
		}
		
	//$b .= "
	//";
	//$b .= "
	//; END {$label} at ".get_label($lines[$i])."
	//";
		$res .= $b;
	}
	return $res;
}
	
foreach (glob(PATH) as $x) {
	print $x;
	$f = file($x);
	$res = go($f);
	file_put_contents($x, $res);
}