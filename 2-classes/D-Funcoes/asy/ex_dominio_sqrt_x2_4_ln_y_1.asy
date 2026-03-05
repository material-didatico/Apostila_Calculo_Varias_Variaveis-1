//-----------------------------------------------------------------------------

import "../../0-common/asy/utils.ah" as utils;

size(0, 75mm);

real xmin = -4;
real xmax =  4;
real ymin = -1;
real ymax =  4;

draw_axes(xmin, xmax, 1, ymin, ymax, 1);

path esquerda = box((xmin, 1), (-2, ymax));
path direita  = box((2, 1), (xmax, ymax));

fill(esquerda, pens[0] + opacity(0.3));
fill(direita,  pens[0] + opacity(0.3));

pen line_pen   = pens[0] + linewidth(1pt);
pen dashed_pen = line_pen + dashed + linetype(new real[] {4, 4});

draw((-2,1)--(-2,ymax), line_pen);   
draw(( 2,1)--( 2,ymax), line_pen);     

draw((-4,1)--(-2,1), dashed_pen);   
draw(( 2,1)--( 4,1), dashed_pen);     

draw((-4,2)--(-2,2), dashed_pen);   
draw(( 2,2)--( 4,2), dashed_pen);     

dot((-2, 1), filltype=FillDraw(fillpen=white, drawpen=line_pen));
dot((-2, 2), filltype=FillDraw(fillpen=white, drawpen=line_pen));
dot(( 2, 1), filltype=FillDraw(fillpen=white, drawpen=line_pen));
dot(( 2, 2), filltype=FillDraw(fillpen=white, drawpen=line_pen));

clip_to_axis();

//-----------------------------------------------------------------------------
