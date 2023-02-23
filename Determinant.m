%Determinant
clear
close all

%% Matriser
% Definiera rektangelns sidor som kolumner i matrisen A
A = [1 0; 
     0 1];

% Definiera avbildningsmatrisen B
B =  [2 0; 
      0 1.4];

%% Ekvationer
% Transformera rektangeln genom att multiplicera A med B
% Beskriver hur den ursprungliga rektangeln har förändrats 
AB = A*B;

% Beräkna determinantvärdet för AB
det_AB = det(AB);

%% Definera formerna
% Definiera hörnen för rektangeln som en matris med koordinaterna för hörnen som rader
fyrkantA = [0 0; A(1,1) 0; A(1,1) A(2,2); 0 A(2,2); 0 0];

% Definiera hörnen för rektangelB genom att multiplicera hörnen för rektangeln med avbildningsmatrisen AB
% Detta för vi vet med AB hur den förändras men inte dens lokation, vilket vi får via fyrkantA.
rektangelB = fyrkantA * AB;


%% Rita fyrkantA och rektangelB i en figur
figure;
hold on;
plot(fyrkantA(:,1), fyrkantA(:,2), 'r'); % Jag tar kolumn 1 för x och kolumn 2 för y värden0
plot(rektangelB(:,1), rektangelB(:,2), 'b');
axis equal;
title(['Determinant = ' num2str(det_AB)]); % number to string
legend('FyrkantA', 'RektangelB');
