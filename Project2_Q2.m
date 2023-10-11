%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% MATH 238 Project2 Q2 %%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear all;

%%% Define f(x,y) in the IVP
f = @(x,y) 2*x+y;    

%%% Draw the direction field
figure;
dirfield(f, -3:.3:3, -4:.4:4);hold on;

%%% Define the solutions to the IVP in Q2(a)-(c)
x = -3:0.1:3;
y1 = -2.*x-2;                                    
y2 = 3.*exp(x+1)-2.*x-2;
y3 = -2.*exp(x+2)-2.*x-2;

%%% Plot the 3 solutions on the direction field
plot(x,y1,'r');hold on;
plot(x,y2,'g');hold on;
plot(x,y3,'b');hold off;