getlist(0,_,[]):- !.
getlist(X,Y,[Y|L]):- X1 is X-1, getlist(X1,Y,L).
uncompress([],[]).
uncompress([[X,Y]|L],L1):-
    uncompress(L,L2),
	getlist(X,Y,L3),
    append(L3,L2,L1),!.
uncompress([X|L],[X|L1]):-
    uncompress(L,L1).
