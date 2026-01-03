//-----------------------------------------------------------------------------

import "../../0-common/asy/utils.ah" as utils;

size(7cm, 5cm, IgnoreAspect);

real x_min = -11;
real x_max =  5;
real y_min = -5;
real y_max =  3;

draw_axes(x_min, x_max, 1, y_min, y_max, 1);

pair f(real t)
{
	return (
    exp(2*t) * cos(pi*t),
    exp(t)   * sin(pi*t)
  );
}

draw(graph(f, 0, 2), pens[0] +1pt);

clip_to_axis();
