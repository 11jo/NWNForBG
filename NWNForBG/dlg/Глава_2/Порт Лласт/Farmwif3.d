// ����-����� ���� ������� 1 ������� ���

BEGIN ~FARMWIF3~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY ~� ��� ��� �����, �������. ���, ������� ���� � ��������� ���.~
  IF ~~ THEN EXTERN ~DAUGHTER~ 18
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(6,1)~ THEN BEGIN 1 // from:
  SAY ~���������� ��������� ���������� � �����, ��� �.~
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(6,2)~ THEN BEGIN 2 // from:
  SAY ~������� ������ ����� ������� ����� � ����� ������. ����� ���������� � ����-�����!~
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(6,3)~ THEN BEGIN 3 // from:
  SAY ~�� �� ��� �������� �����������! ������� ����� �� ��������� � ����-������.~
  IF ~~ THEN EXIT
END

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(6,4)~ THEN BEGIN 4 // from:
  SAY ~�� ��������� ���, � ���� ��� ������� �� ���������.~
  IF ~~ THEN EXIT
END

IF WEIGHT #5 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(6,5)~ THEN BEGIN 5 // from:
  SAY ~���� �������, � ������������ ��� ������!~
  IF ~~ THEN EXIT
END

IF WEIGHT #6 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(6,6)~ THEN BEGIN 6 // from:
  SAY ~�� �� ������������? �� ��������� �� ���, ����� �� ��������.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7 // from: DAUGHTER
  SAY ~� �����-������ ������������ � ���������� ��������� ������ ���� � ���� ��, ��� ��� ��� � ������ ����������� ������.~
  IF ~~ THEN EXTERN ~DAUGHTER~ 19 
END

IF ~~ THEN BEGIN 8 // from: DAUGHTER
  SAY ~��������, �� ��� ���� ������ �� ��� ��������. ������� ������ ����� ������� ����� � ����� ������. ����� ���������� � ����-�����!~
  IF ~~ THEN EXIT
END
