function [t1, d2, t3] = RPR_IK(pos, R)
%     t1 = atan2(R(2,2), R(1,2));
%     t3 = atan2(R(3,3), R(1,3));
%     d2 = 2 * (10 + 5 * sin(t3) - pos(4,3)) / sqrt(2);
    
    t1 = -2 * atan2(R(2,2), R(1,2));
    t3 = atan2(R(3,3), R(1,3));
    d2 = 2 * (10 + 5 * sin(t3) - pos(4,3)) / sqrt(2);
end