// ������������ ������ ������ �����-��������� �����, ��������� ������ ������� ���� ������ ������� ��������� ������� ���� ����� ������� ��� ����.

// ���, � �� ���� �������! � �����, �������� �����������! � ����������! ���! ��-�-��!!! [MORAG67]

// ��� ����� �� ����� ��������� ��� �����! ���� ����� ����������, ���! [MORAG69]

BEGIN ~ANCIENTC~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @1
  IF ~~ THEN EXTERN ~MORAG3~ 2
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY @2
  IF ~~ THEN EXTERN ~MORAG3~ 3
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY @3
  IF ~~ THEN EXTERN ~MORAG3~ 4
END



