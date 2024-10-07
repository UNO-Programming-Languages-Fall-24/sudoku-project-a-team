% Constants
#const n = 4.

sudoku(X, Y, Z) :- initial(X, Y, Z).
{sudoku(X, Y, Z) : Z = 1..n} = 1 :- X = 1..n, Y = 1..n.
%achieved: Created examples for sudoku to run through

:- sudoku(X, Y, Z), sudoku(X, Y', Z), Y != Y'.
%achieved: Ensure an entry can't happen at the same Y

:- sudoku(X, Y, Z), sudoku(X', Y, Z), X != X'.
%achieved: Ensure an entry can't happen at the same X

subgrid(X, Y, G) :- sudoku(X,Y,_), 
    G = 1 + ((X - 1) / 2) * 2 + ((Y - 1) / 2).
%achieved: Define which subgrid each cell belongs to using the formula

:- sudoku(X, Y, Z), subgrid(X, Y, G), subgrid(X, Y, G'), G != G'.
%achieved: Ensure a cell can only belong to one subgrid

% Show results
#show sudoku/3.
#show subgrid/3.
