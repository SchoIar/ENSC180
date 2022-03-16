clc
clear
%% ANTON ILIC
lambda = 5
r = poissrnd(lambda, 1000, 1)
%Generate 1,000 Poisson distributed random numbers with parameter =5 (hints:
%poissrnd).

%Obtain the histogram of the data and normalize the counts so that the histogram sums
%to one (hist – use the one that returns two outputs, and sum).
figure;
histogram(r) %NOT NORMALIZED

%Plot the normalized histogram (which is now a probability mass function) as a bar
%graph (bar).
%N = normalize(v)
figure;
h =histogram(r,'Normalization','pdf')



%Plot on the same figure the actual Poisson probability mass function with =5 (hints:
%poisspdf).
%y = poisspdf(x,lambda)
%
figure

xlim([0, 50]);
x0=0:14;
y0=poisspdf(x0,lambda);
bar(x0,y0,1)  %BAR GRAPH
xlabel('Value')
ylabel('Probability')

%

%Experiment with adjusting the number of samples to make sure the two plots agree
%with each other
x1 = 0:14;
y1 = poisspdf(x1,lambda);
sLam = sqrt(lambda);

%x2 = 0:0.1:100;
x2 = 0:0.1:14;
y2 = normpdf(x2,lambda,sLam);

figure
xlim([0, 13])
%ylim([0, 15])
bar(x1,y1,1)
hold on
plot(x2,y2,'LineWidth',2)%plots Normal dist 

xlabel('Values')
ylabel('Probability')
title('Poisson distribution and observed histogram')
legend('Poisson Distribution','Normal Distribution')

hold off