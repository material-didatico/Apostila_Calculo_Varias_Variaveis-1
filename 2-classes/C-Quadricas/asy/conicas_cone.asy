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
