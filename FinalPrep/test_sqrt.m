function a = test_sqrt(g, number, convCrit)
% This function calculates
% the guess of a sqrt
% INPUTS: g = guess, number- the number, cc -a convergence criterion.
% OUTPUTS: approx SQRT
numberplus1minusnum = 0;
iterations = 0;
while numberplus1minusnum <= convCrit 
    yofn= 1/number*(g^2);
    xofnplusone=number/8*(15-yofn*(10-3*yofn))%as given by the criteron.
    temp = number;
    number=xofnplusone
    iterations = iterations +1;
    numberplus1minusnum = abs(number-temp)  %CHECKING IF CC IS met
    if iterations > 100
        break%PREVENTS AN INFITE LOOP
    end
 %a = number
end

a = number
end