// ������ ����� ��������� ��������� �����
BEGIN ~ZOMB1223~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(5,1)~ THEN BEGIN 0 // from:
  SAY ~�������� ���� �����������, ��������! �� ������ ������������ ����, �������� ���� � ������ ���� ����������! � ������������ ���, ����� ������������!~ [GULNAN50]
  IF ~~ THEN EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(5,2)~ THEN BEGIN 1 // from:
  SAY ~�� �������������� � ���� �������� ������! � ���� ���� �������! ���������� ����� ����� �������! � ������� ���!~ [GULNAN51]
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(5,3)~ THEN BEGIN 2 // from:
  SAY ~���� ��������� ���, �� ��������� ��� �����! ��� �������������! ���! �� ���� ����������� ���� �� ������, ����� ��� ���!~ [GULNAN52]
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(5,4)~ THEN BEGIN 3 // from:
  SAY ~�� �� ������ ��������, ��� ���������� ����� ������� �����! ������ ��� ����?! ��� ����������, ������, ��� � ������ ����������!~ [GULNAN53]
  IF ~~ THEN EXIT
END

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(5,5)~ THEN BEGIN 4 // from:
  SAY ~�����, ���� ������, �� �� ������! ������� ������� �� ����! � ���� ���������� �����! �����!~ [GULNAN54]
  IF ~~ THEN EXIT
END

