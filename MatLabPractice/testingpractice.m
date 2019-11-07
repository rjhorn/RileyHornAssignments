clc
clearvars

activeFilename = 'Subject1_Condition1';

numSubjects = 2;
numConditions = 2;

for i = 1:numSubjects
    for j = 1:numConditions
        %increment condition
        disp(activeFilename);
        subjectNum = str2num(activeFilename(8));
        conditionNum = str2num(activeFilename(19));
        conditionNum = conditionNum + 1;
        activeFilename = strcat('Subject', num2str(subjectNum), '_', ...
            'Condition', num2str(conditionNum));
    end
    %increment subject
    subjectNum = str2num(activeFilename(8));
    conditionNum = 1;
    subjectNum = subjectNum + 1;
    activeFilename = strcat('Subject', num2str(subjectNum), '_', ...
            'Condition', num2str(conditionNum));
end

%importfile(activeFilename);