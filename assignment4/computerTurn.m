function [gameBoard] = computerTurn(gameBoard)
%   computerTurn takes the array of the current board as input, will make 
%   a move for the computer, and return the updated board.

%Impossible Computer Strategy

%Winning Moves
if (gameBoard(1) == 'O') && (gameBoard(2) == 'O') && (gameBoard(3) == ' ')
    gameBoard(3) = 'O';
elseif (gameBoard(1) == 'O') && (gameBoard(3) == 'O') && (gameBoard(2) == ' ')
    gameBoard(2) = 'O';
elseif (gameBoard(2) == 'O') && (gameBoard(3) == 'O') && (gameBoard(1) == ' ')
    gameBoard(1) = 'O';
elseif (gameBoard(4) == 'O') && (gameBoard(5) == 'O') && (gameBoard(6) == ' ')
    gameBoard(6) = 'O';
elseif (gameBoard(4) == 'O') && (gameBoard(6) == 'O') && (gameBoard(5) == ' ')
    gameBoard(5) = 'O';
elseif (gameBoard(6) == 'O') && (gameBoard(5) == 'O') && (gameBoard(4) == ' ')
    gameBoard(4) = 'O';
elseif (gameBoard(7) == 'O') && (gameBoard(8) == 'O') && (gameBoard(9) == ' ')
    gameBoard(9) = 'O';
elseif (gameBoard(7) == 'O') && (gameBoard(9) == 'O') && (gameBoard(8) == ' ')
    gameBoard(8) = 'O';
elseif (gameBoard(8) == 'O') && (gameBoard(9) == 'O') && (gameBoard(7) == ' ')
    gameBoard(7) = 'O';
elseif (gameBoard(1) == 'O') && (gameBoard(4) == 'O') && (gameBoard(7) == ' ')
    gameBoard(7) = 'O';
elseif (gameBoard(1) == 'O') && (gameBoard(7) == 'O') && (gameBoard(4) == ' ')
    gameBoard(4) = 'O';
elseif (gameBoard(4) == 'O') && (gameBoard(7) == 'O') && (gameBoard(1) == ' ')
    gameBoard(1) = 'O';
elseif (gameBoard(2) == 'O') && (gameBoard(5) == '5') && (gameBoard(8) == ' ')
    gameBoard(8) = 'O';
elseif (gameBoard(2) == 'O') && (gameBoard(8) == 'O') && (gameBoard(5) == ' ')
    gameBoard(5) = 'O';
elseif (gameBoard(5) == 'O') && (gameBoard(8) == 'O') && (gameBoard(2) == ' ')
    gameBoard(2) = 'O';
elseif (gameBoard(3) == 'O') && (gameBoard(6) == 'O') && (gameBoard(9) == ' ')
    gameBoard(9) = 'O';
elseif (gameBoard(3) == 'O') && (gameBoard(9) == 'O') && (gameBoard(6) == ' ')
    gameBoard(6) = 'O';
elseif (gameBoard(6) == 'O') && (gameBoard(9) == 'O') && (gameBoard(3) == ' ')
    gameBoard(3) = 'O';
elseif (gameBoard(1) == 'O') && (gameBoard(5) == 'O') && (gameBoard(9) == ' ')
    gameBoard(9) = 'O';
elseif (gameBoard(1) == 'O') && (gameBoard(9) == 'O') && (gameBoard(5) == ' ')
    gameBoard(5) = 'O';
elseif (gameBoard(5) == 'O') && (gameBoard(9) == 'O') && (gameBoard(1) == ' ')
    gameBoard(1) = 'O';
elseif (gameBoard(3) == 'O') && (gameBoard(5) == 'O') && (gameBoard(7) == ' ')
    gameBoard(7) = 'O';
elseif (gameBoard(3) == 'O') && (gameBoard(7) == 'O') && (gameBoard(5) == ' ')
    gameBoard(5) = 'O';
elseif (gameBoard(5) == 'O') && (gameBoard(7) == 'O') && (gameBoard(3) == ' ')
    gameBoard(3) = 'O';
%Defensive Moves
elseif (gameBoard(1) == 'X') && (gameBoard(2) == 'X') && (gameBoard(3) == ' ')
    gameBoard(3) = 'O';
elseif (gameBoard(1) == 'X') && (gameBoard(3) == 'X') && (gameBoard(2) == ' ')
    gameBoard(2) = 'O';
elseif (gameBoard(2) == 'X') && (gameBoard(3) == 'X') && (gameBoard(1) == ' ')
    gameBoard(1) = 'O';
elseif (gameBoard(4) == 'X') && (gameBoard(5) == 'X') && (gameBoard(6) == ' ')
    gameBoard(6) = 'O';
elseif (gameBoard(4) == 'X') && (gameBoard(6) == 'X') && (gameBoard(5) == ' ')
    gameBoard(5) = 'O';
elseif (gameBoard(6) == 'X') && (gameBoard(5) == 'X') && (gameBoard(4) == ' ')
    gameBoard(4) = 'O';
