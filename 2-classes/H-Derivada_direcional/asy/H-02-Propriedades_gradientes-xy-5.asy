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
  return x*y;
}

pair grad(real x, real y) 
{
  return (y, x);
}

for(   real x = xmin; x <= xmax; x += 0.5 ) {
  for( real y = ymin; y <= ymax; y += 0.5 ) 
  {
    pair P = (x, y);
    pair G = grad(x, y);

    draw(P--(P + 0.2*G), pens[1], Arrow(HookHead, size=2*length(G)));
  }
}

real[] levels = sequence(-7, 7);
draw(contour(f, (xmin, ymin), (xmax, ymax), levels), gray);

label("Os vetores estão em escala", (0.2, -2.9), E, fontsize(6), Fill(white));

clip_to_axis();

//-----------------------------------------------------------------------------
