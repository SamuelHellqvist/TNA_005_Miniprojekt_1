%Determinant
clear
close all

%Definera matrisen
startmatris=[0 2 2 4 4 6 6 8 8 6 6 10 10 6 6 4 4 2 2 0 0 ; % Ser ut som ett H med ett F i sig
             0 0 4 4 -2 -2 0 0 2 2 4 4 6 6 10 10 6 6 10 10 0 ];

%Definera x och y värden
xpos = startmatris(1,:); %Rad 1 = x värden
ypos = startmatris(2,:); %Rad 2 = y värden

%% Determinat genom Skjuvning
% Definiera hur mycket matrisen ska skjutas i x-led
a = -0.6;

%Definera avbildnings matrisen
xs = xpos + ypos * a;
% ys = ypos;

% Area av startmatrisen
area_startmatris = abs(polyarea(xpos,ypos));

% Area av avbildningsmatrisen
area_avbildning = abs(polyarea(xs,ypos));

%Plot startmatrisen och avbidlingmatrisen
figure(1)
plot(xpos,ypos,'-b',xs,ypos,'-r')
axis equal;
title(['\color{blue}Area innan = ' num2str(area_startmatris)]);
subtitle(['\color{red}Area efter = ' num2str(area_avbildning)]);
legend('Innan', 'Efter')
