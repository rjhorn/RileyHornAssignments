clc;
clear all;

%Initialize Variables
firstMove = 0;
playerMove = 0;
gameBoard = ['1' '2' '3' '4' '5' '6' '7' '8' '9'];
displayGameBoard = [newline, 'Game Board:', newline, '     ', ...
    gameBoard(1), ' |  ', gameBoard(2), '  | ', gameBoard(3), ' ', ...
    newline, '   ----|-----|-----', newline, '     ', gameBoard(4),...
    ' |  ', gameBoard(5), '  | ', gameBoard(6), ' ', newline,...
    '   ----|-----|-----', newline, '     ', gameBoard(7), ' |  ',...
    gameBoard(8), '  | ', gameBoard(9), ' ', newline];
yourTurnMessage = ('Your turn. Where do you want to go?\n');

%Title screen, game selection
fprintf('*****Tic-Tac-Toe*****\n');
fprintf('Select game type: \n'); 
fprintf('1: Single Player\n');
fprintf('2: Two Player\n');
fprintf('3: Quit\n');
fprintf('\n');

%Show the game board with numbers for reference
fprintf('This is the game board!\n');
fprintf('On your turn, enter a number between 1 and 9\nthat matches the location on the game board.\n');
fprintf('     '); 
fprintf(gameBoard(1)); 
fprintf(' |  ');
fprintf(gameBoard(2)); 
fprintf('  | ');
fprintf(gameBoard(3)); 
fprintf(' \n'); 
fprintf('   ----|-----|-----\n'); 
fprintf('     '); 
fprintf(gameBoard(4)); 
fprintf(' |  ');
fprintf(gameBoard(5)); 
fprintf('  | '); 
fprintf(gameBoard(6));
fprintf(' \n'); 
fprintf('   ----|-----|-----\n'); 
fprintf('     '); 
fprintf(gameBoard(7)); 
fprintf(' |  '); 
fprintf(gameBoard(8));
fprintf('  | '); 
fprintf(gameBoard(9)); 
fprintf(' \n');

%Clear the numbers from the game board 
gameBoard = [' ' ' ' ' ' ' ' ' ' ' ' ' ' ' ' ' '];


% %Determine who goes first
% fprintf('Would you like to go first?\n');
% fprintf('1: Yes\n');
% fprintf('2: No\n');

% firstMove = input('');
% if (firstMove == 1) 
%     %Human goes first
%     disp('(test: human goes first)');
% elseif (firstMove == 2)
%     %Computer goes first
%     disp('(test: computer goes first)');
% end
    
%Player Move 1
%Prompt user for move
playerMove = input(yourTurnMessage);
switch playerMove
    case 1
        gameBoard(1) = 'X';
    case 2
        gameBoard(2) = 'X';
    case 3
        gameBoard(3) = 'X';
    case 4
        gameBoard(4) = 'X';
    case 5
        gameBoard(5) = 'X';
    case 6
        gameBoard(6) = 'X';
    case 7
        gameBoard(7) = 'X';
    case 8
        gameBoard(8) = 'X';
    case 9
        gameBoard(9) = 'X';
end

%Display updated game board
displayGameBoard = [newline, 'Game Board:', newline, '     ', ...
    gameBoard(1), ' |  ', gameBoard(2), '  | ', gameBoard(3), ' ', ...
    newline, '   ----|-----|-----', newline, '     ', gameBoard(4),...
    ' |  ', gameBoard(5), '  | ', gameBoard(6), ' ', newline,...
    '   ----|-----|-----', newline, '     ', gameBoard(7), ' |  ',...
    gameBoard(8), '  | ', gameBoard(9), ' ', newline];
disp(displayGameBoard);


%Computer's Turn 1
%Generate Computer move, first try is just moving in the first open slot
if gameBoard(1) == ' '
    gameBoard(1) = 'O';
elseif gameBoard(2) == ' '
    gameBoard(2) = 'O';
elseif gameBoard(3) == ' '
    gameBoard(3) = 'O';
elseif gameBoard(4) == ' '
    gameBoard(4) = 'O';
elseif gameBoard(5) == ' '
    gameBoard(5) = 'O';
elseif gameBoard(6) == ' '
    gameBoard(6) = 'O';
elseif gameBoard(7) == ' '
    gameBoard(7) = 'O';
elseif gameBoard(8) == ' '
    gameBoard(8) = 'O';
elseif gameBoard(9) == ' '
    gameBoard(9) = 'O';
end

displayGameBoard = [newline, 'Game Board:', newline, '     ', ...
    gameBoard(1), ' |  ', gameBoard(2), '  | ', gameBoard(3), ' ', ...
    newline, '   ----|-----|-----', newline, '     ', gameBoard(4),...
    ' |  ', gameBoard(5), '  | ', gameBoard(6), ' ', newline,...
    '   ----|-----|-----', newline, '     ', gameBoard(7), ' |  ',...
    gameBoard(8), '  | ', gameBoard(9), ' ', newline];
disp(displayGameBoard);

%Continue game until win


%Display Final result


