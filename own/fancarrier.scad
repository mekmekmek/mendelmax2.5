d=4; //thickness

car_hole_d=5; //Carrierhole diameter
car_hole_gap=50; //e

car_at_l=90;
car_at_b=14;

car_tot_b=100;
car_tot_h=60;
fan_gap=80;

if (car_hole_gap>car_at_l){
 echo("gap bigger material");
}
else{
//////////////////////////////////////////////////////////////////////////
difference(){
	cube([car_at_l,car_at_b,d],true);
	for(i=[-1,1]){
		translate([i*0.5*car_hole_gap,0,0]){
			cylinder(d*2,car_hole_d/1.99,car_hole_d/1.99,true,$fn=100);
		}
	}
}
////////////////////////////////////////////////////////////////////////
difference(){
	translate([(car_at_l+d)/2,0,-car_tot_h/2+d/2]){
		cube([d,car_tot_b,car_tot_h],true);
	}
	for(i=[-1,1]){
		hull(){
			translate([(car_at_l+d)/2,i*fan_gap*0.5,-0.2*car_tot_h]){	rotate([0,90,0]){
				cylinder(d*2,car_hole_d/1.99,car_hole_d/1.99,true,$fn=100);
			}}
			translate([(car_at_l+d)/2,i*fan_gap*0.5,-0.8*car_tot_h]){	rotate([0,90,0]){
				cylinder(d*2,car_hole_d/1.99,car_hole_d/1.99,true,$fn=100);
			}}
		}
	}
	hull(){for(i=[-4,4],k=[1,6]){
		translate([((car_at_l+d)/2),(i/6)*fan_gap*0.5,-car_tot_h*(k/6)]){	rotate([0,90,0]){
				cylinder(d*2,car_hole_d/1.99,car_hole_d/1.99,true,$fn=100);
		}}
	}}
}}