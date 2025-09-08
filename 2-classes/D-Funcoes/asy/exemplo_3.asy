import "utils.ah" as utils;
size(250);

real xmin = -4, xmax = 4;
real ymin = 0, ymax = 5;
draw_axes(xmin, xmax, 1, ymin, ymax, 1);

path total = box((xmin, 1), (xmax, ymax));


path faixa = box((xmin, 2 - 0.01), (xmax, 2 + 0.01));


path esquerda = box((xmin, 1), (-2, ymax));
path direita  = box((2, 1), (xmax, ymax));


fill(esquerda, gray(0.8));
fill(direita, gray(0.8));


fill(faixa, white);


draw((-2,1)--(-2,ymax), dashed+black);   
draw((2,1)--(2,ymax), dashed+black);     
draw((xmin,2)--(xmax,2), gray+linewidth(2)); 



