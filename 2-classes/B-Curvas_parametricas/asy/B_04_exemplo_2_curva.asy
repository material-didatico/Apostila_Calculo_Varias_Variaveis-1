//-----------------------------------------------------------------------------

import "../../0-common/asy/utils.ah" as utils;

size(7cm);

real x_min = -5;
real x_max =  3;
real y_min = -1;
real y_max =  5;

draw_axes(x_min, x_max, 1, y_min, y_max, 1);

pair f(real t)
{
	return (
	  cbrt( 9 - 2t^2     ),
	  cbrt( (4+3t^2) / 2 )
  );
}

draw(graph(f, 0, 9), pens[0] +1pt);

clip_to_axis();

//-----------------------------------------------------------------------------
