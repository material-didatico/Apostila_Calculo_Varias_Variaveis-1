
import "./utils.ah" as utils;

drawAxis();

draw((-7/2,-7)--(7/2,7), blue);
label("$c=-2$", (-4,-4), E );

draw(((4-7)/2,-7)--((4+7)/2,7), blue);
label("$c=0$", (1.5,-2), E );

draw(((16-7)/2,-7)--(7,2*7-16), blue);
label("$c=2$", (4,-4), E );
