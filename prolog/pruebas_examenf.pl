height(empty,0).

leftRotation(node(APadre,PadreLeft,node(APivote,PivotLeft,PivoteRight)),node(APivote,PadreLeft,node(APadre,PivotLeft,PivoteRight))).
il(node(P,PLeft,PRight),N):-leftRotation(PLeft,LeftR).

insert(A,empty,node(A,empty,empty)).
insert(A,node(I,L,R),Out):-I>A,insert(A,L,NewL),balance(node(I, NewL, R), Out).
insert(A,node(I,L,R),Out):-I<A,insert(A,R,NewR),balance(node(I,L,NewR), Out).

balance(_, empty).
balance(node(I,node(L, _, _),node(R, _, _)),NewTree):- (I<L; I<R) , il(node(I,L,R),NewTree).
balance(node(I,L,R),NewTree):- L<I , il(node(I,L,R),NewTree).


insertList([],Tree,Tree).
insertList([H|T],Tree,N):-insert(H,Tree,NewTree),insertList(T,NewTree,N).
