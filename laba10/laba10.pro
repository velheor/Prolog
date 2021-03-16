global facts

	positive_answer(symbol, symbol)
	negative_answer(symbol, symbol)

predicates
	start
	question(symbol, symbol)
	mushroom(symbol)
	positive(symbol,symbol)
	negative(symbol, symbol)
	del_facts
	remember(symbol, symbol, symbol)

clauses
	mushroom(borovik) if
		positive(mozhno_li_est, siedobnyj),
		positive(semejstvo, boletovye),
		positive(shlyapka, tyomno_korichnevyj),
		positive(les, dubovyj),
		positive(les, grabovyj),!.

	mushroom(muhomor) if
		positive(mozhno_li_est, nesiedobnyj),
		positive(semejstvo, amanitovye),
		positive(shlyapka, krasnaya),
		positive(les, smeshannyj),
		positive(les, hvojnyj),!.

	mushroom(lisichka) if
		positive(mozhno_li_est, siedobnyj),
		positive(semejstvo, lisichkovye),
		positive(shlyapka, oranzhevaya),
		positive(les, hvojnyj),
		positive(les, listvennyj),!.

	mushroom(syroezhka) if
		positive(mozhno_li_est, siedobnyj),
		positive(semejstvo, syroezhkovye),
		positive(shlyapka, rozovaya),
	positive(les, listvennyj),
	positive(les, smeshannyj),!.

	mushroom(poganka) if
		positive(mozhno_li_est, nesiedobnyj),
		positive(semejstvo, amanitovye),
		positive(shlyapka, seraya),
		positive(les, listvennyj),
		positive(les, smeshannyj),!.

	positive(X,Y) if positive_answer(X,Y),!.
	
	positive(X,Y) if not(negative(X,Y)),! and question(X,Y).
	
	negative(X,Y) if negative_answer(X,Y),!.

	question(X,Y):- write("Vopros: ",X," ",Y,"?\n"), readln(Reply), remember(X,Y,Reply).
	
	remember(X,Y,y):- asserta(positive_answer(X,Y)).
	
	remember(X,Y,n):- asserta(negative_answer(X,Y)),fail.
	
	del_facts:- retract(positive_answer(_,_)),fail.
	
	del_facts:- retract(negative_answer(_,_)), fail.
	
	del_facts:- write("\n\nNazhmite probel dlya zaversheniya"), readchar(_).

	start:-
		mushroom(X),!,
		write("\nEtot grib mozhet byt' ", X),
		nl,nl,del_facts.
	start:- write("\nNevozmozhno opredelit' kakoj eto grib.\n\n"), del_facts.
goal
start.