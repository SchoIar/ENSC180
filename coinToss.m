%% ANTON ILIC
%lab: cointoss
ii=5000;
%“heads’ and
%then plot the running estimate of the probability of getting "heads” with this simulation.
%Plot the running estimate along with a horizontal line at the expected value of 0.5 (hints:
%consider these functions: rand, cumsum, and round).
heads = randi([0,1],1,ii);
plot(cumsum(heads)./(1:ii));%plots
xlim([0, ii]);
ylim([0, 1])
hold on
yline(0.5)
xlabel('Trial Number')
ylabel('Percent Heads (estimate)')
title ('Trial Number vs Percent Heads')
B = cumsum(heads);
C = B(end);
disp(C) %NUMBER OF coins tossed
legend( 'Real values ', 'Probable values')
    
hold off