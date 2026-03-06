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

real zo = 1.5, s = 1.5, t = -5;

real x_centro = -zo*s / (s*s - 1);
real z_centro =  zo + s*x_centro;

triple centro_plano = (x_centro, 0, z_centro);

quadrics.curvaHiperbole(zo, s, t, h, -h, h, 800, pen_conica);

//-----------------------------------------------------------------------------

//quadrics.drawPlane(centro_plano, (1,0,s), (0,1,t), 0.7, 4, gray+opacity(0.7));

//-----------------------------------------------------------------------------
