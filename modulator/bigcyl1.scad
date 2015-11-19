$fa=5; $fs=0.1;

use<base.scad>;
base();

translate([0,0,54.5]) difference(){cylinder(r=15, h=100, center=true); cylinder(r=13, h=100, center=true);}
translate([0,0,3]) cylinder(r1=10, r2=15, h=3, center=true);

