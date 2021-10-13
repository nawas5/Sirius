function DH3_1()
[M, R] = RPR_FK(0, 5, 0);
[M1, R1] = RPR_FK(pi, -10, pi / 2);
disp('M = ');
disp(M1);
disp('R = ');
disp(R1);
[Q1, d2, Q3] = RPR_IK(M1, R1);
disp('Q1');
disp(Q1);
disp('d2');
disp(d2);
disp('Q3');
disp(Q3);
[M2, R2] = RPR_FK(Q1, d2, Q3);
disp('M');
disp(M2);
disp('R');
disp(R2);
end

function [Q1, d2, Q3] = RPR_IK(M, R)
    Q1 = atan2(R(2,2), R(1,2));
    Q3 = atan2(R(3,3), R(1,3));
    d2 = 2 * (10 + 5 * sin(Q3) - M(4,3)) / sqrt(2);
end

function [M, R] = RPR_FK(Q1, d2, Q3)
    M = zeros(4, 3);
    R01 = DH(0, -3 * pi / 4, 10, Q1);
    R12 = DH(0, -pi / 2, d2, -pi / 2);
    R02 = R01 * R12;
    R2I = DH(0, pi / 2, 0, pi / 4 + Q3);
    R02I = R02 * R2I;
    R23I = DH(0, 0, 5, 0);
    R03 = R02I * R23I;
    
    M(2:2, 1:3) = R01(1:3, 4:4);
    M(3:3, 1:3) = R02(1:3, 4:4);
    disp(R02(1:3, 4:4));
    disp(R02I(1:3, 4:4));
    M(4:4, 1:3) = R03(1:3, 4:4);
    
    R = zeros(3, 3);
    R(1:3, 1:3) = R03(1:3, 1:3);
end

function [x] = DH(r,a,d,Q)
    x = zeros(4);
    x(1,1) = cos(Q);
    x(1,2) = -sin(Q) * cos(a);
    x(1,3) = sin(Q) * sin(a);
    x(1,4) = r * cos(Q);
    x(2,1) = sin(Q);
    x(2,2) = cos(Q) * cos(a);
    x(2,3) = -cos(Q) * sin(a);
    x(2,4) = r * sin(Q);
    x(3,1) = 0;
    x(3,2) = sin(a);
    x(3,3) = cos(a);
    x(3,4) = d;
    x(4,1) = 0;
    x(4,2) = 0;
    x(4,3) = 0;
    x(4,4) = 1;
end