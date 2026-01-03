//-----------------------------------------------------------------------------

import "../../0-common/asy/utils.ah" as utils;
import "cadeia.ah" as cadeia;

size(6cm, 6cm);

pair w = ( 0,    3);     
pair x = (-2.5,  0);    
pair z = ( 2.5,  0);     
pair r = ( 0,   -3);
pair y = ( 0,    0);    

label("$w = f(x, y, z)$", w, N);
label("$x$",              x, W);
label("$y$",              y, W);
label("$r$",              r, S);
label("$z$",              z, E);

dot( midpoint(w), pens[0] + 3pt );
dot( midpoint(x), pens[0] + 3pt );
dot( midpoint(y), pens[0] + 3pt );
dot( midpoint(r), pens[0] + 3pt );
dot( midpoint(z), pens[0] + 3pt );

draw( x--w, pens[0]+ 1pt );
draw( z--w, pens[0]+ 1pt );
draw( r--x, pens[0]+ 1pt );
draw( r--z, pens[0]+ 1pt );
draw( w--r, pens[0]+ 1pt );

label(cadeia.D("w", "x"), midpoint(x--w), NW);
label(cadeia.D("w", "y"), midpoint(y--w), SE);
label(cadeia.D("w", "z"), midpoint(z--w), NE);
label(cadeia.D("x", "r"), midpoint(r--x), SW);
label(cadeia.D("y", "r"), midpoint(r--y), NE);
label(cadeia.D("z", "r"), midpoint(r--z), SE);
  
newpage();
size(6cm, 6cm);

pair w = ( 0,    3);     
pair x = (-2.5,  0);    
pair z = ( 2.5,  0);     
pair s = ( 0,   -3);
pair y = ( 0,    0);    

label("$w = f(x, y, z)$", w, N);
label("$x$",              x, W);
label("$y$",              y, W);
label("$s$",              s, S);
label("$z$",              z, E);

dot( midpoint(w), pens[0] + 3pt );
dot( midpoint(x), pens[0] + 3pt );
dot( midpoint(y), pens[0] + 3pt );
dot( midpoint(s), pens[0] + 3pt );
dot( midpoint(z), pens[0] + 3pt );

draw( x--w, pens[0]+ 1pt );
draw( z--w, pens[0]+ 1pt );
draw( s--x, pens[0]+ 1pt );
draw( s--z, pens[0]+ 1pt );
draw( w--s, pens[0]+ 1pt );

label(cadeia.D("w", "x"), midpoint(x--w), NW);
label(cadeia.D("w", "y"), midpoint(y--w), SE);
label(cadeia.D("w", "z"), midpoint(z--w), NE);
label(cadeia.D("x", "s"), midpoint(r--x), SW);
label(cadeia.D("y", "s"), midpoint(r--y), NE);
label(cadeia.D("z", "s"), midpoint(r--z), SE);
