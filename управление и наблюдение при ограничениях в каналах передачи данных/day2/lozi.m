function [x,y] = lozi(a,b,xlast,ylast)
x = 1 - a*abs(xlast) + b*ylast;
y = xlast;
end