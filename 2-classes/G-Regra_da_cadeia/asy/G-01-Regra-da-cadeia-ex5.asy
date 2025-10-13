import "../../common/asy/utils.ah" as utils;
size(250);



pair W  = (0, 3);
pair X  = (-2, 1.5);
pair Y  = (0, 1.5);
pair Z  = (2, 1.5);
pair R  = (-1, 0);
pair S  = (1, 0);


void caixa(string texto, pair pos, pen cor=black) {
  draw(box((pos.x - 0.6, pos.y - 0.3), (pos.x + 0.6, pos.y + 0.3)), cor);
  label(texto, pos);
}


caixa("$w$", W);
caixa("$x$", X);
caixa("$y$", Y);
caixa("$z$", Z);
caixa("$r$", R);
caixa("$s$", S);


draw(X+(0.05,0.05)--W-(0.05,0.05), Arrow(TeXHead));
label("$\D{w}{x}$", midpoint(X--W), NW);

draw(Y+(0,0.05)--W-(0,0.05), Arrow(TeXHead));
label("$\D{w}{y}$", midpoint(Y--W), N);

draw(Z+(-0.05,0.05)--W-(-0.05,0.05), Arrow(TeXHead));
label("$\D{w}{z}$", midpoint(Z--W), NE);

draw(R+(0,0.05)--X-(-0.05,0.05), Arrow(TeXHead));
label("$\D{x}{r}$", midpoint(R--X), SW);

draw(S+(0,0.05)--X-(-0.05,0.05), Arrow(TeXHead));
label("$\D{x}{s}$", midpoint(S--X), SE);

draw(R+(0,0.05)--Y-(0,0.05), Arrow(TeXHead));
label("$\D{y}{r}$", midpoint(R--Y), SW);

draw(S+(0,0.05)--Y-(0,0.05), Arrow(TeXHead));
label("$\D{y}{s}$", midpoint(S--Y), SE);

draw(R+(0,0.05)--Z-(0.05,0.05), Arrow(TeXHead));
label("$\D{z}{r}$", midpoint(R--Z), SW);

draw(S+(0,0.05)--Z-(0.05,0.05), Arrow(TeXHead));
label("$\D{z}{s}$", midpoint(S--Z), SE);