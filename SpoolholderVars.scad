screwM3Diameter=3+0.4;
screwM3HolderDiameter=screwM3Diameter+2*2;
screwM3HolderRadius=screwM3HolderDiameter/2;
nutM3Height=2;
screw16M3Height=16;
screw30M3Height=30;

rodM8Diameter=8+0.6;
nutM8Diameter=14.4+1.2;
nutM8Height=6.4+1.0;

nutM8HolderDiameter=nutM8Diameter+2*3;
nutM8HolderRadius=nutM8HolderDiameter/2;


length=120;
bottomHeight=10;
topHeight=8;
topWidth=16;
connectorThickness=4;
bottomNutM8HoleHeight=nutM8Height+1.0;


bearingDiameter=28+0.8;
bearingHolderWallThickness=3;
bearingHolderDiameter=bearingDiameter+2*bearingHolderWallThickness;
bearingHolderRadius=bearingHolderDiameter/2;

bearingHolderLength=bearingHolderDiameter+2*screwM3HolderDiameter;
bearingHolderHoleDiameter=18;
bearingHolderBottomHeight=4;
bearingHolderScrewOffset=(bearingHolderLength-screwM3HolderDiameter)/2;
bearingHolderScrewHolderHeight=screw16M3Height-nutM3Height-topHeight;


coneHeight=5;
coneBigDiameter=56;
coneBigRadius=coneBigDiameter/2;
coneSmallDiameter=48;
coneSmallRadius=coneSmallDiameter/2;

coneNutHolderHoleDiameter=16;
coneNutHolderHoleRadius=coneNutHolderHoleDiameter/2;
coneNutHolderWallThickness=4;
coneNutHolderWithWallDiameter=coneNutHolderHoleDiameter+2*coneNutHolderWallThickness;
coneNutHolderScrewOffset=coneNutHolderHoleRadius+screwM3HolderRadius;
coneNutHolderBottomHeight=3;
coneNutHolderTotalHeight=screw30M3Height-nutM3Height-coneHeight;
coneNutHolderNutM8HoleHeight=nutM8Height-1.0;
