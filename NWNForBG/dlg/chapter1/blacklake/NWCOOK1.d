// ����������: �������� ����� �����������   ���� ���������� �������� ����� ������������, �� ������������. �� ���� �� �������� ����� � ���� �� �����.

BEGIN ~NWCOOK1~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)CheckStatGT(LastTalkedToBy(Myself),10,CHR)~ THEN BEGIN 0 // from:
  SAY ~����� ������� �� �������� ��� ���! ���� ������ ������ ���! �� ������?!~
  IF ~~ THEN REPLY ~��� ��� �� ����������. ���������� ������.~ GOTO 1
  IF ~~ THEN REPLY ~������ ��� � ���� ����, � �� �� � ���� ����!~ GOTO 2
  IF ~~ THEN REPLY ~��������, � ��� �� �����.~ GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~����������� ���� ����� ��� ������. �� ���� �� ������ �� ���������. ���� �� ����� ������� �����, ��� ����� ���. ������, ������ ����, ��� ���-�� ������.~
  IF ~~ THEN REPLY ~������ ��� � ���� ����, � �� �� � ���� ����!~ GOTO 4
  IF ~~ THEN REPLY ~��������, � ��� �� �����.~ GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~����������� ���� ����� ��� ������. �� ���� �� ������ �� ���������. ���� �� ����� ������� �����, ��� ����� ���. ������, ������ ����, ��� ���-�� ������.~
  IF ~~ THEN REPLY ~���������� ������.~ GOTO 4
  IF ~~ THEN REPLY ~��������, � ��� �� �����.~ GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY ~����������� ���� ����� ��� ������. �� ���� �� ������ �� ���������. ���� �� ����� ������� �����, ��� ����� ���. ������, ������ ����, ��� ���-�� ������.~
  IF ~~ THEN REPLY ~���������� ������.~ GOTO 4
  IF ~~ THEN REPLY ~������ ��� � ���� ����, � �� �� � ���� ����!~ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 2.1 2.2 2.3
  SAY ~�, ���, � ���� ������� ������ �� ����! � ������������ ���, �� � ���� ������! ������!~
  IF ~~ THEN DO ~SetGlobal("Hostile","MYAREA",1)CreateCreatureObject("Patrol07",Myself,0,0,0)CreateCreatureObject("Patrol07",Myself,0,0,0)CreateCreatureObject("Patrol06",Myself,0,0,0)CreateCreatureObject("Patrol06",Myself,0,0,0)~ EXIT
END

// ---------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)CheckStatLT(LastTalkedToBy(Myself),11,CHR)~ THEN BEGIN 5 // from:
  SAY ~��������� � ����! ��� �� ������� ��� �������� ���? ���? ������! ���!~
  IF ~~ THEN REPLY ~��� ��� �� ����������. ���������� ������.~ GOTO 1
  IF ~~ THEN REPLY ~������ ��� � ���� ����, � �� �� � ���� ����!~ GOTO 2
  IF ~~ THEN REPLY ~��������, � ��� �� �����.~ GOTO 3
END

// ---------------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)~ THEN BEGIN 5 // from:
  SAY ~��������� � ����! ��� �� ������� ��� �������� ���? ���? ������! ���!~
  IF ~~ THEN EXIT
END

