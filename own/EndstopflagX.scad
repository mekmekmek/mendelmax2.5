


mm=	[
		[11,0,0,				11,0,30],
		[30,0,0,				30,0,30],
		[30,21,0,			30,21,30],
		[0,21,0,				0,21,30]
		];
difference(){
union(){
hull(){
for(i=[0:1]){
		translate([mm[i][0],mm[i][1],mm[i][2]]){cube(1.5);}
		translate([mm[i][3],mm[i][4],mm[i][5]]){cube(1.5);}
}
}


hull(){
for(i=[2:1]){
		translate([mm[i][0],mm[i][1],mm[i][2]]){cube(1.5);}
		translate([mm[i][3],mm[i][4],mm[i][5]]){cube(1.5);}
}
}
hull(){
for(i=[2:3]){
		translate([mm[i][0],mm[i][1],mm[i][2]]){cube(1.5);}
		translate([mm[i][3],mm[i][4],mm[i][5]]){cube(1.5);}
}
}

}
hull(){for(i=[0:1]){
	translate([(mm[3][3])+7+3*i,mm[3][4],(mm[3][5])-4]){rotate([90]){	
		cylinder(15,2.6,2.6,true);
	}}
}}
hull(){for(i=[0:1],k=1){
	translate([(mm[3][3])+7+3*i,mm[3][4],(mm[3][5])-4-k*15]){rotate([90]){	
		cylinder(15,2.6,2.6,true);
	}}
}}
}
//translate([mm[3][3],mm[3][4],(mm[3][5])-15]){rotate([90]){cylinder(2.6,2.6,2.6,true);}}
/*
hull(){
for(i=[0:15]){
	hull(){
		translate([mm[i][0],mm[i][1],mm[i][2]]){cube(1,true);}
		translate([mm[i][3],mm[i][4],mm[i][5]]){cube(1,true);}
}
}
}
}