//-----------------------------------------------------------------------------

import "../../common/asy/utils.ah" as utils;

size(5cm, 5cm, IgnoreAspect);
draw(box((-2,-2),(2,2)), invisible);

real r = 1.5;

pair O = (0,0);
pair X = (1,0);
pair P = r*(cos(pi/4), sin(pi/4));

//-----------------------------------------------------------------------------

draw(O--X, blue + linewidth(1), Arrow(7));
draw(O--P, black + linewidth(0.5));
draw(circle(O, r), pens[1]);

dot(O, blue);

label("$O$", O, S);
label("$|a|$", P/2, NW);

//-----------------------------------------------------------------------------
