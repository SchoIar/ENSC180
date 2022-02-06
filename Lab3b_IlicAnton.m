%**********************************************************************
% Lab 3b
%
% Description: Opperations on an array
%
% 
% Author: awi1@sfu.ca / Anton Ilic
% Date: 2022-Feb-1
%
% Input: Array with values
% Output: Size of array, Minarrayvalue, maxarrayvalue.. etc
%
% I pledge that I have completed the programming assignment independently.
% I have not copied the code from a student or any source.
% I have not given my code to any student.
%
% Sign here: Anton Ilic
%*********************************************************************/
clc
clear
array = [3.1 5.8 6.3 2.6 2.1 7.0 5.0 8.2 4.2]
%makes an array with these elements

sz = size(array)
szArray = sz(2) %size is 2nd entry in sz; since it is a ROW vector 

minValue = min(array)%min value in array
maxValue = max(array)
meanValue = mean(array)
medianValue = median(array)
standardDeviation = std(array)
sortedArray = sort(array)
% Sorted by lowest to highest
%fprintf("Done \n");