//-----------------------------------------------------------------------------

import "../../0-common/asy/utils.ah" as utils;
import "quadrics.ah" as quadrics;

size(0, 8cm);

pen pen_conica = pens[1] + 2pt;

currentprojection = perspective(camera=(0,-5,3.4), up=Z, target=(0,0,0));

//-----------------------------------------------------------------------------

real h = 3;

quadrics.drawCone(h, lightblue+opacity(0.6));

//-----------------------------------------------------------------------------

real zo = 1.0;
real s  = 1.0;
real t  = 0.0;

triple origem = (0,0,0);
triple g1     = (h,0,h);
triple g2     = (-h,0,-h);

// //draw(origem--g1, dashed+blue+1bp);
// //draw(origem--g2, dashed+blue+1bp);
// draw(origem+g2 -- (h,0,h), pen_conica);

draw((-h,0,h) -- (h,0,-h), pen_conica);

//-----------------------------------------------------------------------------

real R = 3;
// quadrics.drawPlane((0,0,zo), (1,0,s), (0,1,t), R, R, gray+opacity(0.5));

//-----------------------------------------------------------------------------
