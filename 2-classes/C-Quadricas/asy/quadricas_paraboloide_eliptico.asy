//-----------------------------------------------------------------------------

import "../../0-common/asy/utils.ah" as utils;
import graph3;

currentprojection = perspective( 1, 3, 3 );
currentlight=(8,8,-4);

size(80mm, 70mm);

real a = 0.6;
real b = 0.5;

triple f(pair t) 
{
  return (
    a * cos(t.y) * sqrt(t.x), 
    b * sin(t.y) * sqrt(t.x),
    t.x
  );
}

surface s = surface( f, (0,0), (4,2pi), 31, 31 );

pen p = rgb(0.2, 0.5, 0.7); // + opacity(0.5);

draw(s, p, render(merge=true) );

//-----------------------------------------------------------------------------
