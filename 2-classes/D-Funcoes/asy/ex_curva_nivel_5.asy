//-----------------------------------------------------------------------------

import "../../0-common/asy/utils.ah" as utils;

size(0, 70mm);

real xmin = -3;
real xmax =  3;
real ymin = -3;
real ymax =  3;

draw_axes(xmin, xmax, 1, ymin, ymax, 1);

pen dom_pen = gray(0.4) + linewidth(1pt);
pen cur_pen = pens[0] + linewidth(1pt);

// Domain
//-----------------------------------------------------------------------------

draw( (xmin, -xmin-1)--(xmax, -xmax-1), dom_pen + dashed );

// Curvas
//-----------------------------------------------------------------------------

draw( (xmin, -4*xmin-3)--(xmax, -4*xmax-3), cur_pen );

dot((-1, 1), cur_pen + linewidth(3pt));

dot((-2/3, 2/3-1), filltype=FillDraw(fillpen=white, drawpen=cur_pen));

clip_to_axis();

//-----------------------------------------------------------------------------
