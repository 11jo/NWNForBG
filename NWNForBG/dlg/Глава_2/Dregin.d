// ������ - �����-����� ����� � ����� � ��� � ������ � �������, �� ������� ��� ���������� ������ 

BEGIN ~DREGIN~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)Global("AavillQuest","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY ~��-�� ������! ������ �� ������ � ��� ����, �� �� ������� ������ �������.~
  IF ~~ THEN REPLY ~��� ������, � �� ���� �����?~ GOTO 1
  IF ~~ THEN REPLY ~��� �� ������ ������?~ GOTO 1
  IF ~~ THEN REPLY ~�������� � ������, � �� ����� ������!~ GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~����� ���� ������, ������� ��������� ������ �������� ����, ��������, �������� ��� ����. ������� ���, ���� ��, ����� ����� �������, ��� ������ � �����, ���� ������ �� ������� ��� �������� ����������.~
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY ~��� � ������ ���� ������ ���� ������� �����, <MALEFEMALE>! ��� � ���� �� �������� � ��������, � ����� � ����� �� ���������� � ������ ����� ����������, ��� �� ������, �� �����.~
  IF ~~ THEN EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)Global("AavillQuest","GLOBAL",0)~ THEN BEGIN 3 // from:
  SAY ~� �� ������, ��� ������ ���������� �� ������ �������. � �� �� ����, � ��� ���.~
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Global("AavillQuest","GLOBAL",1)Global("SpiritSaved","GLOBAL",0)!Dead("SpiritFo")~ THEN BEGIN 4 // from:
  SAY ~� ������, �� ������������ ��� � ������ �����, ��������. �� � ���������, ������, ����� ��.~
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  Global("SpiritSaved","GLOBAL",1)~ THEN BEGIN 5 // from:
  SAY ~��� ���� ������ ��� ������� ������ ��� ���� ��������, ��? ��� �, ������, ��� �� �������� ������ ����������� ����������, ��� �����.~
  IF ~~ THEN EXIT
END

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  Dead("SpiritFo")~ THEN BEGIN 5 // from:
  SAY ~���� ������ ���, � ��� ����� ��������� ���� �� ����. � ����� �������, ��� �����-������ ��� ���-���� ������� ������������ ���.~
  IF ~~ THEN EXIT
END
