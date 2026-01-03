
import "../../0-common/asy/utils.ah" as utils;
size(250);

real xmin = -4, xmax = 4;
real ymin = -3, ymax = 3;

picture pic;
pair centro = (0,0);
real a = 2*sqrt(2); 
real b = sqrt(2);  
draw(pic,ellipse(centro, a, b), black + linewidth(1));
label(pic,"$\frac{x^2}{4} + y^2 = 2$", (1.5,1.8));
draw_axes(xmin, xmax, 1, ymin, ymax, 1);

newpage();
add(pic);
draw_axes(xmin, xmax, 1, ymin, ymax, 1);
pair centro = (0,0);
real a = 2*sqrt(2); 
real b = sqrt(2);   
newpage();
draw_axes(xmin, xmax, 1, ymin, ymax, 1);
add(pic);
pair P = (-2, 1);
dot(P);
label("$(-2,\ 1)$", P, SE);


real tangente(real x) { return (x + 4)/2; }
draw(graph(tangente, xmin, xmax), blue);
label("$x - 2y = -4$", (1, tangente(1)), NE);


pair grad = (-1, 2);
draw(P--(P + grad), blue, Arrow(TeXHead));
label("$\nabla f(-2,1) = -\vec{i} + 2\vec{j}$", P + N+1, NW, blue);
clip_to_axis();
