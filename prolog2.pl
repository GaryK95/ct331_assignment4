isElementInList(X,[X]).
isElementInList(X,[X,_]).
isElementInList(X, [_|T])
              :-isElementInList(X,T).

mergeLists([X],[],[X]).
mergeLists([], [X], [X]).
mergeLists([List1],List2,[List1|List2]).





reverseList([], []). %Base case
reverseList(X, X).%List has one element
reverseList([X|Y], L):-
    reverseList(Y,R),mergeLists([R],[X],L).

insertElementIntoListEnd(X, [], [X]).
insertElementIntoListEnd(X,Y,[X|Y]).

