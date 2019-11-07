function [ tip ] = tipCalc( total, rating )
%tipCalc This calculator will determine how much to tip your server given
%the meal total and a service rating. 
%   Inputs: total = double value representing total amount of your bill
%           rating = string value representing your rating of the service
%           (acceptable values are 'bad', 'good', 'great')
%
%   Outputs: tip = double value representing the tip amount. Tip will
%   default to 15% if no rating is provided. 
if nargin < 2
    rating = 'other';
end

switch rating
    case 'bad'
        tip = total * 0.10;
    case 'good'
        tip = total * 0.20;
    case 'great'
        tip = total * 0.25;
    otherwise
        tip = total * 0.15;
        disp('No valid rating entered')
end
end

