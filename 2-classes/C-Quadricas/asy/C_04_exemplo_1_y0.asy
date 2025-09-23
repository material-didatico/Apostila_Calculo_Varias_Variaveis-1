
size(6cm);

import "../../common/asy/utils.ah" as utils;

real x_min = -5;
real x_max =  5;
real y_min = -5;
real y_max =  5;

draw_axes(x_min, x_max, 1, y_min, y_max, 1);

draw((2,-7)--(2,7),        pens[0]);
label("$x=2$", (3.2, 1.5), pens[0]);

draw((-2,7)--(-2,-7),        pens[0]);
label("$x=-2$", (-3.2, 1.5), pens[0]);

clip_to_axis();
