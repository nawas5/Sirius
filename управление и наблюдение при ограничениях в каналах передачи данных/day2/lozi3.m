function [x,y,z] = lozi3(a,b,xlast,ylast)
x = 1 - a*abs(xlast) + b*ylast;
z = xlast;
y = z;
end