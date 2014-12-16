/*for (i=[0,90]){
	
		difference(){
			cube([20,20,3]);
			translate([10,0,0]){cylinder(10,1.6,1.6,$fn=100);}
		}
	}
}#
*/
rotate([90,90,0]){
difference(){
			cube([20,20,3]);
			translate([10,10,0]){cylinder(10,1.6,1.6,$fn=100);}
		}

difference(){
			rotate([90,0,0]){cube([20,20,3]);}
			translate([10,0,10]){rotate([90,0,0]){cylinder(10,1.6,1.6,$fn=100);}
		}
}
}
//translate([10,0,10])rotate([90,0,0]){cylinder(10,1.6,1.6,$fn=100,true);