
size(0, 7.5cm);

import "../../0-common/asy/utils.ah" as utils;

real x_min = -8;
real x_max =  8;
real y_min = -5;
real y_max =  6;

draw_axes(x_min, x_max, 1, y_min, y_max, 1);

pair f(real t)
{
	return ( t*cos(t), t*sin(t) );
}

pair df(real t)
{
	return ( 
    cos(t) - t*sin(t), 
    sin(t) + t*cos(t) 
  );
}

draw(graph(f, 0, 8), pens[0] +1pt);

pair a =    f(pi/2);
pair b = a+df(pi/2);

pen arrowpen = pens[1] + 1pt;
pen dotpen   = pens[1] + 3pt; 

draw( a--b, arrowpen, Arrow(TeXHead));
dot(a, dotpen );

clip_to_axis();
