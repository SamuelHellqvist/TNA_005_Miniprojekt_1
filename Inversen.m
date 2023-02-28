%Inversen
clear
close all

%% Vektorn u
u = [3; 4];

%% Transformera u genom rotation
theta = 30; %angle in degrees
rotering = [cosd(theta) -sind(theta);
            sind(theta) cosd(theta)];
v = rotering * u; %  Vekor v = Vektor u  roterad 30 grader moturs

%% Transformera v genom rotation Invers
inv_v = inv(rotering); % Inversen av Vektorn v
w = inv_v * v; % Vekor w = Vektor v  roterad 30 grader medurs


vinkel = acosd((v'*w)/(norm(v)*norm(w)));% Räknar ut vinkel mellan två vektorer. För bevisa att det stämmer
%% plot Vektor u, Vektor v
figure(1)
hold on;
plot([0 u(1)], [0 u(2)], 'b-'); 
plot([0 v(1)], [0 v(2)], 'r-');
axis equal;
title('Vektor u, Vektor v')
subtitle(['Grader mellan vinklarna = ', num2str(theta)])
legend('Vektor u', ' Vektor v')

%% plot Vektor v, Vektor w
figure(2)
hold on;
plot([0 v(1)], [0 v(2)], 'r-');
plot([0 w(1)], [0 w(2)], 'g-');
axis equal;
title('Vektor v, Vektor w')
subtitle(['Grader mellan vinklarna = ', num2str(vinkel)])
legend('Vektor v  ', 'Vektor w =  Vektor u')
