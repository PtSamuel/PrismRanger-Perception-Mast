function torque = torque_faster(theta)
    u = [-1/sqrt(6) 2/sqrt(6) -1/sqrt(6)]; % initial position vector projected in rotation plane
    v = [-1/sqrt(2) 0 1/sqrt(2)]; % n x u
    cm = [-1/3 -1/3 2/3]; % center of mass projection on rotation plane
    Fg = [1/3 1/3 -2/3];
    pos = cos(theta) * u + sin(theta) * v;
    pos = pos * norm(cm);
    torque = cross(pos, Fg);
end