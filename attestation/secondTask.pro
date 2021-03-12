include "attestation.inc"

predicates
	f(real)
clauses
	f(X) :-	X <= -1, Z = -2*(X + 1), write(Z), !;
		X > -1, X < 0, Z = (X + 1) * (X+1) * (X + 1), write(Z), !;
		X >= 0, Z = X, write(Z).
goal
	write("Input number: "), readreal(X), nl, write("Answer is "), f(X), nl.