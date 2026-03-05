//-----------------------------------------------------------------------------

import "../../0-common/asy/utils.ah" as utils;

size(0, 75mm);

real xmin = -10;
real xmax =  10;
real ymin = -10;
real ymax =  10;

draw_axes(xmin, xmax, 2, ymin, ymax, 2);

// pen dom_pen = gray(0.8);
pen cur_pen = pens[0] + linewidth(1pt);

// Domain
//-----------------------------------------------------------------------------

// filldraw( box((xmin, ymin), (xmax, ymax) ), dom_pen + opacity(0.3) );

// Curvas
//-----------------------------------------------------------------------------

real[] niveis = {90, 60, 20};

pair[] pos = {
  (3, 3),
  (7, 4),
  (7, 8),
};

for(int ii = 0; ii < niveis.length; ++ii)
{
	real r = sqrt(100 - niveis[ii]);

	draw( circle((0,0), r), cur_pen);

  label(format("$c=%f$", niveis[ii]), pos[ii]);
}

clip_to_axis();

//-----------------------------------------------------------------------------
