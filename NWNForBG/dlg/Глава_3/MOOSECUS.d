// �������� ������� ����, ������� ������� ����. ��� ������� - ���� ������� ����� �� ��������.

BEGIN ~MOOSECUS~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("NW_Medicine","GLOBAL",1)!Dead("Zokan")Global("ZokanHostile","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY ~�� ������� �����! �� ��������� � ��������� ����� ������������ ������� � ���, ��� �� ���� ����� ���� �� ������ ������.~
  IF ~~ THEN EXIT
END

// ------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalLT("NW_Medicine","GLOBAL",2)!Dead("Zokan")Global("ZokanHostile","GLOBAL",0)~ THEN BEGIN 1 // from:
  SAY ~��, ����, ������� �� ����. ������, �� ������ ���������� � �������.~
  IF ~~ THEN EXIT
END

// ------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Dead("Zokan")Global("ZokanHostile","GLOBAL",1)~ THEN BEGIN 2 // from:
  SAY ~��� ����� �����. ������� ���� ����� �� ����������?~
  IF ~~ THEN EXIT
END

// ------------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  !Dead("Zokan")Global("ZokanHostile","GLOBAL",1)~ THEN BEGIN 3 // from:
  SAY ~������, ������� ������ �������� ����. ��������.~
  IF ~~ THEN REPLY ~�� ������� �����, ����� ������������ �����-������ ������. � ������ ���� �����.~ GOTO 4
  IF ~~ THEN REPLY ~����� ���� ���� ����� ������. ���� ��� ����� ���������!~ GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 3.1
  SAY ~����������, ��, ����, ������� �� ����. ���� ����� ��������. ��������� ��� ����! ���������� � ����� ������ ������� ������������.~
  IF ~~ THEN REPLY ~����� ������, � �������� � �������.~ GOTO 6
  IF ~~ THEN REPLY ~�������� ���� � �����, �� �� � ���� ��� �� ������ ����� ���!~ GOTO 5
  IF ~~ THEN REPLY ~����� ���� ���� ����� ������. ���� ��� ����� ���������!~ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 3.2
  SAY ~���, ������, �������� ����!~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY ~�� ������� ������ � ������. ����������, ������ ������������� � ����.~
  IF ~~ THEN EXIT
END

