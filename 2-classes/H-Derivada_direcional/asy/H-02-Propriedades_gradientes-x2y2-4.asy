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

for (real r=1; r<=2; r+=1) 
{
  for (real t=0; t<2pi; t+=pi/(9+r)) 
  {
    pair P = (r*cos(t), r*sin(t));
    pair G = grad(P.x, P.y);

    draw(P--(P + 0.2*G), pens[1], Arrow(HookHead,size=5));
  }
}

real[] levels = {1, 4};
draw(contour(f, (xmin, ymin), (xmax, ymax), levels), pens[0]);

label("Os vetores estão em escala", (0.2, -2.9), E, fontsize(6), Fill(white));

clip_to_axis();

//-----------------------------------------------------------------------------
