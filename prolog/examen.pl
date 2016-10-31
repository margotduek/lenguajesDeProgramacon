fibo(0, _, _).
fibo(Cont, N, Next) :- C is Cont -1, Num is Next, Nex is N + Next, write(N), write(" "), fibo(C, Num, Nex).

%Hay que hacer Hanoi
hanoi(1, Destino, _ ,[]):- append([1],Destino, Z), Destino = Z, write(Destino).
hanoi(Disco, Destino, [Origen|Tb], [Auxiliar|Tc]):- append([Disco],Destino, Z), Disco is Disco -1, hanoi(Disco, Tb, Tc, [Destino|Ta]).
hanoi(Disco, Destino, [Origen|Tb], [Auxiliar|Tc]):- Auxiliar\=[],append([Discoxx],Destino, Destino), Disco is Disco -1, hanoi(Disco, Tc, Tc, [Destino|Ta]).


remplaza(A,B,X,Y):- (X==A -> Y=B; Y = X).
