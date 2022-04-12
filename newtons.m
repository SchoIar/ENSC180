
%<Lab 9b>
%
%Apply the Newton-Raphson method to the function f (x) = tanh(x2 − 9) to
%evaluate its known real root at x = 3. Use an initial guess of x0 = 3.2 and take a minimum
%of three iterations. (b) Did the method exhibit convergence onto its real root? Comments
%or show your explanation inside the code or you can put them into a PDF document too.
%Plot and show the plot with the results for each iteration labeled.
%
%Instructor: Dr. Herbert H. Tsang
% Description: Apply newtons method (see above for detailed desc)
%Author: Anton Ilic
%Date: Mar 29th 2022
%Output: Applications of newtons method (plot)
% I pledge that I have completed the programming assignment independently.
% I have not copied the code from a student or any source.
% I have not given my code to any student.
%
% Sign here: Anton
iterations=3;
initialGuess=3.2;
attempts = 0:iterations;
attempts(1) = initialGuess;%1st value = INITIAL GUESS

%Newtons method
for ii=1:iterations
    x0 = f(attempts(ii));%#
    deriveoff = derivativeof(attempts(ii));%derivative of the #
    attempts(ii+1)=attempts(ii)-(x0/deriveoff);%ie. Newtons method formula
end

% Plotting 3 on graph
figure;
hold on
scatter(0:iterations,attempts)% pts. 
yline(3);% roots
plot(0:iterations,attempts)% connection btwn pts. 
hold off

%Formatting graph
title('Newton-Raphson Method with number of iterations')
xlabel('Iteration')
ylabel('Value')
legend('Calculated Value','Root')

%% show the plot with the results for each iteration labeled.
for ii = 0:iterations
    text(ii, attempts(ii+1), cellstr(num2str(attempts(ii+1))))%cellstr - converts cell arrays 
    % to character Vectors
  % text(ii, attempts(ii+1), cellstr(strcat('iteration number:', (num2str(ii)))))
%LABELS ^ (took em off cuz they block the other stuff). 
end
disp("It does not converge "+ ...
    "(See comment inside code for detailed description of why.")

%% SOLUTION TO THE QUESTION: (b) Did the method exhibit convergence onto its real root?
%% IT WILL NEVER CONVERGE. 
% It will converge to 3
% As the value goes higher, it must go negative since the derivative
% becomes smaller...
%ie. Sech(of the value) becomes infinitely small so
% the newtons method will result in a large negative number 
%which then later approches 0 as Lim -> inf...
% ITERATIONS AFTER 3rd go to INF.

%% FUNCTIONS:
%graph
%f (x) = tanh(x2 − 9)
function y = f(x)
    y=tanh(x.^2-9);
end

%derivative (manually calc.).
function deriv = derivativeof(x)
    deriv = 2*x*(sech(x^2-9)).^2;
    %2xsech2(x2−9)
    %https://www.derivative-calculator.net/ 

end
