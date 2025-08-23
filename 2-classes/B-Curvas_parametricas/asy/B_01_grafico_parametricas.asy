
size(7.5cm, 7.5cm, IgnoreAspect);

import "./utils.ah" as utils;

real x_min = -6;
real x_max =  6;
real y_min = -6;
real y_max =  6;

draw_axes(x_min, x_max, 1, y_min, y_max, 1);

pair f(real t)
{
	return ( t * cos(pi * t), t * sin(pi * t) );
}

draw(graph(f, 0, 5.7), pens[0]);

clip_to_axis();
