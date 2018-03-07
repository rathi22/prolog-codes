cc(0,[],[]).
cc(Amt,[_|L],[0|Ans]):-
    cc(Amt,L,Ans).
cc(Amt,[X|L],[Y|L1]):-
    Amt >= X, Amt1 is Amt-X, cc(Amt1,[X|L],[Y1|L1]), Y is Y1+1.
