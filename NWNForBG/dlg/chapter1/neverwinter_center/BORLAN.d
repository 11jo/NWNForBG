// ����� ������������  ������ - ������ �������� ������ �����. ���� �������, ��������, ����������. ���� �� ��� ������������ ����, ���� ����������� ��� ����� � ��� �� ������.

BEGIN ~BORLAN~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)Global("BeggarsNestDone","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY ~���� � ��� ������? �� ���, � ��� ��� �... � � ����-�� ������ �� ����. � �� ���� ���� ���������� � ����� ����������� ����... ��� ������ ����� ����� � ������ ����� ��-�� �����, ������ ��������� �� ������ ��-�� ���������... � ���, ��-������, � ������ ������? ��������, ������ � ���������� �� ���� ������� ���...~
  IF ~~ THEN REPLY ~������ �� ��� ������ ��������� ��������?~ GOTO 1
  IF ~~ THEN REPLY ~����� ����, � ���� ���� ������?~ DO ~SetGlobal("MyQuest","LOCALS",1)~ GOTO 2
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~��������, � �� ���� ������� ���, �� � ������ �� ���� ������ �� � ��� ����� ����� ����.~
  IF ~~ THEN REPLY ~����� ����, � ���� ���� ������?~ DO ~SetGlobal("MyQuest","LOCALS",1)~ GOTO 2
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~� �� ����, ��� ��� ����� �������. � �� ���� ������, ��� ���� �� � �������� ���������� ����� �����. � ������ ��� ��� � �����... �� ����� ���� � ���� ����.~
  IF ~~ THEN REPLY ~������ �� ��� ������ ��������� ��������?~ GOTO 1
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY ~����� ��������. � �������� �����... ��� ������ ������ ����.~
  IF ~~ THEN EXIT
END

// ------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)Global("BeggarsNestDone","GLOBAL",0)~ THEN BEGIN 4 // from:
  SAY ~� ���� � � ������ �� ����, ��� �����-������ ������ ����� ������ ��� ���� ����� ��������.~
  IF ~~ THEN EXIT
END

// ------------------------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("BeggarsNestDone","GLOBAL",0)~ THEN BEGIN 5 // from:
  SAY ~��� ���������? �� ����, ���� ��� ��� ������������, �� �� ������� ���� � ���� ����� �����. ����� � ������ ����� ���� ��� ���� ��������� ��������. ������� ��� �������.~
  IF ~  Global("MyQuest","LOCALS",0)~ THEN DO ~AddexperienceParty(4000)EscapeArea()~ EXIT
  IF ~  Global("MyQuest","LOCALS",1)~ THEN DO ~AddexperienceParty(6000)EscapeArea()~ EXIT
END

