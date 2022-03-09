%
%Write a user-defined function to add and multiply two matrices. The function should have the
%two matrices as input, check whether the addition and multiplication operations are valid for
%the given matrices and if valid, present the output matrices. If the addition and/or
%multiplication cannot be performed, the function should print a statement to that effect. (20
%marks).
%Date: 2021, mar 8th
%Desc: checks whether the addition and multiplication operations are valid for
%the given matrices and if valid, present the output matrices.
% Author: awi1@sfu.ca / Anton Ilic
%
%
%Input; n/a: function that takes 2 matricies as inputs
%Output: present the output matrices.
%
% I pledge that I have completed the programming assignment independently.
% I have not copied the code from a student or any source.
% I have not given my code to any student.
%
% Sign here: Anton Ilic
%*********************************************************************/


%
function partB_Ilic_Anton(A,B)
    
%FOR TESTING
    %A = rand(3);
    %B = rand(3);
   
        if (size(A) == size(B))%checks if size is the same; if so: 
            disp('A + B is: ')
            disp(A + B)
        else
            disp('ERROR: Matricies arent the same size! ')
        end
    %multiply matricies
    try
        disp('A multiplied by B is: ')
        disp(A*B)
    catch     
        disp('ERROR: Matricies could not be multiplied. Are they the same size?')
    end
end