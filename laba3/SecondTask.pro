include "arithmetictask.inc"

predicates
	nondeterm belongsToCircle(real, real)
clauses
	belongsToCircle(X,Y) :- 
		X * X + Y * Y <= 1, Y + X >= 0, write("belongs"), !; write("not belongs").
goal
	write("Enter X "), readreal(X), write("Enter Y "), readreal(Y), belongsToCircle(X, Y), nl.