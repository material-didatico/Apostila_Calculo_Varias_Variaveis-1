//-----------------------------------------------------------------------------

import "../../0-common/asy/utils.ah" as utils;
import "cadeia.ah" as cadeia;

size(10cm, 6cm);

pair w = (   0,  3);     
pair x = (-2.5,  0);    
pair y = ( 2.5,  0);     
pair z = (   0,  0);     
pair t = (   0, -3);    

label( "$w = f(x, y, z)$", w, N );
label( "$x$",              x, W );
label( "$y$",              y, E );
label( "$z$",              z, E );
label( "$t$",              t, S );

dot( midpoint(w), pens[0] + 3pt );
dot( midpoint(x), pens[0] + 3pt );
dot( midpoint(y), pens[0] + 3pt );
dot( midpoint(z), pens[0] + 3pt );
dot( midpoint(t), pens[0] + 3pt );

draw( x--w, pens[0]+ 1pt );
draw( y--w, pens[0]+ 1pt );
draw( t--x, pens[0]+ 1pt );
draw( t--y, pens[0]+ 1pt );
draw( t--w, pens[0]+ 1pt );

label( cadeia.D("w","x"), midpoint(x--w), NW );
label( cadeia.D("w","y"), midpoint(y--w), NE );
label( cadeia.D("w","z"), midpoint(z--w), SW );
label( cadeia.d("x","t"), midpoint(t--x), SW );
label( cadeia.d("y","t"), midpoint(t--y), SE );
label( cadeia.d("z","t"), midpoint(t--z), NW );
