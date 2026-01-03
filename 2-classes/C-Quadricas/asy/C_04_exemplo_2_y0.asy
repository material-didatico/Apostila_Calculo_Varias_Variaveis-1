//-----------------------------------------------------------------------------

import "../../0-common/asy/utils.ah" as utils;

size(6cm);

real x_min = -5;
real x_max =  5;
real y_min = -5;
real y_max =  5;

draw_axes(x_min, x_max, 1, y_min, y_max, 1);

draw(Circle((0,0), 2), pens[0]);

clip_to_axis();


