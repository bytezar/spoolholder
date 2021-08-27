include<BOSL/constants.scad>
use<BOSL/transforms.scad>
use<BOSL/shapes.scad>

include<../Spoolholder_Vars_Common.scad>
include<../Spoolholder_Vars_Screws.scad>
include<Spoolholder_Vars_Foot.scad>

l=ft[0]/2;
h=ft[3];
d=sr8[1];
r=d/2;

module connectors()
{
	s=[l,ft[1],h];
	
	yflip_copy()
	back(r-ft[1])
	cube(s);
}


module nut_m8_holder()
{
	right(l)
	cylinder(d=d,h=h,$fn=l_fn);
}

module screw_m3_holder()
{
	right(br[0]/2+br[1])
	cuboid([sr3[1],d,h],
	  align=V_UP+V_RIGHT);
}

module rod_m8_hole()
{
	move([l,0,-1])
	cylinder(d=sr8[0],h=h+2,$fn=m_fn);
}

module screws_m3_holes()
{
	x=br[0]/2+br[1]+sr3[1]/2;
	
	yflip_copy()
	move([x,r-sr3[1]/2,-1])
	cylinder(d=sr3[0],h=h+2,$fn=s_fn);
}

module foot_top()
{
	xflip_copy()
	difference()
	{
		union()
		{
			connectors();
			nut_m8_holder();
			screw_m3_holder();
		}
		
		rod_m8_hole();
		screws_m3_holes();
	}
}

foot_top();
