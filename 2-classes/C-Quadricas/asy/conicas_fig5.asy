import "utils.ah" as utils;

size(8cm, 0);
currentprojection = perspective(camera=(4,2,2), up=Z, target=(0,0,0));

real h = 2;
utils.drawCone(h, lightblue+opacity(0.6));

real z0 = 0;
utils.drawPlane((0,0,z0), (1,0,0), (0,1,0), 2, 2, gray+opacity(0.5));
dot((0,0,0), red+3bp);

