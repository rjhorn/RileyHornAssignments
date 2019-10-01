%KINE 6203 Data Analysis using MATLAB
%Assignment 3: Tic Tac Toe - Part 1
%Play tic tac toe against the computer!
%(No loops allowed in part 1)

clc;
clear;

%Initialize Variables
firstMove = 0;
playerMove = 0;
playGame = 0;
computerSkill = 2; %1 = random, 2 = impossible, potential implementation 
gameBoard = ['1' '2' '3' '4' '5' '6' '7' '8' '9'];
displayGameBoard = [newline, 'Game Board:', newline, '     ', ...
    gameBoard(1), ' |  ', gameBoard(2), '  | ', gameBoard(3), ' ', ...
    newline, '   ----|-----|-----', newline, '     ', gameBoard(4),...
    ' |  ', gameBoard(5), '  | ', gameBoard(6), ' ', newline,...
    '   ----|-----|-----', newline, '     ', gameBoard(7), ' |  ',...
    gameBoard(8), '  | ', gameBoard(9), ' ', newline];
yourTurnMessage = ('Your turn. Where do you want to go?\n');

%Title screen, game selection
fprintf('*****Tic-Tac-Toe*****\n\n');

%Ask if user would like to play, if not, end the program
fprintf('Would you like to play a game of Tic-Tac-Toe?\n');
fprintf('1: Play a game!\n');
fprintf('2: No thanks.\n');
playGame = input('');

if (playGame ~= 1)
    disp('Goodbye.');
    return;
end
clc;

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

%Determine who goes first
fprintf('Would you like to go first?\n');
fprintf('1: Yes\n');
fprintf('2: No\n');
firstMove = input('');

if (firstMove ~= 1 && firstMove ~= 2)
    disp('Please enter 1 or 2');
    fprintf('Who will go first?\n');
    fprintf('1: Human\n');
    fprintf('2: Computer\n');
    firstMove = input('');
    if (firstMove ~= 1 && firstMove ~= 2)
        disp('Game Over');
        return;
    end
end
clc;

%***********Computer Turn 0 (if computer goes first)**********    
if (firstMove == 2)
    %Clear the numbers from the game board
    gameBoard = [' ' ' ' ' ' ' ' ' ' ' ' ' ' ' ' ' '];
    
    %Impossible Computer Move
    gameBoard(7) = 'O';
    
    disp('Computer''s Turn:');
    displayGameBoard = ['     ', ...
        gameBoard(1), ' |  ', gameBoard(2), '  | ', gameBoard(3), ' ', ...
        newline, '   ----|-----|-----', newline, '     ', gameBoard(4),...
        ' |  ', gameBoard(5), '  | ', gameBoard(6), ' ', newline,...
        '   ----|-----|-----', newline, '     ', gameBoard(7), ' |  ',...
        gameBoard(8), '  | ', gameBoard(9), ' ', newline];
    disp(displayGameBoard);
    %***************End of Computer's Turn 0******************
end
    


%**********Player Turn 1**********
%Prompt user for move and take input

if (firstMove == 1)
    %Display game board with numbers for locations
    displayGameBoard = ['Game Board:', newline, '     ', ...
        gameBoard(1), ' |  ', gameBoard(2), '  | ', gameBoard(3), ' ', ...
        newline, '   ----|-----|-----', newline, '     ', gameBoard(4),...
        ' |  ', gameBoard(5), '  | ', gameBoard(6), ' ', newline,...
        '   ----|-----|-----', newline, '     ', gameBoard(7), ' |  ',...
        gameBoard(8), '  | ', gameBoard(9), ' ', newline];
    disp(displayGameBoard);

    %Clear the numbers from the game board 
    gameBoard = [' ' ' ' ' ' ' ' ' ' ' ' ' ' ' ' ' '];
end

playerMove = input(yourTurnMessage);
    
