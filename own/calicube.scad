//calicube by mekmekmek	
wall=1;//[mm]
a=50;//[mm]
h=10;//[mm]
difference(){
cube([a,a,h],true);
cube([a-wall,a-wall,h],true);

}