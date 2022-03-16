%generateRandom.m
a = 10; %STDdiv
mea = 7;%mean
c = a.*randn(2000,1) + mea;
stats = [mean(c) std(c)]   % mean, deviation tests
