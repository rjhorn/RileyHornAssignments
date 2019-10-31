function [outputArg1] = WooHah (inputNum1,inputNum2)
% WooHah returns Woo if the sum of the two inputs is even and Hah if the
% sum of the two inputs is odd

test = sum(inputNum1, inputNum2);

if (mod(test,2) == 0)
    outputArg1 = 'Woo';
else 
    outputArg1 = 'Hah';
end

end

