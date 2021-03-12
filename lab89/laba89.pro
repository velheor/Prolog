domains
	list = integer*
	sum = integer
	mult = integer
predicates
	readList(list)
	sum_list(list, sum)
	mult_list(list, mult)
	bubblesort(list, list)
	swap(list, list)
clauses
	readList([H|T]) :- write("Input element: "), readint(H), !, readList(T).
	readList([]).
	
	sum_list([],0).
	sum_list([H|T], Sum):- sum_list(T, Sum1), Sum = H + Sum1. 
	
	mult_list([],1).
	mult_list([H|T], Mult):- mult_list(T, Mult1), Mult = H * Mult1.
	
	swap([X, Y|List], [Y, X|List]):- X > Y, !.
	swap([X|List], [X|List1]):- swap(List, List1).
	
	bubblesort(InputList, SortList):- swap(InputList, List), !, bubblesort(List, SortList).
	bubblesort(SortList, SortList).
 
goal
	readList(Numbers), 
	sum_list(Numbers, Sum),
	mult_list(Numbers, Mult),
	bubblesort(Numbers, SortList), nl.
