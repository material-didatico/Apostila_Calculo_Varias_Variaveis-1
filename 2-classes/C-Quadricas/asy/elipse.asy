//-----------------------------------------------------------------------------

import "../../0-common/asy/utils.ah" as utils;

size(0, 70mm);

real xmin = -6;
real xmax =  6;
real ymin = -6;
real ymax =  6;

draw_axes(xmin, xmax, 1, ymin, ymax, 1);

real a = 5;
real b = 3; 
real c = sqrt(a^2 - b^2); 

pair f(real t) 
{ 
  return ( a*cos(t), b*sin(t) ); 
}

draw(graph(f, 0, 2*pi), pens[0]+1bp);

pair A = ( -c,       0        );
pair B = ( a*cos(1), b*sin(1) );
pair C = (  c,       0        );

draw(A--B--C, pens[1] + 1pt + dashed + linetype(new real[] {4, 4}) );

dot(A, pens[1] + 5pt );
dot(B, pens[1] + 5pt );
dot(C, pens[1] + 5pt );

clip_to_axis();

//-----------------------------------------------------------------------------
