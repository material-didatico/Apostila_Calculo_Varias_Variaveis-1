//-----------------------------------------------------------------------------

import "../../0-common/asy/utils.ah" as utils;
import "quadrics.ah" as quadrics;

size(6cm);

currentprojection = perspective(camera=(-0.5,3,2), up=Z, target=(0,0,1));

real h = 3;
quadrics.drawCone(h, lightblue+opacity(0.6));

real z0 = 2.5, s = 5, t = 0;
real x_centro = -z0*s / (s*s - 1);
real z_centro = z0 + s*x_centro;
triple centro_plano = (x_centro, 0, z_centro);

quadrics.drawPlane(centro_plano, (1,0,s), (0,1,t), 0.7, 4, gray+opacity(0.7));
quadrics.curvaHiperbole(z0, s, t, h, -h, h, 800, red+1.2bp);
