//-----------------------------------------------------------------------------

import "../../0-common/asy/utils.ah" as utils;

size(15cm, 7.5cm);

real xmin = -5, xmax = 5;
real ymin = -3, ymax = 3;

draw_axes(xmin, xmax, 1, ymin, ymax, 1);

pair centro = (0,0);
real a = 2*sqrt(2); 
real b =   sqrt(2);  

draw(ellipse(centro, a, b), pens[0]);

pair P = (-2, 1);
dot(P, pens[1]+2mm );

real tangente(real x) 
{ 
  return (x + 4)/2; 
}

draw(graph(tangente, xmin, xmax), pens[1]);

pair grad = (-1, 2);
draw(P--(P + grad), pens[1], Arrow(HookHead,size=7));

label("$f(x, y) = \dfrac{x^2}{4} + y^2 = 2$", (1.5,-1.5), E);
label("$x - 2y = -4$",                        (1.0, 2.3), E);
label("$\nabla f(-2, 1) = \begin{pmatrix}-1\\2\end{pmatrix}$", (-2.5,1.5), W);

clip_to_axis();

//-----------------------------------------------------------------------------
