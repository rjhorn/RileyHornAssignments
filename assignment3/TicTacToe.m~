clc;
clear;

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
    


%**********Player Turn 1**********
%Prompt user for move and take input
playerMove = input(yourTurnMessage);
playerMove = floor(playerMove);

%Check that the player's move is a number 1-9
if (playerMove < 1) || (playerMove > 9)
    disp('Invalid Number: Pick a number between 1 and 9 or the game will end.');
    playerMove = input(yourTurnMessage);
    playerMove = floor(playerMove);
end

%Check that player's move box is empty
if (gameBoard(playerMove) == 'X') || (gameBoard(playerMove) == 'O')
    disp('Invalid Square: That square is taken, pick an open square or the game will end.');
    playerMove = input(yourTurnMessage);
    playerMove = floor(playerMove);
end

%Check that player's move is a number 1-9, second time
if (playerMove < 1) || (playerMove > 9)
    disp('Invalid Number: Game Over');
    return
end

%Check that player's move box is empty, second time
if (gameBoard(playerMove) == 'X') || (gameBoard(playerMove) == 'O')
    disp('Invalid Square: Game Over');
    return
end

%Place player's move on the board
gameBoard(playerMove) = 'X';

%Display updated game board
displayGameBoard = [newline, 'Game Board:', newline, '     ', ...
    gameBoard(1), ' |  ', gameBoard(2), '  | ', gameBoard(3), ' ', ...
    newline, '   ----|-----|-----', newline, '     ', gameBoard(4),...
    ' |  ', gameBoard(5), '  | ', gameBoard(6), ' ', newline,...
    '   ----|-----|-----', newline, '     ', gameBoard(7), ' |  ',...
    gameBoard(8), '  | ', gameBoard(9), ' ', newline];
disp(displayGameBoard);
%**********End of Player Turn 1***********



%**********Computer's Turn 1***********
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
%***************End of Computer's Turn******************



%**********Player Turn 2**********
%Prompt user for move and take input
playerMove = input(yourTurnMessage);
playerMove = floor(playerMove);

%Check that the player's move is a number 1-9
if (playerMove < 1) || (playerMove > 9)
    disp('Invalid Number: Pick a number between 1 and 9 or the game will end.');
    playerMove = input(yourTurnMessage);
    playerMove = floor(playerMove);
end

%Check that player's move box is empty
if (gameBoard(playerMove) == 'X') || (gameBoard(playerMove) == 'O')
    disp('Invalid Square: That square is taken, pick an open square or the game will end.');
    playerMove = input(yourTurnMessage);
    playerMove = floor(playerMove);
end

%Check that player's move is a number 1-9, second time
if (playerMove < 1) || (playerMove > 9)
    disp('Invalid Number: Game Over');
    return;
end

%Check that player's move box is empty, second time
if (gameBoard(playerMove) == 'X') || (gameBoard(playerMove) == 'O')
    disp('Invalid Square: Game Over');
    return;
end

%Place player's move on the board
gameBoard(playerMove) = 'X';

%Display updated game board
displayGameBoard = [newline, 'Game Board:', newline, '     ', ...
    gameBoard(1), ' |  ', gameBoard(2), '  | ', gameBoard(3), ' ', ...
    newline, '   ----|-----|-----', newline, '     ', gameBoard(4),...
    ' |  ', gameBoard(5), '  | ', gameBoard(6), ' ', newline,...
    '   ----|-----|-----', newline, '     ', gameBoard(7), ' |  ',...
    gameBoard(8), '  | ', gameBoard(9), ' ', newline];
disp(displayGameBoard);
%**********End of Player Turn 2***********

%**********Computer's Turn 2***********
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
%***************End of Computer's Turn 2******************


%**********Player Turn 3**********
%Prompt user for move and take input
playerMove = input(yourTurnMessage);
playerMove = floor(playerMove);

%Check that the player's move is a number 1-9
if (playerMove < 1) || (playerMove > 9)
    disp('Invalid Number: Pick a number between 1 and 9 or the game will end.');
    playerMove = input(yourTurnMessage);
    playerMove = floor(playerMove);
end

