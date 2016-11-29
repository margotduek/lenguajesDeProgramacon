insert(A,empty,node(A,empty,empty)).
insert(A,node(I,L,R),Out):-I>A,insert(A,L,NewL),balance(node(I, NewL, R), Out).
insert(A,node(I,L,R),Out):-I<A,insert(A,R,NewR),balance(node(I,L,NewR), Out).

insertList([],Tree,Tree).
insertList([H|T],Tree,N):-insert(H,Tree,NewTree),insertList(T,NewTree,N).

balance(node(_,empty, empty), _).
balance(node(I,node(L, LX, LY),R), Tree):-
  I < L,
  balance(node(L, node(I, LX, LY), R),Tree).
balance(node(I,node(L, LX, LY),R), Tree):-
  I > L,
  balance(node(L, LX, LY), Tree).

balance(node(I,L,node(R, RX, RY)), Tree):-
  I < R,
  balance(node(R, L, node(I, RX, RY)), Tree).
balance(node(I,L,node(R, RX, RY)), Tree):-
  I > R,
  balance(node(R, RX, RY), Tree).
