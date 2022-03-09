%**********************************************************************
% Lab 6d 
%
% Description: SOLVE LINEAR SYSTEM [A]{x} = {b} by using Gaussian
%elimination.
% Author: awi1@sfu.ca / Anton Ilic
% Date: 2022-mar8
%
% Input: function which requires 2 matricies (have also defulted to two random matricies)
% Output: solution the linear equation system [A]{x} = {b} via G.
% elimination
%
% I pledge that I have completed the programming assignment independently.
% I have not copied the code from a student or any source.
% I have not given my code to any student.
%
% Sign here: Anton Ilic
%*********************************************************************/
function partD_Ilic_Anton(in)
%checks for 2 inputs 
     if nargin == 0
       A= [4 3 1;3 7 -1; 1 -1 9];
       b= [10 8 7; 3 -3 0; 14 1 7];   
     elseif nargin==2 %checks if # of inputs is 2
    
        A = in{1};
        b = in{2};
    else
        disp('ERROR: invalid number of inputs')
        return
    end    

  
    if rank(A) < size(A) %real. Your code should first
%check whether the rank of [A] is less than the size of [A] based on the results of Gaussian
%elimination
        disp("0 rows exist thus no unique solution exists")
        return
    else
        disp("No 0 rows, thus a unique solution exists.")
        
        %matrixmatlabsolver = A\b; ALTERNATIVE METHOD    
        matrix = rref([A b]);
        %Final columns of rref([A b])
        matrixrref = matrix(:, (rank(matrix)+1:end));
        
        %disp('MatLab solver: ')
        %disp(matrixmatlabsolver)
        
        disp('Gaussian elimination: ')
        disp(matrixrref) 
    end
end