%Check that player's move box is empty
if (gameBoard(playerMove) == 'X') || (gameBoard(playerMove) == 'O')
    disp('Invalid Square: That square is taken, pick an open square or the game will end.');
    playerMove = input(yourTurnMessage);
    playerMove = floor(playerMove);
end

%Check that player's move is a number 1-9, second time
if (playerMove < 1) || (playerMove > 9)
    disp('Invalid Number: Game Over');
    return;
end

%Check that player's move box is empty, second time
if (gameBoard(playerMove) == 'X') || (gameBoard(playerMove) == 'O')
    disp('Invalid Square: Game Over');
    return;
end

%Place player's move on the board
gameBoard(playerMove) = 'X';

%Display updated game board
displayGameBoard = [newline, 'Game Board:', newline, '     ', ...
    gameBoard(1), ' |  ', gameBoard(2), '  | ', gameBoard(3), ' ', ...
    newline, '   ----|-----|-----', newline, '     ', gameBoard(4),...
    ' |  ', gameBoard(5), '  | ', gameBoard(6), ' ', newline,...
    '   ----|-----|-----', newline, '     ', gameBoard(7), ' |  ',...
    gameBoard(8), '  | ', gameBoard(9), ' ', newline];
disp(displayGameBoard);
%**********End of Player Turn 3***********

%***********Check for Win**************
% Possible Wins: 123, 456, 789, 147, 258, 369, 159, 357
if (gameBoard(1) == gameBoard(2)) && (gameBoard(1) == gameBoard(3))
    if gameBoard(1) == 'X'
        disp('You Win!');
        return;
    elseif gameBoard(1) == 'O'
        disp('You lost.');
        return;
    end
elseif (gameBoard(4) == gameBoard(5)) && (gameBoard(4) == gameBoard(6))
     if gameBoard(4) == 'X'
        disp('You Win!');
        return;
    elseif gameBoard(4) == 'O'
        disp('You lost.');
        return;
    end
elseif (gameBoard(7) == gameBoard(8)) && (gameBoard(7) == gameBoard(9))
     if gameBoard(7) == 'X'
        disp('You Win!');
        return;
    elseif gameBoard(7) == 'O'
        disp('You lost.');
        return;
    end
elseif (gameBoard(1) == gameBoard(4)) && (gameBoard(1) == gameBoard(7))
     if gameBoard(1) == 'X'
        disp('You Win!');
        return;
    elseif gameBoard(1) == 'O'
        disp('You lost.');
        return;
    end  
elseif (gameBoard(2) == gameBoard(5)) && (gameBoard(2) == gameBoard(8))
     if gameBoard(2) == 'X'
        disp('You Win!');
        return;
    elseif gameBoard(2) == 'O'
        disp('You lost.');
        return;
    end
elseif (gameBoard(3) == gameBoard(6)) && (gameBoard(3) == gameBoard(9))
     if gameBoard(3) == 'X'
        disp('You Win!');
        return;
    elseif gameBoard(3) == 'O'
        disp('You lost.');
        return;
    end
elseif (gameBoard(1) == gameBoard(5)) && (gameBoard(1) == gameBoard(9))
     if gameBoard(1) == 'X'
        disp('You Win!');
        return;
    elseif gameBoard(1) == 'O'
        disp('You lost.');
        return;
    end
elseif (gameBoard(3) == gameBoard(5)) && (gameBoard(3) == gameBoard(7))
     if gameBoard(3) == 'X'
        disp('You Win!');
        return;
    elseif gameBoard(3) == 'O'
        disp('You lost.');
        return;
    end
end
%***************End of Check for Win*************


%**********Computer's Turn 3***********
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
%***************End of Computer's Turn 3******************

%***********Check for Win**************
% Possible Wins: 123, 456, 789, 147, 258, 369, 159, 357
if (gameBoard(1) == gameBoard(2)) && (gameBoard(1) == gameBoard(3))
    if gameBoard(1) == 'X'
        disp('You Win!');
        return;
    elseif gameBoard(1) == 'O'
        disp('You lost.');
        return;
    end
