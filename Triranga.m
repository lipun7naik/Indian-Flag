%% HAR GHAR TRIRANGA
% Azadi ka Amrit Mahostav
% CELEBRATING 75 glorious years of INDIA's INDEPENDENCE❤️
clc;
clear;
close all;
t = pi/2:0.01:4.95+pi/2;
t1 = 0:0.05:2*pi;
x= sin(t); y = 1.1 + x; z = -1.1+x; w = -2.2 + x;
comet(t,x)
hold on
comet(t,y)
hold on

X = [t,fliplr(t)];
Y = [x,fliplr(y)];
fill(X,Y,[1, 0.6, 0.1])
hold on
comet(t,z)
Z = [x,fliplr(z)];
fill(X,Z,'w')

hold on
r = 0.21;
c = 4 + r*cos(t1);
d = -1.3+ r*sin(t1);

plot(c,d,'Color',[0,0,0.32])
hold on
for s = 0:(5*pi)/60:pi
    x1 = 4 + r*cos(s);
    y1 = -1.3 + r*sin(s);
    x2 = 4 + r*cos(s+pi);
    y2 = -1.3 + r*sin(s+pi);
    line([x1 x2],[y1 y2],'color',[0,0,0.32])
    hold on
end
hold on
comet(t,w)
W = [z,fliplr(w)];
fill(X,W,'g')
hold off

