domains
Name = ivanov; petrov; sidorov; grishin; alexeseev
Ocupation = malyar; melnik; plotnik; postalnon; parikhmaher

predicates
person(Name)
job(Ocupation)
is(Name,Ocupation)
answer(Name, Ocupation, Name, Ocupation, Name, Ocupation, Name, Ocupation, Name, Ocupation)

clauses
person(ivanov).
person(petrov).
person(sidorov).
person(grishin).
person(alexeseev).

job(malyar).
job(melnik).
job(plotnik).
job(postalnon).
job(parikhmaher).

is(X,Y):- person(X), X=ivanov, job(Y),
	not (Y=malyar), not (Y=melnik),
	not (Y=plotnik), not(Y=postalnon).
is(X,Y):- person(X), X=petrov, job(Y),
	not (Y=malyar), not (Y=melnik),
	not (Y=parikhmaher), not(Y=postalnon).
is(X,Y):- person(X), X=sidorov, job(Y),
	not (Y=malyar), not (Y=parikhmaher),
	not (Y=plotnik), not(Y=postalnon).
is(X,Y):- person(X), X=grishin, job(Y),
	not (Y=malyar), not (Y=melnik),
	not (Y=plotnik), not(Y=parikhmaher).
is(X,Y):- person(X), X=alexeseev, job(Y),
	not (Y=parikhmaher), not (Y=melnik),
	not (Y=plotnik), not(Y=postalnon).


answer(X1, Y1, X2, Y2, X3, Y3, X4, Y4, X5, Y5):- 
	X1=ivanov, is(X1,Y1), X2=petrov, is(X2,Y2),
	X3=sidorov, is(X3,Y3), X4=grishin, is(X4,Y4),
	X5=alexeseev, is(X5,Y5),
	not(Y1=Y2), not(Y2=Y3), not(Y3=Y4), not(Y1=Y3),
	not(Y2=Y4), not(Y1=Y4), not(Y1=Y5), not(Y2=Y5), not(Y3=Y5), not(Y4=Y5).

goal
answer(X1, Y1, X2, Y2, X3, Y3, X4, Y4, X5, Y5).