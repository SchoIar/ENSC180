% <Final Exam>
%
% Course: ENSC 180 Introduction to Engineering Analysis
% Instructor: Dr. Herbert H. Tsang
% Description: ) Calculate the interpolated values of temperatures at the three locations in the engine at 3.6 seconds (Use linear interpolation).
%b) Generate three plots to compare connecting the temperature points
% with linear interpolations and cubic spline interpolation at the 
% three locations. The plots should be displaced side by side 
% (not one after the other). Make sure you label all axis, 
% include title and legend for each plot.
% Due date: April 2022
%
% Author: Anton ilic
% Input: Table 1: Engine Temperature (F) values
% Output: 3 distinct plots
% I pledge that I have completed the programming assignment independently.
% I have not copied the code from a student or any source.
% I have not given my code to any student.
%
% Sign here: ANTON ILIC
%############################################################################

t = linspace(0,5, 6);%supressing output to make faster
temp1=[0,20,60,68,77,110]
temp2=[0,25,62,67,82,103]
temp3=[0,52,90,91,93,96]%data values
x=0:5
%

%if it were a file: id do something like...
%A = readtable('filename.txt')
%x0 = A{:,1};%values on the first COLM
%y0 = A{:,2};

y1 = interp1(t, temp1,x);  %https://www.mathworks.com/help/matlab/ref/interp1.html
%y2 = polyval(polyfit(t, temp1, 5), x); %polyfit returns 5th order poly graph of
%y3 = spline(t, temp1, x); %spline returns a vector of interpolated values s corresponding to the query points in xq. 
y2 = interp1(t, temp2,x);
y3 = interp1(t, temp3,x);

y1c=spline(t, temp1, x)%spline values
y2c=spline(t, temp2, x)
y3c=spline(t, temp3, x)

hold on
%1
title('Temperature Engine vs Time Interpolation Graph')
xlabel('Time (s)')
ylabel('Temperature (F)')
plot(x,y1)
plot(x,y3)%2nd
plot(x,y3)%3rd

plot(x,y1c)
plot(x,y2c)
plot(x,y3c)
legend('lx(t1)','lx(t2)','lx(t3)','Cx(t1)','Cx(t2)','Cx(t3)')%% THESE ARE THE 

hold off
fprintf('NOTE: lx(tn) is the temperature values for the  linear interpolations')

