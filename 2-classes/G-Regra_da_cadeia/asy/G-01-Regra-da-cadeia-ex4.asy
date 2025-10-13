import "../../common/asy/utils.ah" as utils;
size(250);



pair Z  = (0, 3);
pair X  = (-1.5, 1.5);
pair Y  = (1.5, 1.5);
pair S  = (-1, 0);
pair T  = (1, 0);


void caixa(string texto, pair pos, pen cor=black) {
  draw(box((pos.x - 0.6, pos.y - 0.3), (pos.x + 0.6, pos.y + 0.3)), cor);
  label(texto, pos);
}


caixa("$z$", Z);
caixa("$x$", X);
caixa("$y$", Y);
caixa("$s$", S);
caixa("$t$", T);


draw(X+(0.1,0.1)--Z-(0.1,0.1), Arrow(TeXHead));
label("$\D{z}{x}$", midpoint(X--Z), NW);

draw(Y+(-0.1,0.1)--Z-(-0.1,0.1), Arrow(TeXHead));
label("$\D{z}{y}$", midpoint(Y--Z), NE);

draw(S+(0,0.1)--X-(-0.1,0.1), Arrow(TeXHead));
label("$\D{x}{s}$", midpoint(S--X), SW);

draw(T+(0,0.1)--X-(-0.1,0.1), Arrow(TeXHead));
label("$\D{x}{t}$", midpoint(T--X), SE);

draw(S+(0,0.1)--Y-(0.1,0.1), Arrow(TeXHead));
label("$\D{y}{s}$", midpoint(S--Y), SW);

draw(T+(0,0.1)--Y-(0.1,0.1), Arrow(TeXHead));
label("$\D{y}{t}$", midpoint(T--Y), SE);