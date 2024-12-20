<?php

// Purpose: Disassemble sound data
// ==============================

require "lib/common.php";

const NOTELENARG_LENGTH = 0x11;
const SNDDATACMD_NOTELENARG_NOMID    = 0x100-(NOTELENARG_LENGTH*2);
const SNDDATACMD_NOTELENARG_WITHMID  = 0x100-(NOTELENARG_LENGTH*1);

const MAP_SNDCMD = [
	'F0' => "SNDCMD_START           ",
	'F1' => "SNDCMD_RESET           ",
	'F2' => "SNDCMD_STOP            ",
	'F3' => "SNDCMD_FADEOUT         ",
	'F4' => "SNDCMD_FADEIN_STARTNEW ",
	'F5' => "SNDCMD_FADEIN          ",
	'F6' => "SNDCMD_PAUSE           ",
	'F7' => "SNDCMD_UNPAUSE         ",
];

const MAP_STRUCT = [
	'00' => "iSndChInfo_Status",
	'01' => "iSndChInfo_01",
	'02' => "iSndChInfo_02",
	'03' => "iSndChInfo_03",
	'04' => "iSndChInfo_04",
	'05' => "iSndChInfo_05",
	'06' => "iSndChInfo_06",
	'07' => "iSndChInfo_07",
	'08' => "iSndChInfo_08",
	'09' => "iSndChInfo_09",
	'0A' => "iSndChInfo_0A",
	'0B' => "iSndChInfo_0B",
	'0C' => "iSndChInfo_0C",
	'0D' => "iSndChInfo_0D",
	'0E' => "iSndChInfo_0E",
	'0F' => "iSndChInfo_0F",
	'10' => "iSndChInfo_10",
	'11' => "iSndChInfo_11",
	'12' => "iSndChInfo_12",
	'13' => "iSndChInfo_13",
	'14' => "iSndChInfo_14",
	'15' => "iSndChInfo_15",
	'16' => "iSndChInfo_16",
	'17' => "iSndChInfo_17",
	'18' => "iSndChInfo_18",
	'19' => "iSndChInfo_19",
	'1A' => "iSndChInfo_1A",
	'1B' => "iSndChInfo_1B",
	'1C' => "iSndChInfo_1C",
	'1D' => "iSndChInfo_1D",
	'1E' => "iSndChInfo_1E",
	'1F' => "iSndChInfo_1F",
	'20' => "iSndChInfo_20",
	'21' => "iSndChInfo_21",
	'22' => "iSndChInfo_22",
	'23' => "iSndChInfo_23",
	'24' => "iSndChInfo_24",
	'25' => "iSndChInfo_25",
	'26' => "iSndChInfo_26",
	'27' => "iSndChInfo_27",
	'28' => "iSndChInfo_28",
	'29' => "iSndChInfo_29",
	'2A' => "iSndChInfo_2A",
	'2B' => "iSndChInfo_2B",
	'2C' => "iSndChInfo_2C",
	'2D' => "iSndChInfo_2D",
	'2E' => "iSndChInfo_2E",
	'2F' => "iSndChInfo_2F",
];

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

const MAP_STATUS = [
	0 => "SNDX_CH123 ",
	1 => "SNDX_CH4   ",
	2 => "SNDX_2     ",
	3 => "SNDX_3     ",
	4 => "SNDX_KEYHOLD     ",
	5 => "SNDX_5     ",
	6 => "SNDX_PRIORITY     ",
	7 => "SNDX_7     ",
];

const MAP_CH = [
	'00' => "SNDCH_PULSE1 ",
	'01' => "SNDCH_PULSE2 ",
	'02' => "SNDCH_WAVE   ",
	'03' => "SNDCH_NOISE  ",
];

CONST MAP_PAN = [
	'00' => "SNDOUT_CHNONE  ",
	'F0' => "SNDOUT_CHL     ",
	'0F' => "SNDOUT_CHR     ",
	'FF' => "SNDOUT_CHALL   ",
];

const MAP_NOTELEN = [
	0x00 => "NOTELEN_CUSTOM",
	0x01 => "NOTELEN_01",
	0x02 => "NOTELEN_02",
	0x03 => "NOTELEN_03",
	0x04 => "NOTELEN_04",
	0x05 => "NOTELEN_06",
	0x06 => "NOTELEN_08",
	0x07 => "NOTELEN_0C",
	0x08 => "NOTELEN_10",
	0x09 => "NOTELEN_18",
	0x0A => "NOTELEN_20",
	0x0B => "NOTELEN_30",
	0x0C => "NOTELEN_09",
	0x0D => "NOTELEN_12",
	0x0E => "NOTELEN_1E",
	0x0F => "NOTELEN_24",
	0x10 => "NOTELEN_2A",
];

list($infile, $outfile) = inout();

$iter = dbify($infile, true);
$b = new flbl();

$strtrs = "";

$parse_mode = false;
$sndid = $sndch = $callcnt = null;

