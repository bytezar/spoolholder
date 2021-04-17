include <SpoolholderVars.scad>

difference()
{
	union()
	{
		cylinder(d=bearingHolderDiameter,h=topWidth,$fn=32);
		
		translate([-bearingHolderRadius,-bearingHolderRadius,0])
		cube([bearingHolderDiameter,bearingHolderRadius,topWidth]);
		
		translate([-bearingHolderLength/2,-bearingHolderRadius,0])
		cube([bearingHolderLength,bearingHolderScrewHolderHeight,topWidth]);
	}
	
	translate([0,0,bearingHolderBottomHeight])
	cylinder(d=bearingDiameter,h=topWidth,$fn=32);
	
	translate([0,0,-1])
	cylinder(d=bearingHolderHoleDiameter,h=topWidth+2,$fn=32);
	
	// Holes for M3 screws
	for(t=[[-1,0,1],[-1,1,-1],[1,0,1],[1,1,-1]])
	{
		x=t[0]*bearingHolderScrewOffset;
		z=t[1]*topWidth+t[2]*screwM3HolderDiameter/2;
		
		translate([x,-bearingHolderRadius-1,z])
		rotate([-90,0,0])
		cylinder(d=screwM3Diameter,h=bearingHolderScrewHolderHeight+2,$fn=16);
	}
}
