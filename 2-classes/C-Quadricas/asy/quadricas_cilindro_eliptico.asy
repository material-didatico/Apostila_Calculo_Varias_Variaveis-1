//-----------------------------------------------------------------------------

import "../../0-common/asy/utils.ah" as utils;
import graph3;

currentprojection = perspective( 3, 2, 1.5 );
currentlight=(3,-3,0);

size(80mm, 70mm);

real a = 2.6;
real b = 1.1;

triple f(pair t) 
{
  return (
    a * cos(t.x),
    b * sin(t.x),
    t.y
  );
}

surface s = surface( f, (0,-1), (2pi,1), 51, 7 );

pen p = rgb(0.2, 0.5, 0.7); // + opacity(0.5);

draw(s, p, render(merge=true) );

//-----------------------------------------------------------------------------
