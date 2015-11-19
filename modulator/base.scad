//$fa=5; $fs=0.1;

// стыкабельное основание
module base(){
	difference(){
		union(){
			cube([35,35,3], center=true);	 // база
			translate([0, 0, 3]) cylinder(h=3, r=10, center=true);
			translate([-19.5, 0, 0]) cylinder(h=3, r=5, center=true); // выступы
			translate([0, -19.5, 0]) cylinder(h=3, r=5, center=true);
		}

		union(){
			translate([15.5, 0, 0]) cylinder(h=3.2, r=5, center=true); // прорези
			translate([0, 15.5, 0]) cylinder(h=3.2, r=5, center=true);
		}
	}
}

base();