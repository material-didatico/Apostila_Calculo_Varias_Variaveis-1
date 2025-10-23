
import "../../common/asy/utils.ah" as utils;
import "cadeia.ah" as cadeia;

size(250);

pair W  = ( 0.0, 3.0);
pair X  = (-1.5, 1.5);
pair Y  = ( 1.5, 1.5);
pair R  = (-1.0, 0.0);
pair S  = ( 1.0, 0.0);

caixa( "$w$", W );
caixa( "$x$", X );
caixa( "$y$", Y );
caixa( "$r$", R );
caixa( "$s$", S );

draw( X+( 0.2,0.2)--W-( 0.2,0.2), Arrow(TeXHead) );
draw( Y+(-0.2,0.2)--W-(-0.2,0.2), Arrow(TeXHead) );
draw( R+(   0,0.2)--X-(-0.2,0.2), Arrow(TeXHead) );
draw( S+(   0,0.2)--X-(-0.2,0.2), Arrow(TeXHead) );
draw( R+(   0,0.2)--Y-( 0.2,0.2), Arrow(TeXHead) );
draw( S+(   0,0.2)--Y-( 0.2,0.2), Arrow(TeXHead) );

label( D("w","x"), midpoint(X--W), NW );
label( D("w","y"), midpoint(Y--W), NE );
label( D("x","r"), midpoint(R--X), SW );
label( D("x","s"), midpoint(S--X), SE );
label( D("y","r"), midpoint(R--Y), SW );
label( D("y","s"), midpoint(S--Y), SE );
