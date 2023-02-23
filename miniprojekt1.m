clear
close all

%% Startmatris
startmatris=[0 2 2 4 4 6 6 8 8 6 6 10 10 6 6 4 4 2 2 0 0 ; % Ser ut som ett H med ett F i sig
             0 0 4 4 -2 -2 0 0 2 2 4 4 6 6 10 10 6 6 10 10 0 ];

xpos = startmatris(1,:); %Rad 1 = x värden
ypos = startmatris(2,:); %Rad 2 = y värden
%% Omskalning
xscale = 2*xpos; 
yscale = 2*ypos;

A = polyarea(xscale,yscale); % Räknar arean
B = polyarea(xpos,ypos);

%plot scale
figure(1)
plot(xpos, ypos,'-b',xscale,yscale,'-r')
axis equal;
title('Omskalning');
subtitle(['\color{blue}Area innan = ', num2str(B),'  \color{red}Area efter = ', num2str(A)])
legend('innan', 'efter')

%% Rotation
%prompt = "Lägg in rotering (i grader): "; %Om man vill ha input
%theta = input(prompt);
theta = 90; %Vinkel i grader (pi/2)
xr = cosd(theta)*xpos - sind(theta)*ypos ;
yr = cosd(theta)*ypos + sind(theta)*xpos ;

%plot rotation
figure(2)
plot(xpos,ypos,'-b',xr,yr,'-r')
axis equal;
title('Rotation')
subtitle([' \color{red}Roterad ', num2str(theta),' Grader'])
legend('Innan', 'Efter')

%% Skjuvning
figure(3)
plot(xpos,ypos,'-b',xpos+ ypos*-0.7,ypos,'-r')
axis equal;
title('Skjuvning')
legend('Innan', 'Efter')

%% Projektion
xp = cosd(theta)^2*xpos + sind(theta)*cosd(theta)*ypos ;
yp = sind(theta)*cosd(theta)*ypos + sind(theta)^2*xpos ;

%plot projektion
figure(4)
plot(xpos,ypos,'-b',xp,yp,'-r')
axis equal;
title('Projektion')
legend('Innan', 'Efter')

%% Spegling
xs = cosd(2 *theta)*xpos + sind(2 *theta)*ypos ;
ys = -cosd(2 * theta) * ypos + sind(2 *theta)*xpos ;

%plot spegling
figure(5)
plot(xpos,ypos,'-b',xs,ys,'-r')
axis equal;
title('Spegling')
legend('Innan', 'Efter')
