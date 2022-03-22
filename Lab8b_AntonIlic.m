%[50%] The following table defines the sea-level concentration of dissolved oxygen for
%fresh water as a function of temperature:
%
%
%############################################################################
% <Lab 8>
%
% Course: ENSC 180 Introduction to Engineering Analysis
% Instructor: Dr. Herbert H. Tsang
% Description: opperations of dissolved oxygen for
%fresh water as a function of temperature:
% Due date: Tues Mar22 2022
%
% Author: Anton
% Input: Table which defines the sea-level concentration of dissolved oxygen for
%fresh water as a function of temperature:
% Output: results graphical 

% I pledge that I have completed the programming assignment independently.
% I have not copied the code from a student or any source.
% I have not given my code to any student.
%T (oC) 0 8 16 24 32 40
%o (mg/L) 14.621 11.843 9.870 8.418 7.305 6.413
% Sign here: ___<Anton

T =  [0 8 16 24 32 40]
Oxygen = [14.621 11.843 9.870 8.418 7.305 6.413]
x = 0:40

y1 = interp1(T, Oxygen, x);  %https://www.mathworks.com/help/matlab/ref/interp1.html
y2 = polyval(polyfit(T, Oxygen, 5), x); %polyfit returns 5th order poly graph of
y3 = spline(T, Oxygen, x); %spline returns a vector of interpolated values s corresponding to the query points in xq. 

figure;
%1
plot(x,y1)
title('Piecewise')
xlabel('Temperature (C)')
ylabel('Dissolved oxygen (mg/L)')

figure;

plot(x,y2)
title('5th order Polynomail')
xlabel('Temperature (C)')
ylabel('Dissolved oxygen (mg/L)')

figure;
plot(x,y3)
title('Spline')
xlabel('Temperature (C)')
ylabel('Dissolved oxygen(mg/L)')

% Displaying values
disp('The values for o(27) are displayed below.')
fprintf('The Piecewise linear produced a value of: %f.\n', y1(27))
fprintf('The 5th-order polynomial produced a value of: %f.\n', y2(27))
fprintf('The Spline produced a value of: %f.\n', y3(27))
%Print out the estimate using the three interpolation methods. Use the “comment” within the
%code to explain your approach and comment on the results you obtain.
fprintf(['I graphed the three results on seperate graphs. ' ...
    'Laying them side by side' ...
    '\nit is evident that the piecewise results are more ' ...
    'different \nthen the results of the other two. \n' ...
    ' '])
%############################################################################