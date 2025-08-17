
import "./utils.ah" as utils;

drawAxis();

draw((-7,-7)--(7,7), blue);
label("$y=x$", (4.2, 3), blue);

draw((-7,7)--(7,-7), blue);
label("$y=-x$", (-3, 1.5), blue);
