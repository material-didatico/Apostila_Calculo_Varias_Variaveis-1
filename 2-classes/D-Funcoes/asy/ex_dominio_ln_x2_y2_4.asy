//-----------------------------------------------------------------------------

import "../../0-common/asy/utils.ah" as utils;

size(0, 75mm);

real R = 2;               

real xmin = -3;
real xmax =  3;
real ymin = -3;
real ymax =  3;

draw_axes(xmin, xmax, 1, ymin, ymax, 1);

path total  = box((xmin, ymin), (xmax, ymax));
path circle = circle((0,0), R);

pen line_pen   = pens[0] + linewidth(1pt);
pen dashed_pen = line_pen + dashed + linetype(new real[] {4, 4});

filldraw(total--reverse(circle)--cycle, pens[0] + opacity(0.3), invisible);

draw(circle, dashed_pen);

label('$x^2+y^2 > 4$', (2, 2));

clip_to_axis();

//-----------------------------------------------------------------------------
