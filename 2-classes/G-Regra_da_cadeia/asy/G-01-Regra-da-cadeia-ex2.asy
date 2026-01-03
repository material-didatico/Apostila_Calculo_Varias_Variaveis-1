
import "../../0-common/asy/utils.ah" as utils;
import "cadeia.ah" as cadeia;

size(6cm, 6cm);

pair W  = ( 0, 3.0);
pair X  = (-2, 1.5);
pair Y  = ( 0, 1.5);
pair Z  = ( 2, 1.5);
pair R  = (-1, 0.0);
pair S  = ( 1, 0.0);

caixa( "$w$", W );
caixa( "$x$", X );
caixa( "$y$", Y );
caixa( "$z$", Z );
caixa( "$r$", R );
caixa( "$s$", S );

draw( X+( 0.05, 0.05)--W-( 0.05, 0.05), Arrow(TeXHead) );
draw( Y+(    0, 0.05)--W-(    0, 0.05), Arrow(TeXHead) );
draw( Z+(-0.05, 0.05)--W-(-0.05, 0.05), Arrow(TeXHead) );
draw( R+(    0, 0.05)--X-(-0.05, 0.05), Arrow(TeXHead) );
draw( S+(    0, 0.05)--X-(-0.05, 0.05), Arrow(TeXHead) );
draw( R+(    0, 0.05)--Y-(    0, 0.05), Arrow(TeXHead) );
draw( S+(    0, 0.05)--Y-(    0, 0.05), Arrow(TeXHead) );
draw( R+(    0, 0.05)--Z-( 0.05, 0.05), Arrow(TeXHead) );
draw( S+(    0, 0.05)--Z-( 0.05, 0.05), Arrow(TeXHead) );

label( D("w", "x"), midpoint(X--W), NW );
label( D("w", "y"), midpoint(Y--W), N  );
label( D("w", "z"), midpoint(Z--W), NE );
label( D("x", "r"), midpoint(R--X), SW );
label( D("x", "s"), midpoint(S--X), SE );
label( D("y", "r"), midpoint(R--Y), SW );
label( D("y", "s"), midpoint(S--Y), SE );
label( D("z", "r"), midpoint(R--Z), SW );
label( D("z", "s"), midpoint(S--Z), SE );
