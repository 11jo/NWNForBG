// ���� �����  ���������   ��� ������� �������� ��� �������� ��������, ��������� �������� ���� �����������. ��� ���� �� �������� � ���� �������������.

BEGIN ~AGNES~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(2,1)~ THEN BEGIN 0 // from:
  SAY ~��� ������ ��� �������. ���������� � ���� �����.~
  IF ~~ THEN EXIT
END

// ---------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(2,2)~ THEN BEGIN 1 // from:
  SAY ~������ - ����� �������. �� ����� ������ ������ ����� � �����, ����� �� ��� ������ �������������� ��������. ��!~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2 // from: HEMMEL 0
  SAY ~�����? � �������� ����, ��� ��� ������ ��������.~
  IF ~~ THEN EXTERN ~HEMMEL~ 2
END

IF ~~ THEN BEGIN 3 // from: HEMMEL 4
  SAY ~������, � ���� ������� ������ ��������, ��� �� ����, �� �� ����� �� ����� �� �������.~
  IF ~~ THEN REPLY ~��� ��� ���� �������?~ EXTERN ~HEMMEL~ 10
  IF ~~ THEN REPLY ~�� ��������� ���� ��������?~ EXTERN ~HEMMEL~ 17
  IF ~~ THEN REPLY ~�����, � ���� ����������� � ���� ���� ���.~ EXTERN ~HEMMEL~ 18
  IF ~~ THEN REPLY ~� �� ��������� �������� ����.~ GOTO 5
END

IF ~~ THEN BEGIN 4 // from: HEMMEL 6
  SAY ~�, �������, ������. ��� �� ������������� � ��������� �������� �����������.~
  IF ~~ THEN EXTERN ~HEMMEL~ 12
END

IF ~~ THEN BEGIN 5 // from: 3.4
  SAY ~����������, �������, �� �����������. ���� ������ �������������� ����, � � ������ �� ���� �������, ����� ����, ��� ���������� ����, ��� ��.~
  IF ~~ THEN EXTERN ~HEMMEL~ 19
END

IF ~~ THEN BEGIN 6 // from: HEMMEL 5
  SAY ~� ������� ���� ��������� ��������. ������, ������, ��� �� ��� ����� ���� ��� �����.~
  IF ~~ THEN EXTERN ~HEMMEL~ 21
END

IF ~~ THEN BEGIN 7 // from: HEMMEL 17
  SAY ~� �������� ����, ��� ��� ������ ��������. �� ���� ������ �������� ���� ��������������� ��������, � �� ��� ����� ������ ��� ���.~
  IF ~~ THEN EXTERN ~HEMMEL~ 23
END

IF ~~ THEN BEGIN 8 // from: HEMMEL 26
  SAY ~������ ������, ��� �� ������� ������� ����, ����� ������������ ��, ������.~
  IF ~~ THEN EXTERN ~HEMMEL~ 27
END


