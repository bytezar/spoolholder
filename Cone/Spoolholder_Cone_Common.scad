include<BOSL/constants.scad>
use<BOSL/transforms.scad>
use<BOSL/shapes.scad>

include<../Spoolholder_Vars_Common.scad>
include<../Spoolholder_Vars_Screws.scad>
include<Spoolholder_Vars_Cone.scad>

module make_for_screws_m3()
{
	r=nt8[3]/2+sr3[1]/2;
	
	zring(4,r)
	children();
}

module screws_m3_holders(h)
{
	make_for_screws_m3()
	cylinder(d=sr3[1],h=h,$fn=m_fn);
}

module screws_m3_holes(h)
{
	make_for_screws_m3()
	down(1)
	cylinder(d=sr3[0],h=h+2,$fn=s_fn);
}

module nut_m8_holder(h)
{
	cylinder(d=nt8[0]+2*cn[3],h=h,$fn=l_fn);
}

module inner_nut_m8_hole(h,z=-1)
{
	zmove(z)
	cylinder(d=nt8[3],h=h+2,$fn=l_fn);
}
