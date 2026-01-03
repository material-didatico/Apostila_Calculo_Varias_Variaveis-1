//-----------------------------------------------------------------------------

import "../../0-common/asy/utils.ah" as utils;

size(6cm);

real x_min = -5;
real x_max =  5;
real y_min = -5;
real y_max =  5;

draw_axes(x_min, x_max, 1, y_min, y_max, 1);

draw((-7,-7)--(7,7),     pens[0]);
label("$y=x$", (4.2, 3), pens[0]);

draw((-7,7)--(7,-7),       pens[0]);
label("$y=-x$", (-3, 1.5), pens[0]);

clip_to_axis();