try {
foreach ($iter as $row) {
	
oops_we_need_rewind_actually:

	// Refresh parse mode on new label.
	// This assumes sound data is all in the "db" format, it'd be bad if already decompiled sound data were to go through here.
	if ($row->label) {
		$parse_mode = strpos($row->label, "SndData") === 0;
		if ($parse_mode) {
			$b->add_rel_label(0, $row->label);
			// SndData_00_Ch3
			list($_, $sndid, $sndch) = explode('_', $row->label);
			$sndch = (int)$sndch[2];
			$callcnt = 0;
		}
	}
	
	if (!$parse_mode || $row->is_empty()) {
		$b->w(1, $row->raw, true);
	} else {
		$cmd = $row->as_int();
		switch ($cmd) {
			case 0x80:
				$target = getptrlabel($iter);
				$b->add_pending_label($target);
				ww(3, "snd_jp {$target}");
				break;
			case 0x81:
				$slotid = "iSndChInfo_".getnext($iter)->val;
				$target = getptrlabel($iter);
				$b->add_pending_label($target);
				ww(4, "snd_djnz {$slotid}, {$target}");
				break;
			case 0x82:
				ww(1, "snd_end");
				break;
			case 0x83:
				$vibrato = getnext($iter);
				if ($vibrato->as_int() & 0x80) // SNDSW_SET
					$vibrato = "snd_pulse1_sweep ".mknr10($vibrato->as_int() & 0x7F);
				else
					$vibrato = "snd_vibrato VIBRATO_".($vibrato->val != '00' ? $vibrato->val : "NONE");
				ww(2, $vibrato);
				break;
			case 0x84:
				$speed = getnext($iter)->as_int();
				ww(2, "snd_pitchbend {$speed}");
				break;
			case 0x85:
				$idc  = getnext($iter);
				$argc = getnext($iter);
				
				$id  = $idc->as_enum(MAP_SNDCMD);
				switch ($idc->as_int()) {
					case 0xF4: // SNDCMD_FADEIN_STARTNEW
						$arg = "SND_ID_{$argc->val}";
						break;
					case 0xF3: // SNDCMD_FADEOUT
					case 0xF5: // SNDCMD_FADEIN
						$arg = $argc->as_int();
						break;
					case 0xF1: // SNDCMD_RESET
					case 0xF2: // SNDCMD_STOP
					case 0xF6: // SNDCMD_PAUSE
					case 0xF7: // SNDCMD_UNPAUSE
						$arg = "";
						break;
					default:
						$id  = "SND_ID_{$idc->val}";
						$arg = "PCM_ID_{$argc->val}";
						break;
				}
				ww(3, "snd_playsndarg {$id}".($arg ? ", {$arg}" : ""));
				break;
			case 0x86:
				ww(1, "snd_end_saveid");
				break;
			case 0x87:
				$vol = getnext($iter)->as_int(); 
				ww(2, "snd_vol {$vol}");
				break;
			case 0x88:
				$instrd = getnext($iter);
				ww(2, "snd_instrument INSTR_".($instrd->val != '00' ? $instrd->val : "NONE"));
				break;
			case 0x89:
				$val = getnext($iter);
				ww(2, "snd_inc_base_note {$val->as_signed()}");
				break;
			case 0x8A:
				$val = getnext($iter);
				ww(2, "snd_inc_vol {$val->as_signed()}");
				break;
			case 0x8B:
				$id  = getnext($iter)->val;
				ww(2, "snd_playsnd SND_ID_{$id}");
				break;
			case 0x8C:
				ww(1, "snd_nop");
				break;
			case 0x8D:
				$loc = getnext($iter)->as_enum(MAP_STRUCT);
				$var = getnext($iter)->val;
				ww(3, "snd_var {$loc}, {$var}");
				break;
			case 0x8E:
			case 0x8F:
			case 0x92:
				$arg = getnext($iter)->as_int();
				$sh = $arg >> 4;
				$dv = $arg & 0x7;
				$toggle = ($arg & 0x8) ? "SBDCH4_LFSR7" : "0";
				
				$op = match ($cmd) {
					0x8E => 'snd_noise_sweep',
					0x8F => 'snd_noise_sweep_single',
					0x92 => 'snd_noise',
				};
				
				ww(2, "{$op} {$sh}, {$dv}, {$toggle}");
				break;
			case 0x90:
				$arg = getnext($iter)->as_enum(MAP_STATUS);
				ww(2, "snd_status {$arg}");
				break;
			case 0x91:
				$arg = getnext($iter)->val;
				ww(2, "snd_orsaveid \${$arg}");
				break;
			case 0x93:
				$arg = getnext($iter)->as_int();
				$type = ($arg & 0x80) ? "SSF_FADEOUT" : "SSF_FADEIN";
				$target = $arg & 0x0F;
				$speed = getnext($iter)->as_int();
				ww(3, "snd_fade {$type}, {$target}, {$speed}");
				break;
			case 0x94:
				$arg = getnext($iter)->as_int();
				$type = ($arg & 0x80) ? "SNDB_NSUP" : "SNDB_NSDOWN";
				$speed = $arg & 0x7F;
				ww(2, "snd_note_slide {$type}, {$speed}");
				break;
			case 0x95:
				$target = getptrlabel($iter);
				$b->add_pending_label($target);
				ww(3, "snd_jpfade {$target}");
				break;
			case 0x96:
				$speed = getnext($iter)->as_int();
				ww(2, "snd_speed {$speed}");
				break;
			case 0x97:
				$var = getnext($iter)->as_signed();
				ww(2, "snd_inc_freq_offset {$var}");
				break;
			case 0x98:
				$var = getnext($iter)->as_enum(MAP_CH);
				ww(2, "snd_ch {$var}");
				break;
			case 0x99:
				ww(1, "snd_toggle_keyhold");
				break;
			case 0x9A:
				$target = getptrlabel($iter);
				$b->add_pending_label($target);
				ww(3, "snd_call {$target}");
				$strtrs .= "'{$target}' => \".call{$callcnt}\",\r\n";
				++$callcnt;
				break;
			case 0x9B:
				ww(1, "snd_ret");
				break;
			case 0x9C:
				$id = getnext($iter)->val;
				$var = getptr($iter);
				ww(4, "snd_inc_base_note_by_loop \${$id}, \${$var}");
				break;
			case 0x9D:
				$var = getnext($iter)->val;
				ww(2, "snd_keyon \${$var}");
				break;
			case 0x9E:
				$var = getnext($iter)->as_enum(MAP_CH);
				ww(2, "snd_ifch {$var}");
				break;
			case 0x9F:
				$var = getnext($iter)->as_enum(MAP_CH);
				$target = getptrlabel($iter);
				$b->add_pending_label($target);
				ww(4, "snd_jpch {$var}, {$target}");
				break;
			case 0xA0:
				if ($sndch == 3) {
					$var = getnext($iter)->val;
					ww(2, "snd_wave WAVE_{$var}");
				} else {
					$var = getnext($iter)->as_int();
					ww(2, "snd_duty ".mknrx1($var));
				}
				break;
			case 0xA1:
				$var = getnext($iter)->as_enum(MAP_PAN);
				ww(2, "snd_pan {$var}");
				break;
			case 0xA2:
				ww(1, "snd_sets3");
				break;
			case 0xA3:
				ww(1, "snd_clrs3");
				break;
			default:
				$args = [];
				if ($cmd >= 0xDE) {
					$res = "snd_samenote";
					$bytes_used = 0;
				} else if ($cmd >= 0xC0) {
					$res = "snd_noteex";
					$args[] = "PRESET_".fmthexnum($cmd - 0xC0);
					$bytes_used = 1;
				} else if ($cmd == 0xA4) {
					$args[] = "PCM_ID_".getnext($iter)->val; // pcm_id
					$args[] = getnext($iter)->as_int(); // pcm_speed
					$res = "snd_playpcm";
					$bytes_used = 3;
				} else if ($cmd == 0xA5) {
					$args[] = getnext($iter)->as_int(); // pcm_speed
					$res = "snd_playslotpcm";
					$bytes_used = 2;
				} else {
					$args[] = '$'.$row->val; // note
					$res = "snd_note";
					$bytes_used = 1;
				}
			
				$notelend = getnext($iter);
				$notelen = $notelend->as_int();
				// SNDDATACMD_NOTELENARG_WITHMID is higher
				if ($has_notelen = ($notelen >= SNDDATACMD_NOTELENARG_NOMID)) {
					$has_midext = $notelen >= SNDDATACMD_NOTELENARG_WITHMID;
					$notelen -= $has_midext ? SNDDATACMD_NOTELENARG_WITHMID : SNDDATACMD_NOTELENARG_NOMID;
					
					$args[] = MAP_NOTELEN[$notelen];
					++$bytes_used;
					
					if (!$notelen) {
						$args[] = "\$".getnext($iter)->val;
						++$bytes_used;
					}
					
					if ($has_midext) {
						$args[] = "\$".getnext($iter)->val;
						++$bytes_used;
					}
				}
				
				ww($bytes_used, $res." ".implode(', ', $args));	

				if (!$has_notelen) {
					// no rewind with yield, alas
					$row = $notelend;
					goto oops_we_need_rewind_actually;
				}
				break;
		}
	}
}

} catch (Throwable $x) {
	print $x;
}


file_put_contents($outfile, $b->build()."\r\n\r\n".$strtrs);

function ww($cnt, $str) {
	global $b, $row;
	$b->w($cnt, $str.($row->used ? "" : " ;X"), false, $row->raw_label);
}
function getptrlabel($iter) {
	$ptr = getptr($iter); // important! updates current()
	return 'L'.$iter->current()->bank.$ptr;
}
function getptr($iter) {
	$iter->next();
	$lo = $iter->current();
	$iter->next();
	return $iter->current()->val.$lo->val;
}