elseif (gameBoard(4) == gameBoard(5)) && (gameBoard(4) == gameBoard(6))
     if gameBoard(4) == 'X'
        disp('You Win!');
        return;
    elseif gameBoard(4) == 'O'
        disp('You lost.');
        return;
    end
elseif (gameBoard(7) == gameBoard(8)) && (gameBoard(7) == gameBoard(9))
     if gameBoard(7) == 'X'
        disp('You Win!');
        return;
    elseif gameBoard(7) == 'O'
        disp('You lost.');
        return;
    end
elseif (gameBoard(1) == gameBoard(4)) && (gameBoard(1) == gameBoard(7))
     if gameBoard(1) == 'X'
        disp('You Win!');
        return;
    elseif gameBoard(1) == 'O'
        disp('You lost.');
        return;
    end  
elseif (gameBoard(2) == gameBoard(5)) && (gameBoard(2) == gameBoard(8))
     if gameBoard(2) == 'X'
        disp('You Win!');
        return;
    elseif gameBoard(2) == 'O'
        disp('You lost.');
        return;
    end
elseif (gameBoard(3) == gameBoard(6)) && (gameBoard(3) == gameBoard(9))
     if gameBoard(3) == 'X'
        disp('You Win!');
        return;
    elseif gameBoard(3) == 'O'
        disp('You lost.');
        return;
    end
elseif (gameBoard(1) == gameBoard(5)) && (gameBoard(1) == gameBoard(9))
     if gameBoard(1) == 'X'
        disp('You Win!');
        return;
    elseif gameBoard(1) == 'O'
        disp('You lost.');
        return;
    end
elseif (gameBoard(3) == gameBoard(5)) && (gameBoard(3) == gameBoard(7))
     if gameBoard(3) == 'X'
        disp('You Win!');
        return;
    elseif gameBoard(3) == 'O'
        disp('You lost.');
        return;
    end
end
%***************End of Check for Win*************


%**********Player Turn 4**********
%Prompt user for move and take input
playerMove = input(yourTurnMessage);
playerMove = floor(playerMove);

%Check that the player's move is a number 1-9
if (playerMove < 1) || (playerMove > 9)
    disp('Invalid Number: Pick a number between 1 and 9 or the game will end.');
    playerMove = input(yourTurnMessage);
    playerMove = floor(playerMove);
end

%Check that player's move box is empty
if (gameBoard(playerMove) == 'X') || (gameBoard(playerMove) == 'O')
    disp('Invalid Square: That square is taken, pick an open square or the game will end.');
    playerMove = input(yourTurnMessage);
    playerMove = floor(playerMove);
end

%Check that player's move is a number 1-9, second time
if (playerMove < 1) || (playerMove > 9)
    disp('Invalid Number: Game Over');
    return;
end

%Check that player's move box is empty, second time
if (gameBoard(playerMove) == 'X') || (gameBoard(playerMove) == 'O')
    disp('Invalid Square: Game Over');
    return;
end

%Place player's move on the board
gameBoard(playerMove) = 'X';

%Display updated game board
displayGameBoard = [newline, 'Game Board:', newline, '     ', ...
    gameBoard(1), ' |  ', gameBoard(2), '  | ', gameBoard(3), ' ', ...
    newline, '   ----|-----|-----', newline, '     ', gameBoard(4),...
    ' |  ', gameBoard(5), '  | ', gameBoard(6), ' ', newline,...
    '   ----|-----|-----', newline, '     ', gameBoard(7), ' |  ',...
    gameBoard(8), '  | ', gameBoard(9), ' ', newline];
disp(displayGameBoard);
%**********End of Player Turn 4***********


%***********Check for Win**************
% Possible Wins: 123, 456, 789, 147, 258, 369, 159, 357
if (gameBoard(1) == gameBoard(2)) && (gameBoard(1) == gameBoard(3))
    if gameBoard(1) == 'X'
        disp('You Win!');
        return;
    elseif gameBoard(1) == 'O'
        disp('You lost.');
        return;
    end
elseif (gameBoard(4) == gameBoard(5)) && (gameBoard(4) == gameBoard(6))
     if gameBoard(4) == 'X'
        disp('You Win!');
        return;
    elseif gameBoard(4) == 'O'
        disp('You lost.');
        return;
    end
