
size(7cm);

import "./utils.ah" as utils;

real x_min = -3;
real x_max =  2;
real y_min = -3;
real y_max =  2;

draw_axes(x_min, x_max, 1, y_min, y_max, 1);

pair f(real t)
{
	return ( t-t**2, t-t**3 );
}

draw(graph(f, -2, 2), pens[0] +1pt);

clip_to_axis();
