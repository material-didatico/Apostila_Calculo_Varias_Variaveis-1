
import "./utils.ah" as utils;

drawAxis();

real xa(real t) { return 4 - t^2; }
real ya(real t) { return t; }
draw(graph(xa, ya, -sqrt(11), sqrt(11)), pens[0]);
label("$c=0$", (3.6,1), E );

real xb(real t) { return 3 - t^2; }
real yb(real t) { return t; }
draw(graph(xb, yb, -sqrt(10), sqrt(10)), pens[1]);
label("$c=1$", (2.5,0.5), W );

real xc(real t) { return - t^2; }
real yc(real t) { return t; }
draw(graph(xc, yc, -sqrt(7), sqrt(7)), pens[2]);
label("$c=2$", (-1,0.5), W );
