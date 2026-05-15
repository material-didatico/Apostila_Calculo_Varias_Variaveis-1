//-----------------------------------------------------------------------------

import "../../0-common/asy/utils.ah" as utils;

size(7.5cm, 7.5cm, IgnoreAspect);

draw_axes(-1, 5, 1, -1, 5, 1);

pair P0 = (1.5, 1.5);          
pair u  = (2.2, 1.1);          

path reta = P0 + (-2)*u -- P0 + 3*u;

draw(reta, gray + linewidth(1));
draw(P0--(P0 + u), blue + linewidth(1.5) , Arrow(TeXHead));

dot(P0, black);

label("$P_0(a, b)$", P0, SE);
label("$\vec{u} = \begin{pmatrix}u_1\\ u_2\end{pmatrix}$", P0 + 0.75*u, NW);

clip_to_axis();

//-----------------------------------------------------------------------------
