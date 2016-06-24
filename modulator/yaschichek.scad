$fa=5; $fs=0.1;

// параметры рамы ящиков
step=17.5;
boxW=step*8-10;
cellH=20;
cellW=(boxW-15)/4;
offsY=-step*2+5;
depth=step*4-5;

// параметры ящиков
W=cellW-1; 
H=cellH-1;
L=depth-1;
wall=2;

R=2; // радиус сферы скругления

module box(){

difference(){
	union(){
		hull(){ //внешнее
			translate([-W/2+R, -L/2+R, R]) sphere(r=R, center=true);
			translate([W/2-R, -L/2+R, R]) sphere(r=R, center=true);
			translate([-W/2+R, L/2-R, R]) sphere(r=R, center=true);
			translate([W/2-R, L/2-R, R]) sphere(r=R, center=true);

			translate([-W/2+R, -L/2+R, H-R]) sphere(r=R, center=true);
			translate([W/2-R, -L/2+R, H-R]) sphere(r=R, center=true);
			translate([-W/2+R, L/2-R, H-R]) sphere(r=R, center=true);
			translate([W/2-R, L/2-R, H-R]) sphere(r=R, center=true);
		} 

		translate([0, -L/2+3, H/2]) rotate([0, 90, 0]) cylinder(h=3, r=8, center=true); // ручка
	}

	union(){
		translate([0,0,H/2+wall]) cube([W-2*wall, L-2*wall, H-wall], center=true);
	}
}

}

box();