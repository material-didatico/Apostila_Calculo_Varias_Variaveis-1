//-----------------------------------------------------------------------------

import "../../0-common/asy/utils.ah" as utils;

size(4.9cm);

real x_min = -5;
real x_max =  5;
real y_min = -5;
real y_max =  5;

draw_axes(x_min, x_max, 1, y_min, y_max, 1, '$x$', '$y$');

real a = 1;
real b = 2;
real c = 3;

dot((0,0), pens[0] + 5pt);

clip_to_axis();

//-----------------------------------------------------------------------------
