
import "./utils.ah" as utils;

size(7.5cm, 7.5cm, IgnoreAspect);

draw_axes(-7, 7, 1, -7, 7, 1);

filloutside(circle((0,0), 2), pens[0] + opacity(0.2));

draw(circle((0,0), 2), pens[0] + linetype(new real[] {4,4}));

label("$r=2$", (2.0, 2.1), pens[0]);

clip_to_axis();
