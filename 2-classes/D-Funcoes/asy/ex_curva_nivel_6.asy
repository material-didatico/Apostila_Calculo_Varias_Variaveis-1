//-----------------------------------------------------------------------------

import "../../0-common/asy/utils.ah" as utils;

size(0, 70mm);

real xmin = -3;
real xmax =  3;
real ymin = -3;
real ymax =  3;

draw_axes(xmin, xmax, 1, ymin, ymax, 1);

pen dom_pen = gray(0.8);
pen cur_pen = pens[0] + linewidth(1pt);

// Domain
//-----------------------------------------------------------------------------

filldraw( box((xmin, ymin), (-1, ymax) ), dom_pen + opacity(0.3), invisible );
filldraw( box((1, ymin),  (xmax, ymax) ), dom_pen + opacity(0.3), invisible );

// Curvas
//-----------------------------------------------------------------------------

draw((-1, ymin)--(-1, ymax), cur_pen );
draw(( 1, ymin)--( 1, ymax), cur_pen );

clip_to_axis();

//-----------------------------------------------------------------------------
