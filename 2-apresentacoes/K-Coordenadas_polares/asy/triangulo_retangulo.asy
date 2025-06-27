
import "./utils.ah" as utils;

size(5cm, 5cm, IgnoreAspect);

pair A, B, C;
A = (0,0);
B = (4,0);
C = (4,3);

draw(A--B--C--cycle, blue+1bp);

draw(arc(A, 1, 0, 37));
label("$\theta$", (1.2, 0.35));

label("$r$", (A+C)/2, NW);
label("$x$", (A+B)/2, S);
label("$y$", (B+C)/2, E);
