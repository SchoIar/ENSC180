%this was DIRECTLY copied from 494934795164450816 on discord. All credits/rights to them.
%note: this did not get full marks, but got a higher mark then mine, so I thought id include it. 
  
clc 
clear
A = [1 0; 0 1];
B = [2 1; 2 2];
MathMatrix(A, B);

C = [1 1 1; 1 0 1];
D = [1 1: 2 1];
MathMatrix(C,D);
% the above code is for testing


function [O,C] = MathMatrix(A, B)
    [m,n] = size(A);
    [x,y] = size(B);
    %creates variables for testing size
    

        if m ~= y %testing to see if the # of row of A == # of cols of B
            O = "Error: Matrix Multiplication is not defined";
        end
        if m == y
            O = A*B;
        end
      
    
        if m == x && n == y % testing to see if size(A) == size(B)
            C = A+B;
        end
        if m ~= x || n ~= y 
            C = "Error: Matrix addition is not defined";
        end
    

    disp(O);
    disp(C)


end
