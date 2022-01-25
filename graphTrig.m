clear
clc

% Correct limits as per instructions, 
xMin = -2 * pi;
xMax = 2 * pi;

% Relatively arbitrary
yMin = -15;
yMax = 15;

% specificity of 10000 to ensure fine details are resolved
resolution = 10000;

x=linspace(xMin, xMax, resolution);

% Ensures functions do not overwrite each other
hold on;

% Plots all three functions with different colours
f1=plot(x, function1(x), 'r', 'LineWidth', 1.2)
f2=plot(x, function2(x), 'g', 'LineWidth', 1.2)
f3=plot(x, function3(x), 'b', 'LineWidth', 1.2)

% Releases hold
hold off;

% Labels the axes
xlabel("Angles (radian)")
ylabel("Voltage (V)")

% Sets limits for the x and y axes
xlim([xMin, xMax]);
ylim([yMin, yMax]);

% Creates a legend
legend("Function a)", "Function b)", "Function c)")

%CALCULATIONS: 
% All mathematical formulas taken from lab instructions
% and modified (e.g. "^" -> ".^") for MATLAB



