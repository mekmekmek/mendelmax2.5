l1=50;
l2=35;
h=20;
r5=2.5*1.08;
r3=1.5*1.08;
rotate([270,0,0]){
difference(){
cube([l1,l2,h]);
translate([16,-14,0]){cube([l1,l2,h]);}
translate([16,0,h/2]){cube([l1,l2,h]);}
translate([-37,-3,-3]){cube([l1,l2,h]);}
translate([7,28,0]){cylinder(2*h,r3,r3,true);}
translate([7,8,0]){cylinder(2*h,r3,r3,true);}

translate([25,28,0]){cylinder(2*h,r5,r5,true);}
translate([40,28,0]){cylinder(2*h,r5,r5,true);}
}
}
//1.8