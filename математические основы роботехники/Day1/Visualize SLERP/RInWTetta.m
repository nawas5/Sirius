function [w,tetta] = RInWTetta(R) 
tetta = acos((trace(R)-1)/2);
if tetta == pi
    wx = sqrt((R(1,1)+1)/2);
    if wx ~= 0
        wy = R(1,2)/(2*wx);
        wz = R(2,3)/(2*wy);
    else
        wy = 0;
        wz = 0;
        w = [wx, wy, wz];
    end
else    
    w = (2*sin(tetta))^(-1) * [R(3,2)-R(2,3) , R(1,3)-R(3,1) , R(2,1)-R(1,2)];
end