
size(14cm, 7.5cm, IgnoreAspect);

import "./utils.ah" as utils;

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

pair df(real t)
{
	return ( 
    2*exp(2*t) * cos(pi*t) - pi*exp(2*t) * sin(pi*t),
    exp(t) * sin(pi*t) + pi*exp(t) *cos(pi*t)
  );
}

draw(graph(f, 0, 2), pens[0] +1pt);

pair a =    f(3/4);
pair b = a+df(3/4)/3;

pen arrowpen = pens[1] + 1pt;
pen dotpen   = pens[1] + 3pt; 

draw( a--b, arrowpen, Arrow(TeXHead));
dot(a, dotpen );

label("$\frac{\gamma'(t)}{3}$", (-6.5, 1.5), pens[1]+fontsize(18pt));

clip_to_axis();
