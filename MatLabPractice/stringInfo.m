function [stringLength, firstChar, lastChar] = stringInfo(string1)
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
stringLength = length(string1);
firstChar = string1(1);
lastChar = string1(stringLength);
end

