function [outputSum, outputDifference, outputProduct, outputMax] = fourResults(inputNum1,inputNum2)
%   fourResults takes two numbers and returns the sum, difference (number 1 - number 2), produce,
%   and max. 

outputSum = inputNum1 + inputNum2;
outputDifference = inputNum1 - inputNum2;
outputProduct = inputNum1 * inputNum2;
outputMax = max(inputNum1, inputNum2);

end

