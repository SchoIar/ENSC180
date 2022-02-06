%**********************************************************************
% Lab 3: Write a MATLAB script that draws the following graph of the population of the United States
%from 1790 to 2020. Using the following model and the actual data
%
% Description: Write a MATLAB script that draws the following graph of the population of the United States
%from 1790 to 2020. Using the following model and the actual data
%
% 
% Author: awi1@sfu.ca / Anton Ilic
% Date: 2022-Feb-1
%
% Input: 
% Output: 
%
% I pledge that I have completed the programming assignment independently.
% I have not copied the code from a student or any source.
% I have not given my code to any student.
%
% Sign here: Anton Ilic
%*********************************************************************/
clc
clear
x = 1790:2020;
y = 197273000./ (1+ exp(-0.03134 .*(x-1913.25))) ;

% Plot the signal
plot(x,y)
title('population of the United States from 1790 to 2020.')
xlabel('Year')
ylabel('Population')

hold on %so we can write on the graph/overlay

xreal = [1790:10:2020] %x is evenly spaced; thus we can incriment...
%it instead of saving a varaible
%yreal = [y1, y2, y3, y4, y5, y6, y7, 78, y9, y10, y11,...
%    y12,y13,y14,y15,y16,y17,y18,y19,y20,y21,y22,y23,y24,y25]
yreal = [3929214, 5308483, 7239881 ,9638453 ,12866020 ,17069453 ,23191876,... 
31443321, 38558371, 50189209, 62979766 ,76212168, 92228496, 106021537 ,123202624, ...
132164569, 151325798, 179323175 ,203211926 ,226545805 ,248709873, ...
281421906 ,308745538 ,331449281] %Y values (population values)


plot(xreal,yreal, '.','MarkerSize', 20) %plots Y
%can change what is printed; Asked for circles (.)s

legend('Simulated/predicted population data of the United States',...
   'population data of the United States')
hold off %stops hold
fprintf("We may observe that the simulated data " + ...
    "shows that the population begins to plateau; however,\n " + ...
    "the actual value shows that the population growth does not\n " + ...
    "plateau (ie. the population is initally the same as the simulation,\n " + ...
    "but further on, it grows larger then the simulated data.  ")


