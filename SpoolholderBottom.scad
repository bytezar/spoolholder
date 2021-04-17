include <SpoolholderVars.scad>

difference()
{
	union()
	{
		//Nut holders (cylinders):
		for(t=[-1,1])
		{
			translate([t*length/2,0,0])
			cylinder(d=nutM8HolderDiameter,h=bottomHeight,$fn=32);
		}
		
		//Connectors:
		for(y=[-nutM8HolderRadius,nutM8HolderRadius-connectorThickness])
		{
			translate([-length/2,y,0])
			cube([length,connectorThickness,bottomHeight]);
		}
	}
	
	for(t=[-1,1])
	{
		//Holes for M8 rod:
		translate([t*length/2,0,-1])
		cylinder(d=rodM8Diameter,h=bottomHeight+2,$fn=32);
		
		//Holes for M8 nuts:
		translate([t*length/2,0,bottomHeight-bottomNutM8HoleHeight])
		cylinder(d=nutM8Diameter,h=bottomNutM8HoleHeight+1,$fn=6);
	}
}
