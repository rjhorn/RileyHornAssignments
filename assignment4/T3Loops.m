%KINE 6203 Data Analysis using MATLAB
%Assignment 4: Tic Tac Toe - Part 2
%October 14th, 2019
%Play tic tac toe against the computer!
%Now with loops and functions!
%
%Play as many games against the computer as you'd like, but the computer 
%will never lose
%
%Functions Required: checkForWin.m, playerTurn.m, computerTurn.m

clc;
clear;
playing = true;
computerScore = 0;

%Gameplay: Display Board, prompt first turn, complete game, play again
while(playing)
    
    %Title screen, game selection
    clc
    fprintf('*****Tic-Tac-Toe*****\n');
    fprintf('Would you like to play a game of Tic-Tac-Toe?\n');
    fprintf('1: Play a game!\n');
    fprintf('2: No thanks.\n');
    fprintf('\n');
    
    gameSelection = 0;
    gameSelection = input('');
    
    if (gameSelection == 2)
        disp('Thanks for playing!');
        return;
    end
    
    
    %Show the game board with numbers for reference
    gameBoard = ['1' '2' '3' '4' '5' '6' '7' '8' '9'];
    clc
    fprintf('This is the game board!\n');
    fprintf('On your turn, enter a number between 1 and 9\nthat matches the location on the game board.\n');
    displayGameBoard = ['     ', ...
        gameBoard(1), ' |  ', gameBoard(2), '  | ', gameBoard(3), ' ', ...
        newline, '   ----|-----|-----', newline, '     ', gameBoard(4),...
        ' |  ', gameBoard(5), '  | ', gameBoard(6), ' ', newline,...
        '   ----|-----|-----', newline, '     ', gameBoard(7), ' |  ',...
        gameBoard(8), '  | ', gameBoard(9), ' ', newline];
    disp(displayGameBoard);
    
    %Clear the numbers from the game board 
    gameBoard = [' ' ' ' ' ' ' ' ' ' ' ' ' ' ' ' ' '];

    %Determine who goes first
    firstMove = 0;
    while (firstMove ~= 1 && firstMove ~= 2)
        %disp('Please enter 1 or 2');
        fprintf('Who will go first?\n');
        fprintf('1: Human\n');
        fprintf('2: Computer\n');
        firstMove = input('');
    end
    
    %If computer should go first, the computer will make its first move
    if (firstMove == 2)
        gameBoard = computerTurn(gameBoard);
    end
    
    %Gameplay: player and computer take turns, checking for wins each move
    while (checkForWin(gameBoard) == false) 
            gameBoard = playerTurn(gameBoard);
            gameBoard = computerTurn(gameBoard);
    end
    
    %Option to Play Again or Quit
    playAgain = 0;
    disp('Would you like to play again?')
    disp('1: Yes');
    disp('2: No');
    playAgain = input('');
    if (playAgain == 2)
        playing = false;
        disp('Thanks for playing!');
    end
    
    
    
end

