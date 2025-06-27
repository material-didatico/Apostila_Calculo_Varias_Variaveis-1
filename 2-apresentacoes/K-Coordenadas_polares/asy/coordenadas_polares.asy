//-----------------------------------------------------------------------------

import "./utils.ah" as utils;

size(6cm, 6cm, IgnoreAspect);
draw(box((-1,-0.7),(3,2.1)), invisible);

pair O, B, C, X, P;
O = (0,0);
X = (2,0);
P = 1.5*(1.2,0.9);
B = 1.5*P;
C = -0.5*P;

//-----------------------------------------------------------------------------
void draw_step(int n)
{
    dot(O, blue);
    dot(P);

    label("$O$", O, S);
    label("$P$", P, NW);

    if( n == 1 ) return;

    draw(O--X, blue + linewidth(1), Arrow(7));

    if( n == 2 ) return;

    draw(arc(O, 1, 0, 36.6));
    draw(C--B);
    label("$\theta$", (1.2, 0.35));

    if( n == 3 ) return;

    draw(O--P, magenta+linewidth(1));
    dot(O, blue);
    dot(P);
    label("$r$", P/2, NW);
}

//-----------------------------------------------------------------------------

draw_step(1); newpage();
draw_step(2); newpage();
draw_step(3); newpage();
draw_step(4);

//-----------------------------------------------------------------------------
