
import "../../0-common/asy/utils.ah" as utils;
import "cadeia.ah" as cadeia;

size(250);

pair W  = ( 0, 3.0);
pair X  = (-2, 1.5);
pair Y  = ( 0, 1.5);
pair Z  = ( 2, 1.5);
pair R  = (-1, 0.0);
pair S  = ( 1, 0.0);

cadeia.caixa( "$w$", W );
cadeia.caixa( "$x$", X );
cadeia.caixa( "$y$", Y );
cadeia.caixa( "$z$", Z );
cadeia.caixa( "$r$", R );
cadeia.caixa( "$s$", S );

draw( X+( 0.05,0.05)--W-( 0.05,0.05), Arrow(TeXHead) );
draw( Y+(    0,0.05)--W-(    0,0.05), Arrow(TeXHead) );
draw( Z+(-0.05,0.05)--W-(-0.05,0.05), Arrow(TeXHead) );
draw( R+(    0,0.05)--X-(-0.05,0.05), Arrow(TeXHead) );
draw( S+(    0,0.05)--X-(-0.05,0.05), Arrow(TeXHead) );
draw( R+(    0,0.05)--Y-(    0,0.05), Arrow(TeXHead) );
draw( S+(    0,0.05)--Y-(    0,0.05), Arrow(TeXHead) );
draw( R+(    0,0.05)--Z-( 0.05,0.05), Arrow(TeXHead) );
draw( S+(    0,0.05)--Z-( 0.05,0.05), Arrow(TeXHead) );

label( cadeia.D("w", "x"), midpoint(X--W), NW );
label( cadeia.D("w", "y"), midpoint(Y--W), N  );
label( cadeia.D("w", "z"), midpoint(Z--W), NE );
label( cadeia.D("x", "r"), midpoint(R--X), SW );
label( cadeia.D("x", "s"), midpoint(S--X), SE );
label( cadeia.D("y", "r"), midpoint(R--Y), SW );
label( cadeia.D("y", "s"), midpoint(S--Y), SE );
label( cadeia.D("z", "r"), midpoint(R--Z), SW );
label( cadeia.D("z", "s"), midpoint(S--Z), SE );
