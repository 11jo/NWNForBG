// ����-����� ������� ������ ����������.

BEGIN ~WAITREPL~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY ~��, �������, ��� �� ������? ���� ������ ��� ��� ����� ������� �� ����, �� ��� � �������, �� ���� ���� ��������.~
  IF ~~ THEN REPLY ~��� ��?~ GOTO 1
  IF ~~ THEN REPLY ~���� � ������ ��� ��������� ��������?~ GOTO 2
  IF ~~ THEN REPLY ~�������, � ����� �������.~ GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 1.1
  SAY ~� ������ ����������. ���������� ������. ������� ��� � �������, ������ ������.~
  IF ~~ THEN REPLY ~���� � ������ ��� ��������� ��������?~ GOTO 2
  IF ~~ THEN REPLY ~�������, � ����� �������.~ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 1.2
  SAY ~��� ��, �������, � ������ ����������, �� ����� ��������� ���������� ����������� � �������, � ��� �������, ������� ����~
  IF ~~ THEN REPLY ~��� ��?~ GOTO 1
  IF ~~ THEN REPLY ~�������, � ����� �������.~ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 1.3
  SAY ~������� ��� �������� ����� � ����� ���������.~
  IF ~~ THEN EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)RandomNum(5,1)~ THEN BEGIN 4 // from:
  SAY ~����������, ����������� ����������� �����, <LADYLORD>.~
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)RandomNum(5,2)~ THEN BEGIN 5 // from:
  SAY ~��� �� ����� ������� �������, <SIRMAAM>. ���� ������, ���� ������ ��������� ������� ���� �� ���������.~
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)RandomNum(5,3)~ THEN BEGIN 6 // from:
  SAY ~�������, ����������. � ���� ������ ����� ��� � ���� �������� - ��� � ������� ��� ���� �������!~
  IF ~~ THEN EXIT
END

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)RandomNum(5,4)~ THEN BEGIN 7 // from:
  SAY ~���� ������ ���-������ ��������, �������� � ��������.~
  IF ~~ THEN EXIT
END

IF WEIGHT #5 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)RandomNum(5,5)~ THEN BEGIN 8 // from:
  SAY ~��� ��� ����, ���, �������, ����� �������, ���-�� ������� �� ���� �������, � ��� �����.~
  IF ~~ THEN EXIT
END
