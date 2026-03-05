//-----------------------------------------------------------------------------

import "../../0-common/asy/utils.ah" as utils;

size(0, 75mm);

real xmin = -6;
real xmax =  6;
real ymin = -6;
real ymax =  6;

draw_axes(xmin, xmax, 1, ymin, ymax, 1);

// pen dom_pen = gray(0.8);
pen cur_pen = pens[0] + linewidth(1pt);

// Domain
//-----------------------------------------------------------------------------

// filldraw( box((xmin, ymin), (xmax, ymax) ), dom_pen + opacity(0.3) );

// Curvas
//-----------------------------------------------------------------------------

real[] niveis = {1, 3, 5};

pair[] pos = {
  (1.5, 1),
  (3.2, 2),
  (4.5, 4),
};

for(int ii = 0; ii < niveis.length; ++ii)
{
	draw( circle((0,0), niveis[ii]), cur_pen);

  label(format("$c=%f$", niveis[ii]), pos[ii]);
}

clip_to_axis();

//-----------------------------------------------------------------------------
