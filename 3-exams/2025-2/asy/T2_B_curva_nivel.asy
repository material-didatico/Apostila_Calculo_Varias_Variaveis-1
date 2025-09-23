
import "./utils.ah" as utils;

size(7.5cm, 7.5cm, IgnoreAspect);

draw_axes(-7, 7, 1, -7, 7, 1);

draw(circle((0,0), 2*sqrt(5)), pens[0]);

label("$r=2\sqrt{5}$", (4.0, 4.1), pens[0]);

clip_to_axis();
