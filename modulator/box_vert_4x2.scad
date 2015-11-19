//$fa=5; $fs=0.1;

use<base.scad>;

step=17.5;
boxW=step*8-10;
cellH=20;
cellW=(boxW-15)/4;
offsY=-step*2+5;
depth=step*4-5;

module cellrow_cut(){
		translate([-step*4+8, offsY, 4.6]) cube([cellW, depth+0.1, cellH]); 
		translate([-step*4+8+3+cellW, offsY, 4.6]) cube([cellW, depth+0.1, cellH]);
		translate([-step*4+8+6+cellW*2, offsY, 4.6]) cube([cellW, depth+0.1, cellH]);
		translate([-step*4+8+9+cellW*3, offsY, 4.6]) cube([cellW, depth+0.1, cellH]);
}

module box_vert_4x2(){

	// восемь паззлов подложки
	translate([-step*3,step,0]) base();
	translate([-step,step,0]) base();
	translate([step,step,0]) base();
	translate([step*3,step,0]) base();
	
	translate([-step*3,-step,0]) base();
	translate([-step,-step,0]) base();
	translate([step,-step,0]) base();
	translate([step*3,-step,0]) base();
	
	//коробка
	difference(){
		translate([-step*4+5, offsY, 1.5]) cube([boxW, depth, (cellH+3)*4+3]); // куб коробки
	
		union(){
			cellrow_cut(); // четыре ряда ячеек
			translate([0, 0, cellH+3]) cellrow_cut();
			translate([0, 0, cellH*2+6]) cellrow_cut();
			translate([0, 0, cellH*3+9]) cellrow_cut();
		}
	
	}
	
	//задние упоры для ящиков
	
	translate([-step*4+5, offsY+depth-2, 4.5+cellH-3]) cube([boxW, 2, 3.1]);
	translate([-step*4+5, offsY+depth-2, 4.5+cellH*2+3-3]) cube([boxW, 2, 3.1]);
	translate([-step*4+5, offsY+depth-2, 4.5+cellH*3+6-3]) cube([boxW, 2, 3.1]);
	translate([-step*4+5, offsY+depth-2, 4.5+cellH*4+9-3]) cube([boxW, 2, 3.1]);
}

box_vert_4x2();

