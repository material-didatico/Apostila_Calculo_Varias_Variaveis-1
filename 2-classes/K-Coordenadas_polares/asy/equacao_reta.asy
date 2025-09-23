//-----------------------------------------------------------------------------

import "../../common/asy/utils.ah" as utils;

size(5cm, 5cm, IgnoreAspect);
draw(box((-2,-2),(2,2)), invisible);

pair O = (0,0);
pair X = (1,0);

real t = 0.3*pi;

pair B = 2 * (cos(t), sin(t));
pair C = -B;

//-----------------------------------------------------------------------------

draw(arc(O, 0.7, 0, 180*t/pi));
draw(C--B, pens[1]);

dot(O, blue);
draw(O--X, blue + linewidth(1), Arrow(7));

label("$\theta_0$", (0.77, 0.4));
label("$O$", O, SE);

//-----------------------------------------------------------------------------
