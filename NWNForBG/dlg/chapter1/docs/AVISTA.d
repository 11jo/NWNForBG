// ���� ������� ���� ������  �������  ��� ������� ������� ���������, �� � �� �� ����� ����������� �� ������� ����.

BEGIN ~AVISTA~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)Global("NWNDocksDone","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY ~������ ���� �������� ������. ��� ������ ������� ������ ������ ���� � ����.~ [AVISTA52]
  IF ~~ THEN REPLY ~����� �� ����� ��������?~ GOTO 1
  IF ~~ THEN REPLY ~�� �� ������� ������ ���������?~ GOTO 2
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~��, �� ������, ������� ��� �����! � � ��� ��������! ���� ������-�� ���������� ������� ������.~
  IF ~~ THEN REPLY ~�� �� ������� ������ ���������?~ GOTO 2
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~���� ������, � ��� ������ ������������� ����, ��� �������� �����. ����� ����� ����� �������. ���-�� ������� ������ ���� ��������� �� �������, ��� ����� ��� �������.~
  IF ~~ THEN REPLY ~����� �� ����� ��������?~ GOTO 1
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY ~������ ���� ��� ����, ���? ��� �������� �� �����.~
  IF ~~ THEN EXIT
END

// ----------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)Global("NWNDocksDone","GLOBAL",0)~ THEN BEGIN 10 // from:
  SAY ~��� ����� ������������ �� �����. �� ��� ������ �������, � �� ���������� � ����.~ [AVISTA53]
  IF ~~ THEN REPLY ~����� �� ����� ��������?~ GOTO 1
  IF ~~ THEN REPLY ~�� �� ������� ������ ���������?~ GOTO 2
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 3
END

// ----------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("NWNDocksDone","GLOBAL",0)~ THEN BEGIN 10 // from:
  SAY ~�� ������ ���������� ��� �� ����������. ������� ��������, � ������ ����� ������� �����.~ [AVISTA54]
  IF ~~ THEN EXIT
END

