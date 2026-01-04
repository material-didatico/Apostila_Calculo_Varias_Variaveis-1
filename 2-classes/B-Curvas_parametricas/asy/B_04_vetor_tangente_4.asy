//-----------------------------------------------------------------------------

import "../../0-common/asy/utils.ah" as utils;

size(0, 7.5cm);

draw(box((1, 1.1), (6, 2.9)), invisible);

pair f(real t)
{
  return (t, sqrt(t) - 0.3*cos(2*t) );
}

draw(graph(f, 1, 6), pens[0]);

label("$\gamma(t)$", f(6), SW, pens[0] + fontsize(18pt));

//-----------------------------------------------------------------------------

pair df(real t)
{
  return (1, 1/(2*sqrt(t)) + 2*0.2*sin(2*t) );
}

//-----------------------------------------------------------------------------

pen pen_arrow = pens[1] + 2pt;
pen pen_dot   = pens[1] + 6pt; 
pen pen_label = pens[1] + fontsize(18pt);

pen prev_pen_arrow = gray + 2pt;
pen prev_pen_dot   = gray + 6pt; 
pen prev_pen_label = gray + fontsize(18pt);

//-----------------------------------------------------------------------------

pair a =      f(1.4);
pair b = a + df(1.4);
pair c = a + df(1.4) * 0.6;

dot(a, prev_pen_dot );
label("$\gamma \left(t_1\right)$", a, SE, prev_pen_label);

draw( a--b, prev_pen_arrow, Arrow(TeXHead));
label("$\gamma'\left(t_1\right)$", c, NW, prev_pen_label);

a =      f(3.1);
b = a + df(3.1);
c = a + df(3.1) * 0.6;

dot(a, pen_dot );
label("$\gamma \left(t_2\right)$", a, SE, pen_label);

// draw( a--b, pen_arrow, Arrow(TeXHead));
// label("$\gamma'\left(t_2\right)$", c, SE, pen_label);
// 
// a =      f(4.5);
// b = a + df(4.5);
// c = a + df(4.5) * 0.6;
// 
// dot(a, pen_dot );
// label("$\gamma \left(t_3\right)$", a, SE, pen_label);
// 
// draw( a--b, pen_arrow, Arrow(TeXHead));
// label("$\gamma'\left(t_3\right)$", c, NW, pen_label);

//-----------------------------------------------------------------------------
