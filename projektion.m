%% Startmatris
startmatris=[0 2 2 4 4 6 6 8 8 6 6 10 10 6 6 4 4 2 2 0 0 ; 
             0 0 4 4 -2 -2 0 0 2 2 4 4 6 6 10 10 6 6 10 10 0 ];

xpos = startmatris(1,:);
ypos = startmatris(2,:);

theta = 135;

xp = cosd(theta)*cosd(theta)*xpos + sind(theta)*cosd(theta)*ypos;
yp = sind(theta)*cosd(theta)*xpos + sind(theta)*sind(theta)*ypos;

x= linspace(-10, 10, 200);
pLine = tand(135)*x;

figure(1)
plot(xpos,ypos,'-b',xp,yp,'-r', LineWidth=2)
hold on
plot(x, pLine, 'black')
axis equal;
grid on;
title('Projektion på linjen med vinkeln 135 grader')
legend('innan', 'efter', 'projektionslinje')