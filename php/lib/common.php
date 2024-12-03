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
	
	public function w($icount, $str) {
		$this->b[] = $str;
		$this->map[] = $this->total; // + $icount;
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
			$o .= "\t{$this->b[$i]}\r\n";
		}
		return $o;
	}
}

class dbnfo {
	public function __construct(
		public $label, 
		public $val,
		public $used,) {
    }
	
	public function as_int() {
		return hexdec($this->val);
	}
	public function as_signed() {
		$c = hexdec($this->val);
		return $c >= 0x80 ? $c - 0x100 : $c;
	}
}

function dbify($path, $no_data_labels = false) {
	foreach (pretty_file($path) as $ln) {
		$label = get_label($ln);
		$val = get_db($ln);
		if ($no_data_labels && $ln && $ln[0] == 'L' && strlen($label) == 7) // Dumb detection, but should work for us
			$label = null;
		$used = strrpos($ln, ";X") === false;
		yield new dbnfo($label, $val, $used);
	}
}

function pretty_file($path) {
	$h = fopen($path, 'r');
	while (($line = fgets($h)) !== false)
		if ($ln = trim($line))
			yield $ln;
	fclose($h);
}

function oc($cmd) {
	return "\t{$cmd}\r\n";
}

function generate_const_label($strdb, $map) {
	$val = hexdec($strdb);
	$res = "";
	foreach ($map as $k => $lbl) {
		if ($val & (1 << $k)) {
			$res .= ($res ? "|" : "").$lbl;
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
