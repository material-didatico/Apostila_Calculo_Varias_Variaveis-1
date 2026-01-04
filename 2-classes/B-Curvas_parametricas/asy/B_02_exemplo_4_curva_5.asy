//-----------------------------------------------------------------------------

import "../../0-common/asy/utils.ah" as utils;

size(7.5cm, 7.5cm);

real x_min = -2.2;
real x_max =  2.2;
real y_min = -2.2;
real y_max =  2.2;

draw_axes(x_min, x_max, 1, y_min, y_max, 1);

pair f(real t)
{
  return (cos(t), sin(t));
}

real angle = 5*pi/4;

draw(graph(f, 0, angle), pens[0]);

label("$t\in\left[0, \dfrac{5\pi}{4}\right]$", (0.3, 1.5), E);

clip_to_axis();

//-----------------------------------------------------------------------------

