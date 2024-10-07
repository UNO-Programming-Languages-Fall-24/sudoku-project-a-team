% Sudoku Solver

% Constants
#const n = 4.

sudoku(X, Y, Z) :- initial(X, Y, Z).
{sudoku(X, Y, Z) : Z = 1..n} = 1 :- X = 1..n, Y = 1..n.
%achieved: create sudoku examples

:- sudoku(X, Y, Z), sudoku(X, Y', Z), Y != Y'.
%achieved: Ensure an entry cant happen at the same Y

:- sudoku(X, Y, Z), sudoku(X', Y, Z), X != X'.
%achieved: Ensure an entry cant happen at the same X

% Show results
#show sudoku/3.

