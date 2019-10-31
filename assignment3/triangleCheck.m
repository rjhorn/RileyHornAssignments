function [outputArg1] = triangleCheck(inputSides)
%UNTITLED10 Summary of this function goes here
%   Detailed explanation goes here

x = sort(inputSides);

if ((x(1) + x(2)) > x(3))
    outputArg1 = true;
else
    outputArg1 = false;
end

