
size(7cm);

import "../../common/asy/utils.ah" as utils;

real x_min = -2;
real x_max =  2;
real y_min = -2;
real y_max =  2;

draw_axes(x_min, x_max, 1, y_min, y_max, 1);

pair f(real t)
{
	return ( 
    cos(t)^3,
    sin(t)^3
  );
}

draw(graph(f, 0, 2*pi), pens[0] +1pt);

clip_to_axis();
