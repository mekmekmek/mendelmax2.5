l1=55;
l2=55;
h=8;
r5=2.5*1.08;
r3=1.5*1.08;
rotate([0,180,0]){
difference(){
cube([l1,l2,h]);
translate([-l1/3,-l2/3,0]){cube([l1,l2,h]);}
translate([l1*2/3,0,-2.5]){cube([l1,l2,h]);}
hull(){for(i=[0:1]){translate([8-(2*(1-i)),38+(5+r5),0]){cylinder(2*h,r5,r5,true);}}}
hull(){for(i=[0:1]){translate([28-(2*(1-i)),38+(5+r5),0]){cylinder(2*h,r5,r5,true);}}}
translate([45,10+(5+r3),0]){cylinder(2*h,r3,r3,true);}
translate([45,30+(5+r3),0]){cylinder(2*h,r3,r3,true);}
}}

//1.8