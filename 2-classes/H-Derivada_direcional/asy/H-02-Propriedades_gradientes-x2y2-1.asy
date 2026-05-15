//-----------------------------------------------------------------------------

import "../../0-common/asy/utils.ah" as utils;
import contour;

size(7.5cm, 7.5cm);

real xmin = -3;
real xmax =  3;
real ymin = -3;
real ymax =  3;

draw_axes(xmin, xmax, 1, ymin, ymax, 1);

real f(real x, real y) 
{
  return x^2 + y^2;
}

real[] levels = sequence(1, 20);
draw(contour(f, (xmin, ymin), (xmax, ymax), levels), gray);

clip_to_axis();

//-----------------------------------------------------------------------------
