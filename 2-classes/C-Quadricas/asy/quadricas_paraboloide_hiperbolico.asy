//-----------------------------------------------------------------------------

import "../../0-common/asy/utils.ah" as utils;
import graph3;

currentprojection = perspective( 1, 3, 2 );
currentlight=(-6,6,4);

size(80mm, 70mm);

real a = 0.6;
real b = 0.5;

triple f(pair t) 
{
  return (
    3*t.x,
    3*t.y,
    t.x^2 - t.y^2
  );
}

surface s = surface( f, (-2,-2), (2,2), 21, 21 );

pen p = rgb(0.2, 0.5, 0.7); // + opacity(0.5);

draw(s, p, render(merge=true) );

//-----------------------------------------------------------------------------
