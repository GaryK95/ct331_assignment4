isElementInList(X,[X]).
isElementInList(X,[X,_]).
isElementInList(X, [_|T])
              :-isElementInList(X,T).


reverseList([], []). %Base case
reverseList([X], [X]).%List has one element
reverseList([X|Y], R):-
    reverseList(Y,T),append(T, [X], R).

insertElementIntoListEnd(X, [], [X]).
insertElementIntoListEnd(X,Y,Z):-append(Y,[X],Z).

mergeLists([X],[],[X]).
mergeLists([], [X], [X]).
mergeLists(X, Y, Z):-
    append(X, Y, Z).
