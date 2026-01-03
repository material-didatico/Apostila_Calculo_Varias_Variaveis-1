//-----------------------------------------------------------------------------

import "../../0-common/asy/utils.ah" as utils;
import "cadeia.ah" as cadeia;

size(250);

pair U  = ( 0, 3.0);
pair X  = (-2, 1.5);
pair Y  = ( 0, 1.5);
pair Z  = ( 2, 1.5);
pair T  = ( 0, 0.0);

caixa( "$u$", U );
caixa( "$x$", X );
caixa( "$y$", Y );
caixa( "$z$", Z );
caixa( "$t$", T );

draw( X+( 0.05,0.05)--U-( 0.05,0.05), Arrow(TeXHead) );
draw( Y+(    0,0.05)--U-(    0,0.05), Arrow(TeXHead) );
draw( Z+(-0.05,0.05)--U-(-0.05,0.05), Arrow(TeXHead) );
draw( T+(    0,0.05)--X-(    0,0.05), Arrow(TeXHead) );
draw( T+(    0,0.05)--Y-(    0,0.05), Arrow(TeXHead) );
draw( T+(    0,0.05)--Z-(    0,0.05), Arrow(TeXHead) );

label( D("u", "x"), midpoint(X--U), NW );
label( D("u", "y"), midpoint(Y--U), N  );
label( D("u", "z"), midpoint(Z--U), NE );
label( D("x", "t"), midpoint(T--X), SW );
label( D("y", "t"), midpoint(T--Y), S  );
label( D("z", "t"), midpoint(T--Z), SE );

