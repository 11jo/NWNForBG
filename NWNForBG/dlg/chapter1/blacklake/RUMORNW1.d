BEGIN ~RUMORNW1~

IF WEIGHT #1 /* Triggers after states #: 6 even though they appear after this state */
~  RandomNum(7,1)
~ THEN BEGIN 0 // from:
  SAY ~��� ����� ������� � ���������� ������� � ����� ���������. ��� �� �������� ������������� ��� � ���������� �����, �� ������, ��� ����� ������� �����������.~
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 6 even though they appear after this state */
~  RandomNum(7,2)
~ THEN BEGIN 1 // from:
  SAY ~������ ���� ������, ����� ���� ������, ��� ������ �������� � ��������� ����������� �������, ����� ��������� ������� � ���� ����� ����� �����.~
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 6 even though they appear after this state */
~  RandomNum(7,3)GlobalLT("AnimalsRescued","GLOBAL",5)
~ THEN BEGIN 2 // from:
  SAY ~������� � ��� ������� �������� �����-�� ����� �� ������ ������ � �������� ���������� ��������. ��� ������ ��������, ����������, �������� ����� ���������� ����� ��� � ��� ���.~
  IF ~~ THEN EXIT
END

IF WEIGHT #4 /* Triggers after states #: 6 even though they appear after this state */
~  RandomNum(7,3)GlobalGT("AnimalsRescued","GLOBAL",4)
~ THEN BEGIN 2 // from:
  SAY ~������� �����-�� ����� �� ��������� ������ ���������� � ���������� ���� �������� �� ��������.~
  IF ~~ THEN EXIT
END

IF WEIGHT #5 /* Triggers after states #: 6 even though they appear after this state */
~  RandomNum(7,4)
Global("BlackLakeDone","GLOBAL",0)
~ THEN BEGIN 3 // from:
  SAY ~������� ���� ������ ������, ������� ������� �� ������. ��� ���, ����� �����, ��� �� ��� �������� ������� � ���� � �������.~
  IF ~~ THEN EXIT
END

IF WEIGHT #6 /* Triggers after states #: 6 even though they appear after this state */
~  RandomNum(7,4)
GlobalGT("BlackLakeDone","GLOBAL",0)
~ THEN BEGIN 3 // from:
  SAY ~����� �����, ��� ������ �������� ������� � ���� � ������� ������  � �������� ��������� ��. ��� �����-�� ����� �� ��������� ������� � �������� ��� �� ������ �����.~
  IF ~~ THEN EXIT
END

IF WEIGHT #7 /* Triggers after states #: 6 even though they appear after this state */
~  RandomNum(7,5)
~ THEN BEGIN 4 // from:
  SAY ~�������, � ����� �� ����� � ����� ������ ���� �������� ������ � ������� �������, �� � ����� �� ����.~
  IF ~~ THEN EXIT
END

IF WEIGHT #8 /* Triggers after states #: 6 even though they appear after this state */
~  RandomNum(7,6)
~ THEN BEGIN 5 // from:
  SAY ~�����������, ��������� �������� ���� � ��������� ���-�� ������ �������� ���� �����, � ������ ��� ������ �����.~
  IF ~~ THEN EXIT
END

IF WEIGHT #9 ~  RandomNum(7,7)
!Dead("Formosa")
GlobalLT("FormosaQuest","GLOBAL",2)
~ THEN BEGIN 6 // from:
  SAY ~�������� � �������� �� ������� � �������, ���� ����� ��� �����������, ����, �������, ��� ����� ��������� ����� ��������� ������������. ��������� � ����� ���������� �� ������� �� �����.~
  IF ~~ THEN EXIT
END

IF WEIGHT #10 ~  RandomNum(7,7)
OR(2)Dead("Meldanen")
GlobalGT("FormosaQuest","GLOBAL",1)
!Dead("Formosa")
~ THEN BEGIN 6 // from:
  SAY ~������� �� ��� �������� ����� �� �������. ���-�� ����������� � ���� �������� ����������, ������� ������ � ������ ���� �����.~
  IF ~~ THEN EXIT
END

IF WEIGHT #11 ~  RandomNum(7,7)
Dead("Formosa")
~ THEN BEGIN 6 // from:
  SAY ~�� ���, ������� �����������. ��� ��������� ����� ������������ � ����������, � ������ ���� ������.~
  IF ~~ THEN EXIT
END
