// �������� ������, ������� ������� ������, ������� 1 ��������. ���� �������� ��������� ���� ���� ������, �� ������.
BEGIN ~MUTGUARD~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("KnowsAboutMatch","GLOBAL",3)GlobalLT("KnowsAboutMatch","GLOBAL",7)Global("Komplement","LOCALS",0)~ THEN BEGIN 0 // from:
  SAY ~���������� � �������, <LADYLORD>. ��� ������� ���������� ������ �����, �� ��� ���� ����������.~
  IF ~~ THEN DO ~SetGlobal("Komplement","LOCALS",0)~ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,1)~ THEN BEGIN 1 // from:
  SAY ~��� ������� ������� ������. � �� ����, �������� �� ��� ���� �������... �� ���� ���� ����� ���������� � ���������, �� ����� ������.~
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,2)~ THEN BEGIN 2 // from:
  SAY ~����� ���������� � ������� ������, <LADYLORD>. � ��������� ����� ��� ��������� ���� ������� ������.~
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,3)~ THEN BEGIN 3 // from:
  SAY ~������� �� �����, ����� ���������� � ��������� �������, <SIRMAAM>.~
  IF ~~ THEN EXIT
END

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(4,4)~ THEN BEGIN 4 // from:
  SAY ~��������, ����� � ���� �� ���� �������, <SIRMAAM>, ����� ��� �������� ��������� ��� �� �������.~
  IF ~~ THEN EXIT
END
