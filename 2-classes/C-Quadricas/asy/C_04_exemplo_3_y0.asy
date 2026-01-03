
size(6cm);

import "../../0-common/asy/utils.ah" as utils;

real x_min = -5;
real x_max =  5;
real y_min = -5;
real y_max =  5;

draw_axes(x_min, x_max, 1, y_min, y_max, 1);

real xa(real t) { return t; }
real ya(real t) { return -t^2; }

draw(graph(xa, ya, -sqrt(7), sqrt(7)), pens[0]);

clip_to_axis();
