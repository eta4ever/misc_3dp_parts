$fa=5; $fs=0.1;

use <bigcyl1.scad>;
use <box_4seg.scad>;
use <box_vert_4x2.scad>;
use <note_paper_3seg.scad>;
use <pens4.scad>;
use <spacer.scad>;
use <yaschichek.scad>;

bigcyl1();
translate([70,0,0]) note_paper_3seg();
translate([0,-35,0]) pens4();
translate([35+17.5,-35-17.5,0]) box_4seg();
translate([175+17.5, -17.5, 0]) box_vert_4x2();
translate([35*3, -35,0]) spacer();

translate([145, -17, 5]) box();