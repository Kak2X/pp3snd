<?php

// Purpose: Disassemble vibrato/instrument data
// ==============================

require "lib/common.php";

list($infile, $outfile) = inout();

// Thankfully, $iter->next() allows me to advance the foreach pointer
// pretty convenient!
$iter = dbify($infile, true);
$b = new flbl();
foreach ($iter as $row) {
	// New label?
	if ($row->label) {
		$b->add_rel_label(0, $row->label);
		$is_instrument = strpos($row->label, "Instrument") !== false;
	}
	// Which command?
	// Shared between instrument and vibrato
	$prefix = $is_instrument ? "i" : "v";
	$used = $row->used ? "" : " ;X";
	switch ($row->val) {
		case '82':
			$b->w(1, "{$prefix}rewind{$used}");
			break;
		case '80': // loop
			$b->w(1, "{$prefix}loop_prev{$used}");
			break;
		case '83': // loopsh
			$iter->next();
			$b->w(3, "{$prefix}loop_prev_sh ".default_command($iter, $is_instrument)."{$used}");
			break;
		case '81': // loopfar
			$iter->next();
			$jplabel = $b->add_rel_label(-$iter->current()->as_int());
			$b->w(2, "{$prefix}loop_far {$jplabel}{$used}");
			break;
		case '84': // loopfarsh
			$iter->next();
			$offset = $iter->current();
			$jplabel = $b->add_rel_label(-$iter->current()->as_int());
			$b->w(4, "{$prefix}loop_far_sh {$jplabel} ".default_command($iter, $is_instrument)."{$used}");
			break;
		default:
			if ($is_instrument)
				$b->w(2, "{$prefix}vol ".default_command($iter, $is_instrument)."{$used}");
			else
				$b->w(1, "{$prefix}frq ".default_command($iter, $is_instrument)."{$used}");
			break;
	}
}

file_put_contents($outfile, $b->build());

function default_command($iter, $is_instrument) {
	$row = $iter->current();
	if (!$is_instrument) {
		return $row->as_signed();
	} else {
		$iter->next();
		$n = $iter->current()->as_int();
		$vol	= fmthexnum($n >> 4, 1);
		$env	= ($n & 8) ? "SNDENV_INC" : "SNDENV_DEC";
		$pace	= fmthexnum($n & 7);
		return "\${$row->val}, \${$vol}, {$env}, \${$pace}";
	}
}