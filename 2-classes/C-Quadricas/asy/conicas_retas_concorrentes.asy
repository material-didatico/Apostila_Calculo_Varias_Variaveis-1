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

real R = 4;
pen corPlano = gray + opacity(0.5);
triple centro = (0,0,0);
triple dir1 = (1,0,0);
triple dir2 = (0,0,1);

triple base = (0,0,-h);
triple topo = (0,0,h);
draw(base -- topo, pen_conica);

draw((0,0,0) -- (h,0,h), dashed+blue+1bp);
draw((0,0,0) -- (-h,0,-h), dashed+blue+1bp);

//-----------------------------------------------------------------------------

//quadrics.drawPlane(centro, dir1, dir2, R, h+1, corPlano);

//-----------------------------------------------------------------------------
