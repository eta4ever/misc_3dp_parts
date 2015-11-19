$fa=5; $fs=0.1;

use<base.scad>;
translate([-35,0,0]) base();
base();
translate([35,0,0]) base();


difference(){

hull(){
	translate([-45,10, 21.5]) cylinder(h=40, r=4, center=true);
	translate([-45,-10, 21.5])cylinder(h=40, r=4, center=true);
	translate([45,10, 21.5]) cylinder(h=40, r=4, center=true);
	translate([45,-10, 21.5]) cylinder(h=40, r=4, center=true);
}

hull(){
	translate([-43,8, 25]) cylinder(h=40, r=4, center=true);
	translate([-43,-8, 25])cylinder(h=40, r=4, center=true);
	translate([43,8, 25]) cylinder(h=40, r=4, center=true);
	translate([43,-8, 25]) cylinder(h=40, r=4, center=true);
}

}