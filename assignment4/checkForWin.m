function [gameOver] = checkForWin(gameBoard)
%	checkForWin takes the current gameBoard as input, will return true if
%	the game is over and false if it is not.
%	Also will display "You Win!" if X's wins and "You lost." if O's win.

%***********Check for Win**************
% Possible Wins: 123, 456, 789, 147, 258, 369, 159, 357
gameOver = false;
if (gameBoard(1) == gameBoard(2)) && (gameBoard(1) == gameBoard(3))
    if gameBoard(1) == 'X'
        disp('You Win!');
        gameOver = true;
    elseif gameBoard(1) == 'O'
        disp('You lost.');
        gameOver = true;
    end
elseif (gameBoard(4) == gameBoard(5)) && (gameBoard(4) == gameBoard(6))
     if gameBoard(4) == 'X'
        disp('You Win!');
        gameOver = true;
    elseif gameBoard(4) == 'O'
        disp('You lost.');
        gameOver = true;
    end
elseif (gameBoard(7) == gameBoard(8)) && (gameBoard(7) == gameBoard(9))
     if gameBoard(7) == 'X'
        gameOver = true;
        return;
    elseif gameBoard(7) == 'O'
        gameOver = true;
        return;
    end
elseif (gameBoard(1) == gameBoard(4)) && (gameBoard(1) == gameBoard(7))
     if gameBoard(1) == 'X'
        disp('You Win!');
        gameOver = true;
    elseif gameBoard(1) == 'O'
        disp('The computer doesn''t lose.');
        gameOver = true;
    end  
elseif (gameBoard(2) == gameBoard(5)) && (gameBoard(2) == gameBoard(8))
     if gameBoard(2) == 'X'
        disp('You Win!');
        gameOver = true;
    elseif gameBoard(2) == 'O'
        disp('You lost.');
        gameOver = true;
    end
elseif (gameBoard(3) == gameBoard(6)) && (gameBoard(3) == gameBoard(9))
     if gameBoard(3) == 'X'
        disp('You Win!');
        gameOver = true;
    elseif gameBoard(3) == 'O'
        disp('You lost.');
        gameOver = true;
    end
elseif (gameBoard(1) == gameBoard(5)) && (gameBoard(1) == gameBoard(9))
     if gameBoard(1) == 'X'
        disp('You Win!');
        gameOver = true;
    elseif gameBoard(1) == 'O'
        disp('You lost.');
        gameOver = true;
    end
elseif (gameBoard(3) == gameBoard(5)) && (gameBoard(3) == gameBoard(7))
     if gameBoard(3) == 'X'
        disp('You Win!');
        gameOver = true;
    elseif gameBoard(3) == 'O'
        disp('You lost.');
        gameOver = true;
     end
elseif (gameBoard(1) ~= ' ') && ...
       (gameBoard(2) ~= ' ') && ...
       (gameBoard(3) ~= ' ') && ...
       (gameBoard(4) ~= ' ') && ...
       (gameBoard(5) ~= ' ') && ...
       (gameBoard(6) ~= ' ') && ...
       (gameBoard(7) ~= ' ') && ...
       (gameBoard(8) ~= ' ') && ...
       (gameBoard(9) ~= ' ')
            disp('Tie!')
            gameOver = true;
end
%***************End of Check for Win*************
end

