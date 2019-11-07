% Shared Variables - This will contain any variables that I want to include
% accross my tests

baseMeal = 10;
meal1 = 20;
meal2 = 18.30;
meal3 = 57.92;

badRating = 'bad';
goodRating = 'good';
greatRating = 'great';
errorRating = 'gret';

% Preconditions - This should be the base case, in my example the base case
% is if I enter in a rating that isn't on the list of acceptable inputs or
% if I don't enter a rating at all. 

baseTip = tipCalc(baseMeal);
assert(baseTip == 1.5)

%% Test 1 - No decimal all ratings

meal1Tip = tipCalc(meal1, badRating);
assert(meal1Tip == 2);

meal1Tip = tipCalc(meal1, goodRating);
assert(meal1Tip == 4);

meal1Tip = tipCalc(meal1, greatRating);
assert(meal1Tip == 5);

meal1Tip = tipCalc(meal1, errorRating);
assert(meal1Tip == 3);

disp('Test 1 Complete');
%% Test 2 - 1 decimal all ratings

meal2Tip = tipCalc(meal1, badRating);
assert(meal2Tip == 2);

meal2Tip = tipCalc(meal2, goodRating);
assert(meal2Tip == 3.66);

meal2Tip = tipCalc(meal2, greatRating);
assert(meal2Tip == 4.575);

meal2Tip = tipCalc(meal2, errorRating);
assert(meal2Tip == 2.745);

disp('Test 2 Complete');
%% Test 3 - 2 decimal all ratings

meal3Tip = tipCalc(meal3, badRating);
assert(meal3Tip - 5.7920 <= 0.001);

meal3Tip = tipCalc(meal3, goodRating);
assert(meal3Tip - 11.584 <= 0.001);

meal3Tip = tipCalc(meal3, greatRating);
assert(meal3Tip - 14.48 <= 0.001);

meal3Tip = tipCalc(meal3, errorRating);
assert(meal3Tip - 8.688 <= 0.001);

disp('Test 3 Complete');