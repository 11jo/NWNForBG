// ������ �������� ������� ��������

BEGIN ~2207GUAR~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalLT("KnowsAboutMatch","GLOBAL",4)~ THEN BEGIN 0 // from:
  SAY ~�����������. � ���� ����� �� ������ ������� ��� ���� ������ �� �����. ������ � �������� ����� �������� �����.~
  IF ~~ THEN EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("KnowsAboutMatch","GLOBAL",3)GlobalLT("KnowsAboutMatch","GLOBAL",7)~ THEN BEGIN 1 // from:
  SAY ~���������� ��� � �������, <LADYLORD>.~
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("KnowsAboutMatch","GLOBAL",6)~ THEN BEGIN 2 // from:
  SAY ~�� ���������������. ���� ���� ��������� �������� ���������� ��������.~
  IF ~~ THEN EXIT
END

