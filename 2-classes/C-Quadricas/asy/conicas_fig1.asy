import "utils.ah" as utils;

size(8cm, 0);
currentprojection = perspective(camera=(6,2,5), up=Z, target=(0,0,1));

real h = 3;
utils.drawCone(h, lightblue+opacity(0.6));

real zc = h/2;
utils.drawPlane((0,0,zc), (1,0,0), (0,1,0), 2, 4, gray+opacity(0.5));
draw(circle((0,0,zc), zc, Z), red+1.2bp);