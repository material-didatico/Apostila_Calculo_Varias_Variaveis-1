//-----------------------------------------------------------------------------

import "../../0-common/asy/utils.ah" as utils;

size(200);

draw_axes(-1, 7, 1, -1, 5, 1);
filldraw(shift(3,2)*scale(2)*unitcircle, gray(0.9), dashed);
pair P0 = (1, 1);          
pair u  = (2, 1);          

path reta = P0 + (-2)*u -- P0 + 3*u;
draw(reta, gray + linewidth(1.2));

dot(P0, black);
label("$P_0(x_0, y_0)$", P0, N);


draw(P0--(P0 + u), blue + linewidth(1.5) , Arrow(TeXHead));
label("$\vec{u} = u_1\vec{i} + u_2\vec{j}$", P0 + u, SE);


label("$R$", (3,1), fontsize(10pt));
clip_to_axis();


