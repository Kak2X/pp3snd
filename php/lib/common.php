<?php

const DEFAULT_INPUT_FILE = "tempconv.txt";
const DEFAULT_OUTPUT_FILE = "tempconv.asm";

require "defines.php";

chdir("..");


//--

function inout() {
	global $argc, $argv;
	
	$input = $argv[1] ?? DEFAULT_INPUT_FILE;
	$output = $argv[2] ?? DEFAULT_OUTPUT_FILE;
	
	if (!file_exists($input)) 
		die("Can't find '{$input}'");
	
	return [$input, $output];
}

// for delayed labeling
class flbl {
	private $b = [];
	private $map = [];
	private $labelmap = [];
	private $total = 0;
	
	public function w($icount, $str, $raw = false) {
		$this->b[] = [$str, $raw];
		$this->map[] = $this->total; // + $icount;
		if ($icount >= 0)
			$this->total += $icount;
	}
	
	public function add_rel_label($i, $label = null) { // label is $i bytes from current location
		$j = $this->total + $i;
		if (!isset($this->labelmap[$j]))
			$this->labelmap[$j] = $label ?? ".jump".fmthexnum($j, 4);
		return $this->labelmap[$j];
	}
	
	public function build() {
		
		$o = "";
		for ($i = 0, $cnt = count($this->b); $i < $cnt; ++$i) {
			$label = $this->labelmap[$this->map[$i]] ?? null;
			if ($label)
				$o .= "{$label}:\r\n";
			// Raw or not?
			$o .= ($this->b[$i][1] ? "" : "\t") . $this->b[$i][0]."\r\n";
		}
		return $o;
	}
}

class dbnfo {
	public function __construct(
		public $raw,
		public $label, 
		public $val,
		public $used,
		public $bank,) {
    }
	
	public function as_int() {
		return hexdec($this->val);
	}
	public function as_signed() {
		$c = hexdec($this->val);
		return $c >= 0x80 ? $c - 0x100 : $c;
	}
	public function as_flag($map) {
		return generate_const_label($this->val, $map);
	}
	public function as_enum($map) {
		return trim($map[$this->val] ?? '$'.$this->val);
	}
}

function dbify($path, $no_data_labels = false) {
	foreach (pretty_file($path) as $ln) {
		$label = get_label($ln);
		$val = get_db($ln);
		// Dumb detection, but should work for us
		if ($no_data_labels && $ln && $ln[0] == 'L' && strlen($label) == 7) {
			$bank  = substr($label, 1, 2);
			$label = null;
		} else {
			$bank = null;
		}
		$used = strrpos($ln, ";X") === false;
		yield new dbnfo($ln, $label, $val, $used, $bank);
	}
}

function pretty_file($path) {
	$h = fopen($path, 'r');
	while (($line = fgets($h)) !== false)
		if ($ln = trim($line))
			yield $ln;
	fclose($h);
}

function getnext($iter) {
	$iter->next();
	return $iter->current();
}

function generate_const_label($strdb, $map) {
	$val = hexdec($strdb);
	$res = "";
	foreach ($map as $k => $lbl) {
		if ($val & (1 << $k)) {
			$res .= ($res ? "|" : "").trim($lbl);
			//$val ^= (1 << $k); // Remove bit
		}
	}
	//if ($val)
	//	$res = ($res ? "{$res}" : "") ""
	if (!$res)
		return "\$00";
	return $res;
}

function fmthexnum($dec, $digits = 2) {
	return str_pad(strtoupper(dechex($dec)), $digits, "0", STR_PAD_LEFT);
}

function mknr10($n) {
	$pace	= fmthexnum($n >> 4, 1);
	$dir	= ($n & 8) ? "SNDPRD_DEC" : "SNDPRD_INC"; // Consistency wins
	$step	= fmthexnum($n & 7);
	return "\${$pace}, {$dir}, \${$step}";
}
const map_nrx1duty = [
	0 => "SNDDUTY_12",
	1 => "SNDDUTY_25",
	2 => "SNDDUTY_50",
	3 => "SNDDUTY_75",
];
function mknrx1($n) {
	return map_nrx1duty[$n >> 6].", \$".fmthexnum($n & 0b00111111); 
}
const map_nrx2vol = [
	0 => "SNDCH3VOL_000",
	1 => "SNDCH3VOL_025",
	2 => "SNDCH3VOL_050",
	3 => "SNDCH3VOL_100",
];
function mknrx2($n) {
	$vol	= fmthexnum($n >> 4, 1);
	$env	= ($n & 8) ? "SNDENV_INC" : "SNDENV_DEC";
	$pace	= fmthexnum($n & 7);
	return "\${$vol}, {$env}, \${$pace}";
}

function mknr32($n) {
	return map_nrx2vol[$n >> 6]; 
}

//---

function get_label($line) {
	$sep = strpos($line, ":");
	$x = substr($line, 0, $sep);
	return $x;
}

function get_db($line, $id = null) {
	if ($id !== null) {
		$line = $line[$id];
	}
	$sep = strpos($line, ":");
	if ($sep === false)
		return false;
	$x = substr($line, $sep + strlen(": db \$"), 2);
	return $x;
}

function get_dw($line, $id = null) {
	return get_db($line, $id+1).get_db($line, $id);
}

//function get_move_char_id($base_label) {
//	// Determine character table
//	$charname = strtoupper(explode("_", $base_label, 2)[1]);
//	print $charname."\r\n";
//	$charid = array_search($charname, CHAR_NAMES, true);
//	if ($charid === false)
//		die("not found! $charname");
//	
//	return $charid;
//}
//
//function get_move_name_from_tbl($move_id, $char_id, $full_mode = false) {
//	$is_spec = ($move_id >= MOVEGROUP_ATTACKSPEC_START && $move_id <= MOVEGROUP_ATTACKSPEC_END);
//	if (!$full_mode) {
//		$charname = $is_spec ? CHAR_NAMES[$char_id] : "SHARED";
//		return "MOVE_".$charname."_".MOVES_POOL[$move_id];
//	} else {
//		$movename = $is_spec ? MOVES_CHAR[$char_id][$move_id-MOVEGROUP_ATTACKSPEC_START] : MOVES_POOL[$move_id];
//		return "MOVE_".CHAR_NAMES[$char_id]."_".$movename;
//	}
//}
