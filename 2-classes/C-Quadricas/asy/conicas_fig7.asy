
size(6cm);

import "../../0-common/asy/utils.ah" as utils;
import "quadrics.ah" as quadrics;

currentprojection = perspective(camera=(6,3,3), up=Z, target=(0,0,0));

real h = 3, R = 4;
pen corPlano = gray + opacity(0.5);

quadrics.drawCone(h, lightblue+opacity(0.6));

triple centro = (0,0,0);
triple dir1 = (1,0,0);
triple dir2 = (0,0,1);

quadrics.drawPlane(centro, dir1, dir2, R, h+1, corPlano);

triple base = (0,0,-h);
triple topo = (0,0,h);
draw(base -- topo, red+1.5bp);

draw((0,0,0) -- (h,0,h), dashed+blue+1bp);
draw((0,0,0) -- (-h,0,-h), dashed+blue+1bp);




