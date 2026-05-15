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

pair grad(real x, real y) 
{
  return (2x, 2y);
}

for(   real x = xmin+0.5; x < xmax; x += 0.5 ) {
  for( real y = ymin+0.5; y < ymax; y += 0.5 ) 
  {
    pair P = (x, y);
    pair G = grad(x, y);

    draw(P--(P + 0.15*G), pens[1], Arrow(HookHead,size=5));
  }
}

real[] levels = sequence(1, 20);
draw(contour(f, (xmin, ymin), (xmax, ymax), levels), gray);

label("Os vetores estão em escala", (0.2, -2.9), E, fontsize(6), Fill(white));

clip_to_axis();

//-----------------------------------------------------------------------------
