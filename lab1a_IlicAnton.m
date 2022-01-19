%**********************************************************************
% Lab 1a: 
%
% Description:
% Millage calculator
% 
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

% See https://www.mathworks.com/matlabcentral/answers/380202-why-does-matlab-crash-when-plotting-with-intel-drivers?s_cid=pl_crsh_an
% matlab -softwareopenglmesa
%a=input('ENTER THE FIRST NUMBER : ');
%this assumes correct input; no error exceptions have been coded3
startingMileage = input('What is the starting mileage (km)? ');
endingMileage = input('What is the ending mileage (km)? ');
fillUpOne = input('First Fill-up amount (L)? ');
fillUpTwo = input('Second Fill-up amount (L)? ');
fillUpThree = input('Third Fill-up amount (L)? ');
%this calculates kmPerL; will result in an error if all fill ups are 0. 
kmPerlitre = (endingMileage - startingMileage) / (fillUpOne + fillUpTwo + fillUpThree);
fprintf('On this trip, the mileage is (km per L): %d', kmPerlitre);
kmPerlitre = (endingMileage - startingMileage) / (fillUpOne + fillUpTwo + fillUpThree);

