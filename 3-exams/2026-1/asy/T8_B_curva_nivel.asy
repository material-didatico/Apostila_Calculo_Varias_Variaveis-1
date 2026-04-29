
import "./utils.ah" as utils;

size(7.5cm, 7.5cm, IgnoreAspect);

draw_axes(-7, 7, 1, -7, 7, 1);

fill(box((-7,-3), (7,3)), gray + opacity(0.2));

draw((-7,-2)--(7,-2), pens[0] + linetype(new real[] {4,4}));
draw((-7, 2)--(7, 2), pens[0] + linetype(new real[] {4,4}));

clip_to_axis();
