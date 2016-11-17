height(empty,0).

height(node(_,Left,Right),Sol):-height(Left,SL),height(Right,SR),Sol is max(SL,SR)+1.

factor(node(_,Left,Right),Sol):-height(Left,L),height(Right,R),Sol is L-R.

leftRotation(node(APadre,PadreLeft,node(APivote,PivotLeft,PivoteRight)),node(APivote,node(APadre,PadreLeft,PivotLeft),PivoteRight)).
% rightRotation(node(APadre,node(APivote,PivotLeft,PivoteRight),PadreRight),node(APivote,PivotLeft,node(APadre,PadreRight,PivoteRight))).
rightRotation(node(F,node(P,PL,PR),FR),node(P,PL,node(F,PR,FR))).
rightLeft(node(P,PLeft,PRight),N):-leftRotation(PLeft,LeftR),rightRotation(node(P,LeftR,PRight),N).
leftRight(node(P,Pleft,PRight),N):-rightRotation(PRight,RightR), leftRotation(node(P,Pleft,RightR),N).

insert(A,empty,node(A,empty,empty)).
insert(A,node(I,L,R),Out):-I>A,insert(A,L,NewL),balance(node(I, NewL, R), Out).
insert(A,node(I,L,R),Out):-I<A,insert(A,R,NewR),balance(node(I,L,NewR), Out).


balance(empty, empty).

balance(node(I,L,R),NewTree):-factor(node(I,L,R),Fac),2=:=Fac,factor(L,Left),-1=:=Left,rightLeft(node(I,L,R),NewTree).
balance(node(I,L,R),NewTree):-factor(node(I,L,R),Fac),2=:=Fac,rightRotation(node(I,L,R),NewTree).

balance(node(I,L,R),NewTree):-factor(node(I,L,R),Fac),-2=:=Fac,factor(R,Right),1=:=Right,leftRight(node(I,L,R),NewTree).
balance(node(I,L,R),NewTree):-factor(node(I,L,R),Fac),-2=:=Fac,leftRotation(node(I,L,R),NewTree).

balance(node(I,L,R),node(I,L,R)) :- factor(node(I,L,R),Fac),2\=Fac,-2\=Fac.


insertList([],Tree,Tree).
insertList([H|T],Tree,N):-insert(H,Tree,NewTree),insertList(T,NewTree,N).


insertAVL([H|T],Tree):-insertList(T,node(H,empty,empty),Tree).

inorder(empty,[]).
inorder(node(A,L,R),List):-inorder(L,LeftList),append(LeftList,[A|RightList],List),write(A),inorder(R,RightList).

% First case, delete a lief
delete(node(X, empty, empty), X, empty).

%second case, delete a parent of one child
delete(node(X, node(Y, Left, Right), empty), X, node(Y, Left, Right )).
%delete(node(7, empty, node( 10, node(11, empty, empty), empty)), 10, B).

%third case, delete a parent of one small number child
%delete(node(X,empty, node(Y, Left, Right)), X, node(Y, Left, Right )).
% delete(node(7, node( 5, node(6, empty, empty), empty), empty), 5, B).

%third case, father of two childs
%delete(node(X, node(Y, YLeft, YRight), node(Z, _, _)), X, node(Y, node(YLeft, YRight, empty), Z )).
%delete(node(X, node(Y, YLeft, _), node(Z, ZLeft, ZRight)), X, node(Y, YLeft, node(Z, ZLeft, ZRight ))).
delete(node(X, node(Y, YLeft, YRight), node(Z, ZLeft, ZRight)), X, node(Y, node(YLeft, YRight, empty), node(Z, ZLeft, ZRight ))).



delete(node(X, node(Left, Lx, Ly), R), Key, node(X, Out, R)):-
  X > Key,
  delete(node(Left, Lx, Ly) ,Key , Out).

delete(node(X, L, node(Right, Rx, Ry)), Key, node(X, L, Out)):-
  X < Key,
  delete(node(Right, Rx, Ry), Key, Out).




%leftRotation(node(7,node(6,empty,empty),node(9,node(8,empty,empty),node(10,empty,node(11,empty,empty)))),N).
%delete(node(4, node(2, node(1, empty, empty), node(3, empty, empty)), node(6, node(5, empty, empty), node(8, node(7, empty, empty), node(9, empty, empty)))), 7, B).
