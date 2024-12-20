<?php

// Purpose: Disassemble sound headers
// ==============================

require "lib/common.php";

$map_slot = [
	'00' => "SNDSLOT0    ",
	'01' => "SNDSLOT1    ",
	'02' => "SNDSLOT2    ",
	'03' => "SNDSLOT3    ",
	'04' => "SNDSLOT4    ",
	'05' => "SNDSLOT5    ",
	'06' => "SNDSLOT6    ",
	'07' => "SNDSLOT7    ",
	'08' => "SNDSLOTPAUSE",
];

$map_status = [
	0 => "SNDX_CH123 ",
	1 => "SNDX_CH4   ",
	2 => "SNDX_2     ",
	3 => "SNDX_3     ",
	4 => "SNDX_KEYHOLD     ",
	5 => "SNDX_PAUSEREST     ",
	6 => "SNDX_PRIORITY     ",
	7 => "SNDX_7     ",
];

$map_ch = [
	'00' => "SNDCH_PULSE1 ",
	'01' => "SNDCH_PULSE2 ",
	'02' => "SNDCH_WAVE   ",
	'03' => "SNDCH_NOISE  ",
];
$map_chshort = [
	'00' => "Ch1",
	'01' => "Ch2",
	'02' => "Ch3",
	'03' => "Ch4",
];

$map_pan = [
	'00' => "SNDOUT_CHNONE  ",
	'F0' => "SNDOUT_CHL     ",
	'0F' => "SNDOUT_CHR     ",
	'FF' => "SNDOUT_CHALL   ",
];

list($infile, $outfile) = inout();

$iter = dbify($infile, true);
$b = new flbl();

$strtrs = "";

foreach ($iter as $row) {
	// New label?
	if ($row->label) {
		if (strpos($row->label, "SndHeader") === false) {
			die("Unexpected {$row->label}");
		}
		$b->add_rel_label(0, $row->label);
		
		$sndid = substr($row->label, strlen("SndHeader_"), 2);
		$slotcount = $row->as_int();
		$b->w(1, "db {$slotcount} ; Number of slots");
		
		for ($i = 0; $i < $slotcount; ++$i) {
			$b->add_rel_label(0, ".slot{$i}");
			
			$slotid 	= getnext($iter)->as_enum($map_slot);
			$status 	= getnext($iter)->as_flag($map_status);
			$vol		= getnext($iter)->as_int();
			$instrd  	= getnext($iter);
			if ($instrd->as_int() >= 0x80) {
				$instr = "nrx2 ".mknrx2($instrd->as_int());
			} else {
				$instr = "db INSTR_".($instrd->val != '00' ? $instrd->val : "NONE");
			}
				
			$vibrato	= getnext($iter);
			if ($vibrato->as_int() & 0x80) // SNDSW_SET
				$vibrato = "nr10 ".mknr10($vibrato->as_int());
			else
				$vibrato = "db VIBRATO_".($vibrato->val != '00' ? $vibrato->val : "NONE");
			
			$noteid		= getnext($iter)->as_signed();

			$speed		= getnext($iter)->as_int();
			$chid		= getnext($iter);
			$chid_enum	= $chid->as_enum($map_ch);
			$chid_short	= $chid->as_enum($map_chshort);
			$data_low   = getnext($iter);
			$data_hi    = getnext($iter);
			$data_ptr   = 'L' . $data_hi->bank . $data_hi->val . $data_low->val;
			$lendt		= getnext($iter);
			if ($chid_enum == "SNDCH_WAVE") {
				if ($lendt->as_int() >= 0x14)
					$lendt = "db \${$lendt->val} ; [PLACEHOLDER]";
				else
					$lendt = "db WAVE_{$lendt->val}";
				// :(
				if ($instrd->as_int() >= 0x80)
					$instr = "nr32 ".mknr32($instrd->as_int());
			} else
				$lendt = "nrx1 ".mknrx1($lendt->as_int());
			$pan	 	= getnext($iter)->as_enum($map_pan);
			
			$b->w(1, "db $slotid ; Slot location");
			$b->w(1, "db $status ; iSndChInfo_Status");
			$b->w(1, "db $vol ; iSndChInfo_01");
			$b->w(1, "$instr ; iSndChInfo_02");
			$b->w(1, "$vibrato ; iSndChInfo_03");
			$b->w(1, "db $noteid ; iSndChInfo_04");
			$b->w(1, "db $speed ; iSndChInfo_05");
			$b->w(1, "db $chid_enum ; iSndChInfo_06");
			$b->w(2, "dw $data_ptr ; Data pointer");
			$b->w(1, "$lendt ; iSndChInfo_09");
			$b->w(1, "db $pan ; iSndChInfo_0A");
			
			// This is relegated to strtr since tempconv.txt might not have it
			$strtrs .= "'{$data_ptr}' => \"SndData_{$sndid}_{$chid_short}\",\r\n";
		}
		
	} else {
		$b->w(1, $row->raw, true);
	}
}

file_put_contents($outfile, $b->build()."\r\n\r\n".$strtrs);