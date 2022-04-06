% <Lab 10>
%
% Course: ENSC 180 Introduction to Engineering Analysis
% Instructor: Dr. Herbert H. Tsang
% Description: Evaluate each of the above functions using two MATLAB numerical integration functions
% Due date: 2022, april 5th 
%
% Author: Anton Ilic 
% Input: None
% Output: Time efficiancy of each integral and its results...
% I pledge that I have completed the programming assignment independently.
% I have not copied the code from a student or any source.
% I have not given my code to any student.
%
% Sign here: Anton Ilic
%############################################################################

%funs = {(31 + x^2)*3/2, e^(-x^2), sin(x)*tan(x)};%saving the fxns as a cell array
format long
syms x;

fun1 = @(x) sqrt((1+x.^2).^3);
fun2 = @(x) (exp(-x.^2));
fun3 = @(x) sin(x).*tan(x);


tic
A = integral(fun1,0,1)
atime = toc

tic
B = integral(fun2,0,1)
btime = toc

tic
C = integral(fun3,0,1)
ctime = toc

%cotes (BY Greg von Winckel)
tic
AA = cotes(@(x) sqrt((1+x.^2).^3),0,1,20,8)
aatime = toc

tic
BB = cotes(@(x) (exp(-x.^2)),0,1,20,8)
bbtime = toc

tic
CC = cotes(@(x) sin(x).*tan(x),0,1,20,8)
cctime = toc

ManualMethod= [atime; btime; ctime];
CotesMethod = [aatime; bbtime; cctime];
fprintf('For functions 1 to 3 the manual result was: ');
TIME_Comparison = table(ManualMethod, CotesMethod)


%% I DIDNT SUPRESS ANY OUTPUT: so all the output is automatically displayed THRU matlab
% THEREFORE...
%% Displaying results: removed due to redundancy.
% BUT CAN EASILY BE IMPLIMENTED
%for ii = 1:3
    
   %1
    %fprintf('For function %d, the manual result was  ', ii);
    %fprintf('calculator was %.5f, taking %f seconds.\n', solutions(ii,1), solutions(ii, 3));
   %2
  %  fprintf('The calculated result for the Newton-Cotes method was ');
   
   % if results AA > A
      %  fprintf('The coes method produced a faster output by... ');
     %  .... divide em...
  %  elseif solutions(ii, 3) < soltuioons(ii, 4)
     %   fprintf('The built-in integral calculator produced a faster output by a factor of ');
     %....
    %else
        %fprintf('The two methods were equally fastt\n');
  %  end
    

%end



%% CONCLUSION:
% In conclusion the Cotes method is faster for ever integral.
% the results thru Matlab's integration and the cotes method are ALWAYS
% the same


% COULD ALSO USE A FUNCTION TO SOLVE: included underneeth 
%function [q1, q2, t1, t2] = int_calc(f)    
    %Built in
%    tic
%    q1 = integral(f,0,1);
%    t1 = toc;
    %cotes (BY Greg von Winckel)
%    tic
%    q2 = cotes(f,0,1, 20, 8);
%   t2 = toc;
%end
%
%
%
%