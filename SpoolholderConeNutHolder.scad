include <SpoolholderVars.scad>

difference()
{
	union()
	{
		cylinder(d=coneNutHolderWithWallDiameter,h=coneNutHolderTotalHeight,$fn=32);
		
		// Screw holders
		for (t=[[1,0],[-1,0],[0,1],[0,-1]])
		translate([t[0]*coneNutHolderScrewOffset,t[1]*coneNutHolderScrewOffset,0])
		cylinder(d=screwM3HolderDiameter,h=coneNutHolderTotalHeight,$fn=16);
	}
	
	// Rod hole
	translate([0,0,-1])
	cylinder(d=rodM8Diameter,h=coneNutHolderBottomHeight+2,$fn=32);
	
	// Nut hole
	translate([0,0,coneNutHolderBottomHeight])
	cylinder(d=nutM8Diameter,h=coneNutHolderNutM8HoleHeight+1,$fn=6);
	
	// Big hole
	translate([0,0,coneNutHolderBottomHeight+coneNutHolderNutM8HoleHeight])
	cylinder(d=coneNutHolderHoleDiameter,h=coneNutHolderTotalHeight+1,$fn=32);
	
	// Screw holes
	for (t=[[1,0],[-1,0],[0,1],[0,-1]])
	translate([t[0]*coneNutHolderScrewOffset,t[1]*coneNutHolderScrewOffset,0])
	cylinder(d=screwM3Diameter,h=coneNutHolderTotalHeight,$fn=16);
}
