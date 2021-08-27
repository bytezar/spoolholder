include<BOSL/constants.scad>
use<BOSL/transforms.scad>
use<BOSL/shapes.scad>

include<../Spoolholder_Vars_Common.scad>
include<../Spoolholder_Vars_Screws.scad>
include<Spoolholder_Vars_Foot.scad>

use<Spoolholder_Foot_Bottom.scad>
use<Spoolholder_Foot_Top.scad>
use<Spoolholder_BearingHolder.scad>

h=50;
l=ft[0]/2;

up(nt8[1]+ft[2])
zflip()
foot_bottom();

up(h)
zflip()
foot_top();

move([0,sr8[1]/2,h])
xrot(90)
back(br[0]/2+br[1])
bearing_holder();

xflip_copy()
right(l)
cylinder(d=8,h=h+nt8[2],$fn=s_fn);