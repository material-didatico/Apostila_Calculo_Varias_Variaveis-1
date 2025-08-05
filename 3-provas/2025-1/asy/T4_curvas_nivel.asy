
import "./utils.ah" as utils;

drawAxis();

pair center = (0,0);

real[] c_values = {-3, -2, -1};

for (int i = 0; i < pens.length; ++i)
{
  real c = c_values[i];
  real r = sqrt(9 - (c + 3)^2);

  draw(shift(center)*Circle((0,0), r), pens[i]);
}

label("$c=-3$", (1.0,3.1), E );
label("$c=-2$", (2.0,2.0), E );
label("$c=-1$", (0.3,0.5), E );

