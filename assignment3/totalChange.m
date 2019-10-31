function [outputArg] = totalChange(quarters, dimes, nickels, pennies)
% totalChange takes the number of quarters, dimes, nickels, and pennies and returns
% total in dollars
outputArg = (quarters * 0.25) + (dimes * .1) + (nickels * 0.05) + (pennies * 0.01);
end

