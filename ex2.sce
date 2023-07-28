//Fonte 
Vs = polar_to_rectangular(20, 20);

//Impedências e Resistencia
ZL = complex(0, 8);
Zc = complex(0, -12);
R = 5;

//Tensão no capacitor
Vc = (Zc*Vs)/(R+Zc);
[r_i theta_i] = polar(Vc);
theta_i_graus = ang_graus(theta_i);

printf(" A tensão no capacitor e: %.2f < %.2f° V\n", r_i, theta_i_graus);

//Corrente 
I1 = Vs/ZL;
I2 = Vs/(R+Zc);
It = I1 + I2;

[r_i theta_i] = polar(I1);
theta_i_graus = ang_graus(theta_i);
printf(" A corrente em I1 e: %.2f < %.2f° A\n", r_i, theta_i_graus);

[r_i theta_i] = polar(I2);
theta_i_graus = ang_graus(theta_i);
printf(" A corrente em I2 e: %.2f < %.2f° A\n", r_i, theta_i_graus);

[r_i theta_i] = polar(It);
theta_i_graus = ang_graus(theta_i);
printf(" A corrente total e: %.2f < %.2f° A\n", r_i, theta_i_graus);
