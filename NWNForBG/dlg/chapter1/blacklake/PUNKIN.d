// ���������� ������   ��� ������� �������� ������ ����������. ������, �� ��������� �� ������ ����.

BEGIN ~PUNKIN~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Buka","LOCALS",0)Global("PankinSecret","GLOBAL",0)CheckStatGT(LastTalkedToBy(Myself),10,CHR)~ THEN BEGIN 0 // from:
  SAY ~������. �� �������? ��������� ������. ���� �������, ���� ����� ������ �����. �����, ���� �����.~
  IF ~~ THEN REPLY ~� ��� �����? � ����� ���� ���-������ ����?~ GOTO 1
  IF ~~ THEN REPLY ~������ �������� ������. ��� ������.~ GOTO 2
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~��, ���-�� ���� �� ������, �� ���� �� ��������� �������� �� ����... �... ������ � ������ �� �����.~
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~��������, �� ���� ��� �����. ��� �������, ���� ����� �������� ����, �� ������, � ������, ��� ������ ��� ������ ��������? � ���� ��, ��� ������������, ������ ��� � ����� ������� �� ����. �������, ���� ������.~
  IF ~~ THEN REPLY ~� ��� �� ������? � ����� ���� ���-������ ����?~ GOTO 1
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY ~�� �����, ����, � ��� �����.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1
  SAY ~�� ����, ����� ���� ������, ��� � ���� ������ �����. �����, �� ���� � ��� ��������?~
  IF ~  CheckStatGT(LastTalkedToBy(Myself),10,CHR)~ THEN REPLY ~������ �����? �������� ��� � ���. �� �� ������, ����� ���?~ GOTO 6
  IF ~  CheckStatLT(LastTalkedToBy(Myself),11,CHR)~ THEN REPLY ~������ �����? �������� ��� � ���. �� �� ������, ����� ���?~ GOTO 7
  IF ~~ THEN REPLY ~����� ��� ��� �����, ��� ���� ���� ������������. � ����� ����� ������, ��� �� ������� ����.~ GOTO 8
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 3
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY ~��, ��������. ������ ���� �� ������. � ������� �� ������� ������. �������� �����, � ��� �����������. ������, ��� �����-�� ������ �����. ����� ��� "���-��-��". �� ���� �, ��� ��� ������, �� ����� ��� ��������, ����������� �����. �������, ��?~
  IF ~~ THEN REPLY ~������ �������� ������. ��� ������.~ GOTO 9
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 10
END

IF ~~ THEN BEGIN 7 // from: 4.2
  SAY ~���, � ���� ����� ��������. � �� ����, ����� ����� ��� ����. ���� � ��� ��� ����� ������, ������ ��� ������� ������ ������.~
  IF ~~ THEN REPLY ~����� ��� ��� �����, ��� ���� ���� ������������. � ����� ����� ������, ��� �� ������� ����.~ GOTO 8
  IF ~~ THEN REPLY ~������ �������� ������. ��� ������.~ GOTO 2
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 3
END

IF ~~ THEN BEGIN 8 // from: 4.3
  SAY ~����� �� ��� �����? �� �� ������, ��� ��� ��������. � ����� ����, ������ �� ��� ����. ��� ����� ��� ����� ���� �����. ��� ��������� ������� �����. ����� ��� "���-��-��". �� ���� �, ��� ��� ������, �� ����� ��� ��������, ����������� �����. �������, ��? ������ �����, �� ����.~
  IF ~~ THEN DO ~SetGlobal("PankinSecret","GLOBAL",1)SetGlobal("Buka","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.1
  SAY ~��������, �� ���� ��� �����. ��� �������, ���� ����� �������� ����, �� ������, � ������, ��� ������ ��� ������ ��������?~
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 6.2
  SAY ~�� �����, ����, � ��� �����.~
  IF ~~ THEN DO ~SetGlobal("PankinSecret","GLOBAL",1)~ EXIT
END

// -------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Buka","LOCALS",0)Global("PankinSecret","GLOBAL",0)CheckStatLT(LastTalkedToBy(Myself),11,CHR)~ THEN BEGIN 11 // from:
  SAY ~��� ��? �? �� ������ ������� ��� ���? ��������. � ��� �����! ���� ������ ���� ������ ���� �����!~
  IF ~~ THEN REPLY ~� ��� �����? � ����� ���� ���-������ ����?~ GOTO 1
  IF ~~ THEN REPLY ~������ �������� ������. ��� ������.~ GOTO 2
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 3
END

// -------------------------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Buka","LOCALS",1)~ THEN BEGIN 12 // from:
  SAY ~�� ������. � ������ ������.~
  IF ~~ THEN EXIT
END

// -------------------------------------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Buka","LOCALS",0)Global("PankinSecret","GLOBAL",1)~ THEN BEGIN 13 // from:
  SAY ~���� �������, ���� ����� �������� ����, �� ������, � ������, ��� ������ ��� ������ ��������?~
  IF ~~ THEN EXIT
END

