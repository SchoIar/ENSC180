
%**********************************************************************
% Lab 4
%
% Description: reads & plots apple stock data
%
% 
% Author: awi1@sfu.ca / Anton Ilic
% Date: 2022-Feb-8
%
% Input: AAPL.csv
% Output: plots the i) Open, ii) High, iii) Low, and iv) Close prices of this stock vs. time
%as four separate plots. Displays the average price of stock data (and
%saves... in a colm labeled as Average
%
% I pledge that I have completed the programming assignment independently.
% I have not copied the code from a student or any source.
% I have not given my code to any student.
%
% Sign here: Anton Ilic
%
%##########################################################################

filePath = 'AAPL.csv'
stockData=readtable(filePath, 'PreserveVariableNames', 1)
%readtable- creates a table by reading column oriented data from a file.
figure;
%Graph 1: plots stock data Open prices
plot(stockData.Date, stockData.Open)
xlim([stockData{1,1}, stockData{height(stockData), 1}])
%limits x axis to first/last data pts
ylim([0, 250])
% Y axis limits (choosed 250 based on data (since its max is approx)
title('Apple Stocks: Opening Price')
xlabel('Time (Years)')
ylabel('Stock Price (USD)')
legend('Stock Price (USD)')

% Graph 2: High
figure; %redundant comments removed for conciseness (see prior comments) 
plot(stockData.Date, stockData.High)
xlim([stockData{1,1}, stockData{height(stockData), 1}])
ylim([0, 250])
title('Apple Stocks: High Price')
xlabel('Time (Years)')
ylabel('Stock Price (USD)')
legend('Stock Price (USD)')
    
%Graph 3: Low
figure
plot(stockData.Date, stockData.Low)
xlim([stockData{1,1}, stockData{height(stockData), 1}])
ylim([0, 250]);
title('Apple Stocks: Low Price')
xlabel('Time (Years)')
ylabel('Stock Price (USD)')
legend('Stock Price (USD)')

%Graph 4: Close
figure;
plot(stockData.Date, stockData.Close)
xlim([stockData{1,1}, stockData{height(stockData), 1}])
ylim([0, 250])
title('Apple Stocks: Closing Price')
xlabel('Time (Years)')
ylabel('Stock Price (USD)')
legend('Stock Price (USD)')
    
%Step 3: Write Calculate the average price by using this formula: (Open + Close) / 2. Then write this
%information as the eighth columns in the date in AAPL.csv file with column label
%"Average”. Save the new data into a file named APPL-new.csv.
Average = array2table(((stockData.Open+stockData.Close)/2),...
    'VariableNames', {'Average'})%calcs average
writetable([stockData Average], 'AAPL-new.csv')
% Concatenates the original data with the new Average column