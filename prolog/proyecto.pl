height(empty,0).

height(node(_,Left,Right),Sol):-height(Left,SL),height(Right,SR),Sol is max(SL,SR)+1.

factor(node(_,Left,Right),Sol):-height(Left,L),height(Right,R),Sol is L-R.

leftRotation(node(APadre,PadreLeft,node(APivote,PivotLeft,PivoteRight)),node(APivote,node(APadre,PadreLeft,PivotLeft),PivoteRight)).

rightRotation(node(APadre,node(APivote,PivotLeft,PivoteRight),PadreRight),node(APivote,PivotLeft,node(APadre,PadreRight,PivoteRight))).


% First case, delete a lief
delete(node(X, empty, empty), X, empty).

%second case, delete a parent of one child
delete(node(X, node(Y, Left, Right), empty), X, node(Y, Left, Right )).
%delete(node(7, empty, node( 10, node(11, empty, empty), empty)), 10, B).

%third case, delete a parent of one small number child
%delete(node(X,empty, node(Y, Left, Right)), X, node(Y, Left, Right )).
% delete(node(7, node( 5, node(6, empty, empty), empty), empty), 5, B).

%third case, father of two childs
delete(node(X, node(Y, YLeft, YRight), node(Z, _, _)), X, node(Y, node(YLeft, YRight, empty), Z )).


delete(node(X, node(Left, Lx, Ly), R), Key, node(X, Out, R)):-
  X > Key,
  delete(node(Left, Lx, Ly) ,Key , Out).

delete(node(X, L, node(Right, Rx, Ry)), Key, node(X, L, Out)):-
  X < Key,
  delete(node(Right, Rx, Ry), Key, Out).




%leftRotation(node(7,node(6,empty,empty),node(9,node(8,empty,empty),node(10,empty,node(11,empty,empty)))),N).
%delete(node(4, node(2, node(1, empty, empty), node(3, empty, empty)), node(6, node(5, empty, empty), node(8, node(7, empty, empty), node(9, empty, empty)))), 7, B).
