%Sammansatt Avbildnig
clear
close all
%% Startmatris
startmatris=[0 2 2 4 4 6 6 8 8 6 6 10 10 6 6 4 4 2 2 0 0 ; 
             0 0 4 4 -2 -2 0 0 2 2 4 4 6 6 10 10 6 6 10 10 0 ];

xpos = startmatris(1,:);
ypos = startmatris(2,:);
%% Skala
xscale = 2*xpos;
yscale = 2*ypos;


%% Rotation
theta = -90; %Vinkel i grader
xr = cosd(theta)*xscale - sind(theta)*yscale ;
yr = cosd(theta)*yscale + sind(theta)*xscale ;



%% Figur som skalas,roteras och skjuvas
figure(1)
plot(xpos,ypos,'-b',xr+ yr*-0.7,yr,'-r')% Skjuvar den också
axis equal;
legend('innan', 'efter')


