// ����-����� ������� ����������

BEGIN ~SOLDIER4~

IF WEIGHT #0 /* Triggers after states #: 1 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY ~������� ��� ���������� ����! ��� �������, � �� ����� ��� ��������!~
  IF ~~ THEN REPLY ~��� ���� ���������?~ GOTO 1
  IF ~~ THEN REPLY ~���� ��� �������, �� ��� �� �������?~ GOTO 2
  IF ~~ THEN REPLY ~������, � ��� �����.~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~� �������, ���� ����� ��� ����� ������. ��� ����� ������� � �� ��������� � ������ ��������. � ������ �������� ���������.~
  IF ~~ THEN REPLY ~��� �� �������, �� � ���� ���� ������?~ GOTO 3
  IF ~~ THEN REPLY ~������, � ��� �����.~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~������� �� �������? �� ����� ������, �������. �������, ��������� ������ � ����� - ��� ������ ��������. � ������ �������� ���������.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY ~� ��� �����. �������� ���������, ������ ��� ��������� �� ����.~
  IF ~~ THEN EXIT
END

IF WEIGHT #1 ~  !NumTimesTalkedTo(0)
~ THEN BEGIN 4 // from:
  SAY ~��� ����� �������. ��� ���� �� �����.~
  IF ~~ THEN EXIT
END
