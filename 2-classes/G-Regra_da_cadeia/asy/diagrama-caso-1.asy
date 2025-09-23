
size(6cm);

import "../../common/asy/utils.ah" as utils;

pair W = (0, 3);     
pair X = (-2, 0);    
pair Y = (2, 0);     
pair T = (0, -3);    


label("$w = f(x, y)$", W, N);
label("$x$", X, W);
label("$y$", Y, W);
label("$t$", T, S);

dot(midpoint(W), pens[0] + 3pt);
dot(midpoint(X), pens[0] + 3pt);
dot(midpoint(Y), pens[0] + 3pt);
dot(midpoint(T), pens[0] + 3pt);

draw(X--W, pens[0]+ 1pt);
draw(Y--W,pens[0]+ 1pt);
draw(T--X,pens[0]+ 1pt);
draw(T--Y,pens[0]+ 1pt);


label("$\frac{\partial w}{\partial x}$", midpoint(X--W), NW);
label("$\frac{\partial w}{\partial y}$", midpoint(Y--W), NE);
label("$\frac{dx}{dt}$", midpoint(T--X), SW);
label("$\frac{dy}{dt}$", midpoint(T--Y), SE);
