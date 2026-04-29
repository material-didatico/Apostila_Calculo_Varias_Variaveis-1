
import "./utils.ah" as utils;

size(7.5cm, 7.5cm, IgnoreAspect);

draw_axes(-7, 7, 1, -7, 7, 1);

real x (real t) {return  3*sinh(t);}
real y1(real t) {return -3*cosh(t);}
real y2(real t) {return  3*cosh(t);}

path r = graph(x, y1, -6, 6);
path l = graph(x, y2, -6, 6);

fill( r -- reverse(l) -- cycle, pens[0] + opacity(0.2));

draw(r, pens[0] + linetype(new real[] {4,4}));
draw(l, pens[0] + linetype(new real[] {4,4}));

clip_to_axis();
