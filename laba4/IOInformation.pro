predicates
	university(string, string, string, integer, integer)
clauses
	university(vlad, atsman, math, 3, 181001).
	university(nikita, demb, fiz, 2, 182301).
	university(ivan, ivanov, his, 1, 123009).
	university(dima, dimanov, law, 2, 191000).
	university(kirill, kirillov, phi, 4, 102000).
	university(denis, denisov, med, 5, 137228).
goal
	write("Enter faculty "), readln(C), nl, university(A, B, C, D, E).

