function guessThatNumber()  % *** WARNING: CONTAINS INTENTIONAL BUGS! ***
%---------------------------------------------------------------
%       USAGE: guessThatNumber()
%
%        NAME: Riley Horn
%
%         DUE: End of class, November 21
%
%
% DESCRIPTION: This program is supposed to allow the user to play
%              the Number Guessing Game, however, it contains bugs.
%              Your job is to find, correct, and mark the errors with
%              comments describing the bug, how you found it, 
%              and how you corrected it. Correct the bugs and submit this
%              corrected file on github. There are between 9 - 12 bugs,
%              depending on how you correct them. 
%
%      INPUTS: None
%
%     OUTPUTS: None
%
%---------------------------------------------------------------

beginner = 1;               % beginner level #
moderate = 2;               % moderate level #
advanced = 3;               % advanced level #
beginnerHighest = 10;       % highest possible number for beginner
moderateHighest = 100;      % highest possible number for moderate
advancedHighest = 1000;    % highest possible number for advanced

% clear screen and display game introduction

clc()
fprintf(['Guess That Number Game (buggy)\n\n', ...
'This program plays the game of Guess That Number in which you have to guess\n', ...
'a secret number.  After each guess you will be told whether your \n', ...
'guess is too high, too low, or correct.\n\n'])

% Get level of play (1-3) from user

fprintf('Please select one of the three levels of play:\n')
fprintf('   1) Beginner (range is 1 to %d)\n', beginnerHighest)
fprintf('   2) Moderate (range is 1 to %d)\n', moderateHighest)
fprintf('   3) Advanced (range is 1 to %d)\n', advancedHighest)

level = input('Enter level (1-3): '); 

%BUG THREE: Level selection does not exit loop, changed '||' to '&&' in
%while statement
while level ~= beginner && level ~= moderate && level ~= advanced       
fprintf('Sorry, that is not a valid level selection.\n')
level = input('Please re-enter a level of play (1-3): ');
end

% set highest secret number based on level selected

% BUG ONE: Compiler Error. The code used a single '=', which would set the 
% variable level equal to beginner, when it should be '==' to compare to 
% see if they are equal
if level == beginner                     

highest = beginnerHighest;

elseif level == moderate

highest = moderateHighest;

else
%BUG FOUR: 'advancedHighest' was incorrectly written as 'advancedhighest'
highest = advancedHighest;          
end

% randomly select secret number between 1 and highest for level of play

%BUG FIVE: secretNumber was not being generated properly. After generating
%a random decimal, it should not add one. '+ 1' removed.
secretNumber = floor(rand() * highest);     

% initialize number of guesses and User_guess

numOfTries = 1;
userGuess = 0;

% repeatedly get user's guess until the user guesses correctly

while userGuess ~= secretNumber

    % get a valid guess (an integer from 1-Highest) from the user

    fprintf('\nEnter a guess (1-%d): ', highest);
    userGuess = input('');

    %BUG NINE: The highest number was not allowed as a valid guess, but it
    %should be a valid guess since the secretNumber could be the highest
    %value. '>=' 
    while userGuess < 1 || userGuess >= highest

        fprintf('Sorry, that is not a valid guess.\nRe-enter a guess (1-%d): ', highest);

        userGuess = input('');

    end % of guess validation loop

    % report whether the user's guess was high, low, or correct

    %BUG SIX: Every guess was displaying 'Congratulations!', the first
    %conditional was incorrectly checking if the userGuess was higher than
    %the secretNumber but it should check if the userGuess is lower than
    %the secretNumber. '>' changed to '<'.
    if userGuess < secretNumber
        fprintf('Sorry, %d is too low.\n', userGuess);
    elseif userGuess > secretNumber 
        fprintf('Sorry, %d is too high.\n', userGuess);
    elseif numOfTries == 1
        fprintf('\nLucky You!  You got it on your first try!\n\n');
    else
        %BUG SEVEN: The congratulations message was incorrectly multiplying 
        %secret number by 5 and also displaying the secret number where it
        %should be displaying the numOfTries. Fixed to include numOfTries
        %as second variable.
        fprintf('\nCongratulations!  You got %d in %d tries.\n\n', ...
        secretNumber, numOfTries);
    end  % of guessing while loop
    
    % add 1 to the number of guesses the user has made

    numOfTries = numOfTries + 1;
    %BUG EIGHT: Number of tries was displayed as one higher than it should
    %be. This line was moved to after the success of the guess is
    %evaluated.
end
%BUG TWO: Compiler error. This userGuess ~= secretNumber while statement 
%is missing an end. It should end here.

fprintf('Game Over. Thanks for playing the Guess That Number game.\n\n');


% end of game