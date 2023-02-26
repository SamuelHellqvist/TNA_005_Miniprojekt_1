%nollrum värderum
clc
clear

hold on
grid on
axis equal

x=linspace(-4,4,100);
projektionsLinje = -1*x; %135 grader
plot(x,projektionsLinje,'b')

p1 = [0;0]; %där vektorerna börjar

%före projektion
u=[3;3];
w=[0;4];
drawArrow(p1,u,'r')
drawArrow(p1,w,'g')

%efter projektion
vinkel = 135;
projektion=[cosd(vinkel)*cosd(vinkel) sind(vinkel)*cosd(vinkel);
            sind(vinkel)*cosd(vinkel) sind(vinkel)*sind(vinkel)];

U=projektion*u;
W=projektion*w;
drawArrow(p1,U,'r')
drawArrow(p1,W,'g')

x12=u(1,1);
x22=w(1,1);

y12=u(2,1);
y22=w(2,1);

text(x12,y12,'u')
text(x22,y22,'w')

x12=U(1,1);
x22=W(1,1);

y12=U(2,1);
y22=W(2,1);

text(x12,y12,'R(u)=(0,0)')
text(x22,y22,'R(w)')
%värderummet är projektionslinjen
%nollrummet är alla vektorer ortogonalt mot projektionslinjen



%%
%eigenvalue eigenvectors genom rotation moturs 30 grader
clc
clear

alpha = 30;

rotation = [cosd(alpha) -sind(alpha);
            sind(alpha) cosd(alpha)];

%vektorer före rotation
u = [3;3];
w = [-5;0];
v = [0;-4];


p1 = [0;0]; %där vektorerna börjar

axis equal
grid on
hold on
title('Egenvärden och Egenvektorer vid rotation')

drawArrow(p1,u,'g')
drawArrow(p1,w,'b')
drawArrow(p1,v,'r')

%vektorer efter rotation
U=rotation*u;
W=rotation*w;
V=rotation*v;

drawArrow(p1,U,'g')
drawArrow(p1,W,'b')
drawArrow(p1,V,'r')

%text vid vektorer
x1=u(1,1);
x2=w(1,1);
x3=v(1,1);

y1=u(2,1);
y2=w(2,1);
y3=v(2,1);

text(x1,y1,'u')
text(x2,y2,'w')
text(x3,y3,'v')

x12=U(1,1);
x22=W(1,1);
x32=V(1,1);

y12=U(2,1);
y22=W(2,1);
y32=V(2,1);

text(x12,y12,'R(u)')
text(x22,y22,'R(w)')
text(x32,y32,'R(v)')

%R(u) = lambda*u, inga egenvektorer vid rotation av 30 grader
%då de ändrar riktning
