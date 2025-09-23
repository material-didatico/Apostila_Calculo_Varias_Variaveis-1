
size(6cm);

import "../../common/asy/utils.ah" as utils;
import "quadrics.ah" as quadrics;

currentprojection = perspective(camera=(6,2,5), up=Z, target=(0,0,1));

real h = 3;
quadrics.drawCone(h, lightblue+opacity(0.6));

real z0 = 0.7, s = 0.15, t = -0.10;

quadrics.drawPlane((0,0,z0), (1,0,s), (0,1,t), 2, 4, gray+opacity(0.5));

curvaElipse(z0, s, t, h, 800, red+1.2bp);
