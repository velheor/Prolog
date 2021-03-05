domains
	Day = mo; tu; we; th; fr; sa; su 
predicates
	week(integer, Day)
	getWeek(integer)
clauses
	week(1, mo).
	week(2, tu).
	week(3, we).
	week(4, th).
	week(5, fr).
	week(6, sa).
	week(7, su).
	
	getWeek(Answer) :- Answer >= 1, Answer <= 7, week(Answer, Day), write(Day), nl, !; write("wrong input").
	
goal
	write("Input day number: "), readint(Answer), getWeek(Answer).