myrev(L1,L2):-
    rev(L1,L2,[]).
rev(L,[],L).
rev(L1,[X|L2],L3):-
    rev(L1,L2,[X|L3]),!.
