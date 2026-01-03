
import "../../0-common/asy/utils.ah" as utils;
import "cadeia.ah" as cadeia;

size(250);

pair Z  = ( 0.0, 3.0);
pair X  = (-1.5, 1.5);
pair Y  = ( 1.5, 1.5);
pair S  = (-1.0, 0.0);
pair T  = ( 1.0, 0.0);

caixa( "$z$", Z );
caixa( "$x$", X );
caixa( "$y$", Y );
caixa( "$s$", S );
caixa( "$t$", T );

draw( X+( 0.1,0.1)--Z-( 0.1,0.1), Arrow(TeXHead) );
draw( Y+(-0.1,0.1)--Z-(-0.1,0.1), Arrow(TeXHead) );
draw( S+(   0,0.1)--X-(-0.1,0.1), Arrow(TeXHead) );
draw( T+(   0,0.1)--X-(-0.1,0.1), Arrow(TeXHead) );
draw( S+(   0,0.1)--Y-( 0.1,0.1), Arrow(TeXHead) );
draw( T+(   0,0.1)--Y-( 0.1,0.1), Arrow(TeXHead) );

label( D("z", "x"), midpoint(X--Z), NW );
label( D("z", "y"), midpoint(Y--Z), NE );
label( D("x", "s"), midpoint(S--X), SW );
label( D("x", "t"), midpoint(T--X), SE );
label( D("y", "s"), midpoint(S--Y), SW );
label( D("y", "t"), midpoint(T--Y), SE );
