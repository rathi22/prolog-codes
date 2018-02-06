is_prime(2).
is_prime(3).
is_prime(P):-
    integer(P), P > 3, P mod 2 =\= 0, \+ has_factor(P,3).
has_factor(N,L) :-
    N mod L =:= 0.
has_factor(N,L) :-
    L * L < N, L2 is L + 2, has_factor(N,L2).
tolist(X,[X]):-
    X<10,!.
tolist(X,L):-
    Y is X mod 10,
    Z is X // 10,
    tolist(Z,L1),
    append(L1,[Y],L).
rotate([X|L1],L2):-
    append(L1,[X],L2).
toNum([X],X):-!.
toNum([X|L],Y):-
    toNum(L,Z),
    Y is Z*10+X.
solve(_,0):-!.
solve(L,N):-
    reverse(L,L1),
    toNum(L1,X),
    is_prime(X),
    rotate(L,L2),
    N1 is N-1,
    solve(L2,N1).
is_cp(X):-
    tolist(X,L),
    length(L,N),
    solve(L,N).
prv(N1,N1):-
	is_cp(N1).
prv(N1,N2):-
    N3 is N1-1,
    prv(N3,N2).
