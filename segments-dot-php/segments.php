<?php

$facecolor = isset($_GET['f']) ? trim($_GET['f']) : '';
$blankcolor = isset($_GET['b']) ? trim($_GET['b']) : '#DDDDDD';
$lampcolor = isset($_GET['l']) ? trim($_GET['l']) : '#FF0000';
$segments = isset($_GET['s']) ? strtolower(trim($_GET['s'])) : '7';
$data = isset($_GET['d']) ? strtolower(trim($_GET['d'])) : '';


if (preg_match('/^([0-9]+)$/', $data, $group)) {
	$dv = intval($group[1], 10);
	$ds = '';
}

elseif (preg_match('/^([#$]|0[Xx])([0-9A-Fa-f]+)$/', $data, $group)) {
	$dv = intval($group[2], 16);
	$ds = '';
}

else {
	$dv = 0;
	$ds = $data;
}


header('Content-Type: image/svg+xml');
echo '<?xml version="1.0" encoding="utf-8"?>';
echo '<svg version="1.1" xmlns="http://www.w3.org/2000/svg" x="0px" y="0px" width="100px" height="140px" viewBox="0 0 100 140">';
if ($facecolor) { echo '<rect id="bg" fill="' . htmlspecialchars($facecolor) . '" width="100" height="140"/>'; }


if ($segments == 'k' || $segments == 'kak' || $segments == 'kaktovik') {
	$a = (($dv & 0x01) || (strpos($ds, 'a') !== false)) ? $lampcolor : $blankcolor;
	$b = (($dv & 0x02) || (strpos($ds, 'b') !== false)) ? $lampcolor : $blankcolor;
	$c = (($dv & 0x04) || (strpos($ds, 'c') !== false)) ? $lampcolor : $blankcolor;
	$d = (($dv & 0x08) || (strpos($ds, 'd') !== false)) ? $lampcolor : $blankcolor;
	$e = (($dv & 0x10) || (strpos($ds, 'e') !== false)) ? $lampcolor : $blankcolor;
	$f = (($dv & 0x20) || (strpos($ds, 'f') !== false)) ? $lampcolor : $blankcolor;
	$g = (($dv & 0x40) || (strpos($ds, 'g') !== false)) ? $lampcolor : $blankcolor;
	$h = (($dv & 0x80) || (strpos($ds, 'h') !== false)) ? $lampcolor : $blankcolor;
	if ($a) { echo '<path id="a" fill="' . htmlspecialchars($a) . '" d="M29.998,135.001c-2.157,0-4.147-1.406-4.792-3.58l-20-67.5c-0.785-2.648,0.726-5.431,3.374-6.215c2.645-0.786,5.429,0.725,6.214,3.373l20,67.5c0.784,2.648-0.726,5.431-3.373,6.215C30.946,134.935,30.468,135.001,29.998,135.001z"/>'; }
	if ($b) { echo '<path id="b" fill="' . htmlspecialchars($b) . '" d="M50,70c-2.699,0-5.059-1.431-6.379-3.57l-12.317,41.569l5.215,17.601l16.69-56.328C52.234,69.733,51.149,70,50,70z"/>'; }
	if ($c) { echo '<circle id="c" fill="' . htmlspecialchars($c) . '" cx="50" cy="62.5" r="5"/>'; }
	if ($d) { echo '<path id="d" fill="' . htmlspecialchars($d) . '" d="M74.794,128.579L56.519,66.9l-5.215,17.601l13.902,46.92c0.645,2.174,2.635,3.58,4.792,3.58c0.47,0,0.948-0.066,1.423-0.207C74.068,134.01,75.578,131.228,74.794,128.579z"/>'; }
	if ($e) { echo '<path id="e" fill="' . htmlspecialchars($e) . '" d="M91.421,57.706c-2.648-0.784-5.431,0.727-6.215,3.373l-13.902,46.92l5.215,17.601l18.275-61.679C95.578,61.272,94.068,58.49,91.421,57.706z"/>'; }
	if ($f) { echo '<path id="f" fill="' . htmlspecialchars($f) . '" d="M9.994,55.001c-2.4,0-4.519-1.733-4.926-4.179c-0.454-2.725,1.386-5.3,4.11-5.754l80-13.333c2.728-0.463,5.3,1.386,5.754,4.109c0.454,2.725-1.386,5.3-4.109,5.754l-80,13.333C10.544,54.979,10.267,55.001,9.994,55.001z"/>'; }
	if ($g) { echo '<path id="g" fill="' . htmlspecialchars($g) . '" d="M9.178,28.265l42.805,7.135l30.412-5.068l-71.572-11.93c-2.722-0.456-5.3,1.386-5.754,4.109C4.614,25.234,6.454,27.811,9.178,28.265z"/>'; }
	if ($h) { echo '<path id="h" fill="' . htmlspecialchars($h) . '" d="M48.016,22.065l42.807-7.134c2.724-0.454,4.563-3.03,4.109-5.753s-3.026-4.567-5.754-4.11L17.605,16.997L48.016,22.065z"/>'; }
}

