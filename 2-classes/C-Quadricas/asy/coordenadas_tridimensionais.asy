import "utils.ah" as utils;

currentprojection = perspective(5,3,2);

pen azulClaro = rgb(0.7, 0.85, 1.0) + opacity(0.4);



triple A = (0,0,0);
triple B = (1,0,0);
triple C = (1,1,0);
triple D = (0,1,0);
triple E = (0,0,1);
triple F = (1,0,1);
triple G = (1,1,1);
triple H = (0,1,1);


surface base     = surface(A--B--C--D--cycle);
surface topo     = surface(E--F--G--H--cycle);
surface lateral1 = surface(A--B--F--E--cycle);
surface lateral2 = surface(B--C--G--F--cycle);
surface lateral3 = surface(C--D--H--G--cycle);
surface lateral4 = surface(D--A--E--H--cycle);


draw(base, azulClaro);
draw(topo, azulClaro);
draw(lateral1, azulClaro);
draw(lateral2, azulClaro);
draw(lateral3, azulClaro);
draw(lateral4, azulClaro);


draw(A--B--C--D--A, black);
draw(E--F--G--H--E, black);
draw(A--E, black);
draw(B--F, black);
draw(C--G, black);
draw(D--H, black);


draw((0,0,0)--(1.3,0,0), Arrow3);
draw((0,0,0)--(0,1.3,0), Arrow3);
draw((0,0,0)--(0,0,1.3), Arrow3);
label("$x$", (1.3,0,0), E);
label("$y$", (0,1.3,0), N);
label("$z$", (0,0,1.3), Z);


triple P = (1,1,1);
dot("$P(x,y,z)$", P, NE);
dot("$0$", A, SW);
dot("$(x,0,0)$", B, SE);
dot("$(0,y,0)$", D, NW);
dot("$(0,0,z)$", E, S);
dot("$(x,y,0)$", C, NE);
dot("$(x,0,z)$", F, E);
dot("$(0,y,z)$", H, N);

label("x = constante", (1.25,0.5,0), E);
label("y = constante", (0.5,1.35,0), N);
label("z = constante", (0.5,0,1.15), Z);

