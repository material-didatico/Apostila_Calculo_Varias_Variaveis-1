//-----------------------------------------------------------------------------

import "../../0-common/asy/utils.ah" as utils;
import graph3;

currentprojection = perspective( 1, 3, 3 );
currentlight=(-6,6,4);

size(80mm, 70mm);

real a = 0.6;
real b = 0.5;

triple f(pair t) 
{
  return (
    t.x,
    a * cos(t.y) * sqrt(4 -t.x^2), 
    b * sin(t.y) * sqrt(4 -t.x^2)
  );
}

surface s = surface( f, (-2,0), (2,2pi), 51, 51 );

pen p = rgb(0.2, 0.5, 0.7); // + opacity(0.5);

draw(s, p, render(merge=true) );

//-----------------------------------------------------------------------------
