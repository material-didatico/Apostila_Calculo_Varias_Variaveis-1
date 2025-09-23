
size(6cm);

import "../../common/asy/utils.ah" as utils;
import "quadrics.ah" as quadrics;

real a = 5;
real b = 3; 
real c = sqrt(a^2 - b^2); 


pair E(real t) { return (a*cos(t), b*sin(t)); }


pair C  = (0,0);   
pair F1 = (-c,0);  
pair F2 = ( c,0);  
pair P  = E(pi/4);

// --------------------

draw_axes(-6, 6, 1, -4, 4, 1);
newpage();

// --------------------

draw_axes(-6, 6, 1, -4, 4, 1);
draw(graph(E, 0, 2pi), black+1bp);
newpage();

// --------------------

draw_axes(-6, 6, 1, -4, 4, 1);
draw(graph(E, 0, 2pi), black+1bp);

dot(C,  pens[0]+5bp);
dot(F1, pens[0]+5bp);
dot(F2, pens[0]+5bp);
newpage();

// --------------------

draw_axes(-6, 6, 1, -4, 4, 1);
draw(graph(E, 0, 2pi), black+1bp);

dot(C,  pens[0]+5bp);
dot(F1, pens[0]+5bp);
dot(F2, pens[0]+5bp);
dot(P,  black+5bp);

pen aux = pens[0] + linewidth(0.7) + linetype(new real[]{1,3});
draw(P--F1, aux);
draw(P--F2, aux);
