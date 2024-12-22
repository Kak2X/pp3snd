<?php
	
// Purpose: Split sound files
require "lib/common.php";

$buf = [];
$includes = "";

print "Here we go";
{
	$asmfile = file("src_bak/bank09.asm");
	
	$hdrType = null;
	$sndName = null;
	$fileName = null;
	foreach ($asmfile as $l) {
		$line = trim($l);
		
		if (str_starts_with($line, "SndHeader_")) {
			print "\r\n".$line;
			
			$set = explode("_", get_label($line), 2);
			//if ($set[1] !== "SFX" && $set[1] !== "BGM") {
			//	$sndName = $set[1];
			//	$hdrType = null;
			//	$fileName = "data/sound/cmd".strtolower(preg_replace("/[A-Z]/", "_\$0", $sndName)).".asm";
			//} else {
				//$hdrType = $set[1];
				$sndName = $set[1];
				$fileName = str_replace("__", "_", "driver/songs/snd_".strtolower($sndName).".asm");
			//}
			
			print " ($fileName, $sndName)";
			$includes .= "\r\nINCLUDE \"$fileName\"";
		}
		
		if ($fileName !== null) {
			if (!isset($buf[$fileName]))
				$buf[$fileName] = "";
			$buf[$fileName] .= $l;
		}
	}
}
print "\r\nParsed. Writing files...";


const SLOTS = [
"0" => ["bgm","bgm"],
"1" => ["bgm","bgm"],
"2" => ["bgm","bgm"],
"3" => ["bgm","bgm"],
"4" => ["sfx","sfx"], 
"5" => ["sfx","sfx"], 
"6" => ["sfx","sfx"], 
"7" => ["sfx","sfx"], 
"P" => ["sfx","sfxpause"], 
];
const XMATCH = "	db SNDSLOT";

foreach ($buf as $filename => $data) {
	// Really hacky write once never read again code
	$pr = strpos($data, XMATCH) or die("this shouldn't happen");
	$pr += strlen(XMATCH);
	$type = SLOTS[$data[$pr]];
	
	$new_filename = str_replace("songs/snd_", "{$type[0]}/{$type[1]}_", $filename);
	$includes = str_replace($filename, $new_filename, $includes);

	print "\r\n$new_filename...";	
	file_put_contents("temp/".$new_filename, $data);
}

file_put_contents("log.txt", $includes); 

print "\r\nDONE";