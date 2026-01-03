//-----------------------------------------------------------------------------

import "../../0-common/asy/utils.ah" as utils;

size(250);

real R = 1;               
pair P = (0.3, 0.5);      
real r = 0.2;             

filldraw(circle((0,0), R), gray(0.9), invisible);

draw_axes(-1.5, 1.5, 1, -1.5, 1.5, 1);

label("$0$", (0,0), SW);

draw(circle(P, r), pens[0] + dashed + linewidth(1.2pt));
filldraw(circle(P, r), gray(0.8), invisible);

dot(P);

newpage();

size(250);
real R = 1;               
pair P = (0.8, 0.6);     
P = R*unit(P);            
real r = 0.2;             

draw(circle((0,0), R), black+linewidth(1.2pt));

picture inter;     
fill(inter, circle(P, r), gray(0.8)); 
clip(inter, circle((0,0), R));
add(inter);

dot(P, black);

draw(circle(P, r), pens[0]+dashed+linewidth(1.2pt));

draw_axes(-1.5, 1.5, 1, -1.5, 1.5, 1);
label("$0$", (0,0), SW);
newpage();

size(250);
real R = 1;                                     

filldraw(circle((0,0), R), gray(0.9), pens[0]+linewidth(1.2pt));
draw_axes(-1.5, 1.5, 1, -1.5, 1.5, 1);
label("$0$", (0,0), SW);
