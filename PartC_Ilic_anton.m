%**********************************************************************
% Lab 6C
%
% Description: Find the determinant of ([A]-α[I]) symbolically in terms of α without using MATLAB, where
%[A] is given in partA above, I is an identity matrix and α is a scalar. Without using
%MATLAB, solve the equation det([A]-α[I]) =0 to find its roots (i.e., values of α) and then
%find the vectors x that satisfy ([A]-α[I]) {x} = {0}. Compare your solutions for α and x with
%the eigenvalues and eigenvectors of A determined from MATLAB. (30 marks)
% Author: awi1@sfu.ca / Anton Ilic
% Date: 2022-Jan-25
%
% Input: n/a 
% Output: Roots / by hand matrix + MatLab's solution 
%
% I pledge that I have completed the programming assignment independently.
% I have not copied the code from a student or any source.
% I have not given my code to any student.
%
% Sign here: Anton Ilic
%*********************************************************************/
clc
clear

A = [4 3 1; 3 7 -1; 1 -1 9]; 
[eigVecs,eigVals] = eig(A);  
rootNum = 0;    
precision = 1e6; % accurate within 6 figs

eigVecsByHand = [[-16.81; 10.69;  3.885], [10.694;  -6.5997;   -2.4427], [3.885; -2.44; -0.753]];
% WHAT I GOT BY HAND^
for ii = linspace(1,10, precision) %1,10 chosen abratrairly
    % linspace(x1,x2,n) generates n points. The spacing between the points is (x2-x1)/(n-1).
                             
    %eigenvalues and eigenvectors of A determined from MATLAB.
    rootFound = false;  %

    if detrmi(ii)<=0 && detrmi(ii+10/precision)>=0
        rootFound = true;
    elseif detrmi(ii)>=0 && detrmi(ii+10/precision)<=0
        rootFound = true;
    end

    %find roots (pr when found) 
    if rootFound == true
        rootNum = rootNum + 1; % increment
        fprintf('Approx root is: %f ', rootNum, ii+5/precision);
        fprintf('MatLab found %f\n\n ', eigVals(rootNum,rootNum));
    end

end

disp('By hand: : ')
disp(eigVecsByHand);

disp('MATLAB (scalar multiplication): ')
disp(eigVecs);
disp(['General conclusion: it looks like my values  ' ...
    'found by hand are wrong (probably a problem with precision ' ...
    'since the answers are not the same (roots found are' ...
    'majorly different) '])

%% Function w/ determ by hand
function [detrm] = detrmi(in)
    detrm = (-in.^3 + 20*in.^2 - 117*in + 158);
end
