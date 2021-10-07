function R = randRTurn()
alpha = 2*pi*rand;
betta = 2*pi*rand;
gamma = 2*pi*rand;
A = [1 0 0; 0, cos(alpha), -sin(alpha); 0, sin(alpha), cos(alpha)];
B = [cos(betta) 0 sin(betta); 0, 1, 0; -sin(betta), 0, cos(betta)];
C = [cos(gamma), -sin(gamma), 0; sin(gamma), cos(gamma), 0; 0 0 1];
R=A*B*C;
end
