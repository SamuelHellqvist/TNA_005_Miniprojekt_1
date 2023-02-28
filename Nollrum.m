clear 
close  all

% Skapa en vektor som är 90° mot speglingslinjen
v = [3, 3];

% Skapa speglingsmatrisen
S = [1 0; 0 -1];

% Projicera vektorn på speglingsmatrisen
proj_v = S*v'; %

% Rita ut vektorn och dess projektion
figure;
hold on;
plot([0, v(1)], [0, v(2)], 'b', 'LineWidth', 2);
plot([-3, proj_v(1)], [3, proj_v(2)], 'r--', 'LineWidth', 2);
axis equal;
grid on;
title('Illustration av nollrummet');
xlabel('x-axel');
ylabel('y-axel');