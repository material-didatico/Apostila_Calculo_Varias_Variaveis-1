
size(6cm);

import "../../0-common/asy/utils.ah" as utils;
import "quadrics.ah" as quadrics;

currentprojection = perspective(camera=(6,2,5), up=Z, target=(0,0,1));

real h = 3;
quadrics.drawCone(h, lightblue+opacity(0.6));

real zc = h/2;
quadrics.drawPlane((0,0,zc), (1,0,0), (0,1,0), 2, 4, gray+opacity(0.5));
draw(circle((0,0,zc), zc, Z), red+1.2bp);
