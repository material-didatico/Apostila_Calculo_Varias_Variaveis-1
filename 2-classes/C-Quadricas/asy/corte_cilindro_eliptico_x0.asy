//-----------------------------------------------------------------------------

import "../../0-common/asy/utils.ah" as utils;

size(4.9cm);

real x_min = -5;
real x_max =  5;
real y_min = -5;
real y_max =  5;

draw_axes(x_min, x_max, 1, y_min, y_max, 1, '$y$', '$z$');

real a = 3;
real b = 2;
real c = 1;

draw((-b, y_min)--(-b, y_max), pens[0]);
draw(( b, y_min)--( b, y_max), pens[0]);

label('$-b$', (-b, 0), NW, pens[0]);
label('$ b$', ( b, 0), NE, pens[0]);

clip_to_axis();

//-----------------------------------------------------------------------------
