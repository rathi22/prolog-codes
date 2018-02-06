tolist(X,[X]):-
    X<10,!.
tolist(X,L):-
    Y is X mod 10,
    Z is X // 10,
    tolist(Z,L1),
    append(L1,[Y],L).
grt([],[],[]).
grt([X|L1],[Y|_],[X|L1]):-
    X>Y,!.
grt([X|_],[Y|L1],[Y|L1]):-
    Y>X,!.
grt([X|L1],[X|L2],[X|L]):-
    grt(L1,L2,L).
rotate([X|L1],L2):-
    append(L1,[X],L2).
solve(L,L,1):-!.
solve(L1,A1,X):-
    rotate(L1,L2),
    X1 is X-1,
    solve(L2,A2,X1),
    grt(L1,A2,A1).
toNum([X],X):-!.
toNum([X|L],Y):-
    toNum(L,Z),
    Y is Z*10+X.
maxNum(N,Ans):-
    tolist(N,L),
    length(L,X),
    solve(L,A,X),
    reverse(A,A2),
    toNum(A2,Ans).
