sset(M,N,[],1):- N=0,M=0,!.
sset(_,_,[],0):-!.
sset(M,N,[X|L],Ans):-
    X>N,sset(M,N,L,Ans),!.
sset(M,N,[X|L],Ans):-
    sset(M,N,L,Ans1),
    N1 is N-X,
    M1 is M-1,
    sset(M1,N1,L,Ans2),
    Ans is Ans1+Ans2.
