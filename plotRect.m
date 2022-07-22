clear all, close all

x = [3 3 -3 -3 3 ];
y = [1 -1 -1 1 1 ];

org = [x;y];

angle = pi/3;

A = [cos(angle) -sin(angle); sin(angle) cos(angle)];

rot = A*org;

x_rot = rot(1,:);
y_rot = rot(2,:);


superfig = figure( 'Position', [2100 300 1820 1620]);
plot(x,y, 'bo-', 'MarkerSize', 24 ,'LineWidth',3,x_rot,y_rot,'r*-','MarkerSize', 24 ,'LineWidth',3);
set (gca, 'linewidth', 2, 'fontsize', 72);
axis([-5 5 -5 5]);
axis square