elseif (gameBoard(7) == 'X') && (gameBoard(8) == 'X') && (gameBoard(9) == ' ')
    gameBoard(9) = 'O';
elseif (gameBoard(7) == 'X') && (gameBoard(9) == 'X') && (gameBoard(8) == ' ')
    gameBoard(8) = 'O';
elseif (gameBoard(8) == 'X') && (gameBoard(9) == 'X') && (gameBoard(7) == ' ')
    gameBoard(7) = 'O';
elseif (gameBoard(1) == 'X') && (gameBoard(4) == 'X') && (gameBoard(7) == ' ')
    gameBoard(7) = 'O';
elseif (gameBoard(1) == 'X') && (gameBoard(7) == 'X') && (gameBoard(4) == ' ')
    gameBoard(4) = 'O';
elseif (gameBoard(4) == 'X') && (gameBoard(7) == 'X') && (gameBoard(1) == ' ')
    gameBoard(1) = 'O';
elseif (gameBoard(2) == 'X') && (gameBoard(5) == 'X') && (gameBoard(8) == ' ')
    gameBoard(8) = 'O';
elseif (gameBoard(2) == 'X') && (gameBoard(8) == 'X') && (gameBoard(5) == ' ')
    gameBoard(5) = 'O';
elseif (gameBoard(5) == 'X') && (gameBoard(8) == 'X') && (gameBoard(2) == ' ')
    gameBoard(2) = 'O';
elseif (gameBoard(3) == 'X') && (gameBoard(6) == 'X') && (gameBoard(9) == ' ')
    gameBoard(9) = 'O';
elseif (gameBoard(3) == 'X') && (gameBoard(9) == 'X') && (gameBoard(6) == ' ')
    gameBoard(6) = 'O';
elseif (gameBoard(6) == 'X') && (gameBoard(9) == 'X') && (gameBoard(3) == ' ')
    gameBoard(3) = 'O';
elseif (gameBoard(1) == 'X') && (gameBoard(5) == 'X') && (gameBoard(9) == ' ')
    gameBoard(9) = 'O';
elseif (gameBoard(1) == 'X') && (gameBoard(9) == 'X') && (gameBoard(5) == ' ')
    gameBoard(5) = 'O';
elseif (gameBoard(5) == 'X') && (gameBoard(9) == 'X') && (gameBoard(1) == ' ')
    gameBoard(1) = 'O';
elseif (gameBoard(3) == 'X') && (gameBoard(5) == 'X') && (gameBoard(7) == ' ')
    gameBoard(7) = 'O';
elseif (gameBoard(3) == 'X') && (gameBoard(7) == 'X') && (gameBoard(5) == ' ')
    gameBoard(5) = 'O';
elseif (gameBoard(5) == 'X') && (gameBoard(7) == 'X') && (gameBoard(3) == ' ')
    gameBoard(3) = 'O';
%Other moves
elseif (gameBoard(1) == 'X') && (gameBoard(9) == 'X') && (gameBoard(8) == ' ')
    gameBoard(8) = 'O';
elseif (gameBoard(1) == 'X') && (gameBoard(9) == 'X') && (gameBoard(2) == ' ')
    gameBoard(2) = 'O';
elseif (gameBoard(3) == 'X') && (gameBoard(7) == 'X') && (gameBoard(2) == ' ')
    gameBoard(2) = 'O';
elseif (gameBoard(3) == 'X') && (gameBoard(7) == 'X') && (gameBoard(8) == ' ')
    gameBoard(8) = 'O';
elseif (gameBoard(5) == ' ')
    gameBoard(5) = 'O';
elseif (gameBoard(1) == ' ')
    gameBoard(1) = 'O';
elseif (gameBoard(3) == ' ')
    gameBoard(3) = 'O';
elseif (gameBoard(7) == ' ')
    gameBoard(7) = 'O';
elseif (gameBoard(9) == ' ')
    gameBoard(9) = 'O';
elseif (gameBoard(2) == ' ')
    gameBoard(2) = 'O';
elseif (gameBoard(4) == ' ')
    gameBoard(4) = 'O';
elseif (gameBoard(6) == ' ')
    gameBoard(6) = 'O';
elseif (gameBoard(8) == ' ')
    gameBoard(8) = 'O';
else
    %if the board is full, game is over and computerTurn shouldn't display the board again
    return;
end

disp('Computer''s Turn:');
displayGameBoard = ['     ', ...
    gameBoard(1), ' |  ', gameBoard(2), '  | ', gameBoard(3), ' ', ...
    newline, '   ----|-----|-----', newline, '     ', gameBoard(4),...
    ' |  ', gameBoard(5), '  | ', gameBoard(6), ' ', newline,...
    '   ----|-----|-----', newline, '     ', gameBoard(7), ' |  ',...
    gameBoard(8), '  | ', gameBoard(9), ' ', newline];
disp(displayGameBoard);
%***************End of Computer's Turn******************
end

