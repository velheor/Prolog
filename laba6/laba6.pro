domains	
	file = text_input_file
	line = string
	result = integer
predicates
	file_to_line(file, line)
	result_to_file(file, result)
	nondeterm last(char, string, integer, integer)
clauses
	file_to_line(File, Line):- readln(Line).
	result_to_file(File, X):- write(X).
	last(_, "" , _, 0).
	last(Item,String,No,No):- frontchar(String, Item, Else), NextNo = No + 1, last(Item, Else, NextNo, N), N=0, !.
	last(Item,String,No,N):- frontchar(String, _, Else), NextNo = No + 1, last(Item, Else, NextNo, N).
goal
	FileName = "G:/third/prolog/Prolog/laba6/input.txt",
	openread(text_input_file, FileName), !, readdevice(text_input_file), 
	file_to_line(text_input_file, Line),
	closefile(text_input_file), 
	last('b', Line, 1, X),
	FileOutputName = "G:/third/prolog/Prolog/laba6/output.txt",
	openwrite(text_input_file, FileOutputName), !,
	writedevice(text_input_file), result_to_file(text_input_file, X), closefile(text_input_file).