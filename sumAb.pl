divsum(X,X,0):-!.
divsum(X,Y,Z):-
    X mod Y =:= 0,
    Y1 is Y+1,
	divsum(X,Y1,Z1),
    Z is Z1+Y,!.
divsum(X,Y,Z):-
    Y1 is Y+1,
    divsum(X,Y1,Z).
divsum(X,Z):-
    divsum(X,1,Z).
abundant(X):-
    divsum(X,Sum),
    Sum>X.
sumAb(N,N,0):-!.
sumAb(N,X,Z):-
    abundant(X),
    X1 is X+1,
    sumAb(N,X1,Z1),
    Z is Z1+X,!.
sumAb(N,X,Z):-
    X1 is X+1,
    sumAb(N,X1,Z).
sumAb(N,Ans):-
    sumAb(N,1,Ans).
