$fa=5; $fs=0.1;

difference(){
	union(){
		cube([14, 10, 8]);
		translate([4.5, 10, 0]) cube([5, 8, 12]);
	}
	union(){
		
		// скругленное
		translate([2.25, 10, 4]) cylinder(h=8.1, r=2.25, center=true);
		translate([0, 10-2.25, 0]) cube([2.25, 2.25, 8.1]);
		translate([2.25+9.5, 10, 4]) cylinder(h=8.1, r=2.25, center=true);
		translate([9.5+2.25, 10-2.25, 0]) cube([2.25, 2.25, 8.1]);

		// прорезь в ручке
		translate([7, 14, 12-0.5]) cube([1.5, 10, 1], center=true);
		translate([7, 18-0.5, 6]) cube([1.5, 1, 12], center=true);

		// вырез под железяку
	    translate([7, 4, 4]) cube([4, 8, 1], center=true);

		
	}
}