function [maleIsoIndMeans, femaleIsoIndMeans, maleGroupIsoMean, femaleGroupIsoMean] ...
    = genderIsoCalc(subjectID, gender, day1, day2, day3)
%   genderIsoCalc.m returns four outputs. The first set of outputs (one for
%   males and one for females) should return a matrix ith individual mean
%   isometric strength values across all 3 days of lifting for the
%   appropriate group. The second set of outputs will return the single
%   mean value for each group. 

%first loop finds number of males and females
numMales = 0;
numFemales = 0;
for i = 1:(length(subjectID))
    if gender(i) == 'M'
        numMales = numMales + 1;
    elseif gender(i) == 'F'
        numFemales = numFemales + 1;
    end
end

%Preallocate vectors with length of males and females
maleIsoIndMeans = zeros(numMales, 1);
femaleIsoIndMeans = zeros(numFemales, 1);
m = 0; %m keeps track of how many males have been added to maleIsoIndMeans
f = 0; %f keeps track of how many females have been added to femaleIsoIndMeans

for i = 1:(length(subjectID))
    if gender(i) == 'M'
        m = m + 1;
        tempIndividual = [day1(i), day2(i), day3(i)];
        indAverage = mean(tempIndividual);
        maleIsoIndMeans(m) = indAverage;
    elseif gender(i) == 'F'
        f = f + 1;
        tempIndividual = [day1(i), day2(i), day3(i)];
        indAverage = mean(tempIndividual);
        femaleIsoIndMeans(f) = indAverage;
    end
end    
    
maleGroupIsoMean = mean(maleIsoIndMeans);
femaleGroupIsoMean = mean(femaleIsoIndMeans);
 

end

