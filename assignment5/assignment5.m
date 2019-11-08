%Riley Horn
%Kinesiology Data Analysis using Matlab
%assignment5.m
%
%This program will import raw isokinetic data from filename
%'isok_data_6803.csv' and export processed isokinetic data to a csv file
%with filename iso_results.csv.
%
%Required files: importfile.m, genderIsoCalc.m, dayComparer.m,
%isoNormalize.m

clearvars;
clc;

%Import file
[subjectID, age, gender, weight, day1, day2, day3] ...
    = importfile('isok_data_6803.csv');

%Find individual averages by day and gender and find group averages
[maleIsoIndMeans, femaleIsoIndMeans, maleGroupIsoMean, femaleGroupIsoMean] ...
    = genderIsoCalc(subjectID, gender, day1, day2, day3);

%Check for subjects who improved from day 1 to day 2 or from day 2 to day 3
day1toDay2 = dayComparer(subjectID, day1, day2);
day2toDay3 = dayComparer(subjectID, day2, day3);

%Normalize the data by weight and output the means for each day
[normDay1mean, normDay2mean, normDay3mean] = ...
    isoNormalize(weight, day1, day2, day3);

%Data is added to string array dataExport
dataExport = strings(length(subjectID), 9);
dataExport(1:length(maleIsoIndMeans),1) = maleIsoIndMeans;
dataExport(1:length(femaleIsoIndMeans),2) = femaleIsoIndMeans;
dataExport(1:length(maleGroupIsoMean),3) = maleGroupIsoMean;
dataExport(1:length(femaleGroupIsoMean),4) = femaleGroupIsoMean;
dataExport(1:length(day1toDay2),5) = day1toDay2;
dataExport(1:length(day2toDay3),6) = day2toDay3;
dataExport(1:length(normDay1mean),7) = normDay1mean;
dataExport(1:length(normDay2mean),8) = normDay2mean;
dataExport(1:length(normDay3mean),9) = normDay3mean;

%Data is exported to file iso_results.csv
writematrix(dataExport, 'iso_results.csv');


disp('Complete.');
