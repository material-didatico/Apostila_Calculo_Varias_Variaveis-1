
size(6cm);

import "../../common/asy/utils.ah" as utils;
import "quadrics.ah" as quadrics;

draw_axes(-6, 6, 1, -3, 6, 1);
newpage();


draw_axes(-6, 6, 1, -3, 6, 1);
real p = 2;
real f(real x) { return x^2/(4*p); }
draw(graph(f, -6, 6), black+1bp);
newpage();


draw_axes(-6, 6, 1, -3, 6, 1);
draw(graph(f, -6, 6), black+1bp);

pair P = (4, f(4));
pair V = (0,0);
pair F = (0,p);
pair Q = (P.x, -p);

dot(V, pens[0]+5bp);
dot(F, pens[0]+5bp);
draw((-6,-p)--(6,-p), pens[0]);
newpage();


draw_axes(-6, 6, 1, -3, 6, 1);
draw(graph(f, -6, 6), black+1bp);

dot(V, pens[0]+5bp);
dot(F, pens[0]+5bp);
dot(Q, pens[0]+5bp);
dot(P, black+5bp);
pen aux = pens[0] + linewidth(0.7) + linetype(new real[]{1,3});
draw((4, f(4)-0.1)--Q, aux);       
draw(F--P-0.1, aux);       
draw((-6,-p)--(6,-p), pens[0]); 
