
size(0, 7.5cm);

import "./utils.ah" as utils;

real x_min = -5;
real x_max =  5;
real y_min = -1;
real y_max =  6;

draw_axes(x_min, x_max, 1, y_min, y_max, 1);

pair f(real t){
	return (t, t^2);
}

draw(graph(f,-4, 0), gray + 0.3bp);
draw(graph(f, 0, 4), pens[0]);

dot((0,0) );
dot((1,1) );
dot((2,4) );

label( "$(0, 0)$", (-0.5, 0.3) );
label( "$(1, 1)$", ( 1.6, 1  ) );
label( "$(2, 4)$", ( 2.6, 4  ) );

clip_to_axis();
