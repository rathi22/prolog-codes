none(_,[]).
none(X,[Y|L]):- X =\= Y, none(X,L), !.
once(X,[X|L]):- none(X,L),!.
once(X,[_|L]):- once(X,L).
    
twice(X,[X|L]):- once(X,L).
twice(X,[X|L]):- \+ once(X,L), twice(X,L).
twice(Y,[X|L]):- twice(Y,L), X =\= Y.
