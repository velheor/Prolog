domains
Name = anna; masha; olya; flowers; sasha; misha; son(Name)

predicates
like(Name, Name)
love(Name, Name)
friend(Name,Name)
z1
z2
z3
z4
z5
z6
z7
z8

clauses
like(masha, flowers).
like(sasha,misha).
like(X, Z) :- love(X, Y), like(Y, Z).
love(anna, son(anna)).
love(son(anna), masha).
love(olya, X) :- love(anna, X).
friend(X,Z) :- like(X,Y), like(Y,Z).
friend(sasha,misha).
friend(misha,sasha).

z1 :- nl, like(son(anna), flowers),
write("Annes son likes colors. Yes ").
z1 :- nl, write("Are you happy with the colors? No. ").
z2 :- nl, love(anna, masha),
write("Anns loves Masha? Yes.").
z2 :- nl, write("Anns loves Masha? No. ").
z3 :- nl, write("Who likes colors? "),
like(X, flowers), write(X, ", "), fail.
z3 :- nl, write("Now not").
z4 :- nl, write("Who's love Olya? "),
like(olya, X), write (X, ", "), fail.
z4 :- nl, write ("Now not").
z5 :- nl, write ("Who loves Masha and colors "),
love(X, masha), like (X, flowers),
write (X,", " ), fail.
z5 :- nl, write ("Now not").
z6 :- nl, like(anna, flowers),
write("Does Ann love colors? Yes. ").
z6 :- nl, write ("Are you happy with the colors? Yes.? No. "), nl.
z7 :- nl, write ("Who's friend with Misha?"),
friend(X, misha),write(X,", misha").
z8 :- nl, friend(X, sasha),write(X, ", sasha").
goal
z1, nl, z2, nl, z3, nl, z4, nl, z5, nl, z6, nl, z7, nl,z8, nl.