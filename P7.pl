myflatten([],[]).
myflatten([X|L1],[X|L]):- 
    \+ is_list(X), myflatten(L1,L),!.
myflatten([L1|L2],L):-
    is_list(L1), myflatten(L1,L4), myflatten(L2,L3), append(L4,L3,L),!.
