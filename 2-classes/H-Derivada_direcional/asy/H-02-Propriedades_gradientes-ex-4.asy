//-----------------------------------------------------------------------------

import "../../0-common/asy/utils.ah" as utils;

size(9cm, 6cm);

real xmin = -5, xmax = 5;
real ymin = -3, ymax = 3;

draw_axes(xmin, xmax, 1, ymin, ymax, 1);

pair centro = (0,0);
real a = 2*sqrt(2); 
real b =   sqrt(2);  

draw(ellipse(centro, a, b), pens[0]);

label("$f(x, y) = \dfrac{x^2}{4} + y^2 = 2$", (0.5,2.3), E);

clip_to_axis();

//-----------------------------------------------------------------------------