%Check that the player's move is a number 1-9
playerMove = floor(playerMove);
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
clc;
disp('Player''s Turn:');
displayGameBoard = ['     ', ...
    gameBoard(1), ' |  ', gameBoard(2), '  | ', gameBoard(3), ' ', ...
    newline, '   ----|-----|-----', newline, '     ', gameBoard(4),...
    ' |  ', gameBoard(5), '  | ', gameBoard(6), ' ', newline,...
    '   ----|-----|-----', newline, '     ', gameBoard(7), ' |  ',...
    gameBoard(8), '  | ', gameBoard(9), ' ', newline];
disp(displayGameBoard);
%**********End of Player Turn 1***********



%**********Computer's Turn 1***********
%Generate Computer move, first try is just moving in the first open slot

%Impossible Strategy
if (firstMove == 1) %This means the human went first and this is the computers first move
    if (gameBoard(5) == ' ')
        gameBoard(5) = 'O'; %The cpu will take the middle square if it goes second
    elseif (gameBoard(5) == 'X')
        gameBoard(7) = '0'; %If the middle square was taken first, cpu will take the corner
    end
elseif (firstMove == 2) %this is the computers second move
   if (gameBoard(1) == 'X')
        gameBoard(3) = 'O';
   elseif (gameBoard(4) == 'X')
        gameBoard(9) = 'O';
   else
        gameBoard(1) = 'O';
   end
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
clc;
disp('Player''s Turn:');
displayGameBoard = ['     ', ...
    gameBoard(1), ' |  ', gameBoard(2), '  | ', gameBoard(3), ' ', ...
    newline, '   ----|-----|-----', newline, '     ', gameBoard(4),...
    ' |  ', gameBoard(5), '  | ', gameBoard(6), ' ', newline,...
    '   ----|-----|-----', newline, '     ', gameBoard(7), ' |  ',...
    gameBoard(8), '  | ', gameBoard(9), ' ', newline];
disp(displayGameBoard);
%**********End of Player Turn 2***********

%**********Computer's Turn 2***********
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
elseif (gameBoard(2) == 'X') && (gameBoard(5) == '5') && (gameBoard(8) == ' ')
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
end

disp('Computer''s Turn:');
displayGameBoard = ['     ', ...
    gameBoard(1), ' |  ', gameBoard(2), '  | ', gameBoard(3), ' ', ...
    newline, '   ----|-----|-----', newline, '     ', gameBoard(4),...
    ' |  ', gameBoard(5), '  | ', gameBoard(6), ' ', newline,...
    '   ----|-----|-----', newline, '     ', gameBoard(7), ' |  ',...
    gameBoard(8), '  | ', gameBoard(9), ' ', newline];
disp(displayGameBoard);
%***************End of Computer's Turn 2******************

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
clc;
disp('Player''s Turn:');
displayGameBoard = ['     ', ...
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
        disp('Why won''t you give up?');
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
elseif (gameBoard(2) == 'X') && (gameBoard(5) == '5') && (gameBoard(8) == ' ')
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
end

disp('Computer''s Turn:');
displayGameBoard = ['     ', ...
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
        disp('Resistance is futile.');
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
clc;
disp('Player''s Turn:');
displayGameBoard = ['     ', ...
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
        disp('The computer doesn''t lose.');
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
elseif (gameBoard(2) == 'X') && (gameBoard(5) == '5') && (gameBoard(8) == ' ')
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
end

disp('Computer''s Turn:');
displayGameBoard = ['     ', ...
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
        disp('Give up, you can''t win.');
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


%**********Player Turn 5 (won't happen if computer went first)**********
if (firstMove == 1) 
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
    clc;
    disp('Player''s Turn:');
    displayGameBoard = ['     ', ...
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
            disp('Winning is impossible.');
            return;
        end
    end
    %***************End of Check for Win*************
end
%end of optional player turn 5

% Cat Wins
% If the game gets this far and there is no winner, it must be a cat game
disp('No one wins! Cat''s game.')
