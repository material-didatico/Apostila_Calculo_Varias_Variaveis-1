
size(6cm);

import "../../0-common/asy/utils.ah" as utils;
import "quadrics.ah" as quadrics;

currentprojection = perspective(camera=(0.5,4,3), up=Z, target=(0,0,0));

real h = 3, R = 3;
real z0 = 1.0, s = 1.0, t = 0.0;

quadrics.drawCone(h, lightblue+opacity(0.6));
quadrics.drawPlane((0,0,z0), (1,0,s), (0,1,t), R, R, gray+opacity(0.5));

triple origem = (0,0,0);
triple g1 = (h,0,h);
triple g2 = (-h,0,-h);
draw(origem--g1, dashed+blue+1bp);
draw(origem--g2, dashed+blue+1bp);
draw(origem+g2 -- (h,0,h), red+1.5bp);
