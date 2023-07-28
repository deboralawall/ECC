//Fonte
Vs = complex(100, 0);

//frquencia
f = 60;

//Resistencias
R1 = 3;
R2 = 8;

//Indutor
L = 10.6*(10^-3);

//Capacitor
C = 442*(10^-6);

//Reatancias
XL = 2*%pi*f*L; //indutiva
XC = -1/(2*%pi*f*C); //capacitiva

//Impedancia
Z1 = complex(R1, XL);
Z2 = complex(R2, XC);

Zeq = (Z1*Z2)/(Z1+Z2);
[r_i theta_i] = polar(Zeq);
theta_i_graus = ang_graus(theta_i);
printf(" A impedancia equivalente e: %.2f < %.2f° [ohm]\n", r_i, theta_i_graus);

//Corrente
I1 = Vs/ Z1;
[r_i theta_i] = polar(I1);
theta_i_graus = ang_graus(theta_i);
printf(" A corrente 1 e: %.2f < %.2f° A\n", r_i, theta_i_graus);

I2 = Vs/ Z2;
[r_i theta_i] = polar(I2);
theta_i_graus = ang_graus(theta_i);
printf(" A corrente 2 e: %.2f < %.2f° A\n", r_i, theta_i_graus);

It = I1 + I2;
[r_i theta_i] = polar(It);
theta_i_graus = ang_graus(theta_i);
printf(" A corrente total e: %.2f < %.2f° A\n", r_i, theta_i_graus);
