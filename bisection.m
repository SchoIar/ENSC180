
%[50%] Using the bisection method to the following function g(x) = x
%3 − 4 with the
%starting interval [1,3]. Perform at least 3 iterations and calculate the errors and percentage
%errors of x0, x1, x2, and x3.
%############################################################################
% <Lab 8>
%
% Course: ENSC 180 Introduction to Engineering Analysis
% Instructor: Dr. Herbert H. Tsang
% Description: application of Bisection method
% Due date: Mar 29th 2022
%
% Author: Anton ilic
% Input: None
% Output: results of bisection & error values
% I pledge that I have completed the programming assignment independently.
% I have not copied the code from a student or any source.
% I have not given my code to any student.
%
% Sign here: ___anton_
%############################################################################

clc
clear
ii = 11;%# of itrations
lowerb = 1; % lower boundry
uperb = 3; % upper boundry
c = 1:ii+1; % hold results
c(1) = (lowerb + uperb) / 2; %inital val; Midpoint.

% root calcukatuibs
%1x^3+0x^2+0x-4 = 0 SO TO USE ROOTS COEF R 1 0 0 -4
allRoots = roots([1 0 0 -4]); % all roots
realRoot = allRoots(~imag(allRoots)); %roots w/o imag. 


% performing the bysection method 
for ii = 1:ii
    if (sign(g(lowerb)) == sign(g(c(ii)))) % IF BOTH R on the +/- X axis
        lowerb = c(ii);
    else
        uperb = c(ii);
    end
    c(ii+1) = (lowerb+uperb) / 2;
end

% error
errors = realRoot-c;
percentageErrors = errors./realRoot.*100;
perrorreal=abs(percentageErrors);%percentage error IS ALWAYS pos
%disp. results
for ii = 1:ii+1
    fprintf("Iteration %d of the bisection method resulted in a value of: %f\n", ii-1, c(ii))
    fprintf("Absolute error: %.3f, and Percentage error: %.3f%%\n\n", errors(ii), perrorreal(ii))
end

% Function definition
function y = g(x)
    y = x.^3-4;
end