
import "./utils.ah" as utils;

size(7.5cm, 7.5cm, IgnoreAspect);

draw_axes(-7, 7, 1, -7, 7, 1);

draw(ellipse((0,0), 3, 2), pens[0] );

clip_to_axis();