elseif ($segments == 'c' || $segments == 'cis' || $segments == 'cistercian') {
	$u1 = (($dv & 0x000001) || (strpos($ds, 'u1') !== false)) ? $lampcolor : $blankcolor;
	$v1 = (($dv & 0x000002) || (strpos($ds, 'v1') !== false)) ? $lampcolor : $blankcolor;
	$w1 = (($dv & 0x000004) || (strpos($ds, 'w1') !== false)) ? $lampcolor : $blankcolor;
	$x1 = (($dv & 0x000008) || (strpos($ds, 'x1') !== false)) ? $lampcolor : $blankcolor;
	$y1 = (($dv & 0x000010) || (strpos($ds, 'y1') !== false)) ? $lampcolor : $blankcolor;
	$u2 = (($dv & 0x000020) || (strpos($ds, 'u2') !== false)) ? $lampcolor : $blankcolor;
	$v2 = (($dv & 0x000040) || (strpos($ds, 'v2') !== false)) ? $lampcolor : $blankcolor;
	$w2 = (($dv & 0x000080) || (strpos($ds, 'w2') !== false)) ? $lampcolor : $blankcolor;
	$x2 = (($dv & 0x000100) || (strpos($ds, 'x2') !== false)) ? $lampcolor : $blankcolor;
	$y2 = (($dv & 0x000200) || (strpos($ds, 'y2') !== false)) ? $lampcolor : $blankcolor;
	$u3 = (($dv & 0x000400) || (strpos($ds, 'u3') !== false)) ? $lampcolor : $blankcolor;
	$v3 = (($dv & 0x000800) || (strpos($ds, 'v3') !== false)) ? $lampcolor : $blankcolor;
	$w3 = (($dv & 0x001000) || (strpos($ds, 'w3') !== false)) ? $lampcolor : $blankcolor;
	$x3 = (($dv & 0x002000) || (strpos($ds, 'x3') !== false)) ? $lampcolor : $blankcolor;
	$y3 = (($dv & 0x004000) || (strpos($ds, 'y3') !== false)) ? $lampcolor : $blankcolor;
	$u4 = (($dv & 0x008000) || (strpos($ds, 'u4') !== false)) ? $lampcolor : $blankcolor;
	$v4 = (($dv & 0x010000) || (strpos($ds, 'v4') !== false)) ? $lampcolor : $blankcolor;
	$w4 = (($dv & 0x020000) || (strpos($ds, 'w4') !== false)) ? $lampcolor : $blankcolor;
	$x4 = (($dv & 0x040000) || (strpos($ds, 'x4') !== false)) ? $lampcolor : $blankcolor;
	$y4 = (($dv & 0x080000) || (strpos($ds, 'y4') !== false)) ? $lampcolor : $blankcolor;
	$z1 = (($dv & 0x100000) || (strpos($ds, 'z1') !== false)) ? $lampcolor : $blankcolor;
	$z2 = (($dv & 0x200000) || (strpos($ds, 'z2') !== false)) ? $lampcolor : $blankcolor;
	$z3 = (($dv & 0x400000) || (strpos($ds, 'z3') !== false)) ? $lampcolor : $blankcolor;
	if ($u1) { echo '<polygon id="U1" fill="' . htmlspecialchars($u1) . '" points="88.23,10 83.23,15 56.77,15 51.77,10 56.77,5 83.23,5"/>'; }
	if ($v1) { echo '<polygon id="V1" fill="' . htmlspecialchars($v1) . '" points="88.23,50 83.23,55 56.77,55 51.77,50 56.77,45 83.23,45"/>'; }
	if ($w1) { echo '<path id="W1" fill="' . htmlspecialchars($w1) . '" d="M61.68,28.75l-4.18-4.18V17.5h7.07l4.18,4.18v7.07H61.68z M71.25,31.25v7.07l4.18,4.18h7.07v-7.07l-4.18-4.18H71.25z"/>'; }
	if ($x1) { echo '<path id="X1" fill="' . htmlspecialchars($x1) . '" d="M82.5,17.5v7.07l-4.18,4.18h-7.07v-7.07l4.18-4.18H82.5z M68.75,31.25h-7.07l-4.18,4.18v7.07h7.07l4.18-4.18V31.25z"/>'; }
	if ($y1) { echo '<polygon id="Y1" fill="' . htmlspecialchars($y1) . '" points="90,11.771 95,16.77 95,43.23 90,48.23 85,43.23 85,16.77"/>'; }
	if ($u2) { echo '<polygon id="U2" fill="' . htmlspecialchars($u2) . '" points="48.23,10 43.23,15 16.77,15 11.77,10 16.77,5 43.23,5"/>'; }
	if ($v2) { echo '<polygon id="V2" fill="' . htmlspecialchars($v2) . '" points="48.23,50 43.23,55 16.77,55 11.77,50 16.77,45 43.23,45"/>'; }
	if ($w2) { echo '<path id="W2" fill="' . htmlspecialchars($w2) . '" d="M42.5,17.5v7.07l-4.18,4.18h-7.07v-7.07l4.18-4.18H42.5z M28.75,31.25h-7.07l-4.18,4.18v7.07h7.07l4.18-4.18V31.25z"/>'; }
	if ($x2) { echo '<path id="X2" fill="' . htmlspecialchars($x2) . '" d="M21.68,28.75l-4.18-4.18V17.5h7.07l4.18,4.18v7.07H21.68z M31.25,31.25v7.07l4.18,4.18h7.07v-7.07l-4.18-4.18H31.25z"/>'; }
	if ($y2) { echo '<polygon id="Y2" fill="' . htmlspecialchars($y2) . '" points="10,11.77 15,16.77 15,43.23 10,48.23 5,43.23 5,16.77"/>'; }
	if ($u3) { echo '<polygon id="U3" fill="' . htmlspecialchars($u3) . '" points="88.23,130 83.23,135 56.77,135 51.77,130 56.77,125 83.23,125"/>'; }
	if ($v3) { echo '<polygon id="V3" fill="' . htmlspecialchars($v3) . '" points="88.23,90 83.23,95 56.77,95 51.77,90 56.77,85 83.23,85"/>'; }
	if ($w3) { echo '<path id="W3" fill="' . htmlspecialchars($w3) . '" d="M82.5,97.5v7.07l-4.18,4.18h-7.07v-7.07l4.18-4.18H82.5z M68.75,111.25h-7.07l-4.18,4.18v7.07h7.07l4.18-4.18V111.25z"/>'; }
	if ($x3) { echo '<path id="X3" fill="' . htmlspecialchars($x3) . '" d="M61.68,108.75l-4.18-4.18V97.5h7.07l4.18,4.18v7.07H61.68z M71.25,111.25v7.07l4.18,4.18h7.07v-7.07l-4.18-4.18H71.25z"/>'; }
	if ($y3) { echo '<polygon id="Y3" fill="' . htmlspecialchars($y3) . '" points="90,91.77 95,96.77 95,123.23 90,128.23 85,123.23 85,96.77"/>'; }
	if ($u4) { echo '<polygon id="U4" fill="' . htmlspecialchars($u4) . '" points="48.23,130 43.23,135 16.77,135 11.77,130 16.77,125 43.23,125"/>'; }
	if ($v4) { echo '<polygon id="V4" fill="' . htmlspecialchars($v4) . '" points="48.23,90 43.23,95 16.77,95 11.77,90 16.77,85 43.23,85"/>'; }
	if ($w4) { echo '<path id="W4" fill="' . htmlspecialchars($w4) . '" d="M21.68,108.75l-4.18-4.18V97.5h7.07l4.18,4.18v7.07H21.68z M31.25,111.25v7.07l4.18,4.18h7.07v-7.07l-4.18-4.18H31.25z"/>'; }
	if ($x4) { echo '<path id="X4" fill="' . htmlspecialchars($x4) . '" d="M42.5,97.5v7.07l-4.18,4.18h-7.07v-7.07l4.18-4.18H42.5z M28.75,111.25h-7.07l-4.18,4.18v7.07h7.07l4.18-4.18V111.25z"/>'; }
	if ($y4) { echo '<polygon id="Y4" fill="' . htmlspecialchars($y4) . '" points="10,91.77 15,96.77 15,123.23 10,128.23 5,123.23 5,96.77"/>'; }
	if ($z1) { echo '<polygon id="Z1" fill="' . htmlspecialchars($z1) . '" points="50,11.771 55,16.77 55,43.23 50,48.23 45,43.23 45,16.77"/>'; }
	if ($z2) { echo '<polygon id="Z2" fill="' . htmlspecialchars($z2) . '" points="50,51.771 55,56.77 55,83.23 50,88.23 45,83.23 45,56.77"/>'; }
	if ($z3) { echo '<polygon id="Z3" fill="' . htmlspecialchars($z3) . '" points="50,91.77 55,96.77 55,123.23 50,128.23 45,123.23 45,96.77"/>'; }
}

