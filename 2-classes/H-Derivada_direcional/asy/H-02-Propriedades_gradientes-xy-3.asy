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

pair param(real a, real t)
{
  return (sqrt(a)*exp(t), sqrt(a)*exp(-t));
}

real[] a = {1, 3};
real   s = 1;

for( int ii = 0; ii < 2; ii += 1 ) 
{
  for( real t = -2; t < 2; t += 0.25 ) 
  {
    pair P = param(a[ii], t);
    pair G = grad(P.x, P.y);
  
    draw(P--(P + s*G), pens[1], Arrow(HookHead,size=5));
  
    pair P = (P.x, -P.y);
    pair G = grad(P.x, P.y);
  
    draw(P--(P + s*G), pens[1], Arrow(HookHead,size=5));
  
    pair P = (-P.x, P.y);
    pair G = grad(P.x, P.y);
  
    draw(P--(P + s*G), pens[1], Arrow(HookHead,size=5));
  
    pair P = (P.x, -P.y);
    pair G = grad(P.x, P.y);
  
    draw(P--(P + s*G), pens[1], Arrow(HookHead,size=5));
  }
}

real[] levels = {-3, -1, 1, 3};
draw(contour(f, (xmin, ymin), (xmax, ymax), levels), pens[0]);

clip_to_axis();

//-----------------------------------------------------------------------------
