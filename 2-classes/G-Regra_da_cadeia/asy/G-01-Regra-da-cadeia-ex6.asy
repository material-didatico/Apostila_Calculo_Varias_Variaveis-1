import "../../common/asy/utils.ah" as utils;
size(250);
// posições dos nós
pair U  = (0, 3);
pair X  = (-2, 1.5);
pair Y  = (0, 1.5);
pair Z  = (2, 1.5);
pair T  = (0, 0);


void caixa(string texto, pair pos, pen cor=black) {
  draw(box((pos.x - 0.6, pos.y - 0.3), (pos.x + 0.6, pos.y + 0.3)), cor);
  label(texto, pos);
}


caixa("$u$", U);
caixa("$x$", X);
caixa("$y$", Y);
caixa("$z$", Z);
caixa("$t$", T);


draw(X+(0.05,0.05)--U-(0.05,0.05), Arrow(TeXHead));
label("$\D{u}{x}$", midpoint(X--U), NW);

draw(Y+(0,0.05)--U-(0,0.05), Arrow(TeXHead));
label("$\D{u}{y}$", midpoint(Y--U), N);

draw(Z+(-0.05,0.05)--U-(-0.05,0.05), Arrow(TeXHead));
label("$\D{u}{z}$", midpoint(Z--U), NE);

draw(T+(0,0.05)--X-(0,0.05), Arrow(TeXHead));
label("$\D{x}{t}$", midpoint(T--X), SW);

draw(T+(0,0.05)--Y-(0,0.05), Arrow(TeXHead));
label("$\D{y}{t}$", midpoint(T--Y), S);

draw(T+(0,0.05)--Z-(0,0.05), Arrow(TeXHead));
label("$\D{z}{t}$", midpoint(T--Z), SE);

