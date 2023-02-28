%Egenvärde och egetvärdet [matematisk]
clear 
close all

% Definiera matrisen
A = [2 1;
     1 2];

% Hitta egenvektorer och egenvärden
[V, D] = eig(A);

% Skriv ut egenvärdena
lambda1 = D(1,1);
lambda2 = D(2,2);
disp("Egenvärden:");
disp(lambda1);
disp(lambda2);

% Skriv ut egenvektorerna
v1 = V(:,1);
v2 = V(:,2);
disp("Egenvektorer:");
disp(v1);
disp(v2);

%% Plotta egenvektorer
figure(1)
x = [-2 2]
y = [-2 2];
quiver([0 0], [0 0], [v1(1) v2(1)], [v1(2) v2(2)], 'color', 'r');
hold on;
axis([x y]);
xlabel('x');
ylabel('y');
hold off

%% Plotta matrisen 3D
figure(2)
 bar3(A);