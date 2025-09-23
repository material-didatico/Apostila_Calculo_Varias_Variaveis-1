
import "./utils.ah" as utils;

size(7.5cm, 7.5cm, IgnoreAspect);

draw_axes(-7, 7, 1, -7, 7, 1);

pair f(real t)
{
  return (
    5 * sin( pi/2 -t ) - 1,
    3 * cos( pi/2 -t ) + 1
  );
}

draw(graph(f, 0, pi), pens[0]+1);

draw( f(0)   --f(0)   +( 0,3), pens[1]+1, Arrow(size=3mm));
draw( f(pi/2)--f(pi/2)+(-5,0), pens[1]+1, Arrow(size=3mm));
draw( f(pi)  --f(pi)  +(0,-3), pens[1]+1, Arrow(size=3mm));

dot(f(0),    pens[0]+4);
dot(f(pi/2), pens[0]+4);
dot(f(pi),   pens[0]+4);

clip_to_axis();
