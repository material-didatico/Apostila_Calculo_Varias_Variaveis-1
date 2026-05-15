//-----------------------------------------------------------------------------

import "../../0-common/asy/utils.ah" as utils;

size(15cm, 7.5cm);

real xmin = -7, xmax = 11;
real ymin = -6, ymax = 8;

draw_axes(xmin, xmax, 1, ymin, ymax, 1);

draw(circle((2,1), 2), pens[0]);

pair P = ( 0, 1);
pair G = (-4, 0);

dot(P, pens[1]+1mm );
draw(P--(P + G), pens[1], Arrow(HookHead,size=7));

pair P = ( 2,-1);
pair G = ( 0,-4);

dot(P, pens[1]+1mm );
draw(P--(P + G), pens[1], Arrow(HookHead,size=7));

pair P = ( 2, 3);
pair G = ( 0, 4);

dot(P, pens[1]+1mm );
draw(P--(P + G), pens[1], Arrow(HookHead,size=7));

pair P = ( 4, 1);
pair G = ( 4, 0);

dot(P, pens[1]+1mm );
draw(P--(P + G), pens[1], Arrow(HookHead,size=7));

label("$(x-2)^2 + (y-1)^2 = 4$", (3, 3), NE);
label("$\nabla f(0, 1) = \begin{pmatrix}-4\\ 0\end{pmatrix}$", (-1.0, 2.5), W);
label("$\nabla f(2,-1) = \begin{pmatrix} 0\\-4\end{pmatrix}$", ( 2.3,-4.5), E);
label("$\nabla f(2, 3) = \begin{pmatrix} 0\\ 4\end{pmatrix}$", ( 2.3, 6.5), E);
label("$\nabla f(4, 1) = \begin{pmatrix} 4\\ 0\end{pmatrix}$", ( 6.0, 2.0), E);

clip_to_axis();

//-----------------------------------------------------------------------------
