%Inversen
clear
close all

% Vektorn u
u = [3; 4];

% Transformera u genom rotation
theta = 30; %angle in degrees
rotering = [cosd(theta) -sind(theta); sind(theta) cosd(theta)];
roterad_u = rotering * u; %  Vekor v = Vektor u  roterad 30 grader moturs

% Transformera v genom rotation Invers
inv_rotering = inv(rotering); % Inversen av Vektorn v
orginal_vektor = inv_rotering * roterad_u; % Vekor w = Vektor v  roterad 30 grader medurs

% Vektor u, Vektor v
figure(1)
hold on;
plot([0 u(1)], [0 u(2)], 'b-'); 
plot([0 roterad_u(1)], [0 roterad_u(2)], 'r-');
axis equal;
legend('Vektor u', ' Vekor v = Vektor u  roterad 30 grader moturs')

% Vektor v, Vektor w
figure(2)
hold on;
plot([0 roterad_u(1)], [0 roterad_u(2)], 'r-');
plot([0 orginal_vektor(1)], [0 orginal_vektor(2)], 'g-');
axis equal;
legend('Vektor v  ', 'Vekor w =  Vektor u = Vektor v  roterad 30 grader medurs')
