//-----------------------------------------------------------------------------

import "../../common/asy/utils.ah" as utils;

size(4cm, 6cm);

pair O = (0,0);
pair Z = (1.9,2.2);
pair C = (1.9,-2.2);
pair X = (Z.x, 0);

pen pen1 = black   + linewidth(1);
pen pen2 = magenta + linewidth(2);

// Sem destaques
//-----------------------------------------------------------------------------

xaxis(YZero, -1, 3, L="$x$", arrow=Arrows(5));
yaxis(XZero, -3, 3, L="$y$", arrow=Arrows(5));

draw(O--X, pen1);
draw(X--Z, pen1);

dot(O);
dot(Z);

label("$z=x+yi$", Z, N);

label("$x$", (Z.x/2,   0), S);
label("$y$", (Z.x, Z.y/2), E);

draw(O--Z);
label("$\rho$", Z/2, NW);

draw(arc(O, 0.5, 0, 49) );
label("$\varphi$", (1.05, 0.5));

dot(C);
draw(O--C, pen2);
label("$\bar{z}=x-yi$", C, S);

//-----------------------------------------------------------------------------
