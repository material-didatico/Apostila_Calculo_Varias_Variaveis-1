//-----------------------------------------------------------------------------

import "../../0-common/asy/utils.ah" as utils;
import "quadrics.ah" as quadrics;

size(0, 10cm);

draw((3,0,0)--(3,3,0)--(0,3,0), invisible );

currentprojection = perspective(4,2,2);

int  N = 100;
real xmin = -1, xmax = 2.4;
real zmin =  0, zmax = 2;

//-----------------------------------------------------------------------------
real smooth_step(real x) 
{
  return x^2 * (3.2 - 2.1*x);
}

//-----------------------------------------------------------------------------
real f(real z) 
{
  real t = 1 - z / zmax; 
  return 2.6 * smooth_step(t) - 0.2;
}

//-----------------------------------------------------------------------------

draw((xmin-0.5,0,0)--(xmax+0.5,0,0), Arrow3); 
draw((0,-1,0)      --(0,3,0),        Arrow3); 
draw((0,0,zmin-0.2)--(0,0,zmax+0.5), Arrow3); 

label("$x$", (xmax+0.5,0,0), W);
label("$y$", (0,3,0),        E);
label("$z$", (0,0,zmax+0.5), E);

path3 curva;

for (int i = 0; i <= N; ++i) 
{
  real z = zmin + (zmax - zmin)*i/N;

  triple ponto = (0, f(z), z);
  
  if (i == 0) curva = ponto;
  else        curva = curva .. ponto;
}

draw(curva, pens[1]+1bp);

label('Curva geradora', (0, 1, 1.2), E);

//-----------------------------------------------------------------------------
