// ���� ������ ����� ���� ����������� - � ������� ���, �������  �� ��������� ��������� �� ��� ����� �������� ����� � ������������ �������, ��� �� - ���.

BEGIN ~LIZSLAVE~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  !HasItemEquiped("Translat",LastTalkedToBy(Myself))~ THEN BEGIN 0 // from:
  SAY ~��� ���� ������, �� ����� ����! ���� ����?~
  IF ~~ THEN REPLY ~��� �� ��������? � �� ���� ��������� �� �����!~ GOTO 1
  IF ~~ THEN REPLY ~����� ��������, � ������ �� ���� ������.~ GOTO 1
  IF ~~ THEN REPLY ~��� ����� ����.~ GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~���� �������.~
  IF ~~ THEN EXIT
END

// -------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  HasItemEquiped("Translat",LastTalkedToBy(Myself))~ THEN BEGIN 2 // from:
  SAY ~� ���� ��� �������� ����! ������� ������ ��� ����, ���� ������, ��� � ������������ � �����! �����!~
  IF ~~ THEN REPLY ~��� ����� ������ ��� ��������� ��������.~ GOTO 3
  IF ~~ THEN REPLY ~�� ����������, � ������ ���� �� �������!~ GOTO 4
  IF ~~ THEN REPLY ~��� ����� ����.~ GOTO 5
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY ~������ ������ ����� �������� �������! ���� �� ������ ������ � �����!~
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 2.2
  SAY ~�� �����! ������� ����������� � ���� �����������! ����� ���� ������ <RACE> - ������ �����!~
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 2.3
  SAY ~�������� � �������, ����� �������������. �� ����� �������� ��������� ����� ����� ����, �� � ������������ ����� ��� ��������� �����.~
  IF ~~ THEN EXIT
END

