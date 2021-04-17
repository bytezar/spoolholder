include <SpoolholderVars.scad>

difference()
{
	union()
	{
		//Vertical nut holders (cylinders):
		for(t=[-1,1])
		{
			translate([t*length/2,0,0])
			cylinder(d=topWidth,h=topHeight,$fn=32);
		}
		
		//Connectors:
		for(t=[[-1,0],[1,1]])
		{
			y=t[0]*topWidth/2-t[1]*connectorThickness;
			
			translate([-length/2,y,0])
			cube([length,connectorThickness,topHeight]);
		}
		
		//Holders for M3 screws:
		for(t=[-1,1])
		{
			x=t*bearingHolderScrewOffset-screwM3HolderRadius;
			
			translate([x,-topWidth/2,0])
			cube([screwM3HolderDiameter,topWidth,topHeight]);
		}
	}
	
	//Holes for M8 rod:
	for(t=[-1,1])
	{
		translate([t*length/2,0,-1])
		cylinder(d=rodM8Diameter,h=topHeight+2,$fn=32);
	}
	
	//Holes for M3 screws:
	for(t=[[-1,1],[-1,-1],[1,1],[1,-1]])
	{
		x=t[0]*bearingHolderScrewOffset;
		y=t[1]*(topWidth-screwM3HolderDiameter)/2;
		
		translate([x,y,-1])
		cylinder(d=screwM3Diameter,h=topHeight+2,$fn=16);
	}
}
