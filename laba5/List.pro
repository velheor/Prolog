domains
	intlist=integer* 
predicates
	readList(intlist)
	plus(intlist,intlist)
 
clauses
	readList([X|T]) :- write("Input element: "), readint(X), !, readList(T).
	readList([]).
	plus([],[]).
	plus([X|Xs],[Y|Ys]):- Y = X + 1, plus(Xs,Ys).
 
goal
	readList(Numbers), plus(Numbers, A).