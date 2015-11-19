$fa=5; $fs=0.1;

use<base.scad>;
translate([-17.5,-17.5,0]) base();
translate([-17.5,17.5,0]) base();
translate([17.5,-17.5,0]) base();
translate([17.5,17.5,0]) base();

difference(){

hull(){
	translate([-17.5,-17.5, 21.5]) cylinder(h=40, r=10, center=true);
	translate([-17.5,17.5, 21.5]) cylinder(h=40, r=10, center=true);
	translate([17.5,-17.5, 21.5]) cylinder(h=40, r=10, center=true);
	translate([17.5,17.5, 21.5]) cylinder(h=40, r=10, center=true);
}

hull(){
	translate([-17.5,-17.5, 25]) cylinder(h=40, r=8, center=true);
	translate([-17.5,17.5, 25]) cylinder(h=40, r=8, center=true);
	translate([17.5,-17.5, 25]) cylinder(h=40, r=8, center=true);
	translate([17.5,17.5, 25]) cylinder(h=40, r=8, center=true);
}

}