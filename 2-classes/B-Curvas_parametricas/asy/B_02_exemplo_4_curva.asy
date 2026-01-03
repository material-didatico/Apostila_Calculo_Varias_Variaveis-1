//-----------------------------------------------------------------------------

import "../../0-common/asy/utils.ah" as utils;

size(7.5cm, 7.5cm);

real x_min = -2.2;
real x_max =  2.2;
real y_min = -2.2;
real y_max =  2.2;

draw_axes(x_min, x_max, 1, y_min, y_max, 1);

pair f(real t){
  return (cos(t), sin(t));
}

draw(graph(f, -pi, pi, n=200), pens[0]);

real angle = pi/4;
pair tip = (cos(angle), sin(angle));

draw((0,0)--tip, pens[1]);

draw(arc((0,0), 0.3, 0, degrees(angle)), pens[1]);
label("$\theta$", (0.4, 0.2));

clip_to_axis();

