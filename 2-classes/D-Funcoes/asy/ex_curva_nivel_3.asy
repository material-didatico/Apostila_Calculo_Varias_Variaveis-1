//-----------------------------------------------------------------------------

import "../../0-common/asy/utils.ah" as utils;

size(0, 75mm);

real xmin = -5;
real xmax =  5;
real ymin = -5;
real ymax =  5;

draw_axes(xmin, xmax, 1, ymin, ymax, 1);

// pen dom_pen = gray(0.8);
pen cur1_pen = pens[0] + linewidth(1pt);
pen cur2_pen = pens[1] + linewidth(1pt);

// Domain
//-----------------------------------------------------------------------------

// filldraw( box((xmin, ymin), (xmax, ymax) ), dom_pen + opacity(0.3) );

// Curvas
//-----------------------------------------------------------------------------

draw((0, ymin)--(0, ymax), red + linewidth(1pt)); 
draw((xmin, 0)--(xmax, 0), red + linewidth(1pt)); 

label("$c=0$", (0, 0.2), NE);

real[] niveis = {-4, -2, 2, 4};

pen[] pp = {
    cur2_pen,
    cur2_pen,
    cur1_pen,
    cur1_pen,
};

for(int ii = 0; ii < niveis.length; ++ii)
{
  real f(real x)
  {
  	return niveis[ii] / x;
  }

	draw(graph(f, xmin, -0.01), pp[ii]);
	draw(graph(f, 0.001, xmax), pp[ii]);
}

label("$c=-4$", (-2.0, 2.0 ), NW);
label("$c=-2$", (-2.2, 0.8 ), SE);
label("$c= 2$", ( 1.6, 1.0 ), NE);
label("$c= 4$", ( 1.2, 3.2 ), NE);

clip_to_axis();

//-----------------------------------------------------------------------------
