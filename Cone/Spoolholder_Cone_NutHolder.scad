include<BOSL/constants.scad>
use<BOSL/transforms.scad>
use<BOSL/shapes.scad>

include<../Spoolholder_Vars_Common.scad>
include<../Spoolholder_Vars_Screws.scad>
include<Spoolholder_Vars_Cone.scad>

use<Spoolholder_Cone_Common.scad>

h=srln[0]-cn[2]-sr3[2];
th=cn[3];

module rod_m8_hole()
{
	down(1)
	cylinder(d=sr8[0],h=h+2,$fn=m_fn);
}

module nut_m8_hole()
{
	up(cn[4])
	cylinder(d=nt8[0],h=nt8[2]+1,$fn=6);
}

module cone_nut_holder()
{
	difference()
	{
		union()
		{
			nut_m8_holder(h);
			screws_m3_holders(h);
		}
		
		rod_m8_hole();
		nut_m8_hole();
		
		z=cn[4]+nt8[2];
		inner_nut_m8_hole(h,z=z);
		
		screws_m3_holes(h);
	}
}

cone_nut_holder();
