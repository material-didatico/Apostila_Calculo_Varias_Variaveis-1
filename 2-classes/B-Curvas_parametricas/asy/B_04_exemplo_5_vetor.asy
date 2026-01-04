//-----------------------------------------------------------------------------

import "../../0-common/asy/utils.ah" as utils;

size(0, 7.5cm);

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

pair df(real t)
{
	return ( 
    -3 * cos(t)^2 * sin(t),
     3 * sin(t)^2 * cos(t)
  );
}

draw(graph(f, 0, 2*pi), pens[0] +1pt);

pair a =    f(pi/6);
pair b = a+df(pi/6);

pen arrowpen = pens[1] + 1pt;
pen dotpen   = pens[1] + 3pt; 

draw( a--b, arrowpen, Arrow(TeXHead));
dot(a, dotpen );

clip_to_axis();

//-----------------------------------------------------------------------------
