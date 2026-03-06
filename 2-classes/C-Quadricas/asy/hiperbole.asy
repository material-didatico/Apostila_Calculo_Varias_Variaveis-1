//-----------------------------------------------------------------------------

import "../../0-common/asy/utils.ah" as utils;

size(0, 70mm);

real xmin = -6;
real xmax =  6;
real ymin = -6;
real ymax =  6;

draw_axes(xmin, xmax, 1, ymin, ymax, 1);

real a = 2.5; 
real b = 2.3; 
real c = sqrt(a^2 + b^2);

pair h_dir(real t) 
{ 
  return ( a*cosh(t), b*sinh(t) ); 
}

pair h_esq(real t) 
{ 
  return (-a*cosh(t), b*sinh(t) ); 
}

draw(graph(h_dir, -4, 4), pens[0] + 1pt );
draw(graph(h_esq, -4, 4), pens[0] + 1pt );

draw(h_dir(-8) -- h_esq( 8), gray + dashed + 1pt + linetype(new real[] {4, 4}) );
draw(h_dir( 8) -- h_esq(-8), gray + dashed + 1pt + linetype(new real[] {4, 4}) );

pair A = (-c,0);
pair B = h_dir(1);
pair C = ( c,0);

dot(A, pens[1]+5bp);
dot(B, pens[1]+5bp);
dot(C, pens[1]+5bp);

draw(A--B--C, pens[1] + 1pt + dashed + linetype(new real[] {4, 4}) );

clip_to_axis();

//-----------------------------------------------------------------------------
