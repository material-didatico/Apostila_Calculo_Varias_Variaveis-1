
import "./utils.ah" as utils;

drawAxis();

real xa(real t) { return t; }
real ya(real t) { return -t^2; }

draw(graph(xa, ya, -sqrt(7), sqrt(7)), blue);
