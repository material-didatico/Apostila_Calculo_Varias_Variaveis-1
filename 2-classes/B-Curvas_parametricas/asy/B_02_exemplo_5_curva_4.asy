//-----------------------------------------------------------------------------

import "../../0-common/asy/utils.ah" as utils;

size(7.5cm, 7.5cm, IgnoreAspect);

real x_min = -6;
real x_max =  6;
real y_min = -6;
real y_max =  6;

draw_axes(x_min, x_max, 1, y_min, y_max, 1);

pair f(real t)
{
	return ( t * cos(pi * t), t * sin(pi * t) );
}

int a = 4;

draw(graph(f, 0, a, n=200), pens[0]);

pair pos = (3.5, 5);
label( "$x = t \cos(\pi t)$", pos, N );
label( "$y = t \sin(\pi t)$", pos, S );

label(format("$t\in\left[0, %d\right]$", a), (-5, 5.3), E);

clip_to_axis();

//-----------------------------------------------------------------------------
