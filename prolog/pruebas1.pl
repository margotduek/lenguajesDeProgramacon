insert(A,empty,node(A,empty,empty)).
insert(A,node(I,node(L, LX, LY),R),Out):-
  I > A,
  %I < L,
  insert(A,L,NewL),
  balance(node(I, node(L, LX, LY),node(R, RX, RY)), node(L, node(I, LX, LY), R)).
/*
insert(A,node(I,L,R),Out):-
  I > A,
  %I > L,
  insert(A,L,NewL),
  balance(I,node(L, LX, LY),R, node(L, LX, LY)).
*/

insert(A,node(I,node(L, LX, LY),node(R, RX, RY)),Out):-
  I < A,
  %I < R,
  insert(A,R,NewR),
  balance(node(I,L,node(R, RX, RY)), node(R, L, node(I, RX, RY))).

/*
insert(A,node(I,L,R),Out):-
  I < A,
  %I > R,
  insert(A,R,NewR),
  balance(node(I,L,node(R, RX, RY)), node(R, RX, RY)).
*/

my_max([], R, R). %end
my_max([X|Xs], WK, R):- X >  WK, my_max(Xs, X, R). %WK is Carry about
my_max([X|Xs], WK, R):- X =< WK, my_max(Xs, WK, R).
my_max([X|Xs], R):- my_max(Xs, X, R). %start


insertList([],Tree,Tree).
insertList([H|T],Tree,N):-insert(H,Tree,NewTree),insertList(T,NewTree,N).

balance(node(_,empty, empty), _).
