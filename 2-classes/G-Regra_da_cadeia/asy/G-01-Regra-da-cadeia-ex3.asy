import "../../common/asy/utils.ah" as utils;
size(250);


pair W  = (0, 3);
pair X  = (-1.5, 1.5);
pair Y  = (1.5, 1.5);
pair R  = (-1, 0);
pair S  = (1, 0);


void caixa(string texto, pair pos, pen cor=black) {
  draw(box((pos.x - 0.6, pos.y - 0.3), (pos.x + 0.6, pos.y + 0.3)), cor);
  label(texto, pos);
}


caixa("$w$", W);
caixa("$x$", X);
caixa("$y$", Y);
caixa("$r$", R);
caixa("$s$", S);


draw(X+(0.2,0.2)--W-(0.2,0.2), Arrow(TeXHead));
label("$\D{w}{x}$", midpoint(X--W), NW);

draw(Y+(-0.2,0.2)--W-(-0.2,0.2), Arrow(TeXHead));
label("$\D{w}{y}$", midpoint(Y--W), NE);

draw(R+(0,0.2)--X-(-0.2,0.2), Arrow(TeXHead));
label("$\D{x}{r}$", midpoint(R--X), SW);

draw(S+(0,0.2)--X-(-0.2,0.2), Arrow(TeXHead));
label("$\D{x}{s}$", midpoint(S--X), SE);

draw(R+(0,0.2)--Y-(0.2,0.2), Arrow(TeXHead));
label("$\D{y}{r}$", midpoint(R--Y), SW);

draw(S+(0,0.2)--Y-(0.2,0.2), Arrow(TeXHead));
label("$\D{y}{s}$", midpoint(S--Y), SE);