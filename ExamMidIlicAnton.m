
%############################################################################ % <Midterm Exam>
%
% Course: ENSC 180 Introduction to Engineering Analysis
% Instructor: Dr. Herbert H. Tsang
% Description:  relationship between temperatures 
% measured in degrees Fahrenheit (𝑇 ), degrees Celsius 
% (𝑇 ), and kelvins (𝑇 )
% Due date: 2021 feb 15th
%
% Author: Anton Ilic
% Input:  increments in degrees F or C between lines.
% Output: F2K.csv and C2F.csv
% I pledge that I have completed the programming assignment independently.
% I have not copied the code from a student or any source.
% I have not given my code to any student.
%
% Sign here: Anton Ilic
clear
clc
incrementFtoK = input('F to K increment: ')
fileID = fopen("F2K.csv", 'w');
N = 200;
disp('Temp              F')
%   farenheit to Kelvin
for ii=0: incrementFtoK: N
    tempK= (ii + 459.67)*5/9;
    fprintf("%f     %f", ii, tempK);
    fprintf(fileID, "%f     %f", ii, ii+273 ); %celcius to kelvin
end


%filePath = 'F2K.csv'
%data=readtable(filePath, 'PreserveVariableNames', 1)'
%numberofparam = input('How many parameters will be entered ');
%A(1,numberofparam)
%A = zeros(1,100) %arbitrarely taking 100 values; can add more. 
%n = 1;
%% taking input values
%fprintf('is this a conversion BTWN Fahrenheit\n to Kelvin OR Celcius Fahrenheit  ')

%while (n <= numberofparam) %arbitrarely taking 10 values on table for input; can add more
 %   A(1,n) = input('Enter temperature in kelvin: ');
    %A(1,n) = input('What is the temperature in Kelvin ');
   %n = n+1;
%end

%% farenheit to Kelvin 
%Temp far = 9/5 Tc + 32
% create var degreesFar 
% do the conversion in here (haven't done this yet)

%% celcius to kelvin
%Temp far = 9/5 TempK -459.67 -> 9/5 Tc + 32 = 9/5 Tk - 459.67
%create var degreesKelvin;
%do the conversion from Celcius to Kelvin (havent done this yet)

%Average = array2table(((
%temperature = input('Enter the temperature in  ');

%% TABLES: 
%this would write the outpit
%writetable([degreesKelvin], 'F2K.csv')
%writetable([degreesFar], 'C2F.csv')