//-----------------------------------------------------------------------------

import "../../0-common/asy/utils.ah" as utils;

size(4.9cm);

real x_min = -5;
real x_max =  5;
real y_min = -5;
real y_max =  5;

draw_axes(x_min, x_max, 1, y_min, y_max, 1, '$x$', '$z$');

real a = 3;
real b = 2;

real parabola( real t ){ return t^2/a^2; }

draw(graph(parabola, x_min, x_max), pens[0]);

draw((-a, 1)--(a, 1), gray(0.5));

label('$a$', (-a, 1), NE, pens[0]);
label('$a$', ( a, 1), NW, pens[0]);

clip_to_axis();

//-----------------------------------------------------------------------------
