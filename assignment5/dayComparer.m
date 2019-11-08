function [improvedSubjectIDs] = dayComparer(subjectID, dayA, dayB)
%dayComparer.m takes a matrix containing the subjectIDs and two matrices 
%containing the days as inputs and returns matrix with the subjectIDs who 
%had an increase from the first input day to the second input day.

%Previous Implementation
%q keeps track of how many subjects have been added to improvedSubjectIDs
% q = 0;

% improvedSubjectIDs is initialized to the length of the number of subjectIDs
% improvedSubjectIDs = strings(length(subjectID), 1);
% 
% for i = 1:(length(subjectID))
%     if dayA(i) < dayB(i)
%         q = q + 1;
%         improvedSubjectIDs(q) = subjectID(i);
%     end
% end

%New Implementation using a logical array to compare dayA and dayB
improvedSubjects = dayA < dayB;
improvedSubjectIDs = subjectID(improvedSubjects);

end

