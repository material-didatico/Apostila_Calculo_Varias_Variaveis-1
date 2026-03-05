//-----------------------------------------------------------------------------

import "../../0-common/asy/utils.ah" as utils;

size(0, 75mm);

real xmin = -3.5;
real xmax =  3.5;
real ymin = -3.5;
real ymax =  3.5;

draw_axes(xmin, xmax, 1, ymin, ymax, 1);

pen dom_pen = gray(0.7);
pen cur_pen = pens[0] + linewidth(1pt);

// Domain
//-----------------------------------------------------------------------------

filldraw( circle((0,0), 3), dom_pen + opacity(0.5), dom_pen + dashed );

// Curvas
//-----------------------------------------------------------------------------

real[] niveis = {log(8), 1.5, 0};

for(int ii = 0; ii < niveis.length; ++ii) 
{
  real r = sqrt( 9 - exp(niveis[ii]) );

  draw(circle((0,0), r), cur_pen);
}

label("$c=\ln(8)$", (1.0, 1.10));
label("$c=1,5$",    (0.9, 2.25));
label("$c=0$",      (2.8, 1.75));

clip_to_axis();

//-----------------------------------------------------------------------------
