sort([], []).
sort([H|T] , [OH|OT]) :- sort(T, min([H|T])).



min([], _).
min(D, 99):- min(D, 99).
min([H|T], Min):- H < Min, min([H|T], H).
min([H|T], Min):- Min < H, min([H|T], Min).




isBucket(_, _, []).
isBucket(Min, Max, [H|T]):- H =< Max, H >= Min, isBucket(Min, Max, T).
bucketSort(isBucket(_, _, []), isBucket(_, _, []), []).
bucketSort(isBucket(A, B, [H|R]), isBucket(C, D, List), [H|T]):- H >= A, H =< B, bucketSort(isBucket(A, B, R), isBucket(C,D,List), T).
bucketSort(isBucket(A, B, List), isBucket(C, D, [H|R]), [H|T]):- H =< D, H >= C, bucketSort(isBucket(A, B, List), isBucket(C, D, R), T).
