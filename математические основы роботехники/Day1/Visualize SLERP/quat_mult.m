function [ q_mult ] = quat_mult( q0, q1 )
    Q1 = quaternion(q0);
    Q2 = quaternion(q1);
    q_mult = Q1*Q2;
end