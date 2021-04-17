include <SpoolholderVars.scad>

difference()
{
	union()
	{
		difference()
		{
			cylinder(d1=coneBigDiameter,d2=coneSmallDiameter,h=coneHeight,$fn=64);
			cylinder(d1=coneBigDiameter-2*coneNutHolderWallThickness,d2=coneSmallDiameter-2*coneNutHolderWallThickness,h=coneHeight,$fn=64);
		}
		
		// Conectors
		intersection()
		{
			cylinder(d1=coneBigDiameter,d2=coneSmallDiameter,h=coneHeight,$fn=64);
			union()
			{
				translate([-coneBigDiameter/2,-coneNutHolderWallThickness/2,0])
				cube([coneBigDiameter,coneNutHolderWallThickness,coneHeight]);
				
				rotate([0,0,90])
				translate([-coneBigDiameter/2,-coneNutHolderWallThickness/2,0])
				cube([coneBigDiameter,coneNutHolderWallThickness,coneHeight]);
			}
		}
		
		// Nut holder
		cylinder(d=coneNutHolderWithWallDiameter,h=coneHeight,$fn=32);
		
		// Screw holders
		for (t=[[1,0],[-1,0],[0,1],[0,-1]])
		translate([t[0]*coneNutHolderScrewOffset,t[1]*coneNutHolderScrewOffset,0])
		cylinder(d=screwM3HolderDiameter,h=coneHeight,$fn=16);
	}
	
	// Hole in the middle
	translate([0,0,-1])
	cylinder(d=coneNutHolderHoleDiameter,h=coneHeight+2,$fn=32);
	
	// Screw holes
	for (t=[[1,0],[-1,0],[0,1],[0,-1]])
	translate([t[0]*coneNutHolderScrewOffset,t[1]*coneNutHolderScrewOffset,-1])
	cylinder(d=screwM3Diameter,h=coneHeight+2,$fn=16);
}
