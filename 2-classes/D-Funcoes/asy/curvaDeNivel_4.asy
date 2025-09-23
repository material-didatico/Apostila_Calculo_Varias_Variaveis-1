import "../../common/asy/utils.ah" as utils;
size(250);


real xmin = -3.5, xmax = 3.5;
real ymin = -3.5, ymax = 3.5;


draw_axes(xmin, xmax, 1, ymin, ymax, 1);

draw(circle((0,0), 1), pens[0] + linewidth(1.2pt));


real[] c_valores = {-1, 0, 0.5, 1, 1.5, 2};


for(int i = 0; i < c_valores.length; ++i) {
	real c = c_valores[i];
	real r2 = 9 - exp(c);
	if (r2 > 0) {
		real r = sqrt(r2);
		draw(circle((0,0), r), gray(0.6) + linewidth(1));
	}
}

