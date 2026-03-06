//-----------------------------------------------------------------------------

import "../../0-common/asy/utils.ah" as utils;

size(0, 70mm);

real xmin = -6;
real xmax =  6;
real ymin = -6;
real ymax =  6;

draw_axes(xmin, xmax, 1, ymin, ymax, 1);

real p = 2;

real f(real x)
{ 
  return x^2 / (4*p); 
}

draw((0, p)--(3.5,f(3.5))--(3.5,-p), pens[1]+dashed + 1pt + linetype(new real[] {4, 4}) );

draw(graph(f, xmin, xmax), pens[0]);

draw((xmin, -p)--(xmax, -p), pens[1]);

dot((0,    p     ), pens[1]+5bp);
dot((3.5,  f(3.5)), pens[1]+5bp);
dot((3.5, -p     ), pens[1]+5bp);

clip_to_axis();

//-----------------------------------------------------------------------------
