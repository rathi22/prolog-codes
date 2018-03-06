compress([X],[X]).
compress([X|[X|L1]],L):- compress([X|L1],L),!.
compress([X|[Y|L1]],[X|L]):- compress([Y|L1],L). 

pack([X],[[X]]).
pack([X|[X|L1]],[[X|Y]|L2]):-
    pack([X|L1],[Y|L2]),!.
pack([X|[Y|L]],[[X]|L2]):-
    pack([Y|L],L2).

encode([X],[[1,X]]).
encode([X|[X|L]],[[Y1|L2]|L3]):-
    encode([X|L],[[Y|L2]|L3]), Y1 is Y+1, !.
    
encode([X|[Y|L]],[[1,X]|L1]):-
    encode([Y|L],L1).
