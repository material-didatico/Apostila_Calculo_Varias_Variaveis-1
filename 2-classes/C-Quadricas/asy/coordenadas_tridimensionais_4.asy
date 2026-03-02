//-----------------------------------------------------------------------------

import "../../0-common/asy/utils.ah" as utils;
import "quadrics.ah" as quadrics;

size(10.5cm);

currentprojection = perspective(5,3,2);

draw((1.6,0,0)--(1.6,1.6,0)--(0,1.9,0), invisible );

pen azulClaro = rgb(0.7, 0.85, 1.0) + opacity(0.4);

//-----------------------------------------------------------------------------

draw((0,0,0)--(1.3,0,0), Arrow3);
draw((0,0,0)--(0,1.3,0), Arrow3);
draw((0,0,0)--(0,0,1.3), Arrow3);

label("$x$", (1.3,0,0), NW);
label("$y$", (0,1.3,0), NE);
label("$z$", (0,0,1.3), E );

//-----------------------------------------------------------------------------

triple AA = (0,0,0);
triple BB = (1,0,0);
triple CC = (1,1,0);
triple DD = (0,1,0);
triple EE = (0,0,1);
triple FF = (1,0,1);
triple HH = (0,1,1);
triple PP = (1,1,1);

//-----------------------------------------------------------------------------

draw(surface(CC--DD--HH--PP--cycle), azulClaro);

draw(CC--DD--HH--PP--cycle, black);

dot("$P(x, y, z)$", PP, SE);
dot("$( 0, y, 0)$", DD, NE);
dot("$( x, y, 0)$", CC, S );
dot("$( 0, y, z)$", HH, E );

label("$y$ constante", (0,1.8,0.8), SW);

//-----------------------------------------------------------------------------
