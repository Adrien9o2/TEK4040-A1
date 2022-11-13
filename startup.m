a = 0.05;
b = 0.1;
c = 0.2;
mu = 0.002;
V = a*b*c;
m = mu*V;

Jb11 = m*(b^2+c^2)/12;
Jb22 = m*(a^2+c^2)/12;
Jb33 = m*(a^2+b^2)/12;

J = [Jb11,   0,     0;
     0,   Jb22,     0;
     0,      0,  Jb33];
Wztilde = 2*pi;
K = 0.5*Jb33*(Wztilde)^2;

Wxtilde = sqrt((2*K)/Jb11);
Wytilde = sqrt((2*K)/Jb22);

Wz = Wztilde*sqrt(0.99);
Wx = Wxtilde*sqrt(0.99);
Wy = Wytilde*sqrt(0.99);

hNearX = sqrt(((Jb11*Wx)^2)+(Jb33*Wztilde*0.1)^2);
hNearY = sqrt(((Jb22*Wy)^2)+(Jb33*Wztilde*0.1)^2);
hNearZ = sqrt(((Jb33*Wz)^2)+(Jb11*Wxtilde*0.1)^2);

halfAxisCinetic  = [sqrt(2*K/Jb11),sqrt(2*K/Jb22),sqrt(2*K/Jb33)]; 

halfAxisMomentumNearX = [hNearX/Jb11,hNearX/Jb22,hNearX/Jb33];
halfAxisMomentumNearY = [hNearY/Jb11,hNearY/Jb22,hNearY/Jb33];
halfAxisMomentumNearZ = [hNearZ/Jb11,hNearZ/Jb22,hNearZ/Jb33];


sim("solver.slx");

