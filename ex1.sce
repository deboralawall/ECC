// QUESTÃO 1 ------------------------

// Fonte 
Vm = 10;
w = 4;
phi_0 = 0;

V = polar_to_rectangular(Vm, 0);

//Capacitor 
C = 0.1;
Xc = 1/(w*C);
Zc = complex(0, -Xc);

//Impedancia total 
Zt = 5 + Zc;

// Corrente total 
Is = V/Zt;
[r_i theta_i] = polar(Is);
theta_i_graus = ang_graus(theta_i);
Vm = r_i;
printf(" A corrente e: %.2f < %.2f° A\n", r_i, theta_i_graus);
printf(" No dominio do tempo: %.2fcos(%.2ft + %.2f°)A\n", r_i, w, theta_i_graus);

// Tensao no capacitor
Vc = Is*Zc;
[r_i theta_i] = polar(Vc);
theta_i_graus = ang_graus(theta_i);
Im = r_i;
printf(" No dominio do tempo: %.2fcos(%.2ft %.2f°)V\n", r_i, w, theta_i_graus);

//Gráfico 
clf
t = [0:0.1:4*%pi];
i = Vm*cos(w*t+theta_i);
v = Im*cos(w*t+theta_i-(%pi/2));
plot(t,i,'-*b');
plot(t,v,'-dr');
xtitle('SENOIDE'); 
xlabel('Tempo');  
legend('Corrente', 'Tensão');
t = gca();
t.x_location = 'middle';

