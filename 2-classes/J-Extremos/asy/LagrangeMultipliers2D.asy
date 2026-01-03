import "../../0-common/asy/utils.ah" as utils;
size(250);

draw_axes(-4, 4, 1, -4, 4, 1);

real radii[] = {1.5, 2.5, 3.5};
for(real r : radii) {
draw(Circle((0,0), r), blue + dashed);
}

guide restr = ( -3, -1 )..( -1, 2 )..( 1, 1 )..( 3, 3 );
draw(restr, red + linewidth(1.2));
label("$g(x,y)=c$", point(restr,0.75), NW, red);


pair ptsf[] = {
point(Circle((0,0.3), radii[0]), 0.2),
point(Circle((0,0.3), radii[1]), 0.4),
point(Circle((0,0.3), radii[2]), 0.6)
};
for(pair P : ptsf) {
pair gradf = unit(P);
draw(P--P + 0.5*gradf, blue , Arrow);
}

real ts[] = {0.3, 0.6, 0.9};
for(real t : ts) {
pair Q = point(restr, t);
pair T = unit(point(restr, t + 0.01) - point(restr, t - 0.01));
pair Ng = rotate(90)*T;
draw(Q--Q + 0.5*Ng, red , Arrow);
}
