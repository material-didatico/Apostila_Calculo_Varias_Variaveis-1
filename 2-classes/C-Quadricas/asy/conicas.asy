
size(6cm);

import "../../0-common/asy/utils.ah" as utils;
import "quadrics.ah" as quadrics;

real larguraPlano; 
real alturaPlano;

// ========================
// FIGURA 1 – Círculo
// ========================
currentprojection = perspective(camera=(5,1,4), up=Z, target=(0,0,1));
real h = 2.0;
larguraPlano = h;
alturaPlano = 2*h;
quadrics.drawCone(h, lightblue+opacity(0.6));

real zc = h/2;
quadrics.drawPlane((0,0,zc), (1,0,0), (0,1,0), larguraPlano, alturaPlano, gray+opacity(0.5));
draw(circle((0,0,zc), zc, Z), red+1.2bp);
newpage();

// ========================
// FIGURA 2 – Elipse
// ========================
currentprojection = perspective(camera=(5,1,4), up=Z, target=(0,0,1));
h = 2;
larguraPlano = h;
alturaPlano = 2*h;
quadrics.drawCone(h, lightblue+opacity(0.6));

real z0 = 0.7, s = 0.15, t = -0.10;
quadrics.drawPlane((0,0,z0), (1,0,s), (0,1,t), larguraPlano, alturaPlano, gray+opacity(0.5));
//// quadrics.curvaElipse(z0, s, t, h, -3, 3, 400, red+1.2bp);
newpage();

// ========================
// FIGURA 3 – Parábola
// ========================
currentprojection = perspective(camera=(0.5,2,2), up=Z, target=(0,0,1));
h = 2;
larguraPlano = h;
alturaPlano = 2*h;
quadrics.drawCone(h, lightblue+opacity(0.6));

z0 = 0.5; s = 1.0; t = 0.0;
quadrics.drawPlane((0,0,z0), (1,0,s), (0,1,t), larguraPlano, alturaPlano, gray+opacity(0.5));
quadrics.curvaParabola(z0, s, t, h, -2.5, 2.5, 800, red+1.2bp);
newpage();

// ========================
// FIGURA 4 – Hipérbole
// ========================
currentprojection = perspective(camera=(-0.5,3,2));
h = 3;
larguraPlano = h;
alturaPlano = 2*h;
quadrics.drawCone(h, lightblue+opacity(0.6));

z0 = 2.5; s = 5; t = 0;
real x_centro = -z0*s / (s*s - 1);
real z_centro = z0 + s*x_centro;
triple centro_plano = (x_centro, 0, z_centro);

quadrics.drawPlane(centro_plano, (1,0,s), (0,1,t), larguraPlano, alturaPlano, gray+opacity(0.7));
quadrics.curvaHiperbole(z0, s, t, h, -h, h, 800, red+1.2bp);
newpage();

// ========================
// FIGURA 5 – Ponto
// ========================
currentprojection = perspective(camera=(4,2,2), up=Z, target=(0,0,0));
h = 2;
larguraPlano = h;
alturaPlano = 2*h;
quadrics.drawCone(h, lightblue+opacity(0.6));

z0 = 0;
quadrics.drawPlane((0,0,z0), (1,0,0), (0,1,0), larguraPlano, alturaPlano, gray+opacity(0.5));
dot((0,0,0), red+3bp);
newpage();

// ========================
// FIGURA 6 – Reta (plano com geratrizes)
// ========================
currentprojection = perspective(camera=(3,16,5), up=Z, target=(0,0,0));
h = 3; 
larguraPlano = h;
alturaPlano = 2*h;
z0 = 1.0; s = 1.0; t = 0.0;

quadrics.drawCone(h, lightblue+opacity(0.6));
quadrics.drawPlane((0,0,z0), (1,0,s), (0,1,t), larguraPlano, alturaPlano, gray+opacity(0.5));

triple origem = (0,0,0);
triple g1 = (h,0,h);
triple g2 = (-h,0,-h);
draw(origem--g1, dashed+blue+1bp);
draw(origem--g2, dashed+blue+1bp);
draw(origem+g2 -- (h,0,h), red+1.5bp);
newpage();

// ========================
// FIGURA 7 – Reta (plano coincidindo com ela)
// ========================
currentprojection = perspective(camera=(6,3,3), up=Z, target=(0,0,0));
h = 3; 
larguraPlano = h;
alturaPlano = 2*h;

quadrics.drawCone(h, lightblue+opacity(0.6));

triple centro = (0,0,0);
triple dir1 = (1,0,0);
triple dir2 = (0,0,1);

quadrics.drawPlane(centro, dir1, dir2, larguraPlano, alturaPlano, gray+opacity(0.5));

triple base = (0,0,-h);
triple topo = (0,0,h);
draw(base -- topo, red+1.5bp);

draw((0,0,0) -- ( h,0, h), dashed+blue+1bp);
draw((0,0,0) -- (-h,0,-h), dashed+blue+1bp);
