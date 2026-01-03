
size(6cm);

import "../../0-common/asy/utils.ah" as utils;
import "quadrics.ah" as quadrics;

currentprojection = perspective(camera=(-0.5,6,4), up=Z, target=(0,0,1));

real h = 3;
quadrics.drawCone(h, lightblue+opacity(0.6));

real z0 = 0.5, s = 1.0, t = 0.0;
quadrics.drawPlane((0,0,z0), (1,0,s), (0,1,t), 2.4, 4, gray+opacity(0.5));
quadrics.curvaParabola(z0, s, t, h, -2.5, 2.5, 800, red+1.2bp);
