include "arithmetictask.inc"

predicates
	nondeterm belongsToCircle(integer, integer)
clauses
	belongsToCircle(X,Y) :- 
		X * X + Y * Y <= 1, Y + X >= 0, write("belongs").
	belongsToCircle(X,Y) :- 
		X * X + Y * Y <= 1, Y + X < 0, write("not belongs").
	belongsToCircle(X,Y) :- 
		X * X + Y * Y > 1,  write("not belongs").
goal
	readint(X), readint(Y), belongsToCircle(X, Y), nl.