//Fonte
Vs = complex(20, 0);

//Impedancia
z = complex(4, 3);

//Corrente
I = Vs/z;
[r_i theta_i] = polar(I);
theta_i_graus = ang_graus(theta_i);

printf(" A corrente e: %.2f < %.2f° A\n", r_i, theta_i_graus);

//Grafico
