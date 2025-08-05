
import "./utils.ah" as utils;

drawAxis();

real x(real t) { return 4 - t^2; }
real y(real t) { return t; }

fill(graph(x, y, -sqrt(11), sqrt(11))--cycle, lightblue+opacity(0.3));

draw(graph(x, y, -sqrt(11), sqrt(11)), blue);

label("$x \leq 4 - y^2$", (2.3, 2.3), blue);
