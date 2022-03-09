
%**********************************************************************
% Lab 6a
%
% Description: basic matrix opperations
% Author: awi1@sfu.ca / Anton Ilic
% Date: 2022-Mar-8
%
% Input: Nothing
% Output: A+B (b) A-2B (c)AC (d) AT
%(e) AA T
%(f) CCT
%(g) A -1 B
%-1
%(h) rank of A and C (i)
%determinant of A (j) solve the equation system [A]{x} =[C].
%
% I pledge that I have completed the programming assignment independently.
% I have not copied the code from a student or any source.
% I have not given my code to any student.
%
% Sign here: Anton Ilic
%*********************************************************************/



[A]= [4 3 1;3 7 -1; 1 -1 9];
[B]= [10 8 7; 3 -3 0; 14 1 7];
[C]= [1 -1; 4 7; 9 5];
% Performing matrix operations and printing results

% Question a)
disp('A + B is:')
disp(A + B)

% Question b)
disp ('A - 2B is:')
disp(A - 2*B)

% Question c)
disp('AC is:')
disp(A * C)

% Question d)
disp('The transpose of A is: ')
disp(A')

% Question e)
disp('A * A transpose ')
disp(A * A')

% Question f)
disp('C * C transpose is : ')
disp(C * C')

% Question g)
disp('A inverse * B inverse is: ')
disp(inv(A) * inv(B));

% Question h
disp('The rank of A is:')
disp(rank(A))
disp('The rank of C is:')
disp(rank(C))

%DET.
disp('The determinant of A is:')
disp(det(A))

%solution to 
disp('The solution to [A]{x} =[C] is ')
disp(A \ C)



