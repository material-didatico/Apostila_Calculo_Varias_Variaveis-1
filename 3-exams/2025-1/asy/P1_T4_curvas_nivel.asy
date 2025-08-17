
import "./utils.ah" as utils;

drawAxis();

real xmin = -7, xmax = 7;
real ymin = -7, ymax = 7;

pair evalLeftPoint(real a)
{
  real x = xmin;
  real y = pi - a - x;

  if( y > ymax )
  {
    y = ymax;
    x = pi -a -y;
  }

  return (x, y);
}

pair evalRightPoint(real a)
{
  real x = xmax;
  real y = pi - a - x;

  if( y < ymin )
  {
    y = ymin;
    x = pi -a -y;
  }

  return (x, y);
}

draw( evalLeftPoint(   0)--evalRightPoint(   0), dashed+gray);
draw( evalLeftPoint(pi-2)--evalRightPoint(pi-2), pens[0]);
draw( evalLeftPoint(pi  )--evalRightPoint(pi  ), pens[1]);
draw( evalLeftPoint(pi+2)--evalRightPoint(pi+2), pens[2]);

label("$c = \ln(\pi+2)$", (-4,6), E);
label("$c = \ln(\pi)$",   (-3,3), E);
label("$c = \ln(\pi-2)$", (-3,1), W);
