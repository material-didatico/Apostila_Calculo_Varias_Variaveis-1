//-----------------------------------------------------------------------------

import "../../0-common/asy/utils.ah" as utils;

size(4.9cm);

real x_min = -5;
real x_max =  5;
real y_min = -5;
real y_max =  5;

draw_axes(x_min, x_max, 1, y_min, y_max, 1, '$x$', '$y$');

real a = 3;
real b = 2;
real c = 1;

draw_affine(-b/a, 0, pens[0]);
draw_affine( b/a, 0, pens[0]);

label('$y = -\\dfrac{b}{a} x$', (-3, 3), N, pens[0]);
label('$y =  \\dfrac{b}{a} x$', ( 3, 3), N, pens[0]);

clip_to_axis();

//-----------------------------------------------------------------------------
