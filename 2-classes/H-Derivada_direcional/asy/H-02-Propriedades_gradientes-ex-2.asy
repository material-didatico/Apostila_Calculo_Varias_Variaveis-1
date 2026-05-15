//-----------------------------------------------------------------------------

import "../../0-common/asy/utils.ah" as utils;

size(15cm, 7.5cm);

real xmin = -3, xmax = 10;
real ymin = -3, ymax = 5;

draw_axes(xmin, xmax, 1, ymin, ymax, 1);

real tangente(real x) 
{ 
  return 2x + 1;
}

draw(graph(tangente, xmin, xmax), pens[0]);

pair P = ( 0, 1);
pair G = ( 6,-3);

dot(P, pens[1]+2mm );
draw(P--(P + G), pens[1], Arrow(HookHead,size=7));

pair P = ( 1, 3);

dot(P, pens[1]+2mm );
draw(P--(P + G), pens[1], Arrow(HookHead,size=7));

label("$y = 2x + 1$",                                         (2, 4.5), E);
label("$\nabla f(0, 1) = \begin{pmatrix}6\\-3\end{pmatrix}$", (4,-1.5), W);
label("$\nabla f(1, 3) = \begin{pmatrix}6\\-3\end{pmatrix}$", (5, 1.5), E);

clip_to_axis();

//-----------------------------------------------------------------------------
