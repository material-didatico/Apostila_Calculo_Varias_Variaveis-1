
size(6cm);

import "../../common/asy/utils.ah" as utils;
import "quadrics.ah" as quadrics;

currentprojection = perspective(5,3,2);

real r = 1;
real h = 2;
int N = 60;

path3 baseInferior = circle((0,0,0), r, Z);
path3 baseSuperior = circle((0,0,h), r, Z);


for (int i = 0; i < N; ++i) {
real theta1 = 2pi * i / N;
real theta2 = 2pi * (i+1) / N;
triple p1 = (r*cos(theta1), r*sin(theta1), 0);
triple p2 = (r*cos(theta2), r*sin(theta2), 0);
triple p3 = (r*cos(theta2), r*sin(theta2), h);
triple p4 = (r*cos(theta1), r*sin(theta1), h);
surface painel = surface(p1--p2--p3--p4--cycle);
draw(painel, rgb(0.7,0.85,1.0) + opacity(0.4));
}

draw(baseInferior, rgb(0.7,0.85,1.0) + opacity(0.8));
draw(baseSuperior, rgb(0.7,0.85,1.0) + opacity(0.4));
draw(baseInferior, black);
draw(baseSuperior, black);


triple A = (0,0,0);
triple B = (0,0,h);
triple C = (r,0,0);
dot("$A$", A, SW);
dot("$B$", B, NW);
dot("$C$", C, SE);


draw(A--C, dashed + red);
label("$raio$", midpoint(A--C), S);


draw(A--B, dashed + red);
label("$altura$", midpoint(A--B), W);



