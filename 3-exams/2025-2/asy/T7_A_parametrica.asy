
import "./utils.ah" as utils;

size(7.5cm, 7.5cm, IgnoreAspect);

draw_axes(-7, 7, 1, -7, 7, 1);

pair f(real t)
{
  return (
    6*sin(pi*t/2) -2,
    4 - 3*t
  );
}

pair df(real t)
{
  return (
    3*pi*cos(pi*t/2),
    -3
  ) / 3;
}

draw(graph(f, 0, 2), pens[0]+1);

real a = 0;
real b = 1;
real c = 2;

draw( f(a)--f(a)+df(a), pens[1]+1, Arrow(size=3mm));
draw( f(b)--f(b)+df(b), pens[1]+1, Arrow(size=3mm));
draw( f(c)--f(c)+df(c), pens[1]+1, Arrow(size=3mm));

dot(f(a), pens[0]+4);
dot(f(b), pens[0]+4);
dot(f(c), pens[0]+4);

clip_to_axis();
