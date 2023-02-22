clear
close all

startmatris=[0 2 2 7 7 2 2 8 8 0 0; 0 0 8 8 10 10 14 14 16 16 0];
xpos = startmatris(1,:);
ypos = startmatris(2,:);

% scale
xscale = 2*xpos;
yscale = 2*ypos;

%plot scale
figure(1)
plot(xpos, ypos,'-b',xscale,yscale,'-r')
axis equal;
legend('innan', 'efter')


%Rotation
my_angle = 90; %angle in degrees
xr = cosd(my_angle)*xpos - sind(my_angle)*ypos ;
yr = cosd(my_angle)*ypos + sind(my_angle)*xpos ;

%plot rotation
figure(2)
plot(xpos,ypos,'-b',xr,yr)
axis equal;
legend('innan', 'efter')

%plot skjuvning
figure(3)
plot(xpos,ypos,'-b',xpos+ ypos*-0.7,ypos,'-r')
axis equal;
legend('innan', 'efter')

%projektion
xp = cosd(my_angle)^2*xpos + sind(my_angle)*cosd(my_angle)*ypos ;
yp = sind(my_angle)*cosd(my_angle)*ypos + sind(my_angle)^2*xpos ;

%plot
figure(4)
plot(xpos,ypos,'-r',xp,yp,'-b')
axis equal;
legend('innan', 'efter')

%Spegling
xs = cosd(2 *my_angle)*xpos + sind(2 *my_angle)*ypos ;
ys = -cosd(2 * my_angle) * ypos + sind(2 *my_angle)*xpos ;

%plot spegling
figure(5)
plot(xpos,ypos,'-r',xs,ys,'-b')
axis equal;
legend('innan', 'efter')



