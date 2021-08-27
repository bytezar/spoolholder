include<BOSL/constants.scad>
use<BOSL/transforms.scad>
use<BOSL/shapes.scad>

include<../Spoolholder_Vars_Common.scad>
include<../Spoolholder_Vars_Screws.scad>
include<Spoolholder_Vars_Foot.scad>

h=sr8[1];
d=br[0]+2*br[1];
r=d/2;
w=srln[1]-sr3[2]-ft[3];

module main_bearing_holder()
{
	cylinder(d=d,h=h,$fn=l_fn);	
	
	cuboid([d,r,h],align=V_UP+V_FWD);

	fwd(r)
	cuboid([d+2*sr3[1],w,h],align=V_UP+V_BACK);
}

module bearing_hole()
{
	up(br[2])
	cylinder(d=br[0],h=h,$fn=l_fn);
}

module screws_m3_holes()
{
	xflip_copy()
  zflip_copy(cp=[0,0,h/2])
	move([r+sr3[1]/2,-r-1,sr3[1]/2])
	ycyl(d=sr3[0],h=w+2,center=0,$fn=s_fn);
}

module nut_m8_hole()
{
	down(1)
	cylinder(d=nt8[3],h=h+2,$fn=m_fn);
}

module bearing_holder()
{
	difference()
	{
		main_bearing_holder();
		
		bearing_hole();
		screws_m3_holes();
		nut_m8_hole();
	}
}

bearing_holder();
