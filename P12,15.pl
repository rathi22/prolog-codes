getlist(0,_,[]):- !.
getlist(X,Y,[Y|L]):- X1 is X-1, getlist(X1,Y,L).
uncompress([],[]).
uncompress([[X,Y]|L],L1):-
    uncompress(L,L2),
	getlist(X,Y,L3),
    append(L3,L2,L1),!.
uncompress([X|L],[X|L1]):-
    uncompress(L,L1).

rep(0,_,[]).
rep(N,X,[X|L]):- N1 is N-1, rep(N1,X,L),!.
dupli([],_,[]).
dupli([X|L1],N,L2):-
    dupli(L1,N,L3), rep(N,X,Y), append(Y,L3,L2),!.
