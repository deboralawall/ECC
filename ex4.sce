//Fonte
Vs = complex(120, 0);

//Impedancia
Z1 = complex(1, 0);
Zc = complex(0, -2);
ZL = complex(0, 3);

Zeq = (Zc * ZL)/(Zc + ZL);
[r_i theta_i] = polar(Zeq);
theta_i_graus = ang_graus(theta_i);

Zt = Z1 + Zeq;
[r_i theta_i] = polar(Zt);
theta_i_graus = ang_graus(theta_i);

printf(" A impedancia e: %.2f < %.2f° [ohm]\n", r_i, theta_i_graus);

//Corrente
I = Vs/Zt;
[r_i theta_i] = polar(I);
theta_i_graus = ang_graus(theta_i);

printf(" A corrente e: %.2f < %.2f° A\n", r_i, theta_i_graus);
