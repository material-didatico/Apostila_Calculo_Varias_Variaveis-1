
import "./utils.ah" as utils;

size(7.5cm, 7.5cm, IgnoreAspect);

draw_axes(-7, 7, 1, -7, 7, 1);

// Domain

real dx1(real t) {return  3*cosh(t);}
real dx2(real t) {return -3*cosh(t);}
real dy (real t) {return  3*sinh(t);}

path r = graph(dx1, dy, -6, 6);
path l = graph(dx2, dy, -6, 6);

fill( r -- reverse(l) -- cycle, gray + opacity(0.2));

// Curve

draw((-7,-7)--(7,7), pens[0]);
draw((-7,7)--(7,-7), pens[0]);

clip_to_axis();
