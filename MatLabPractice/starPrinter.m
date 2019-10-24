function [outputArg1,outputArg2] = starPrinter(numStars)
%UNTITLED7 Summary of this function goes here
%   Detailed explanation goes here
stars = 0;
printStars = '';
while stars < numStars
    printStars = strcat(printStars, '*');
    disp(printStars);
    stars = stars + 1;
    if (stars > 10)
        stars = 0;
        printStars = '';
    end
    pause(1);
end
end

