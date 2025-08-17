
import "./utils.ah" as utils;

drawAxis();

draw(Circle((0,0), 4), blue);
fill(circle((0,0), 4), lightblue+opacity(0.3));

dot((0,0), blue);
label("$x^2 + y^2 \leq 16$", (5, 3), blue);
