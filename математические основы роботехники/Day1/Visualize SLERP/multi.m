function [Arg1,Arg2] = multi(a,A,b,B)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
Arg1=a*b-dot(A,B);
Arg2=a*B+b*A+cross(A,B);
end