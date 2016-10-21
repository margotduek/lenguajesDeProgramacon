fibo(0, _, _).
fibo(Cont, N, Next) :- C is Cont -1, Num is Next, Nex is N + Next, write(N), write(" "), fibo(C, Num, Nex).

%Hay que hacer Hanoi
