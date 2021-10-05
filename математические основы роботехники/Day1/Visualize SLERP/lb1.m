clc; clear all;

% multiplication quaternion
Q1 = quaternion(-0.4161, 0.3523, -0.3074, 0.7800);
Q2 = quaternion(0.9010, -0.0131, -0.3935, 0.1818);
Q1timesQ2 = Q1*Q2;

%transform the representation
%of the ω axis - the angle θ into quaternion
tau = 3.5112;
w = [-0.1457, 0.5976, -0.7883];
q1 = cos(tau/2);
q24 = sin(tau/2) * w;
Qres = [q1, q24(1), q24(2), q24(3)];
Qrotvec = quaternion(Qres);

%transform quaternion Q = [ Qs, Qx, Qy, Qz ] i
%into rotation matrix R according to formula
Q = [-0.4151, 0.3523, -0.3074, 0.7800];
R = [1-2*Q(3)^2-2*Q(4)^2 2*Q(2)*Q(3)-2*Q(4)*Q(1) 2*Q(2)*Q(4)+2*Q(3)*Q(1);
    2*Q(2)*Q(3)+2*Q(4)*Q(1) 1-2*Q(2)^2-2*Q(1)^2 2*Q(3)*Q(4)-2*Q(2)*Q(1);
    2*Q(2)*Q(4)-2*Q(3)*Q(1) 2*Q(3)*Q(4)+2*Q(2)*Q(1) 1-2*Q(2)^2-2*Q(3)^2];


