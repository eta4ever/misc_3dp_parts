$fa=5; $fs=0.1;

int_dim=22.5;
wall=2.5;
ext_dim=int_dim + 2*wall;
height=10;
length=80;
tooth=(int_dim-20)/2;
tooth_add=3;

difference(){
 
 hull(){
    cylinder(h=height, r=ext_dim/2, center=true);
    translate([length-0.5, 0, 0]) cube([1, ext_dim, height], center=true);
 }//hull   
 
 union(){
     hull(){
         cylinder(h=height+0.01, r=int_dim/2, center=true);
         translate([length-(wall+tooth)-1-tooth_add, 0,0]) cube([1, int_dim, height+0.01], center=true);
     }//hull
     
     translate([length, 0, 0]) rotate([0,0,45]) cube([ext_dim/sqrt(2),ext_dim/sqrt(2),height+0.01], center=true); // зубы
     translate([length, 0, 0]) cube([50, int_dim-2*tooth, height+0.01], center=true); // усиление зубов
     
 }//union  
}//diff