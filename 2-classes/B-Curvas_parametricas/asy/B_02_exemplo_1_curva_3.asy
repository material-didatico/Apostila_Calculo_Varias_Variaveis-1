//-----------------------------------------------------------------------------

import "../../0-common/asy/utils.ah" as utils;

size(12cm, 7.5cm, IgnoreAspect);

real x_min = -2;
real x_max = 10;
real y_min = -3;
real y_max =  5;

draw_axes(x_min, x_max, 1, y_min, y_max, 1);

pair f(real t)
{
	return ( (t^2), t+1 );
}

draw(graph(f, -4, -1), pens[0]);

dot( (9, -2) );
dot( (4, -1) );
dot( (1,  0) );
dot( (0,  1) );
dot( (1,  2) );
dot( (4,  3) );
dot( (9,  4) );

label( "$(9, -2)$", ( 9, -2.5) );
label( "$(4, -1)$", ( 4, -1.5) );
label( "$(1,  0)$", ( 1,  0.5) );
label( "$(0,  1)$", (-1,  1.5) );
label( "$(1,  2)$", ( 1,  2.5) );
label( "$(4,  3)$", ( 4,  3.5) );
label( "$(9,  4)$", ( 9,  4.5) );

label( "$t\in(-\infty, -1)$", ( 0.5,  4.5), E );

clip_to_axis();

//-----------------------------------------------------------------------------
