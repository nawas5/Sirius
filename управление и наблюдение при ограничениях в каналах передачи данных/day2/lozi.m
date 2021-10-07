function [x,y] = lozi(xlast,ylast)
x = 1 - 1.7*abs(xlast) + 0.5 * ylast;
y = xlast;
end