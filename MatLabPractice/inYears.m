function [output1] = inYears(numYears,timeUnit)
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here
if nargin == 1
    output1 = floor(numYears * 365.2422);
elseif nargin == 2
    if strcmp(timeUnit, 'seconds')
        output1 = numYears * 31,536,000;
    elseif strcmp(timeUnit, 'minutes')
        output1 = numYears * 525600;
    elseif strcmp(timeUnit, 'hours')
        output1 = numYears * 8760;
    end
end

