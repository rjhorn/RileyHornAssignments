function [gameBoard] = playerTurn(gameBoard)
%   playerTurn takes the array of the current board as input, will prompt 
%   the player for a move, and return the updated board.

%**********Player Turn 1**********
%Prompt user for move and take input

playerMoveIsValid = false;

while (playerMoveIsValid == false)
    playerMove = input('Your turn. Where do you want to go?\n');
    playerMove = floor(playerMove);
    %Check that the player's move is a number 1-9
    if (playerMove < 1) || (playerMove > 9)
        playerMoveIsValid = false;
        disp('Invalid Number: Pick a number between 1 and 9.');
    %Check that player's move box is empty
    elseif (gameBoard(playerMove) == 'X') || (gameBoard(playerMove) == 'O')
        disp('Invalid Square: That square is taken, pick an open square.');
        playerMoveIsValid = false;
    else
        playerMoveIsValid = true;
    end
end

%Place player's move on the board
gameBoard(playerMove) = 'X';

%Display updated game board
clc;
disp('Player''s Turn:');
displayGameBoard = ['     ', ...
    gameBoard(1), ' |  ', gameBoard(2), '  | ', gameBoard(3), ' ', ...
    newline, '   ----|-----|-----', newline, '     ', gameBoard(4),...
    ' |  ', gameBoard(5), '  | ', gameBoard(6), ' ', newline,...
    '   ----|-----|-----', newline, '     ', gameBoard(7), ' |  ',...
    gameBoard(8), '  | ', gameBoard(9), ' ', newline];
disp(displayGameBoard);
%**********End of Player Turn 1**********
end

