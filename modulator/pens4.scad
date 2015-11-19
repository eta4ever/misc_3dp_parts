//$fa=5; $fs=0.1;

use <base.scad>;

module penholder(length){
	difference() {cylinder(h=length, r=8, center=true); cylinder(h=length, r=6.5, center=true);}
}

module pens4(){

	base();
	
	rotate([10,10,0]) translate([5,-5, 30]) penholder(50);
	rotate([-10,10,0]) translate([5,5, 30]) penholder(50);
	rotate([10,-10,0]) translate([-5,-5, 30]) penholder(50);
	rotate([-10,-10,0]) translate([-5,5, 30]) penholder(50);
	
	translate([0,0,3]) cylinder(r=15, h=3, center=true);
}

pens4();