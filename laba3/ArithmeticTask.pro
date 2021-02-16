predicates
	sumOrMultiple(integer, integer)
clauses
	sumOrMultiple(X,Y) :- 
		X > Y, Z = abs(X) + abs(Y), write(Z, " "), fail;
		X < Y, Z = X * Y, write(Z, " ").
goal
	readint(X), readint(Y), nl, sumOrMultiple(X, Y).

