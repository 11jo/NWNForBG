// ����������� ������ ������ �����-��������� �����, ��������� �������� ������� ��������� � ���� ��� ����������� �������, ������� ���� � ���� ���������� ���� �����������.

// ���, � �� ���� �������! � �����, �������� �����������! � ����������! ���! ��-�-��!!! [MORAG67]

// ��� ����� �� ����� ��������� ��� �����! ���� ����� ����������, ���! [MORAG69]

BEGIN ~NWMORAG4~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @1
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY @2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 3
  IF ~~ THEN REPLY @5 GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY @6
  IF ~~ THEN DO ~SetGlobal("MoragHostile","MYAREA",1)Enemy()~ EXIT
END

