
import "./utils.ah" as utils;

drawAxis();

pair center = (0,0);

real[] c_values = {1, 2, 4};

for (int i = 0; i < pens.length; ++i)
{
  real c = c_values[i];
  real r = sqrt(16-(4-c)^2);

  draw(shift(center)*Circle((0,0), r), pens[i]);
}

label("$c=1$", (1.0,0.7), E );
label("$c=2$", (2.0,2.0), E );
label("$c=4$", (1.5,4.0), E );

