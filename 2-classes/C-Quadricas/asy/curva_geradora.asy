import "utils.ah" as utils;

currentprojection = perspective(4,2,2);

real zmin = 0, zmax = 2;


real smooth_step(real x) {
return x^2 * (3.2 - 2.1*x);
}

real f(real z) {
real t = 1 - z / zmax; 
return 1 + 1.4 * smooth_step(t);

}

int N = 100;
real xmin = -1, xmax = 3;


for (int i = 0; i < N; ++i) {
real z1 = zmin + (zmax - zmin)*i/N;
real z2 = zmin + (zmax - zmin)*(i+1)/N;
triple p1 = (xmin, f(z1), z1);
triple p2 = (xmax, f(z1), z1);
triple p3 = (xmax, f(z2), z2);
triple p4 = (xmin, f(z2), z2);
surface painel = surface(p1--p2--p3--p4--cycle);
draw(painel, rgb(0.7,0.85,1.0) + opacity(0.8));
}

// Eixos
draw((xmin-0.5,0,0)--(xmax+0.5,0,0), Arrow3); label("$x$", (xmax+0.5,0,0), (1,0,0));
draw((0,-1,0)--(0,3,0), Arrow3); label("$y$", (0,3,0), (0,1,0));
draw((0,0,zmin-0.2)--(0,0,zmax+0.5), Arrow3); label("$z$", (0,0,zmax+0.5), (0,0,1));

path3 curva;
for (int i = 0; i <= N; ++i) {
real z = zmin + (zmax - zmin)*i/N;
triple ponto = (0, f(z), z);
if (i == 0)
curva = ponto;
else
curva = curva .. ponto;
}
draw(curva, blue+1bp);

for (int i = 0; i <= N; i += 5) {
real z = zmin + (zmax - zmin)*i/N;
draw((xmin, f(z), z)--(xmax, f(z), z), gray);
}
