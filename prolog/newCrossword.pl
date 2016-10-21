word(astante,a, s, t, a, n, t, e).
word(astoria ,a ,s , t, o, r, i, a).
word(baratto, b, a, r, a, t, t, o).
word(cobalto, c, o, b, a, l, t, o).
word(pistola, p, i, s, t, o, l, a).
word(statale, s, t, a, t, a, l, e).

crossword(H1, H2, H3, V1, V2, V3) :- word(H1, _, H12, _, H14, _, H16, _),
                                     word(H2, _, H22, _, H24, _, H26, _),
                                     word(H3, _, H32, _, H34, _, H36, _),
                                     word(V1, _, H12, _, H22, _, H32, _),
                                     word(V2, _, H14, _, H24, _, H34, _),
                                     word(V3, _, H16, _, H26, _, H36, _),
                                     H1 \= H2, H1 \= H3, H1 \= V1, H1 \= V2, H1 \= V3,
                                     H2 \= V1, H2 \= V2, H2 \= V3, H2 \= H3,
                                     V1 \= V2, V1 \= V3, V1 \= H3,
                                     V2 \= V3,
                                     V3 \= H3.


%inList(x, [x|_]).
%inList(x, [_|T]):- inList(X,T).

%! Imprimir la posicion en la lista en la que se encuentra la coincidencia
inList(X, [X|_], Cont, Z):- Z is Cont.
inList(X, [_|T], Cont, Z):- inList(X, T, Cont+1, Z).
inList(3,[1,2,3],0,Z).
%cual(X, Lista, Cont) :-inList(X, Lista, 0).


natural(0).
natural(N):- natural(S), N is S+1.


nat(0,0).
nat(suc(X), N):- nat(X, S), N is S+1.

dlength([], 0).
dlength([_|T], Size):- dlength(T, S), Size is S + 1.

myAppend([], L, L).
myAppend([H|T], L, [H|R]) :- myAppend(T,L,R).


  delete(_,[],[]).
  delete(X, [H|T], Sol) :- delete(X, T, Sol).
  delete(X, [H|T], [H|T2]) :- X\=H, delete(X, T, T2).
  %delete(X, [H|T], Sol) :- X=:=H, delete(X, T, Sol).
  %delete (X, [H|T], [H|T2]) :- X\=H, delete(X, T, T2).
