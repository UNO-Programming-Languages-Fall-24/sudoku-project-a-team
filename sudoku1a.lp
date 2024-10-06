% Sudoku Solver
%
% Hints:
% For subgrid of size n, subgrids can be identified by labels 1..n*n
% A cell (x,y) can be mapped to the subgrid labeled 1+(((x-1)/n)*n+(y-1)/n)

% Your implementation please...

% pretty sure ex00.json is wrong...

%%% Constants
#const n = 4.

%%% Generate
{cell(X,Y)} = 1 :- X = 1..n, Y = 1..n.

%%% Test

%%% Show
%#show sudoku/3.
