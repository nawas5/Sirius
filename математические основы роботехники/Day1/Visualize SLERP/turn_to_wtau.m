function [ w, tau ] = turn_to_wtau( R )
    
    tau = acos((trace(R)-1)/2);
    
    if tau == 0
        w = [NaN, NaN, NaN];
    end
    
    if tau == pi
        w = [sqrt((R(1,1)- cos(tau))/(1-cos(tau))) 
            sqrt((R(2,2)- cos(tau))/(1-cos(tau)))
            sqrt((R(3,3)- cos(tau))/(1-cos(tau)))];
    end
    
    w = 1/(2*sin(tau))*[R(3,2)-R(2,3),R(1,3)-R(3,1),R(2,1)-R(1,2)];
end