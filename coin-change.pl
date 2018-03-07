cc(0,[],[]).
cc(Amt,[_|L],[0|Ans]):-
    cc(Amt,L,Ans).
cc(Amt,[X|L],[Y|L1]):-
    Amt >= X, Amt1 is Amt-X, cc(Amt1,[X|L],[Y1|L1]), Y is Y1+1.

nways(0,_,1).
nways(Amt,_,0):- Amt<0,!.
nways(Amt,[],0):- Amt>0,!.
nways(Amt,[X|L],Ans):-
    Amt>0, nways(Amt,L,Ans1), Amt1 is Amt-X, nways(Amt1,[X|L],Ans2), Ans is Ans1+Ans2.
