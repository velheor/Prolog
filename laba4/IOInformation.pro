predicates
	university(string, string, string)
clauses
	university(vlad, atsman, math).
	university(nikita, demb, fiz).
	university(ivan, ivanov, his).
	university(dima, dimanov, law).
	university(kirill, kirillov, phi).
	university(denis, denisov, med).
goal
	readln(Z), nl, university(X,Y,Z).
