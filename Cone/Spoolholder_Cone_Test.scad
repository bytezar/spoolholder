include<BOSL/constants.scad>
use<BOSL/transforms.scad>
use<BOSL/shapes.scad>

include<../Spoolholder_Vars_Common.scad>
include<../Spoolholder_Vars_Screws.scad>
include<Spoolholder_Vars_Cone.scad>

use<Spoolholder_Cone.scad>
use<Spoolholder_Cone_NutHolder.scad>

up(srln[0]-sr3[2])
zflip()
cone(cn[0]);

cone_nut_holder();
