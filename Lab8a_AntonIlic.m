%############################################################################
% <Lab 8>
%
% Course: ENSC 180 Introduction to Engineering Analysis
% Instructor: Dr. Herbert H. Tsang
% Description: A piston–cylinder device contain some kind of gas. Insider the device the
%temperature is held constant. As the volume of the device was changed, the pressure was
%measured. The volume and pressure values are reported in the following table:
%This file ' Fit the data with first-, second, third-, and fourth-order polynomials (polyfit):
%i. Plot your results on the same graph
%ii. Plot the actual data with a circle and no line.
%iii. Calculate the values to plot from your polynomial regression results at intervals of
%0.2 m3
%iv. Do not show the calculated values on the plot, but do connect the points with solid
%lines.
%v. Which model seems to do the best job? Print out the comments.
%
%
% Due date: 22 march
%
% Author: Anton
% Input: lab8data.txt
% Output: Plotted models + Which one does the best job.
% I pledge that I have completed the programming assignment independently.
% I have not copied the code from a student or any source.
% I have not given my code to any student.
%
% Sign here: ___<PUT DOWN YOUR NAME HERE>_______
%##
filename = 'lab8data.txt';
A=readtable(filename)
Xv=A(:,1)% 1 to 6
Yv=A(:,2) % Values for o0ther shit
volume = Xv %Volume, m3
pressureAt300K = Yv %Pressure, kPa, when I = 300K

%iii. Calculate the values to plot from your polynomial regression results at intervals of
%0.2 m3

%iv. Do not show the calculated values on the plot, but do connect the points with solid
%lines.

A = readtable('lab8data.txt')

% i) plot data
figure
x = A{:,1};
y = A{:,2};


plot(x,y,'o')%original plot
hold on

%interval = 0.2;
%x = 1:interval:6;

for ii = 1:4
    p = polyfit(x,y,ii);%%polyfit for Polynomials 1 to 4
    y1 = polyval(p,x); 
    plot(x,y1)%plots
    hold on
end 

hold off;

title('A piston–cylinder device: Pressure VS volume @ 300K');
xlabel('Volume')
ylabel('Pressure')
legend( 'Raw Data','1st order polynomial ', '2nd order polynomial', ...
    '3rd order polynomial', '4th order polynomial' )
disp('4rth oder follows the curve better then the others');


% ##########################################################################