elseif ($segments == 'm' || $segments == 'mtx' || $segments == 'matrix') {
	$a1 = (($dv & 0x000000001) || (strpos($ds, 'a1') !== false)) ? $lampcolor : $blankcolor;
	$b1 = (($dv & 0x000000002) || (strpos($ds, 'b1') !== false)) ? $lampcolor : $blankcolor;
	$c1 = (($dv & 0x000000004) || (strpos($ds, 'c1') !== false)) ? $lampcolor : $blankcolor;
	$d1 = (($dv & 0x000000008) || (strpos($ds, 'd1') !== false)) ? $lampcolor : $blankcolor;
	$e1 = (($dv & 0x000000010) || (strpos($ds, 'e1') !== false)) ? $lampcolor : $blankcolor;
	$a2 = (($dv & 0x000000020) || (strpos($ds, 'a2') !== false)) ? $lampcolor : $blankcolor;
	$b2 = (($dv & 0x000000040) || (strpos($ds, 'b2') !== false)) ? $lampcolor : $blankcolor;
	$c2 = (($dv & 0x000000080) || (strpos($ds, 'c2') !== false)) ? $lampcolor : $blankcolor;
	$d2 = (($dv & 0x000000100) || (strpos($ds, 'd2') !== false)) ? $lampcolor : $blankcolor;
	$e2 = (($dv & 0x000000200) || (strpos($ds, 'e2') !== false)) ? $lampcolor : $blankcolor;
	$a3 = (($dv & 0x000000400) || (strpos($ds, 'a3') !== false)) ? $lampcolor : $blankcolor;
	$b3 = (($dv & 0x000000800) || (strpos($ds, 'b3') !== false)) ? $lampcolor : $blankcolor;
	$c3 = (($dv & 0x000001000) || (strpos($ds, 'c3') !== false)) ? $lampcolor : $blankcolor;
	$d3 = (($dv & 0x000002000) || (strpos($ds, 'd3') !== false)) ? $lampcolor : $blankcolor;
	$e3 = (($dv & 0x000004000) || (strpos($ds, 'e3') !== false)) ? $lampcolor : $blankcolor;
	$a4 = (($dv & 0x000008000) || (strpos($ds, 'a4') !== false)) ? $lampcolor : $blankcolor;
	$b4 = (($dv & 0x000010000) || (strpos($ds, 'b4') !== false)) ? $lampcolor : $blankcolor;
	$c4 = (($dv & 0x000020000) || (strpos($ds, 'c4') !== false)) ? $lampcolor : $blankcolor;
	$d4 = (($dv & 0x000040000) || (strpos($ds, 'd4') !== false)) ? $lampcolor : $blankcolor;
	$e4 = (($dv & 0x000080000) || (strpos($ds, 'e4') !== false)) ? $lampcolor : $blankcolor;
	$a5 = (($dv & 0x000100000) || (strpos($ds, 'a5') !== false)) ? $lampcolor : $blankcolor;
	$b5 = (($dv & 0x000200000) || (strpos($ds, 'b5') !== false)) ? $lampcolor : $blankcolor;
	$c5 = (($dv & 0x000400000) || (strpos($ds, 'c5') !== false)) ? $lampcolor : $blankcolor;
	$d5 = (($dv & 0x000800000) || (strpos($ds, 'd5') !== false)) ? $lampcolor : $blankcolor;
	$e5 = (($dv & 0x001000000) || (strpos($ds, 'e5') !== false)) ? $lampcolor : $blankcolor;
	$a6 = (($dv & 0x002000000) || (strpos($ds, 'a6') !== false)) ? $lampcolor : $blankcolor;
	$b6 = (($dv & 0x004000000) || (strpos($ds, 'b6') !== false)) ? $lampcolor : $blankcolor;
	$c6 = (($dv & 0x008000000) || (strpos($ds, 'c6') !== false)) ? $lampcolor : $blankcolor;
	$d6 = (($dv & 0x010000000) || (strpos($ds, 'd6') !== false)) ? $lampcolor : $blankcolor;
	$e6 = (($dv & 0x020000000) || (strpos($ds, 'e6') !== false)) ? $lampcolor : $blankcolor;
	$a7 = (($dv & 0x040000000) || (strpos($ds, 'a7') !== false)) ? $lampcolor : $blankcolor;
	$b7 = (($dv & 0x080000000) || (strpos($ds, 'b7') !== false)) ? $lampcolor : $blankcolor;
	$c7 = (($dv & 0x100000000) || (strpos($ds, 'c7') !== false)) ? $lampcolor : $blankcolor;
	$d7 = (($dv & 0x200000000) || (strpos($ds, 'd7') !== false)) ? $lampcolor : $blankcolor;
	$e7 = (($dv & 0x400000000) || (strpos($ds, 'e7') !== false)) ? $lampcolor : $blankcolor;
	if ($a1) { echo '<circle id="A1" fill="' . htmlspecialchars($a1) . '" cx="10" cy="10" r="7.5"/>'; }
	if ($b1) { echo '<circle id="B1" fill="' . htmlspecialchars($b1) . '" cx="30" cy="10" r="7.5"/>'; }
	if ($c1) { echo '<circle id="C1" fill="' . htmlspecialchars($c1) . '" cx="50" cy="10" r="7.5"/>'; }
	if ($d1) { echo '<circle id="D1" fill="' . htmlspecialchars($d1) . '" cx="70" cy="10" r="7.5"/>'; }
	if ($e1) { echo '<circle id="E1" fill="' . htmlspecialchars($e1) . '" cx="90" cy="10" r="7.5"/>'; }
	if ($a2) { echo '<circle id="A2" fill="' . htmlspecialchars($a2) . '" cx="10" cy="30" r="7.5"/>'; }
	if ($b2) { echo '<circle id="B2" fill="' . htmlspecialchars($b2) . '" cx="30" cy="30" r="7.5"/>'; }
	if ($c2) { echo '<circle id="C2" fill="' . htmlspecialchars($c2) . '" cx="50" cy="30" r="7.5"/>'; }
	if ($d2) { echo '<circle id="D2" fill="' . htmlspecialchars($d2) . '" cx="70" cy="30" r="7.5"/>'; }
	if ($e2) { echo '<circle id="E2" fill="' . htmlspecialchars($e2) . '" cx="90" cy="30" r="7.5"/>'; }
	if ($a3) { echo '<circle id="A3" fill="' . htmlspecialchars($a3) . '" cx="10" cy="50" r="7.5"/>'; }
	if ($b3) { echo '<circle id="B3" fill="' . htmlspecialchars($b3) . '" cx="30" cy="50" r="7.5"/>'; }
	if ($c3) { echo '<circle id="C3" fill="' . htmlspecialchars($c3) . '" cx="50" cy="50" r="7.5"/>'; }
	if ($d3) { echo '<circle id="D3" fill="' . htmlspecialchars($d3) . '" cx="70" cy="50" r="7.5"/>'; }
	if ($e3) { echo '<circle id="E3" fill="' . htmlspecialchars($e3) . '" cx="90" cy="50" r="7.5"/>'; }
	if ($a4) { echo '<circle id="A4" fill="' . htmlspecialchars($a4) . '" cx="10" cy="70" r="7.5"/>'; }
	if ($b4) { echo '<circle id="B4" fill="' . htmlspecialchars($b4) . '" cx="30" cy="70" r="7.5"/>'; }
	if ($c4) { echo '<circle id="C4" fill="' . htmlspecialchars($c4) . '" cx="50" cy="70" r="7.5"/>'; }
	if ($d4) { echo '<circle id="D4" fill="' . htmlspecialchars($d4) . '" cx="70" cy="70" r="7.5"/>'; }
	if ($e4) { echo '<circle id="E4" fill="' . htmlspecialchars($e4) . '" cx="90" cy="70" r="7.5"/>'; }
	if ($a5) { echo '<circle id="A5" fill="' . htmlspecialchars($a5) . '" cx="10" cy="90" r="7.5"/>'; }
	if ($b5) { echo '<circle id="B5" fill="' . htmlspecialchars($b5) . '" cx="30" cy="90" r="7.5"/>'; }
	if ($c5) { echo '<circle id="C5" fill="' . htmlspecialchars($c5) . '" cx="50" cy="90" r="7.5"/>'; }
	if ($d5) { echo '<circle id="D5" fill="' . htmlspecialchars($d5) . '" cx="70" cy="90" r="7.5"/>'; }
	if ($e5) { echo '<circle id="E5" fill="' . htmlspecialchars($e5) . '" cx="90" cy="90" r="7.5"/>'; }
	if ($a6) { echo '<circle id="A6" fill="' . htmlspecialchars($a6) . '" cx="10" cy="110" r="7.5"/>'; }
	if ($b6) { echo '<circle id="B6" fill="' . htmlspecialchars($b6) . '" cx="30" cy="110" r="7.5"/>'; }
	if ($c6) { echo '<circle id="C6" fill="' . htmlspecialchars($c6) . '" cx="50" cy="110" r="7.5"/>'; }
	if ($d6) { echo '<circle id="D6" fill="' . htmlspecialchars($d6) . '" cx="70" cy="110" r="7.5"/>'; }
	if ($e6) { echo '<circle id="E6" fill="' . htmlspecialchars($e6) . '" cx="90" cy="110" r="7.5"/>'; }
	if ($a7) { echo '<circle id="A7" fill="' . htmlspecialchars($a7) . '" cx="10" cy="130" r="7.5"/>'; }
	if ($b7) { echo '<circle id="B7" fill="' . htmlspecialchars($b7) . '" cx="30" cy="130" r="7.5"/>'; }
	if ($c7) { echo '<circle id="C7" fill="' . htmlspecialchars($c7) . '" cx="50" cy="130" r="7.5"/>'; }
	if ($d7) { echo '<circle id="D7" fill="' . htmlspecialchars($d7) . '" cx="70" cy="130" r="7.5"/>'; }
	if ($e7) { echo '<circle id="E7" fill="' . htmlspecialchars($e7) . '" cx="90" cy="130" r="7.5"/>'; }
}

