$fa=5; $fs=0.1;

difference(){

union(){

difference(){
    cylinder(h=30, r=13.75, center=true);
    cylinder(h=30.01, r=12.6, center=true);
}

intersection(){
    {translate([0, 0, -9.4])
        rotate([0, 25, 0])
        cube([29.7, 27, 1], center=true);}
     
     cylinder(h=30, r=12.7, center=true);
}

translate([12, -5.5, -15])
    cube([27, 11, 12]);
}

translate([11, -4.5, -14])
    cube([27, 9, 11.01]);

translate([13, 0, 5.5])
    cube([5, 9, 19.02], center=true);

translate([40, 0, -14.5])
    rotate([0, -30, 0])
        cube([20,20,1.5], center=true);


translate([13.2+27/2, 0, -3])
    rotate([0, 2, 0])
        cube([27.5, 11.01, 2], center=true);

translate([40, -6, -9.5]){
    rotate([0, 0, 45])
        cube([3, 3, 11], center=true);
    
    translate([0, 12, 0])
        rotate([0, 0, 45])
            cube([3, 3, 11], center=true);
        
}

}

//add 1.5mm
translate([0, 0, 15.75]) 
    difference(){
        cylinder(h=1.5, r=13.75, center=true);
        
        cylinder(h=1.52, r=12.6, center=true);
        translate([12.75,0, 0]) 
            cube([3,9,2], center=true);
}
    
