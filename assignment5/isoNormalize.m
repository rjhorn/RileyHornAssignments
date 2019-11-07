function [normDay1mean, normDay2mean, normDay3mean] = ...
    isoNormalize(weight, day1, day2, day3)
%isoNormalize takes the inputs weight, day1, day2, and day3 to normalize 
%the isokinetic data by subject weight and calculate the group means for
%each day

normDay1Values = zeros(length(weight), 1);
normDay2Values = zeros(length(weight), 1);
normDay3Values = zeros(length(weight), 1);

for i = 1:length(weight)
    normDay1Values(i) = (day1(i) / weight(i));
    normDay2Values(i) = (day2(i) / weight(i));
    normDay3Values(i) = (day3(i) / weight(i));
end

normDay1mean = mean(normDay1Values);
normDay2mean = mean(normDay2Values);
normDay3mean = mean(normDay3Values);


end

