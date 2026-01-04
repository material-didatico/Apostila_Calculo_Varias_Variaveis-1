//-----------------------------------------------------------------------------

import "../../0-common/asy/utils.ah" as utils;

size(0, 7.5cm);

draw(box((1, 1.1), (6, 2.9)), invisible);

pair f(real t)
{
  return (t, sqrt(t) - 0.3*cos(2*t) );
}

draw(graph(f, 1, 6), pens[0]);

label("$\gamma(t)$", f(6), SW, pens[0] + fontsize(18pt));

//-----------------------------------------------------------------------------
