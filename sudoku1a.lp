% Sudoku Solver
%
% Hints:
% For subgrid of size n, subgrids can be identified by labels 1..n*n
% A cell (x,y) can be mapped to the subgrid labeled 1+(((x-1)/n)*n+(y-1)/n)

% Your implementation please...

%%% Constants
#const n = 4.

{initial(X,Y,Z) : Z = 1..n} = 1 :- X = 1..n, Y = 1..n.
% achieved: generate sudokus with guess Z for each x and y coordinate respectively

:- initial(X,Y,Z), initial(X',Y,Z), X != X'.
% achieved: columns do not share values

:- initial(X,Y,Z), initial(X,Y',Z), Y != Y'.
% achieved: rows do not share values

%%% Show
%#show sudoku/3.
#show initial/3.