elseif (gameBoard(7) == gameBoard(8)) && (gameBoard(7) == gameBoard(9))
     if gameBoard(7) == 'X'
        disp('You Win!');
        return;
    elseif gameBoard(7) == 'O'
        disp('You lost.');
        return;
    end
elseif (gameBoard(1) == gameBoard(4)) && (gameBoard(1) == gameBoard(7))
     if gameBoard(1) == 'X'
        disp('You Win!');
        return;
    elseif gameBoard(1) == 'O'
        disp('You lost.');
        return;
    end  
elseif (gameBoard(2) == gameBoard(5)) && (gameBoard(2) == gameBoard(8))
     if gameBoard(2) == 'X'
        disp('You Win!');
        return;
    elseif gameBoard(2) == 'O'
        disp('You lost.');
        return;
    end
elseif (gameBoard(3) == gameBoard(6)) && (gameBoard(3) == gameBoard(9))
     if gameBoard(3) == 'X'
        disp('You Win!');
        return;
    elseif gameBoard(3) == 'O'
        disp('You lost.');
        return;
    end
elseif (gameBoard(1) == gameBoard(5)) && (gameBoard(1) == gameBoard(9))
     if gameBoard(1) == 'X'
        disp('You Win!');
        return;
    elseif gameBoard(1) == 'O'
        disp('You lost.');
        return;
    end
elseif (gameBoard(3) == gameBoard(5)) && (gameBoard(3) == gameBoard(7))
     if gameBoard(3) == 'X'
        disp('You Win!');
        return;
    elseif gameBoard(3) == 'O'
        disp('You lost.');
        return;
    end
end
%***************End of Check for Win*************

%**********Computer's Turn 4***********
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
%***************End of Computer's Turn 4******************

%***********Check for Win**************
% Possible Wins: 123, 456, 789, 147, 258, 369, 159, 357
if (gameBoard(1) == gameBoard(2)) && (gameBoard(1) == gameBoard(3))
    if gameBoard(1) == 'X'
        disp('You Win!');
        return;
    elseif gameBoard(1) == 'O'
        disp('You lost.');
        return;
    end
elseif (gameBoard(4) == gameBoard(5)) && (gameBoard(4) == gameBoard(6))
     if gameBoard(4) == 'X'
        disp('You Win!');
        return;
    elseif gameBoard(4) == 'O'
        disp('You lost.');
        return;
    end
elseif (gameBoard(7) == gameBoard(8)) && (gameBoard(7) == gameBoard(9))
     if gameBoard(7) == 'X'
        disp('You Win!');
        return;
    elseif gameBoard(7) == 'O'
        disp('You lost.');
        return;
    end
elseif (gameBoard(1) == gameBoard(4)) && (gameBoard(1) == gameBoard(7))
     if gameBoard(1) == 'X'
        disp('You Win!');
        return;
    elseif gameBoard(1) == 'O'
        disp('You lost.');
        return;
    end  
elseif (gameBoard(2) == gameBoard(5)) && (gameBoard(2) == gameBoard(8))
     if gameBoard(2) == 'X'
        disp('You Win!');
        return;
    elseif gameBoard(2) == 'O'
        disp('You lost.');
        return;
    end
elseif (gameBoard(3) == gameBoard(6)) && (gameBoard(3) == gameBoard(9))
     if gameBoard(3) == 'X'
        disp('You Win!');
        return;
    elseif gameBoard(3) == 'O'
        disp('You lost.');
        return;
    end
elseif (gameBoard(1) == gameBoard(5)) && (gameBoard(1) == gameBoard(9))
     if gameBoard(1) == 'X'
        disp('You Win!');
        return;
    elseif gameBoard(1) == 'O'
        disp('You lost.');
        return;
    end
elseif (gameBoard(3) == gameBoard(5)) && (gameBoard(3) == gameBoard(7))
     if gameBoard(3) == 'X'
        disp('You Win!');
        return;
    elseif gameBoard(3) == 'O'
        disp('You lost.');
        return;
    end
end
%***************End of Check for Win*************


