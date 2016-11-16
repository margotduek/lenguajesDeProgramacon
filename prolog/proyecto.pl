height(empty,0).

height(node(_,Left,Right),Sol):-height(Left,SL),height(Right,SR),Sol is max(SL,SR)+1.

factor(node(_,Left,Right),Sol):-height(Left,L),height(Right,R),Sol is L-R.

leftRotation(node(APadre,PadreLeft,node(APivote,PivotLeft,PivoteRight)),node(APivote,node(APadre,PadreLeft,PivotLeft),PivoteRight)).

rightRotation(node(APadre,node(APivote,PivotLeft,PivoteRight),PadreRight),node(APivote,PivotLeft,node(APadre,PadreRight,PivoteRight))).


%Hay 4 posibilidades de detete
% hoja -> simplemente se borra
% Padre -> se borra y se pone el hijo en el abuelo
%padre de 2  -> se borra se pega el hijo de la izquierda en el abuelo y otro hijo en el hermano y luego se balancea
% root -> se le pone el más grande de la izquierda o el más chico de la derecha

%delete(node(_, _, _)).
%delete(node(X,node(Left, Lx, Ly), node(Right, Rx, Ry)), X , Out):-
%delete(node(X, node(Left, Lx, Ly), empty), X, Out) :- Out is node(X, Lx, Ly).

% First case, delete a lief
delete(node(X, empty, empty), X, empty).

%second case, delete a parent of one child
delete(node(X, node(Y, Left, Right), empty), X, node(Y, Left, Right )).
%delete(node(7, empty, node( 10, node(11, empty, empty), empty)), 10, B).

%third case, delete a parent of one small number child
%delete(node(X,empty, node(Y, Left, Right)), X, node(Y, Left, Right )).
% delete(node(7, node( 5, node(6, empty, empty), empty), empty), 5, B).

%third case


delete(node(X, node(Left, Lx, Ly), R), Key, node(X, Out, R)):-
  X > Key,
  delete(node(Left, Lx, Ly) ,Key , Out).

delete(node(X, L, node(Right, Rx, Ry)), Key, node(X, L, Out)):-
  X < Key,
  delete(node(Right, Rx, Ry), Key, Out).



%deleteb(node(APadre, node(_, Left, Right), _), node(APadre, Left, Right )).
%delete(node(APadre, node(_, Left, Right), _), node(node(APadre, _, _), node(Left, _, _), node(Right,_, _))).


%detele(node(_, APadre, _), node())
%delete(node(APadre, Left, Right), )
%delete(node(_, Left, Right), APadre, PivotLeft, node(APadre, Left, Right )).



%leftRotation(node(7,node(6,empty,empty),node(9,node(8,empty,empty),node(10,empty,node(11,empty,empty)))),N).
%delete(node(7, node( 9, node(8, empty, empty),node(10, empty, empty)), N), A).
