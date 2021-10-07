clear all; clc;

hold on
plot3([0 1],[0 0],[0 0],"r")
plot3([0 0],[0 1],[0 0],"g")
plot3([0 0],[0 0],[0 1],"b")

text(1, 0, 0, 'x', 'Color', 'k');
text(0, 1, 0, 'y', 'Color', 'k');
text(0, 0, 1, 'z', 'Color', 'k');

v = rand(1,3);
v = v / (v(1)^2 + v(2)^2 + v(3)^2)^(0.5);

plot3([0 v(1)], [0 v(2)], [0 v(3)],":")
text(v(1), v(2), v(3), num2str(v), 'Color', 'k');


alpha = 2*pi*rand;
betta = 2*pi*rand;
gamma = 2*pi*rand;

A = [1 0 0; 0, cos(alpha), -sin(alpha); 0, sin(alpha), cos(alpha)];
B = [cos(betta) 0 sin(betta); 0, 1, 0; -sin(betta), 0, cos(betta)];
C = [cos(gamma), -sin(gamma), 0; sin(gamma), cos(gamma), 0; 0 0 1];

R=A*B*C;
v2 = R*v';

plot3([0 v2(1)], [0 v2(2)], [0 v2(3)],"--")
text(v2(1), v2(2), v2(3), num2str(v2), 'Color', 'k');

xlabel('X Axis')
ylabel('Y Axis')
zlabel('Z Axis')