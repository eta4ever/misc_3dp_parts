$fa=5; $fs=0.1;

wall=3; // толщина стенки
rout=2; // радиус скругления внешней оболочки
prof=15; // грань квадратного профиля
lmult=2; // длина уголка = lmult*prof
    
difference()
{
    union() //внешнее
    {    
     //   cube([lmult*prof, prof+2*wall, prof+2*wall]);
     //   translate([0,0, prof+2*wall]) cube([prof+2*wall, prof+2*wall, (lmult-1)*prof-2*wall]);    
     //   translate([0,prof+2*wall, 0]) cube([prof+2*wall, (lmult-1)*prof-2*wall, prof+2*wall]);  
     
        hull() //x
        {
            translate([0, rout, rout]) rotate([0,90,0]) cylinder(h=lmult*prof, r=rout);
            translate([0, prof+2*wall-rout, rout]) rotate([0,90,0]) cylinder(h=lmult*prof, r=rout);
            translate([0, rout, prof+2*wall-rout]) rotate([0,90,0]) cylinder(h=lmult*prof, r=rout);
            translate([0, prof+2*wall-rout, prof+2*wall-rout]) rotate([0,90,0]) cylinder(h=lmult*prof, r=rout);
        }
        
        hull() //z
        {
            translate([rout, rout, prof+2*wall-rout]) cylinder(h=(lmult-1)*prof-2*wall+rout, r=rout);
            translate([prof+2*wall-rout, rout, prof+2*wall-rout]) cylinder(h=(lmult-1)*prof-2*wall+rout, r=rout);
            translate([rout, prof+2*wall-rout, prof+2*wall-rout]) cylinder(h=(lmult-1)*prof-2*wall+rout, r=rout);
            translate([prof+2*wall-rout, prof+2*wall-rout, prof+2*wall-rout]) cylinder(h=(lmult-1)*prof-2*wall+rout, r=rout);
            
        }
        
        hull() //y
        {
            translate([rout, prof+2*wall-rout, rout]) rotate([-90,0,0]) cylinder(h=(lmult-1)*prof-2*wall+rout, r=rout);
            translate([prof+2*wall-rout, prof+2*wall-rout, rout]) rotate([-90,0,0]) cylinder(h=(lmult-1)*prof-2*wall+rout, r=rout);
            translate([rout, prof+2*wall-rout, prof+2*wall-rout]) rotate([-90,0,0]) cylinder(h=(lmult-1)*prof-2*wall+rout, r=rout);
            translate([prof+2*wall-rout, prof+2*wall-rout, prof+2*wall-rout]) rotate([-90,0,0]) cylinder(h=(lmult-1)*prof-2*wall+rout, r=rout);
            
        }
        
     
    }
    
    union() //внутреннее
    {
        translate([wall, wall, wall]) cube([lmult*prof-wall+0.01, prof, prof]);
        translate([wall, wall, prof+wall-0.01]) cube([prof, prof, (lmult-1)*prof-wall+0.02]);
        translate([wall, prof+wall-0.01, wall]) cube([prof, (lmult-1)*prof-wall+0.02, prof]);
    }
    
    
}