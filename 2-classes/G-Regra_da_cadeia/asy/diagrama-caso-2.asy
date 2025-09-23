
size(6cm);

import "../../common/asy/utils.ah" as utils;

pair W = (0, 3);
pair X = (-2, 1);
pair Y = (0, 1);
pair Z = (2, 1);
pair RS = (0, -1);

void caixa(string texto, pair pos) {
draw(box((pos.x - 0.2, pos.y - 0.2), (pos.x + 0.2, pos.y + 0.2)), pens[0]+ 0.8pt);
label(texto, pos);
}


caixa("$w$", W);
caixa("$x$", X);
caixa("$y$", Y);
caixa("$z$", Z);
caixa("$r,s$", RS);



draw(box((X.x - 0.8, X.y - 0.5), (Z.x + 0.8, Z.y + 0.5)), dashed);


draw((0, 1.5)--(0, 2.8), Arrow(TeXHead));
label("$f$", midpoint(W--Y), E);

draw((-0.2, -0.9)--(-2, 0.8), Arrow(TeXHead));
label("$g$", midpoint(X--RS), SW - 1);

draw((0, -0.8)--(0, 0.8), Arrow(TeXHead));
label("$h$", midpoint(Y--RS), SW);

draw((0.2, -0.9)--(2, 0.8), Arrow(TeXHead));
label("$k$", midpoint(Z--RS), SW);



newpage();
size(200);

pair W = (0, 3);     
pair X = (-2, 0);    
pair Z = (2, 0);     
pair R = (0, -3);
pair Y = (0, 0);    


label("$w = f(x, y,z)$", W, N);
label("$x$", X, W);
label("$y$", Y+0.1, W);
label("$r$", R, S);
label("$z$", Z, W);

dot(midpoint(W), pens[0] + 3pt);
dot(midpoint(X), pens[0] + 3pt);
dot(midpoint(Y), pens[0] + 3pt);
dot(midpoint(R), pens[0] + 3pt);
dot(midpoint(Z), pens[0] + 3pt);

draw(X--W, pens[0]+ 1pt);
draw(Z--W,pens[0]+ 1pt);
draw(R--X,pens[0]+ 1pt);
draw(R--Z,pens[0]+ 1pt);
draw(W--R,pens[0]+ 1pt);

label("$\frac{\partial w}{\partial x}$", midpoint(Z--W), NE);
label("$\frac{\partial w}{\partial x}$", midpoint(X--W), NW);
label("$\frac{\partial w}{\partial y}$", midpoint(Y--W), NW);
label("$\frac{\partial x}{\partial r}$", midpoint(R--X), SW);
label("$\frac{\partial y}{\partial r}$", midpoint(R--Y), SW);
label("$\frac{\partial z}{\partial r}$", midpoint(R--Z), SE);

newpage();

pair W = (0, 3);     
pair X = (-2, 0);    
pair Z = (2, 0);     
pair S = (0, -3);
pair Y = (0, 0);    


label("$w = f(x, y,z)$", W, N);
label("$x$", X, W);
label("$y$", Y+0.1, W);
label("$s$", S, S);
label("$z$", Z, W);

dot(midpoint(W), pens[0] + 3pt);
dot(midpoint(X), pens[0] + 3pt);
dot(midpoint(Y), pens[0] + 3pt);
dot(midpoint(S), pens[0] + 3pt);
dot(midpoint(Z), pens[0] + 3pt);

draw(X--W, pens[0]+ 1pt);
draw(Z--W,pens[0]+ 1pt);
draw(S--X,pens[0]+ 1pt);
draw(S--Z,pens[0]+ 1pt);
draw(W--S,pens[0]+ 1pt);

label("$\frac{\partial w}{\partial x}$", midpoint(Z--W), NE);
label("$\frac{\partial w}{\partial x}$", midpoint(X--W), NW);
label("$\frac{\partial w}{\partial y}$", midpoint(Y--W), NW);
label("$\frac{\partial x}{\partial s}$", midpoint(S--X), SW);
label("$\frac{\partial y}{\partial s}$", midpoint(S--Y), SW);
label("$\frac{\partial z}{\partial s}$", midpoint(S--Z), SE);