elseif ($segments == 'b' || $segments == 'bar' || $segments == 'bargraph') {
	$a = (($dv & 0x001) || (strpos($ds, 'a') !== false)) ? $lampcolor : $blankcolor;
	$b = (($dv & 0x002) || (strpos($ds, 'b') !== false)) ? $lampcolor : $blankcolor;
	$c = (($dv & 0x004) || (strpos($ds, 'c') !== false)) ? $lampcolor : $blankcolor;
	$d = (($dv & 0x008) || (strpos($ds, 'd') !== false)) ? $lampcolor : $blankcolor;
	$e = (($dv & 0x010) || (strpos($ds, 'e') !== false)) ? $lampcolor : $blankcolor;
	$f = (($dv & 0x020) || (strpos($ds, 'f') !== false)) ? $lampcolor : $blankcolor;
	$g = (($dv & 0x040) || (strpos($ds, 'g') !== false)) ? $lampcolor : $blankcolor;
	$h = (($dv & 0x080) || (strpos($ds, 'h') !== false)) ? $lampcolor : $blankcolor;
	$j = (($dv & 0x100) || (strpos($ds, 'j') !== false)) ? $lampcolor : $blankcolor;
	$k = (($dv & 0x200) || (strpos($ds, 'k') !== false)) ? $lampcolor : $blankcolor;
	if ($a) { echo '<rect id="a" x="10" y="2.5" fill="' . htmlspecialchars($a) . '" width="80" height="11.25"/>'; }
	if ($b) { echo '<rect id="b" x="10" y="16.25" fill="' . htmlspecialchars($b) . '" width="80" height="11.25"/>'; }
	if ($c) { echo '<rect id="c" x="10" y="30" fill="' . htmlspecialchars($c) . '" width="80" height="11.25"/>'; }
	if ($d) { echo '<rect id="d" x="10" y="43.75" fill="' . htmlspecialchars($d) . '" width="80" height="11.25"/>'; }
	if ($e) { echo '<rect id="e" x="10" y="57.5" fill="' . htmlspecialchars($e) . '" width="80" height="11.25"/>'; }
	if ($f) { echo '<rect id="f" x="10" y="71.25" fill="' . htmlspecialchars($f) . '" width="80" height="11.25"/>'; }
	if ($g) { echo '<rect id="g" x="10" y="85" fill="' . htmlspecialchars($g) . '" width="80" height="11.25"/>'; }
	if ($h) { echo '<rect id="h" x="10" y="98.75" fill="' . htmlspecialchars($h) . '" width="80" height="11.25"/>'; }
	if ($j) { echo '<rect id="j" x="10" y="112.5" fill="' . htmlspecialchars($j) . '" width="80" height="11.25"/>'; }
	if ($k) { echo '<rect id="k" x="10" y="126.25" fill="' . htmlspecialchars($k) . '" width="80" height="11.25"/>'; }
}

