domains
Name = kuznetsov; tokarev; slesarev; rezchikov
Ocupation = kuznets; tokar; slesar; rezchik

predicates
person(Name)
job(Ocupation)
is(Name,Ocupation)
answer(Name, Ocupation, Name, Ocupation, Name, Ocupation, Name, Ocupation)

clauses
person(kuznetsov).
person(tokarev).
person(slesarev).
person(rezchikov).

job(kuznets).
job(tokar).
job(slesar).
job(rezchik).

is(X,Y):- person(X), X=kuznetsov, job(Y),
	not (Y=kuznets), not (Y=slesar),
	not (Y=rezchik).
is(X,Y):- person(X), X=tokarev, job(Y),
	not (Y=tokar), not (Y=kuznets),
	not (Y=rezchik).
is(X,Y):- person(X), X=rezchikov, job(Y),
	not (Y=rezchik), not (Y=tokar),
	not (Y=slesar).
is(X,Y):- person(X), X=slesarev, job(Y),
	not (Y=tokar), not (Y=slesar),
	not (Y=kuznets).

answer(X1, Y1, X2, Y2, X3, Y3, X4, Y4):- 
X1=kuznetsov, is(X1,Y1), X2=tokarev, is(X2,Y2),
X3=rezchikov, is(X3,Y3), X4=slesarev, is(X4,Y4),
not(Y1=Y2), not(Y2=Y3), not(Y3=Y4), not(Y1=Y3),
not(Y2=Y4), not(Y1=Y4).

goal
answer(X1, Y1, X2, Y2, X3, Y3, X4, Y4).