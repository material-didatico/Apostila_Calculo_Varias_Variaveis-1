
import "./utils.ah" as utils;

size(7.5cm, 7.5cm, IgnoreAspect);

draw_axes(-7, 7, 1, -7, 7, 1);

pair f(real t)
{
  return (
    3 * sin(t^2) + 3,
    3 * cos(t^2) + 1
  );
}

draw(graph(f, 0, sqrt(pi)), pens[0]+1);

draw( f(sqrt(pi/2))--f(sqrt(pi/2))+(0,-6), pens[1]+1, Arrow(size=3mm));
draw( f(sqrt(pi))  --f(sqrt(pi))  +(-9,0), pens[1]+1, Arrow(size=3mm));

dot(f(0),          pens[0]+4);
dot(f(sqrt(pi/2)), pens[0]+4);
dot(f(sqrt(pi)),   pens[0]+4);

clip_to_axis();