elseif ($segments == '16') {
	$a1 = (($dv & 0x0001) || (strpos($ds, 'a1') !== false)) ? $lampcolor : $blankcolor;
	$a2 = (($dv & 0x0002) || (strpos($ds, 'a2') !== false)) ? $lampcolor : $blankcolor;
	$b  = (($dv & 0x0004) || (strpos($ds, 'b' ) !== false)) ? $lampcolor : $blankcolor;
	$c  = (($dv & 0x0008) || (strpos($ds, 'c' ) !== false)) ? $lampcolor : $blankcolor;
	$d1 = (($dv & 0x0010) || (strpos($ds, 'd1') !== false)) ? $lampcolor : $blankcolor;
	$d2 = (($dv & 0x0020) || (strpos($ds, 'd2') !== false)) ? $lampcolor : $blankcolor;
	$e  = (($dv & 0x0040) || (strpos($ds, 'e' ) !== false)) ? $lampcolor : $blankcolor;
	$f  = (($dv & 0x0080) || (strpos($ds, 'f' ) !== false)) ? $lampcolor : $blankcolor;
	$g1 = (($dv & 0x0100) || (strpos($ds, 'g1') !== false)) ? $lampcolor : $blankcolor;
	$g2 = (($dv & 0x0200) || (strpos($ds, 'g2') !== false)) ? $lampcolor : $blankcolor;
	$h  = (($dv & 0x0400) || (strpos($ds, 'h' ) !== false)) ? $lampcolor : $blankcolor;
	$j  = (($dv & 0x0800) || (strpos($ds, 'j' ) !== false)) ? $lampcolor : $blankcolor;
	$k  = (($dv & 0x1000) || (strpos($ds, 'k' ) !== false)) ? $lampcolor : $blankcolor;
	$l  = (($dv & 0x2000) || (strpos($ds, 'l' ) !== false)) ? $lampcolor : $blankcolor;
	$m  = (($dv & 0x4000) || (strpos($ds, 'm' ) !== false)) ? $lampcolor : $blankcolor;
	$n  = (($dv & 0x8000) || (strpos($ds, 'n' ) !== false)) ? $lampcolor : $blankcolor;
	if ($a1) { echo '<polygon id="a1" fill="' . htmlspecialchars($a1) . '" points="48.23,10 43.23,15 16.77,15 11.77,10 16.77,5 43.23,5"/>'; }
	if ($a2) { echo '<polygon id="a2" fill="' . htmlspecialchars($a2) . '" points="88.23,10 83.23,15 56.77,15 51.77,10 56.77,5 83.23,5"/>'; }
	if ($b) { echo '<polygon id="b" fill="' . htmlspecialchars($b) . '" points="90,11.771 95,16.77 95,63.23 90,68.23 85,63.23 85,16.77"/>'; }
	if ($c) { echo '<polygon id="c" fill="' . htmlspecialchars($c) . '" points="90,71.77 95,76.77 95,123.23 90,128.23 85,123.23 85,76.77"/>'; }
	if ($d1) { echo '<polygon id="d1" fill="' . htmlspecialchars($d1) . '" points="48.23,130 43.23,135 16.77,135 11.77,130 16.77,125 43.23,125"/>'; }
	if ($d2) { echo '<polygon id="d2" fill="' . htmlspecialchars($d2) . '" points="88.23,130 83.23,135 56.77,135 51.77,130 56.77,125 83.23,125"/>'; }
	if ($e) { echo '<polygon id="e" fill="' . htmlspecialchars($e) . '" points="10,71.77 15,76.77 15,123.23 10,128.23 5,123.23 5,76.77"/>'; }
	if ($f) { echo '<polygon id="f" fill="' . htmlspecialchars($f) . '" points="10,11.77 15,16.77 15,63.23 10,68.23 5,63.23 5,16.77"/>'; }
	if ($g1) { echo '<polygon id="g1" fill="' . htmlspecialchars($g1) . '" points="48.23,70 43.23,75 16.77,75 11.77,70 16.77,65 43.23,65"/>'; }
	if ($g2) { echo '<polygon id="g2" fill="' . htmlspecialchars($g2) . '" points="88.23,70 83.23,75 56.77,75 51.77,70 56.77,65 83.23,65"/>'; }
	if ($h) { echo '<polygon id="h" fill="' . htmlspecialchars($h) . '" points="23.22,17.5 17.5,17.5 17.5,27.796 36.78,62.5 42.5,62.5 42.5,52.204"/>'; }
	if ($j) { echo '<polygon id="j" fill="' . htmlspecialchars($j) . '" points="50,11.771 55,16.77 55,63.23 50,68.23 45,63.23 45,16.77"/>'; }
	if ($k) { echo '<polygon id="k" fill="' . htmlspecialchars($k) . '" points="76.78,17.5 82.5,17.5 82.5,27.796 63.22,62.5 57.5,62.5 57.5,52.204"/>'; }
	if ($l) { echo '<polygon id="l" fill="' . htmlspecialchars($l) . '" points="36.78,77.5 42.5,77.5 42.5,87.796 23.22,122.5 17.5,122.5 17.5,112.204"/>'; }
	if ($m) { echo '<polygon id="m" fill="' . htmlspecialchars($m) . '" points="50,71.77 55,76.77 55,123.23 50,128.23 45,123.23 45,76.77"/>'; }
	if ($n) { echo '<polygon id="n" fill="' . htmlspecialchars($n) . '" points="63.22,77.5 57.5,77.5 57.5,87.796 76.78,122.5 82.5,122.5 82.5,112.204"/>'; }
}

