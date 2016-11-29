% Examen final Lenguajes de programación
% 25 Noviembre 2016
% Margot Duek
% Recursos:
%   https://www.cs.cmu.edu/~adamchik/15-121/lectures/Binary%20Heaps/heaps.html
%   http://stackoverflow.com/questions/19798844/finding-the-max-in-a-list-prolog


% Insert
insert(A, [], [-1, A]).
insert(A, Tree, Out) :-
  length(Tree, N),
  Pos is N,
  append(Tree, [A], Out),
  %insert(T, Result, Out).
  %heap_sort(Result, A, Pos, Out).

% insert a list of numbers
insertList([],Tree,Tree).
insertList([H|T],Tree,N):-insert(H,Tree,NewTree),insertList(T,NewTree,N).

my_max([], R, R). %end
my_max([X|Xs], WK, R):- X >  WK, my_max(Xs, X, R). %WK is Carry about
my_max([X|Xs], WK, R):- X =< WK, my_max(Xs, WK, R).
my_max([X|Xs], R):- my_max(Xs, X, R). %start


heap_sort([],_, _,_,Tree).
heap_sort(Tree,Length, Pos, NewTree, Out):-
  Pos > 1,
  my_max(Tree, 1, W),
  delete(Tree, W, TTree),
  append(NewTree, [W], X),
  length(NewTree, N),
  P is Pos +1,
  heap_sort(TTree, N, P, X, X).
  %Pos is Pos + 1.
  %heap_sort(Tree, X, Pos, Out).

heap_sort(Tree, Lenght, Pos, NewTree, Out) :-
  Pos =< 1,
  P is Pos + 1,
  length(Tree, N),
  heap_sort(Tree, N, P, X, Out).


%delete_min([_|T], 0, T).
%delete_min()
