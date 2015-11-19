$fa=5; $fs=0.1;

use<base.scad>;
translate([-15,-15,0]) base();
translate([-15,15,0]) base();
translate([15,-15,0]) base();
translate([15,15,0]) base();

difference(){

hull(){
	translate([-15,-15, 21.5]) cylinder(h=40, r=10, center=true);
	translate([-15,15, 21.5]) cylinder(h=40, r=10, center=true);
	translate([15,-15, 21.5]) cylinder(h=40, r=10, center=true);
	translate([15,15, 21.5]) cylinder(h=40, r=10, center=true);
}

hull(){
	translate([-15,-15, 25]) cylinder(h=40, r=8, center=true);
	translate([-15,15, 25]) cylinder(h=40, r=8, center=true);
	translate([15,-15, 25]) cylinder(h=40, r=8, center=true);
	translate([15,15, 25]) cylinder(h=40, r=8, center=true);
}

}