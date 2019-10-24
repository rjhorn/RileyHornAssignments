function [] = counterAB(a,b)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here

if (a < b)
    while (a <= b)
        disp(a);
        a = (a + 1);
    end
else 
    while (b <= a)
        disp(b);
        b = (b + 1);
    end
end

end