%**********Player Turn 5**********
%Prompt user for move and take input
playerMove = input(yourTurnMessage);
playerMove = floor(playerMove);

%Check that the player's move is a number 1-9
if (playerMove < 1) || (playerMove > 9)
    disp('Invalid Number: Pick a number between 1 and 9 or the game will end.');
    playerMove = input(yourTurnMessage);
    playerMove = floor(playerMove);
end

%Check that player's move box is empty
if (gameBoard(playerMove) == 'X') || (gameBoard(playerMove) == 'O')
    disp('Invalid Square: That square is taken, pick an open square or the game will end.');
    playerMove = input(yourTurnMessage);
    playerMove = floor(playerMove);
end

%Check that player's move is a number 1-9, second time
if (playerMove < 1) || (playerMove > 9)
    disp('Invalid Number: Game Over');
    return;
end

%Check that player's move box is empty, second time
if (gameBoard(playerMove) == 'X') || (gameBoard(playerMove) == 'O')
    disp('Invalid Square: Game Over');
    return;
end

%Place player's move on the board
gameBoard(playerMove) = 'X';

%Display updated game board
displayGameBoard = [newline, 'Game Board:', newline, '     ', ...
    gameBoard(1), ' |  ', gameBoard(2), '  | ', gameBoard(3), ' ', ...
    newline, '   ----|-----|-----', newline, '     ', gameBoard(4),...
    ' |  ', gameBoard(5), '  | ', gameBoard(6), ' ', newline,...
    '   ----|-----|-----', newline, '     ', gameBoard(7), ' |  ',...
    gameBoard(8), '  | ', gameBoard(9), ' ', newline];
disp(displayGameBoard);
%**********End of Player Turn 5***********


%***********Check for Win**************
% Possible Wins: 123, 456, 789, 147, 258, 369, 159, 357
if (gameBoard(1) == gameBoard(2)) && (gameBoard(1) == gameBoard(3))
    if gameBoard(1) == 'X'
        disp('You Win!');
        return;
    elseif gameBoard(1) == 'O'
        disp('You lost.');
        return;
    end
elseif (gameBoard(4) == gameBoard(5)) && (gameBoard(4) == gameBoard(6))
     if gameBoard(4) == 'X'
        disp('You Win!');
        return;
    elseif gameBoard(4) == 'O'
        disp('You lost.');
        return;
    end
elseif (gameBoard(7) == gameBoard(8)) && (gameBoard(7) == gameBoard(9))
     if gameBoard(7) == 'X'
        disp('You Win!');
        return;
    elseif gameBoard(7) == 'O'
        disp('You lost.');
        return;
    end
elseif (gameBoard(1) == gameBoard(4)) && (gameBoard(1) == gameBoard(7))
     if gameBoard(1) == 'X'
        disp('You Win!');
        return;
    elseif gameBoard(1) == 'O'
        disp('You lost.');
        return;
    end  
elseif (gameBoard(2) == gameBoard(5)) && (gameBoard(2) == gameBoard(8))
     if gameBoard(2) == 'X'
        disp('You Win!');
        return;
    elseif gameBoard(2) == 'O'
        disp('You lost.');
        return;
    end
elseif (gameBoard(3) == gameBoard(6)) && (gameBoard(3) == gameBoard(9))
     if gameBoard(3) == 'X'
        disp('You Win!');
        return;
    elseif gameBoard(3) == 'O'
        disp('You lost.');
        return;
    end
elseif (gameBoard(1) == gameBoard(5)) && (gameBoard(1) == gameBoard(9))
     if gameBoard(1) == 'X'
        disp('You Win!');
        return;
    elseif gameBoard(1) == 'O'
        disp('You lost.');
        return;
    end
elseif (gameBoard(3) == gameBoard(5)) && (gameBoard(3) == gameBoard(7))
     if gameBoard(3) == 'X'
        disp('You Win!');
        return;
    elseif gameBoard(3) == 'O'
        disp('You lost.');
        return;
    end
end
%***************End of Check for Win*************

% Cat Wins
% If the game gets this far and there is no winner, it must be a cat game
disp('No one wins! Cat''s game.')
