%Sammansatt Avbildnig
clear
close all
%% Startmatris
startmatris=[0 2 2 4 4 6 6 8 8 6 6 10 10 6 6 4 4 2 2 0 0 ; 
             0 0 4 4 -2 -2 0 0 2 2 4 4 6 6 10 10 6 6 10 10 0 ];

xpos = startmatris(1,:);
ypos = startmatris(2,:);

%% Rotation
theta = 30; %Vinkel i grader
xr = cosd(theta)*xpos - sind(theta)*ypos ;
yr = cosd(theta)*ypos + sind(theta)*xpos ;


%% Skjuv
a = -0.6;

xs = xr + yr * a;
% ys = yr;

%% Figur som roteras och skjuvas
figure(1)
plot(xpos,ypos,'-b',xs,yr,'-r')
axis equal;
legend('innan', 'efter')

%%Figur som skjuvas och roteras
%skjuva
a = -0.6;

xs = xpos + ypos * a;

%rotation
theta = 30; %Vinkel i grader
xr = cosd(theta)*xs - sind(theta)*ypos ;
yr = cosd(theta)*ypos + sind(theta)*xs ;

figure(2)
plot(xpos,ypos,'-b',xr,yr,'-r', LineWidth=2)
axis equal;
grid on;
legend('innan', 'efter')
title('Figur som har skjuvats och sedan roteras', fontSize=15)
