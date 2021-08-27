include<BOSL/constants.scad>
use<BOSL/transforms.scad>
use<BOSL/shapes.scad>

include<../Spoolholder_Vars_Common.scad>
include<../Spoolholder_Vars_Screws.scad>
include<Spoolholder_Vars_Foot.scad>

l=ft[0]/2;
h=nt8[1]+ft[2];
d=nt8[4];
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

module rod_m8_hole()
{
	move([l,0,-1])
	cylinder(d=sr8[0],h=h+2,$fn=m_fn);
}

module nut_m8_hole()
{
	move([l,0,ft[2]])
	cylinder(d=nt8[0],h=h+1,$fn=6);
}

module foot_bottom()
{
	xflip_copy()
	difference()
	{
		union()
		{
			connectors();
			nut_m8_holder();
		}
		
		rod_m8_hole();
		nut_m8_hole();
	}
}

foot_bottom();
