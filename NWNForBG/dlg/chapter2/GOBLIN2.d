// �������� ������, ������ �������� � ����� - ������

BEGIN ~GOBLIN2~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(2,1)~ THEN BEGIN 0 // from:
  SAY ~�� �������, �� �� ��������� � �����. ��� ��� ��� �� �������, ���. �� ������ � ������.~
  IF ~~ THEN EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(2,2)~ THEN BEGIN 1 // from:
  SAY ~���� �� ������� ����, ���� <RACE>. �������� � �����.~
  IF ~~ THEN EXIT
END
