%constants
#const n = 4.
#const root_n = 2.

sudoku(X, Y, Z) :- initial(X, Y, Z).
{sudoku(X, Y, Z) : Z = 1..n} = 1 :- X = 1..n, Y = 1..n.
%achieved: Created examples for sudoku to run through

:- sudoku(X, Y, Z), sudoku(X, Y', Z), Y != Y'.
%achieved: Ensure an entry can't happen at the same Y

:- sudoku(X, Y, Z), sudoku(X', Y, Z), X != X'.
%achieved: Ensure an entry can't happen at the same X

subgrid(X, Y, G) :- sudoku(X, Y, _), 
    G = ((X - 1) / root_n) * root_n + ((Y - 1) / root_n) + 1.
%achieved: Define which subgrid each cell belongs to using the formula

:- sudoku(X, Y, Z), subgrid(X, Y, G), subgrid(X, Y, G'), G != G'.
%achieved: Ensure a cell can only belong to one subgrid

:- not {sudoku(X, Y, Z) : Y = 1..n}, X = 1..n, Z = 1..n.
%achieved: Ensure all numbers between 1 and n appear in each row

:- not {sudoku(X, Y, Z) : X = 1..n}, Y = 1..n, Z = 1..n.
%achieved: Ensure all numbers between 1 and n appear in each column

:- not {sudoku(X, Y, Z) : subgrid(X, Y, G)}, G = 1..n, Z = 1..n.
%achieved: Ensure all numbers between 1 and n appear in each subgrid

#show sudoku/3.
