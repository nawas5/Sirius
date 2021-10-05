function [ Q ] = quat_wtau( tau, w )
    q1 = cos(tau/2);
    q2 = sin(tau/2) * w;
    Q = [q1, q2(1), q2(2), q2(3)];
    Q = quaternion(Q);
end