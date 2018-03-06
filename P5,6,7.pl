same([],[]).
same([X|L],[X|L]).

myrev(L1,L2):-
    rev(L1,L2,[]).
rev(L,[],L).
rev(L1,[X|L2],L3):-
    rev(L1,L2,[X|L3]),!.

palin(L1):-
    myrev(L2,L1), same(L1,L2).
