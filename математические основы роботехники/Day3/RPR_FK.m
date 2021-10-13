function [pos, R] =  RPR_FK(t1, d2, t3)

pos=zeros(3,4);

R01=denavita_hartenberga(0, deg2rad(-135), 10, t1);
R12=denavita_hartenberga(0, deg2rad(-90), d2, deg2rad(-90));
R02=R01*R12;
R2I=denavita_hartenberga(0,deg2rad(90), 0, t3 + deg2rad(45));
R02I=R02*R2I;
R23I=denavita_hartenberga(0, 0, 5, deg2rad(90));
R03=R02I*R23I;

pos(2:2,1:3)=R01(1:3,4:4);
pos(3:3,1:3)=R02(1:3,4:4);
pos(4:4,1:3)=R03(1:3,4:4);

R = zeros(3, 3);
R(1:3, 1:3) = R03(1:3, 1:3);
end