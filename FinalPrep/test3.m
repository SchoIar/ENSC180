
%% 1
t = linspace(0,5, 200);%supressing output to make it fastr
x = exp(-2*t);
y = cos(10*t)
z=x.*y
hold on
xlabel('Time')
ylabel('Voltage')
plot(t,x);
plot(t,y);
plot(t,z)

legend('vx(t)','vy(t)','vz(t)')
hold off
% etc etc

%% 2
%tinital = 1;
%tfinal = 2;
%time = linspace(tinital, tfinal, 120)
%time = input("what is the time?: ")
%v = 0.00001*(time.^3)-0.00408*(time.^3)+0.75795.*time + 181.3566
%a = 3-0.0000062*(v.^2)
%figure
%plot(time, v)
%figure
%plot(time, a)
time = linspace(0,5,11)
temp = [105,126,119,129,132,128,131,135,136,132,137]
tavrg = mean(temp) 
plot(time,temp)
fprintf("The mean temperature is %f \n", tavrg)
 
%% 
syms x %creates cell array
f = sin(5*x);
diff(f)


%% 
x = fsolve(@my_function,3.5)
function y = my_function(x)
% Simple example for root finding
y = sin(x);
end


