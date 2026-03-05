//-----------------------------------------------------------------------------

import "../../0-common/asy/utils.ah" as utils;

size(0, 75mm);

real xmin = -3;
real xmax =  3;
real ymin = -1;
real ymax =  5;

draw_axes(xmin, xmax, 1, ymin, ymax, 1);

real f(real x) 
{ 
  return x*x; 
}

path curve = graph(f, xmin, xmax);

path region = (xmin, ymax) -- curve -- (xmax, ymax) -- cycle;

fill(region, pens[0]+opacity(0.3));

draw(curve, pens[0]+linewidth(1pt));

label('$y=x^2$', (1.0, 1), SE);
label('$y>x^2$', (0.7, 2), N );

clip_to_axis();

//-----------------------------------------------------------------------------
