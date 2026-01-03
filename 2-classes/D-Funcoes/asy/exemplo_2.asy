import "../../0-common/asy/utils.ah" as utils;
size(250);

real R = 2;               
real xmin = -3, xmax = 3;
real ymin = -3, ymax = 3;

path total = box((xmin, ymin), (xmax, ymax));

path circleR = circle((0,0), R);

filldraw(total--reverse(circleR)--cycle, gray(0.8), invisible);


draw(circleR, blue + linewidth(1.2pt));


draw_axes(xmin, xmax, 1, ymin, ymax, 1);

