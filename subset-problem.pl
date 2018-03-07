sSet(_,0,[]):- !.
sSet([_|L],Sum,Ans):-
    sSet(L,Sum,Ans).
sSet([X|L],Sum,[X|Ans]):-
    Sum >= X, Sum1 is Sum-X, sSet(L,Sum1,Ans).
