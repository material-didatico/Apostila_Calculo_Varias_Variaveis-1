import "../../common/asy/utils.ah" as utils;
size(250);

real xmin = -5, xmax = 5;
real ymin = -5, ymax = 5;


draw_axes(xmin, xmax, 1, ymin, ymax, 1);


real[] c_valores = {-4, -2, 2, 4};

for(int i = 0; i < c_valores.length; ++i) {
	real c = c_valores[i];
	real f(real x) {
	if (abs(x) < 1e-6) return 0; 
	return c / x;
	}
	
	draw(graph(f, xmin + 0.2, xmax - 0.2), gray(0.6) + linewidth(1));
}


draw((0, ymin)--(0, ymax), dashed + black); 
draw((xmin, 0)--(xmax, 0), dashed + black); 

clip_to_axis();
