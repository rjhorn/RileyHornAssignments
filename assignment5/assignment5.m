%assignment5.m
%
%Required files: importfile.m, genderIsoCalc.m, dayComparer.m

clearvars;
clc;

%Import file
[subjectID, age, gender, weight, day1, day2, day3] = importfile('isok_data_6803.csv');

%Find individual averages by day and gender and find group averages
[maleIsoIndMeans, femaleIsoIndMeans, maleGroupIsoMean, femaleGroupIsoMean] = genderIsoCalc(subjectID, age, gender, weight, day1, day2, day3);

%Check for subjects who improved from day 1 to day 2 or from day 2 to day 3
day1toDay2 = dayComparer(subjectID, day1, day2);
day2toDay3 = dayComparer(subjectID, day2, day3);

disp(num2str(maleGroupIsoMean));
disp(num2str(femaleGroupIsoMean));

disp(day1toDay2);
disp(day2toDay3);

%save assignmentFiveResults.csv maleIsoIndMeans
%save -append 'assignmentFiveResults.csv' femaleIsoIndMeans

