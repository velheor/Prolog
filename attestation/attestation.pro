domains
Name = alesha; borya; vitya
Car = bus; train; ebus

predicates
person(Name)
car(Car)
is(Name,Car)
answer(Name, Car, Name, Car, Name, Car)

clauses
person(alesha).
person(borya).
person(vitya).

car(bus).
car(train).
car(ebus).

is(X,Y):- person(X), X=alesha, car(Y),
	not (Y=bus), not (Y=ebus).
	
is(X,Y):- person(X), X=borya, car(Y),
	not (Y=train), not (Y=ebus).
	
is(X,Y):- person(X), X=vitya, car(Y),
	not (Y=bus), not (Y=train).

answer(X1, Y1, X2, Y2, X3, Y3):- 
	X1=alesha, is(X1,Y1), X2=borya, is(X2,Y2),
	X3=vitya, is(X3,Y3),
	not(Y1=Y2), not(Y2=Y3), not(Y1=Y3).

goal
answer(X1, Y1, X2, Y2, X3, Y3).