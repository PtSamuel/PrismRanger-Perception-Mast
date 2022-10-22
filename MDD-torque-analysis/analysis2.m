range = 0:0.1:120;
torques = zeros(1, length(range));

for i=1:1:length(range)
    theta = range(i) / 180 * pi;
    torques(i) = norm(torque_faster(theta));
end

plot(range, torques);
axis([0 125 0 1])
xlabel("degrees rotated");
ylabel(" x t0");
