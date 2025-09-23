
import "./utils.ah" as utils;

size(7.5cm, 7.5cm, IgnoreAspect);

draw_axes(-7, 7, 1, -7, 7, 1);

draw(circle((0,0), sqrt(5)), pens[0]);

label("$r=\sqrt{5}$", (2.6, 2.7), pens[0]);

clip_to_axis();
