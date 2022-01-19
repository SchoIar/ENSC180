%**********************************************************************
% Lab 1b: RANDOM 3x3
%
% Description:
% creates a 3x3 matrix contain random entries 
%Find the maximum element in a matrix A.
% A longer description should appear here (if necessary).>
%
% Author: awi1@sfu.ca / Anton Ilic
% Date: 2022-Jan-18
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
%A = rand(3, 3);
%maxelement = max(A);
%A(randperm(9, 3)) = 1;
%fprintf("The maximum element is %d", maxelement)
%fprintf('%i\n', A)

A = rand(3,3); %makes a random 3x3 matrix w/ values 0<x<1
maxNumber = max(A, [], 'all');
%maxNumberPos = find(maxNumber);
[row,col] = find(A==maxNumber);
rowValue = row;
colValue = col;
fprintf('The value of A is : \n')
disp(A) %displays the matix
%fprintf("maximumNumber = %.3d", maxNumber); % THIS IS somewhat REDUNDANT 
%fprintf("The row value for the max is: %d", rowValue)
%fprintf("The col value for the max is: %d", colValue) both redundant. 
fprintf('Max(A) is (%d,%d) = %.3d',rowValue, colValue, maxNumber);%prints out it as a double w/ .3 precision
%fprintf('%d', maxNumberPos); 
