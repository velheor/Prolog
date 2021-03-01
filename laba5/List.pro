domains
	i=integer*
predicates
	readList(i)
	zamena(integer, integer, i, i)
clauses
	readList([X|T]) :- write("Input element: "), readint(X), !, readList(T).
	readList([]).
	zamena(_, _, [], []):- !.
	zamena(Find, New, [Find|L], [New|L]):- !.
	zamena(Find, New, [Y|L],[Y|L1]):- Find<>Y, zamena(Find,New,L,L1).
 
goal
	readList(Numbers),
	write("Enter first number: "), readint(Find), nl, 
	write("Enter second number: "), readint(New), nl,
	zamena(Find, New, Numbers, L).