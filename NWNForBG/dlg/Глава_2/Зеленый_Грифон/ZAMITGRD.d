// �������� ������, ������� ������� ������, ������� 1 ������ �������. ��� �������-���� �������� ���, ����� ��� ������ ���������� �������� � ��� � ������� ����� � ��������.

BEGIN ~ZAMITGRD~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  InMyArea("Zamitra")!Dead("Zamitra")RandomNum(2,1)~ THEN BEGIN 0 // from:
  SAY ~� ���� ������ ������� �������! ������ ���������� � ���, ���� ������ ��� � ����������.~
  IF ~~ THEN EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~   InMyArea("Zamitra")!Dead("Zamitra")RandomNum(2,2)~ THEN BEGIN 1 // from:
  SAY ~����� ������, �������! �����, ������� ������� � ������� ���� ����� �������, �� �� � ����� ���!~ ~����� ������, �������! �����, ������� ������� � ������� ���� ����� �������, �� �� � ����� ���!~
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  !InMyArea("Zamitra")Global("SexWithZamitra","GLOBAL",1)Global("PlayerHasZgem","MYAREA",0)~ THEN BEGIN 12 // from:
  SAY ~�����, ����� ������� ����� ��������. ��� ������ ���������� �� ������ ����, ���� �����.~
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  !Dead("Zamitra")Global("PlayerHasZgem","MYAREA",1)~ THEN BEGIN 3 // from:
  SAY ~������� ������ ���������. ��������� �����-�� ������� �������. � �������� ������.~
  IF ~~ THEN EXIT
END

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  False()~ THEN BEGIN 4 // from:
  SAY ~� ������� ������� ������ ����������� ������. ��� ��� ��-�� ����!~
  IF ~~ THEN EXIT
END
