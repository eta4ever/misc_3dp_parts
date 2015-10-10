$fa=5; $fs=0.1;

wall=3; // толщина стенки
prof=15; // грань квадратного профиля
lmult=2; // длина уголка = lmult*prof
    
difference()
{
    union() //внешнее
    {    
        cube([lmult*prof, prof+2*wall, prof+2*wall]);
        translate([0,0, prof+2*wall]) cube([prof+2*wall, prof+2*wall, (lmult-1)*prof-2*wall]);    
        translate([0,prof+2*wall, 0]) cube([prof+2*wall, (lmult-1)*prof-2*wall, prof+2*wall]);  
    }
    
    union() //внутреннее
    {
        translate([wall, wall, wall]) cube([lmult*prof-wall+0.01, prof, prof]);
        translate([wall, wall, prof+wall-0.01]) cube([prof, prof, (lmult-1)*prof-wall+0.02]);
        translate([wall, prof+wall-0.01, wall]) cube([prof, (lmult-1)*prof-wall+0.02, prof]);
    }
    
    
}