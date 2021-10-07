clear all; clc;

R = randRTurn();
R = R*R';
R(1,1) = -1;
R(3,3) = -1;

[w, theta] = RInWTetta(R);
[w1, theta1 ] = turn_to_wtau( R );
