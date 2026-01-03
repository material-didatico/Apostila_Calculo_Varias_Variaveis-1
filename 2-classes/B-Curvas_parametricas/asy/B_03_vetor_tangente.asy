//-----------------------------------------------------------------------------

import "../../0-common/asy/utils.ah" as utils;

size(0, 7.5cm);

pair f(real t)
{
  return (t, sqrt(t) - 0.2*cos(2*t) );
}

pair df(real t)
{
  return (1, 1/(2*sqrt(t)) + 2*0.2*sin(2*t) );
}

draw(graph(f, 1, 6), pens[0]);

pair a =    f(1.4);
pair b = a+df(1.4);

pen arrowpen = pens[1] + 2pt;
pen dotpen   = pens[1] + 6pt; 
pen labelpen = pens[1] + fontsize(12pt);

draw( a--b, arrowpen, Arrow(TeXHead));
dot(a, dotpen );
label("$\gamma\left(t_1\right)$",  a+(0,-0.1),   labelpen);
label("$\gamma'\left(t_1\right)$", b+(0.06,0.1), labelpen);

a =    f(3.1);
b = a+df(3.1);

draw( a--b, arrowpen, Arrow(TeXHead));
dot(a, dotpen );
label("$\gamma\left(t_2\right)$",  a+(0,-0.1),  labelpen);
label("$\gamma'\left(t_2\right)$", b+(0.1,0.1), labelpen);

a =    f(4.7);
b = a+df(4.7);

draw( a--b, arrowpen, Arrow(TeXHead));
dot(a, dotpen );
label("$\gamma\left(t_3\right)$",  a+(0,-0.1),  labelpen);
label("$\gamma'\left(t_3\right)$", b+(0.1,0.1), labelpen);
