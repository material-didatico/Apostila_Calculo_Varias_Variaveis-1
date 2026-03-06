//-----------------------------------------------------------------------------

import "../../0-common/asy/utils.ah" as utils;
import graph3;

currentprojection = perspective( 1, 3, 2 );
currentlight=(6,6,4);

size(80mm, 70mm);

real a = 0.7;
real b = 0.5;
real c = 0.4;

triple f(pair t) 
{
  return (
    a * cosh(t.x) * cos(t.y),
    b * cosh(t.x) * sin(t.y),
    c * sinh(t.x)
  );
}

surface s = surface( f, (-2,0), (2,2pi), 31, 31 );

pen p = rgb(0.2, 0.5, 0.7); // + opacity(0.5);

draw(s, p, render(merge=true) );

//-----------------------------------------------------------------------------
