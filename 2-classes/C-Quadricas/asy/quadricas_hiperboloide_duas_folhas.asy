//-----------------------------------------------------------------------------

import "../../0-common/asy/utils.ah" as utils;
import graph3;

currentprojection = perspective( 1, 3, 2 );
currentlight=(6,6,4);

size(80mm, 70mm);

real a = 0.9;
real b = 0.7;
real c = 0.8;

triple f(pair t) 
{
  return (
    a * sinh(t.x) * cos(t.y),
    b * sinh(t.x) * sin(t.y),
    c * cosh(t.x)
  );
}

surface s1 = surface( f, (-2,0), (2,2pi), 51, 31 );
surface s2 = scale(1, 1, -1) * s1;

pen p = rgb(0.2, 0.5, 0.7); // + opacity(0.5);

draw(s2, p, render(merge=true) );
draw(s1, p, render(merge=true) );

//-----------------------------------------------------------------------------
