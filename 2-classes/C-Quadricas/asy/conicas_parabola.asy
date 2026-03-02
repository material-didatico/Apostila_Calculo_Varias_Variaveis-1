//-----------------------------------------------------------------------------

import "../../0-common/asy/utils.ah" as utils;
import "quadrics.ah" as quadrics;

size(0, 8cm);

pen pen_conica = pens[1] + 2pt;

currentprojection = perspective(camera=(6,2,5), up=Z, target=(0,0,1));

//-----------------------------------------------------------------------------

real h = 3;

quadrics.drawCone(h, lightblue+opacity(0.6));

//-----------------------------------------------------------------------------

real zo = 0.5, s = 1.0, t = 0.0;

quadrics.curvaParabola(zo, s, t, h, -2.5, 2.5, 800, pen_conica);

//-----------------------------------------------------------------------------

//quadrics.drawPlane((0,0,zo), (1,0,s), (0,1,t), 2.4, 4, gray+opacity(0.5));

//-----------------------------------------------------------------------------
