%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% MATH 238 Project2 Q1 %%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

close all;
clear all;

%%% Define the interval [a,b] and initial condition
a = 0;
b = 0.5;
y0 = 1;

%%% Find the approximated solution using Euler's method
N = 10;                                                     %%% number of steps
[x1,y1] = Euler(a,b,y0,N);                                  %%% use the function "Euler" to find the approximate solution with step size h=0.05

N = 100;                                                    %%% number of steps
[x2,y2] = Euler(a,b,y0,N);                                  %%% use the function "Euler" to find the approximate solution with step size h=0.005

%%% Define the exact solution
N = 100;
x3 = a:(b-a)/N:b;
y3 = 2*exp(x3)-x3-1; %%%enter the exact solution here%%%      

%%% Plot the 3 solutions on the same figure
figure; 
plot(x1,y1,'r'); hold on;
plot(x2,y2,'g'); hold on;
plot(x3,y3,'b'); hold off;


%%% Euler's method
function [x,y] = Euler(a,b,y0,N)

f = @(x,y) x+y;

h = (b-a)/N;

x = a:h:b;
y = zeros(1,N+1);

x(1) = a;
y(1) = y0;

%%% main loop for Euler's method
for i = 2:N+1
    y(i) = y(i-1) + h * f(x(i-1), y(i-1));%%% enter commands here so that the loop computes the approximate solutions %%%
end

end