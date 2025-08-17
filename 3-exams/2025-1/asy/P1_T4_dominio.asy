
import "./utils.ah" as utils;

drawAxis();

fill(((pi-7,7)--(-7,7)--(-7,-7)--(7,-7)--(7,pi-7)--cycle), lightblue+opacity(0.3));

draw((pi-7,7)--(7,pi-7),       blue);
label("$y < \pi - x$", (2, 3), blue);
