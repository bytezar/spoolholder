include<BOSL/constants.scad>
use<BOSL/transforms.scad>
use<BOSL/shapes.scad>

include<../Spoolholder_Vars_Common.scad>
include<../Spoolholder_Vars_Screws.scad>
include<Spoolholder_Vars_Cone.scad>

use<Spoolholder_Cone_Common.scad>

h=cn[2];
th=cn[3];

module cone_outer(d)
{
	cylinder(d1=d,d2=d-2*h,
		h=h,$fn=xl_fn);
}

module cone_base(d)
{
	difference()
	{
		cone_outer(d);

		dd=d-2*th;
		down(epsilon)
		cylinder(d1=dd,d2=dd-2*h,
			h=h+2*epsilon,$fn=xl_fn);
	}
}

module connectors(d)
{
	intersection()
	{
		union()
		{
			cuboid([d,th,h],align=V_UP);
			cuboid([th,d,h],align=V_UP);
		}
		
		cone_outer(d);
	}
}

module cone(d)
{
	difference()
	{
		union()
		{
			cone_base(d);
			connectors(d);
			
			nut_m8_holder(h);
			screws_m3_holders(h);
		}
		
		inner_nut_m8_hole(h);
		screws_m3_holes(h);
	}
}
