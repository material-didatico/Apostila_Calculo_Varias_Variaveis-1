
import "./utils.ah" as utils;

size(7.5cm, 7.5cm, IgnoreAspect);

draw_axes(-7, 7, 1, -7, 7, 1);

pair f(real y)
{
  return (
    1/8 - 2 * y^2,
    y
  );
}

draw(graph(f, -3, 3), pens[0] );


clip_to_axis();
