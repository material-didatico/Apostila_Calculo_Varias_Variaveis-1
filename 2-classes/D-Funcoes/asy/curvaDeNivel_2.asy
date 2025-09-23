import "../../common/asy/utils.ah" as utils;
size(250);

real xmin = -6, xmax = 6;
real ymin = -6, ymax = 6;


draw_axes(xmin, xmax, 2, ymin, ymax, 2);


real[] c_valores = {1, 2, 3, 4, 5};


for(int i = 0; i < c_valores.length; ++i) {
	draw(circle((0,0), c_valores[i]), gray(0.6) + linewidth(1));
}
