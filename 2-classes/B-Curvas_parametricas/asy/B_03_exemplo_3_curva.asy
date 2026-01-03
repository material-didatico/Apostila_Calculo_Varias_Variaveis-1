
size(7cm);

import "../../0-common/asy/utils.ah" as utils;

real x_min = -4;
real x_max =  7;
real y_min = -5;
real y_max =  6;

draw_axes(x_min, x_max, 1, y_min, y_max, 1);

pair f(real t)
{
	return ( t*cos(t), t*sin(t) );
}

draw(graph(f, 0, 8), pens[0] +1pt);

clip_to_axis();
