
%**********************************************************************
% Lab 5b
%
% Description:  Function which calculates the phasor for 
% the sum of two sinusoids represented by phasors.
%
% 
% Author: awi1@sfu.ca / Anton Ilic
% Date: 2022-Mar-1
%
% Input: A3, phi3
% Output: Graph w/ added phasors as values (signal x time) 
%
%a. 
%
%
%(b) to calculate the sum of the following two sinusoids. Add code to
%obtain the information for the signal and also plot the resulting sinusoid.
%
% I pledge that I have completed the programming assignment independently.
% I have not copied the code from a student or any source.
% I have not given my code to any student.
%
% Sign here: Anton Ilic
%
%##########################################################################

%% PART B main body; calls the function PhasorAdd.m
XLIM = pi/500
YLIM = 10.5 %limits chosen based on graph; 
[A3, phi3] = PhasorAdd(6, 60*pi/180, 8, -30*pi/180)
%%THIS IS PART B-> 6cos(200t + 60°)+ 8cos(200t − 30°)
%so values are 60deg and -30deg
% calculate sum
x = linspace(-XLIM, XLIM, 1000)
% limits
y = A3*cos(200*pi*x + phi3)
% freq as sum'd cos
% Graphs the resultant function
plot(x, y);
title("Sum of phasors")
%creates a graph with said limits 
xlim([-XLIM, XLIM])
ylim([-YLIM, YLIM])

xlabel("Time (s)")
ylabel("Signal")

%6cos(200t + 60°)+ 8cos(200t − 30°)