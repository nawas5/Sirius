function [y] = DH3(t1, d2, t3)


y=zeros(3,4);

a1=denavita_hartenberga(0, deg2rad(-135), 10, t1);
a2=denavita_hartenberga(0, deg2rad(-90), d2, deg2rad(-90));
A12=a1*a2;
a3=denavita_hartenberga(0,deg2rad(90), 0, t3 + deg2rad(45));
A123=a1*a2*a3;
a4=denavita_hartenberga(0, 0, 5, deg2rad(90));
A1234=a1*a2*a3*a4;

b1=a1*[0,0, 0, 1]';
b2=A12*[0,0, 0, 1]';
b3=A123*[0,0, 0, 1]';
b4=A1234*[0,0, 0, 1]';

y(1:3,1:1)=b1(1:3,1:1);
y(1:3,2:2)=b2(1:3,1:1);
y(1:3,3:3)=b3(1:3,1:1);
y(1:3,4:4)=b4(1:3,1:1);

y=y';
end