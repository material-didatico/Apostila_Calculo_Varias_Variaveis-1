//-----------------------------------------------------------------------------

import "../../0-common/asy/utils.ah" as utils;

size(70mm);

real R = 1;               
pair P = (cos(0.7), sin(0.7));      
real r = 0.2;             

draw(box((-1.2,-1.2), (1.2,1.2)), invisible);

filldraw(circle((0,0), R), gray(0.9), invisible);
filldraw(circle(P, r), gray(0.8)+opacity(0.5), invisible);

draw(circle(P, r), pens[0] + dashed + linewidth(1pt) + linetype(new real[] {3, 3}));

dot(P);

//label("$(x_0, y_0)$", (0.55, 0.5), filltype=Fill(white+opacity(0.5)));
label("$R$", (-0.5, 0.7));

//-----------------------------------------------------------------------------
