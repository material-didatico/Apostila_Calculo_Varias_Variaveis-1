//-----------------------------------------------------------------------------

import "../../0-common/asy/utils.ah" as utils;

size(4.9cm);

real x_min = -5;
real x_max =  5;
real y_min = -5;
real y_max =  5;

draw_axes(x_min, x_max, 1, y_min, y_max, 1, '$x$', '$z$');

real a = 1;
real b = 2;
real c = 3;

draw_affine(-c/a, 0, pens[0]);
draw_affine( c/a, 0, pens[0]);

label('$z = -\\dfrac{c}{a} x$', (-3, 1), pens[0]);
label('$z =  \\dfrac{c}{a} x$', ( 3, 1), pens[0]);

clip_to_axis();

//-----------------------------------------------------------------------------
