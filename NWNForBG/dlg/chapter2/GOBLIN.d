// �������� ������, ������ �������� � ����� - ������

BEGIN ~GOBLIN~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)Global("NeutralGoblins","MYAREA",0)Global("GoblinQuest","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY ~�� �������! �� ���� ������. �� �� ����� ��� ������� �����-�����!~
  IF ~~ THEN REPLY ~������� ������ �� ��� �������.~ GOTO 1
  IF ~~ THEN REPLY ~� ����� �����������, ���� ������ ������� ���������� ��������� �� ����.~ GOTO 2
  IF ~~ THEN REPLY ~� ������ �����������. ��� � ������, ���� ������� ���� � �����?~ GOTO 3
  IF ~~ THEN REPLY ~����������, � ������ ������� ��������. ��� ��� ������ �� ������.~ GOTO 4
  IF ~~ THEN REPLY ~�����, ���� ����.~ GOTO 5
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~��� �� ���������� ���, ��������? �� �� ����� �������, ������� ��, <RACE>. �... ����� ������, ���?~
  IF ~~ THEN REPLY ~�������� ��� �� ���� �������.~ GOTO 6
  IF ~~ THEN REPLY ~��� ��� �����? � ���� � ��� ����������.~ GOTO 7
  IF ~~ THEN REPLY ~� ����� �����������, ���� ������ ������� ���������� ��������� �� ����.~ GOTO 2
  IF ~~ THEN REPLY ~� ������ �����������. ��� � ������, ���� ������� ���� � �����?~ GOTO 3
  IF ~~ THEN REPLY ~����������, � ������ ������� ��������. ��� ��� ������ �� ������.~ GOTO 4
  IF ~~ THEN REPLY ~�����, ���� ����.~ GOTO 5
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~�� ����� ��� ������� ���� ������ � ����? ������, �� ���� �����. ��, �� �������, ������� ���� �����. ���� �������� ���?~
  IF ~~ THEN REPLY ~����������, � ������ ������� ��������. ��� ��� ������ �� ������.~ GOTO 4
  IF ~~ THEN REPLY ~������������.~ GOTO 8
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY ~��� ���� ������? ���� ����� ���������, ��? ���� ����� ������. ���� ���� ���� ������, � �� ��������� ��������� � ����?~
  IF ~~ THEN REPLY ~������ ������� ���������� ���������, ���� � ���������.?~ GOTO 9
  IF ~~ THEN REPLY ~������������.~ GOTO 10
  IF ~~ THEN REPLY ~����������, � ������ ������� ��������. ��� ��� ������ �� ������.~ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY ~���������! �� ��������� ������ � ����, ��� <RACE>. �����!~
  IF ~~ THEN DO ~Enemy()Attack(LastTalkedToBy(Myself))~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.5
  SAY ~���� ����� ������! ���� �����! �� ������� �����!~
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.1
  SAY ~���� ����� � ������ � ���������. �� �����-����� ����� ��� ����, ����� ������ ����� ��� � ����, � ��� ��-�� ������.~
  IF ~~ THEN REPLY ~��� ��� �����? � ���� � ��� ����������.~ GOTO 7
  IF ~~ THEN REPLY ~� ����� �����������, ���� ������ ������� ���������� ��������� �� ����.~ GOTO 2
  IF ~~ THEN REPLY ~� ������ �����������. ��� � ������, ���� ������� ���� � �����?~ GOTO 3
  IF ~~ THEN REPLY ~����������, � ������ ������� ��������. ��� ��� ������ �� ������.~ GOTO 4
  IF ~~ THEN REPLY ~�����, ���� ����.~ GOTO 5
END

IF ~~ THEN BEGIN 7 // from: 1.2
  SAY ~�� ����� �������� � ��� �����, ��? �����, �� ������� ����, ��� ���� ����. �� ���, �����. ������ � ��� �����, ������ ������ ������ �� ����� ��������.~
  IF ~~ THEN DO ~SetGlobal("NeutralGoblins","MYAREA",1)EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.2
  SAY ~�� ����� ������! ���� �����! ���� ������� �����! � �� ������� ������ ������ �� ��������� � ����, ���! �� �������. ���� ������!~
  IF ~~ THEN DO ~SetGlobal("NeutralGoblins","MYAREA",1)EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 3.1
  SAY ~�� ����� ��� ������� ���� ������ � ����? ������, �� ���� �����. ��, �� �������, ������� ���� �����. ���� �������� ���?~
  IF ~~ THEN REPLY ~����������, � ������ ������� ��������. ��� ��� ������ �� ������.~ GOTO 4
  IF ~~ THEN REPLY ~������������.~ GOTO 11
END

IF ~~ THEN BEGIN 10 // from: 3.2
  SAY ~���� ����� ������! ���� �����! �� ������� �����!~
  IF ~~ THEN DO ~GiveGoldForce(70)EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.2
  SAY ~�� ����� ������! ���� �����! ���� ������� �����! � �� ������� ������ ������ �� ��������� � ����, ���! �� �������. ���� ������!~
  IF ~~ THEN DO ~GiveGoldForce(70)SetGlobal("NeutralGoblins","MYAREA",1)EscapeArea()~ EXIT
END

// ---------------------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NeutralGoblins","MYAREA",1)RandomNum(2,1)~ THEN BEGIN 12 // from:
  SAY ~�� �������, �� �� ��������� � �����. ��� ��� ��� �� �������, ���. �� ������ � ������.~
  IF ~~ THEN EXIT
END

// ---------------------------------------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NeutralGoblins","MYAREA",1)RandomNum(2,2)~ THEN BEGIN 13 // from:
  SAY ~���� �� ������� ����, ���� <RACE>. �������� � �����.~
  IF ~~ THEN EXIT
END
