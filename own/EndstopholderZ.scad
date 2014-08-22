l1=30;
l2=55;
h=3;
r5=2.5*1.08;
r3=1.5*1.08;
difference(){
cube([l1,l2,h]);
translate([l1/2,-l2/3,0]){cube([l1,l2,h]);}
hull(){for(i=[0:1]){translate([l1-7,38+(5+r5)-(2*(1-i)),0]){cylinder(2*h,r5,r5,true);}}}
hull(){for(i=[0:1]){translate([l1-23,38+(5+r5)-(2*(1-i)),0]){cylinder(2*h,r5,r5,true);}}}
translate([l1-23,(5+r3),0]){cylinder(2*h,r3,r3,true);}
translate([l1-23,20+(5+r3),0]){cylinder(2*h,r3,r3,true);}
}

//1.8