elseif ($segments == '14') {
	$a  = (($dv & 0x0001) || (strpos($ds, 'a' ) !== false)) ? $lampcolor : $blankcolor;
	$b  = (($dv & 0x0002) || (strpos($ds, 'b' ) !== false)) ? $lampcolor : $blankcolor;
	$c  = (($dv & 0x0004) || (strpos($ds, 'c' ) !== false)) ? $lampcolor : $blankcolor;
	$d  = (($dv & 0x0008) || (strpos($ds, 'd' ) !== false)) ? $lampcolor : $blankcolor;
	$e  = (($dv & 0x0010) || (strpos($ds, 'e' ) !== false)) ? $lampcolor : $blankcolor;
	$f  = (($dv & 0x0020) || (strpos($ds, 'f' ) !== false)) ? $lampcolor : $blankcolor;
	$g1 = (($dv & 0x0040) || (strpos($ds, 'g1') !== false)) ? $lampcolor : $blankcolor;
	$g2 = (($dv & 0x0080) || (strpos($ds, 'g2') !== false)) ? $lampcolor : $blankcolor;
	$h  = (($dv & 0x0100) || (strpos($ds, 'h' ) !== false)) ? $lampcolor : $blankcolor;
	$j  = (($dv & 0x0200) || (strpos($ds, 'j' ) !== false)) ? $lampcolor : $blankcolor;
	$k  = (($dv & 0x0400) || (strpos($ds, 'k' ) !== false)) ? $lampcolor : $blankcolor;
	$l  = (($dv & 0x0800) || (strpos($ds, 'l' ) !== false)) ? $lampcolor : $blankcolor;
	$m  = (($dv & 0x1000) || (strpos($ds, 'm' ) !== false)) ? $lampcolor : $blankcolor;
	$n  = (($dv & 0x2000) || (strpos($ds, 'n' ) !== false)) ? $lampcolor : $blankcolor;
	if ($a) { echo '<polygon id="a" fill="' . htmlspecialchars($a) . '" points="88.23,10 83.23,15 16.77,15 11.77,10 16.77,5 83.23,5"/>'; }
	if ($b) { echo '<polygon id="b" fill="' . htmlspecialchars($b) . '" points="90,11.771 95,16.77 95,63.23 90,68.23 85,63.23 85,16.77"/>'; }
	if ($c) { echo '<polygon id="c" fill="' . htmlspecialchars($c) . '" points="90,71.77 95,76.77 95,123.23 90,128.23 85,123.23 85,76.77"/>'; }
	if ($d) { echo '<polygon id="d" fill="' . htmlspecialchars($d) . '" points="88.23,130 83.23,135 16.77,135 11.77,130 16.77,125 83.23,125"/>'; }
	if ($e) { echo '<polygon id="e" fill="' . htmlspecialchars($e) . '" points="10,71.77 15,76.77 15,123.23 10,128.23 5,123.23 5,76.77"/>'; }
	if ($f) { echo '<polygon id="f" fill="' . htmlspecialchars($f) . '" points="10,11.77 15,16.77 15,63.23 10,68.23 5,63.23 5,16.77"/>'; }
	if ($g1) { echo '<polygon id="g1" fill="' . htmlspecialchars($g1) . '" points="48.23,70 43.23,75 16.77,75 11.77,70 16.77,65 43.23,65"/>'; }
	if ($g2) { echo '<polygon id="g2" fill="' . htmlspecialchars($g2) . '" points="88.23,70 83.23,75 56.77,75 51.77,70 56.77,65 83.23,65"/>'; }
	if ($h) { echo '<polygon id="h" fill="' . htmlspecialchars($h) . '" points="23.22,17.5 17.5,17.5 17.5,27.796 36.78,62.5 42.5,62.5 42.5,52.204"/>'; }
	if ($j) { echo '<polygon id="j" fill="' . htmlspecialchars($j) . '" points="55,17.5 55,63.23 50,68.23 45,63.23 45,17.5"/>'; }
	if ($k) { echo '<polygon id="k" fill="' . htmlspecialchars($k) . '" points="76.78,17.5 82.5,17.5 82.5,27.796 63.22,62.5 57.5,62.5 57.5,52.204"/>'; }
	if ($l) { echo '<polygon id="l" fill="' . htmlspecialchars($l) . '" points="36.78,77.5 42.5,77.5 42.5,87.796 23.22,122.5 17.5,122.5 17.5,112.204"/>'; }
	if ($m) { echo '<polygon id="m" fill="' . htmlspecialchars($m) . '" points="50,71.77 55,76.77 55,122.5 45,122.5 45,76.77"/>'; }
	if ($n) { echo '<polygon id="n" fill="' . htmlspecialchars($n) . '" points="63.22,77.5 57.5,77.5 57.5,87.796 76.78,122.5 82.5,122.5 82.5,112.204"/>'; }
}

