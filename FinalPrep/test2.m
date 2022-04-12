prompt = "What is the original value of T? \n";
x1 = input(prompt)
%instructions didnt specify checking for original value
% but if time permits would add a check to c if its <0

prompt = "What is the final value of T? (must be less then or equal to 120 seconds) \n";
x2 = input(prompt)
while x2 > 120 || x2 < 0
prompt = "What is the final value of T? (must be less then or equal to 120 seconds) \n";
x2 = input(prompt)
end

t = x1:x2
v = 0.00001*(t.^3)-0.00488*(t.^2)+0.75795*t+181.3566
a = 3-0.000062*(v.^2)
hold on
plot(t,v)
plot(t,a)
legend('v(t)','a(t)')
hold off