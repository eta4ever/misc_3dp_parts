$fa=5; $fs=0.1;

difference() {
	union() {
		
		translate([0, 4, 12.5]) cube([36, 8, 25], center=true); //m32u4
		translate([0, -3.5, 12.5]) cube([14.5, 7, 25], center=true); //перемычка
		translate([0, -15.5, 12.5]) cube([14.5, 17, 25], center=true); //usb 		
		
	}//un-solid

	union() {

		translate([0, 4, 13.5]) cube([34, 6, 23], center=true); //m32u4
		translate([0, -3, 12.5]) cube([4, 8, 25], center=true); //перемычка
		translate([0, -3, 22.5]) cube([14.5, 3, 5], center=true); // под провода
		translate([0, -10.5, 17]) cube([12.5, 7, 16], center=true); // usbB pins
		translate([0, -19, 19.5]) cube([12.5, 10, 11], center=true); // usbB

	}//un-hole
}//diff