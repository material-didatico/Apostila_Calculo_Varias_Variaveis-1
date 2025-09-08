import "utils.ah" as utils;
size(250);


real xmin = -10, xmax = 10;
real ymin = -10, ymax = 10;


draw_axes(xmin, xmax, 2, ymin, ymax, 2);


real[] niveis = {0, 20, 40, 60, 80, 90, 99};


for(int i = 0; i < niveis.length; ++i) {
	real r = sqrt(100 - niveis[i]);
	draw(circle((0,0), r), gray(0.6) + linewidth(1));
}
