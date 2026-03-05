//-----------------------------------------------------------------------------

import "../../0-common/asy/utils.ah" as utils;

size(70mm);

real R = 1;               

draw(box((-1.2,-1.2), (1.2,1.2)), invisible);

filldraw(circle((0,0), R), pens[0]+opacity(0.3), gray(0.4) + dashed + linewidth(1pt) + linetype(new real[] {4, 4}) );
label("$R$", (-0.5, 0.7));

//-----------------------------------------------------------------------------
