predicates
%���������� ����������� ��������, �������� �����
line(integer L)
%����������� ���������� ��� ������ ������ � ��������� �����������: ���, ����, ������
text1
text2
text3
clauses
%���� ����� ����� ����, �� �����
line(0):-!.
%���� ����� �� ����� ����, �� �������� 1 � �.� - ������ ��������
line(L):-write('*'),K=L-1,line(K).

%����� ���
text1:-write("\n\t Atsman Vladislav Vladimirovich").
%����� ������ ����������
text2:-write("\n Age: \t\t 20 years"),
write("\n Sex: \t\t Male"),
write("\n Employment: \t student 3 course GRsU").
text3:-write("\n Group:\t\t POIT-182"),
write("\n Course:\t\t Basics of Declarative Programming"),
write("\n Accumulate:\t Mathematics and information"),
write("\n Specialty:\t programmist").

goal
% ����� ����� 100 ���������
Lk=100
,line(Lk)%�����
,text1
,nl
,line(Lk)
,nl
,text2
,text3
,nl
,line(Lk)
,nl.