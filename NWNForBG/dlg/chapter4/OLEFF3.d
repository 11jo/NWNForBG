// ������ ������ ��� ��������������  ����� ������ ���� ������ ��� ���������, ����� ��������� ����������� ���� � ���, ��� ���� ������� � ��� ������.

BEGIN ~OLEFF3~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(3,1)~ THEN BEGIN 0 // from:
  SAY ~��� ��� �����? �� ����� �� ������, ������� � ���� ���? ����� ������ ������� � ���, ��� ��� ������, ��� � ����� �������� �� ��� �����...~ [OLEFF061]
  IF ~~ THEN REPLY ~��� ����� ���� ������.~ GOTO 1
  IF ~~ THEN REPLY ~���� � ������ ��� ��������� ��������?~ GOTO 2
  IF ~~ THEN REPLY ~���� ������ ����� �� �������.~ GOTO 3
  IF ~~ THEN REPLY ~��� ��������� �������.~ GOTO 4
  IF ~~ THEN REPLY ~����.~ GOTO 5
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~��� � ���� � ���� ���... ����� ������. ������, ��� �� ��� ������, � ������� ����� ����, ����� �� �������� ������� ��� �� ���� �������.~
  IF ~~ THEN DO ~StartStore("Oleff",LastTalkedToBy(Myself))~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~����� ���� *�������*, ����� ������! � ���� ��� ������� �� ���������. ���������!~
  IF ~~ THEN REPLY ~��� ����� ���� ������.~ GOTO 1
  IF ~~ THEN REPLY ~���� ������ ����� �� �������.~ GOTO 3
  IF ~~ THEN REPLY ~��� ��������� �������.~ GOTO 4
  IF ~~ THEN REPLY ~����.~ GOTO 5
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY ~"���� ��� ������ ����� ������ ��, ��� ���� �. � �� �������� ��������, ����� ��� ������� ��������� ��������.~
  IF ~~ THEN REPLY ~��� ����� ���� ������.~ GOTO 1
  IF ~~ THEN REPLY ~���� � ������ ��� ��������� ��������?~ GOTO 2
  IF ~~ THEN REPLY ~��� ��������� �������.~ GOTO 4
  IF ~~ THEN REPLY ~����.~ GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY ~�������. ���� ��������� ������� ��� ����.~
  IF ~~ THEN DO ~ForceSpell(LastTalkedToBy,CLERIC_HEAL)~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.1
  SAY ~��. �� ������ ��� ���...~
  IF ~~ THEN EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(3,2)~ THEN BEGIN 6 // from:
  SAY ~����������, ������������ ��������, <SIRMAAM>. ����� ������ ������� � ���, ��� ��� ������, ��� � ����� �������� �� ��� �����...~ [OLEFF060]
  IF ~~ THEN REPLY ~��� ����� ���� ������.~ GOTO 1
  IF ~~ THEN REPLY ~���� � ������ ��� ��������� ��������?~ GOTO 2
  IF ~~ THEN REPLY ~���� ������ ����� �� �������.~ GOTO 3
  IF ~~ THEN REPLY ~��� ��������� �������.~ GOTO 4
  IF ~~ THEN REPLY ~����.~ GOTO 5
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(3,2)~ THEN BEGIN 7 // from:
  SAY ~����� ���������� � ���� ���� ���������. ���� �����, � ��������� ����� �� ����������� � ����. ����� ������ ������� � ���, ��� ��� ������, ��� � ����� �������� �� ��� �����...~ [OLEFF059]
  IF ~~ THEN REPLY ~��� ����� ���� ������.~ GOTO 1
  IF ~~ THEN REPLY ~���� � ������ ��� ��������� ��������?~ GOTO 2
  IF ~~ THEN REPLY ~���� ������ ����� �� �������.~ GOTO 3
  IF ~~ THEN REPLY ~��� ��������� �������.~ GOTO 4
  IF ~~ THEN REPLY ~����.~ GOTO 5
END

