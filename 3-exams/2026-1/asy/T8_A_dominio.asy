
import "./utils.ah" as utils;

size(7.5cm, 7.5cm, IgnoreAspect);

draw_axes(-7, 7, 1, -7, 7, 1);

fill(box((-3,-7), (3,7)), pens[0] + opacity(0.2));

draw((-3,-7)--(-3,7), pens[0] + linetype(new real[] {4,4}));
draw(( 3,-7)--( 3,7), pens[0] + linetype(new real[] {4,4}));

clip_to_axis();