else {
	$a = (($dv & 0x01) || (strpos($ds, 'a') !== false)) ? $lampcolor : $blankcolor;
	$b = (($dv & 0x02) || (strpos($ds, 'b') !== false)) ? $lampcolor : $blankcolor;
	$c = (($dv & 0x04) || (strpos($ds, 'c') !== false)) ? $lampcolor : $blankcolor;
	$d = (($dv & 0x08) || (strpos($ds, 'd') !== false)) ? $lampcolor : $blankcolor;
	$e = (($dv & 0x10) || (strpos($ds, 'e') !== false)) ? $lampcolor : $blankcolor;
	$f = (($dv & 0x20) || (strpos($ds, 'f') !== false)) ? $lampcolor : $blankcolor;
	$g = (($dv & 0x40) || (strpos($ds, 'g') !== false)) ? $lampcolor : $blankcolor;
	if ($a) { echo '<polygon id="a" fill="' . htmlspecialchars($a) . '" points="88.23,10 83.23,15 16.77,15 11.77,10 16.77,5 83.23,5"/>'; }
	if ($b) { echo '<polygon id="b" fill="' . htmlspecialchars($b) . '" points="90,11.771 95,16.77 95,63.23 90,68.23 85,63.23 85,16.77"/>'; }
	if ($c) { echo '<polygon id="c" fill="' . htmlspecialchars($c) . '" points="90,71.77 95,76.77 95,123.23 90,128.23 85,123.23 85,76.77"/>'; }
	if ($d) { echo '<polygon id="d" fill="' . htmlspecialchars($d) . '" points="88.23,130 83.23,135 16.77,135 11.77,130 16.77,125 83.23,125"/>'; }
	if ($e) { echo '<polygon id="e" fill="' . htmlspecialchars($e) . '" points="10,71.77 15,76.77 15,123.23 10,128.23 5,123.23 5,76.77"/>'; }
	if ($f) { echo '<polygon id="f" fill="' . htmlspecialchars($f) . '" points="10,11.77 15,16.77 15,63.23 10,68.23 5,63.23 5,16.77"/>'; }
	if ($g) { echo '<polygon id="g" fill="' . htmlspecialchars($g) . '" points="88.23,70 83.23,75 16.77,75 11.77,70 16.77,65 83.23,65"/>'; }

	if ($segments == '11') {
		$h = (($dv & 0x080) || (strpos($ds, 'h') !== false)) ? $lampcolor : $blankcolor;
		$k = (($dv & 0x100) || (strpos($ds, 'k') !== false)) ? $lampcolor : $blankcolor;
		$l = (($dv & 0x400) || (strpos($ds, 'l') !== false)) ? $lampcolor : $blankcolor;
		$n = (($dv & 0x200) || (strpos($ds, 'n') !== false)) ? $lampcolor : $blankcolor;
		if ($h) { echo '<polygon id="h1" fill="' . htmlspecialchars($h) . '" points="48.75,38.75 48.75,33.054 26.284,17.5 17.5,17.5 17.5,23.581 39.41,38.75"/>'; }
		if ($h) { echo '<polygon id="h2" fill="' . htmlspecialchars($h) . '" points="51.25,41.25 51.25,46.946 73.716,62.5 82.5,62.5 82.5,56.419 60.59,41.25"/>'; }
		if ($k) { echo '<polygon id="k1" fill="' . htmlspecialchars($k) . '" points="48.75,46.946 48.75,41.25 39.41,41.25 17.5,56.419 17.5,62.5 26.284,62.5"/>'; }
		if ($k) { echo '<polygon id="k2" fill="' . htmlspecialchars($k) . '" points="73.716,17.5 51.25,33.054 51.25,38.75 60.59,38.75 82.5,23.581 82.5,17.5"/>'; }
		if ($l) { echo '<polygon id="l1" fill="' . htmlspecialchars($l) . '" points="48.75,101.25 39.41,101.25 17.5,116.419 17.5,122.5 26.284,122.5 48.75,106.946"/>'; }
		if ($l) { echo '<polygon id="l2" fill="' . htmlspecialchars($l) . '" points="51.25,93.054 51.25,98.75 60.59,98.75 82.5,83.581 82.5,77.5 73.716,77.5"/>'; }
		if ($n) { echo '<polygon id="n1" fill="' . htmlspecialchars($n) . '" points="48.75,98.75 48.75,93.054 26.284,77.5 17.5,77.5 17.5,83.581 39.41,98.75"/>'; }
		if ($n) { echo '<polygon id="n2" fill="' . htmlspecialchars($n) . '" points="51.25,101.25 51.25,106.946 73.716,122.5 82.5,122.5 82.5,116.419 60.59,101.25"/>'; }
	}

	elseif (preg_match('/^((9[hjk][lmn])|(8[hjklmn]))$/', $segments, $group)) {
		$h = (strpos($segments, 'h') === false) ? '' : ((($dv & 0x80) || (strpos($ds, 'h') !== false)) ? $lampcolor : $blankcolor);
		$j = (strpos($segments, 'j') === false) ? '' : ((($dv & 0x80) || (strpos($ds, 'j') !== false)) ? $lampcolor : $blankcolor);
		$k = (strpos($segments, 'k') === false) ? '' : ((($dv & 0x80) || (strpos($ds, 'k') !== false)) ? $lampcolor : $blankcolor);
		$l = (strpos($segments, 'l') === false) ? '' : ((($dv & ($group[3] ? 0x80 : 0x100)) || (strpos($ds, 'l') !== false)) ? $lampcolor : $blankcolor);
		$m = (strpos($segments, 'm') === false) ? '' : ((($dv & ($group[3] ? 0x80 : 0x100)) || (strpos($ds, 'm') !== false)) ? $lampcolor : $blankcolor);
		$n = (strpos($segments, 'n') === false) ? '' : ((($dv & ($group[3] ? 0x80 : 0x100)) || (strpos($ds, 'n') !== false)) ? $lampcolor : $blankcolor);
		if ($h) { echo '<polygon id="h" fill="' . htmlspecialchars($h) . '" points="73.716,62.5 82.5,62.5 82.5,56.419 26.284,17.5 17.5,17.5 17.5,23.581"/>'; }
		if ($j) { echo '<rect id="j" x="45" y="17.5" fill="' . htmlspecialchars($j) . '" width="10" height="45"/>'; }
		if ($k) { echo '<polygon id="k" fill="' . htmlspecialchars($k) . '" points="82.5,23.581 82.5,17.5 73.716,17.5 17.5,56.419 17.5,62.5 26.284,62.5"/>'; }
		if ($l) { echo '<polygon id="l" fill="' . htmlspecialchars($l) . '" points="82.5,83.581 82.5,77.5 73.716,77.5 17.5,116.419 17.5,122.5 26.284,122.5"/>'; }
		if ($m) { echo '<rect id="m" x="45" y="77.5" fill="' . htmlspecialchars($m) . '" width="10" height="45"/>'; }
		if ($n) { echo '<polygon id="n" fill="' . htmlspecialchars($n) . '" points="73.716,122.5 82.5,122.5 82.5,116.419 26.284,77.5 17.5,77.5 17.5,83.581"/>'; }
	}
}


echo '</svg>';