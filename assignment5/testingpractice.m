clc
clearvars;

countTrue = 0;
countFalse = 0;
for i = 1:1000
    if (1.1 + 1.1 + 1.1 == 3.3)
        countTrue = countTrue + 1;
    else
        countFalse = countFalse + 1;
    end
end

countTrue
countFalse