$fa=5; $fs=0.1;

wall=3; // толщина стенки
rout=2; // радиус скругления внешней оболочки
prof=15; // грань квадратного профиля
lmult=2; // длина уголка = lmult*prof
    
difference()
{
    union() //внешнее
    {    

        hull() //x
        {
            translate([rout, rout, rout]) rotate([0,90,0]) cylinder(h=lmult*prof-rout, r=rout);
            translate([rout, prof+2*wall-rout, rout]) rotate([0,90,0]) cylinder(h=lmult*prof-rout, r=rout);
            translate([rout, rout, prof+2*wall-rout]) rotate([0,90,0]) cylinder(h=lmult*prof-rout, r=rout);
            translate([rout, prof+2*wall-rout, prof+2*wall-rout]) rotate([0,90,0]) cylinder(h=lmult*prof-rout, r=rout);
        }
        
        hull() //z
        {
            translate([rout, rout, rout]) cylinder(h=lmult*prof-rout, r=rout);
            translate([prof+2*wall-rout, rout, rout]) cylinder(h=lmult*prof-rout, r=rout);
            translate([rout, prof+2*wall-rout, rout]) cylinder(h=lmult*prof-rout, r=rout);
            translate([prof+2*wall-rout, prof+2*wall-rout, rout]) cylinder(h=lmult*prof-rout, r=rout);
            
        }
        
        hull() //y
        {
            translate([rout, rout, rout]) rotate([-90,0,0]) cylinder(h=lmult*prof-rout, r=rout);
            translate([prof+2*wall-rout, rout, rout]) rotate([-90,0,0]) cylinder(h=lmult*prof-rout, r=rout);
            translate([rout, rout, prof+2*wall-rout]) rotate([-90,0,0]) cylinder(h=lmult*prof-rout, r=rout);
            translate([prof+2*wall-rout, rout, prof+2*wall-rout]) rotate([-90,0,0]) cylinder(h=lmult*prof-rout, r=rout);
            
        }
        
        translate([rout, rout, rout]) sphere(r=rout); // уголок
        
     
    }
    
    union() //внутреннее
    {
        translate([wall, wall, wall]) cube([lmult*prof-wall+0.01, prof, prof]);
        translate([wall, wall, prof+wall-0.01]) cube([prof, prof, (lmult-1)*prof-wall+0.02]);
        translate([wall, prof+wall-0.01, wall]) cube([prof, (lmult-1)*prof-wall+0.02, prof]);
    }
    
    
}