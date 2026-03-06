//-----------------------------------------------------------------------------

import "../../0-common/asy/utils.ah" as utils;

size(4.9cm);

real x_min = -5;
real x_max =  5;
real y_min = -5;
real y_max =  5;

draw_axes(x_min, x_max, 1, y_min, y_max, 1, '$x$', '$z$');

real a = 2;
real b = 1;
real c = 2;

pair hiperbole1( real t ){ return ( -a*cosh(t), c*sinh(t) ); }
pair hiperbole2( real t ){ return (  a*cosh(t), c*sinh(t) ); }

draw(graph(hiperbole1, -4, 4), pens[0]);
draw(graph(hiperbole2, -4, 4), pens[0]);

label('$-a$', (-a, 0), NE, pens[0]);
label('$ a$', ( a, 0), NW, pens[0]);

clip_to_axis();

//-----------------------------------------------------------------------------
