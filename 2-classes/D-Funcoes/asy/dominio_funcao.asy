import "utils.ah" as utils;
size(250);


real xmin = -2, xmax = 2;
real ymin = -1, ymax = 4;
real f(real x) { return x*x; }


path curve = graph(f, xmin, xmax);
path top   = (xmin,ymax)--curve--(xmax,ymax)--cycle;
fill(top, gray(0.8));

draw(curve, pens[0]+linewidth(1.2pt));

draw_axes(xmin-1, xmax+1, 1, ymin, ymax+1, 1);
