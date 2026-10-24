
import "./utils.ah" as utils;

size(7.5cm, 7.5cm, IgnoreAspect);

draw_axes(-7, 7, 1, -7, 7, 1);

pair f(real t)
{
  return (
    3 * sin(sqrt(t)) - 1,
    5 * cos(sqrt(t)) + 1
  );
}

draw(graph(f, pi^2/4, 9*pi^2/4), pens[0]+1);

draw( f(pi^2/4)  --f(pi^2/4)   + (0,-5),     pens[1]+1, Arrow(size=3mm));
draw( f(pi^2)    --f(pi^2)     + (-3/2,0), pens[1]+1, Arrow(size=3mm));
draw( f(9*pi^2/4)--f(9*pi^2/4) + (0,5/3),  pens[1]+1, Arrow(size=3mm));

dot(f(pi^2/4),   pens[0]+4);
dot(f(pi^2),     pens[0]+4);
dot(f(9*pi^2/4), pens[0]+4);

clip_to_axis();
