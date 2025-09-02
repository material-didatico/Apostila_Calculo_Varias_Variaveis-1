import "utils.ah" as utils;

size(12cm, IgnoreAspect);

real a = 2; 
real b = 1; 
real c = sqrt(a^2 + b^2);


pair Hdir(real t) { return ( a*cosh(t), b*sinh(t) ); }
pair Hesq(real t) { return (-a*cosh(t), b*sinh(t) ); }


real tP = 0.8;
pair P = Hdir(tP);


pair F1 = (-c,0);
pair F2 = ( c,0);


draw_axes(-8, 8, 1, -5, 5, 1);

newpage();



draw_axes(-8, 8, 1, -5, 5, 1);
draw(graph(Hdir, -2, 2), black+1bp);
draw(graph(Hesq, -2, 2), black+1bp);
newpage();



draw_axes(-8, 8, 1, -5, 5, 1);
draw(graph(Hdir, -2, 2), black+1bp);
draw(graph(Hesq, -2, 2), black+1bp);

dot((0,0), pens[0]+5bp); 
dot(F1, pens[0]+5bp);
dot(F2, pens[0]+5bp);
newpage();



draw_axes(-8, 8, 1, -5, 5, 1);
draw(graph(Hdir, -2, 2), black+1bp);
draw(graph(Hesq, -2, 2), black+1bp);

dot((0,0), pens[0]+5bp);
dot(F1, pens[0]+5bp);
dot(F2, pens[0]+5bp);
dot(P, pens[2]+5bp);

pen aux = pens[0] + linewidth(0.7) + linetype(new real[]{1,3}); 
draw(P--F1, aux);
draw(P--F2, aux);
draw((a,5)--(a,-5),pens[0] + linewidth(0.7));
draw((-a,5)--(-a,-5),pens[0] + linewidth(0.7));