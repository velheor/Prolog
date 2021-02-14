predicates
%встроенный рекурсивный предикат, рисующий линию
line(integer L)
%определение предикатов для вывода текста с различной информацией: ФИО, курс, группа
text1
text2
text3
clauses
%если длина равна нулю, то конец
line(0):-!.
%если длина не равна нулю, то вычитаем 1 и т.д - пример рекурсии
line(L):-write('*'),K=L-1,line(K).

%вывод ФИО
text1:-write("\n\t Atsman Vladislav Vladimirovich").
%вывод другой информации
text2:-write("\n Age: \t\t 20 years"),
write("\n Sex: \t\t Male"),
write("\n Employment: \t student 3 course GRsU").
text3:-write("\n Group:\t\t POIT-182"),
write("\n Course:\t\t Basics of Declarative Programming"),
write("\n Accumulate:\t Mathematics and information"),
write("\n Specialty:\t programmist").

goal
% длина линий 100 звездочек
Lk=100
,line(Lk)%линия
,text1
,nl
,line(Lk)
,nl
,text2
,text3
,nl
,line(Lk)
,nl.