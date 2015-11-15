$fa=5; $fs=0.1;

difference(){
	union(){
		translate([0,0,-1]) cylinder(h=2, r=8.5, center=true);
		translate([0,0,3]) cylinder(h=6, r1=6.75, r2=7, center=true);
	}

	union(){
		translate([0,0,3]) {
			cylinder(h=6, r1=4.5, r2=5.5, center=true);
			cube([14, 2, 6], center=true);
			cube([2, 14, 6], center=true);
		}
	}
}