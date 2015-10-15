fa=5; $fs=0.1;

difference(){

union(){
difference(){

union(){
    cylinder(h=10, r=21.5, center=true);

    hull(){
        cylinder(h=10, r=8, center=true);
        translate([48,0,0]) cylinder(h=10, r=8, center=true);
    }
    

 
difference(){
 
        translate([0,0,10]) cylinder(h=10, r= 21.5, center=true);
        translate([0,0,10]) cylinder(h=10.01, r= 21.5-3, center=true);
    
    
}

translate([0,0,10]) cylinder(h=10, r1= 15, r2=9, center=true);
}


translate([-12, 0, 15]) rotate([0, -25,0 ]) cube([40,50,10], center=true);
}

translate([0,0,10]) cube([18,18,10], center=true);
}

translate([0,0,10]) cube([10,10,10.01], center=true);
cylinder(h=10.01, r=2, center=true);

}