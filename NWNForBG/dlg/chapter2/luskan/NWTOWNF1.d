// ������ ���, ������� ������, ��� ���������� ������� �������� ��������� � ������.

BEGIN ~NWTOWNF1~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(17,1)~ THEN BEGIN 0 // from:
  SAY ~��� ������� ������? ��� ����? �� ��� ��� ����� ����...~
  IF ~~ THEN EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(17,2)~ THEN BEGIN 1 // from:
  SAY ~�� �� ������, ��... �������, ��� ������� ������������ ����!~
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(17,3)~ THEN BEGIN 2 // from:
  SAY ~��� ������� ������... � ������. ������ ������� �������... ��� �������� ������� ����� � ������, � ����� ����!~
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(17,4)~ THEN BEGIN 3 // from:
  SAY ~�-����������, �� ���������� ��� �����! �� ������� ����, � ��� ��� ���!~
  IF ~~ THEN EXIT
END

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(17,5)~ THEN BEGIN 4 // from:
  SAY ~����� ���� ����� ���� ��������� �������. ��� ������� ����� ���, ��� � ��� ����.~
  IF ~~ THEN EXIT
END

IF WEIGHT #5 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(17,6)~ THEN BEGIN 5 // from:
  SAY ~���� ������ ���������... ��� ����� ������� � �������� ���� ������������ ����� � ���� �����. ��� �������.~
  IF ~~ THEN EXIT
END

IF WEIGHT #6 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(17,7)~ THEN BEGIN 6 // from:
  SAY ~�� �������� �� �����. ��� �������... ���������� �����, ������� ������������ � �����!~
  IF ~~ THEN EXIT
END

IF WEIGHT #7 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(17,8)~ THEN BEGIN 7 // from:
  SAY ~������ �������! � ����������� ����... ������! �������!~
  IF ~~ THEN EXIT
END

IF WEIGHT #8 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(17,9)~ THEN BEGIN 8 // from:
  SAY ~��� ��� ���, ���������� �� ����� �������! ��� ����� ����� ��� ����!~
  IF ~~ THEN EXIT
END

IF WEIGHT #9 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(17,10)~ THEN BEGIN 9 // from:
  SAY ~������ �������� ����� ���� � ������ ��� ��������� ������. ��������� ������� � ������ �����.~
  IF ~~ THEN EXIT
END

IF WEIGHT #10 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(17,11)~ THEN BEGIN 10 // from:
  SAY ~�������� � ��� ���, ��� ������, ������... ������ �� ������� ���!~
  IF ~~ THEN EXIT
END

IF WEIGHT #11 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(17,12)~ THEN BEGIN 11 // from:
  SAY ~��� ���������� ���� �� ����� ������... �� ����������� � �����-��������! ������!~
  IF ~~ THEN EXIT
END

IF WEIGHT #12 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(17,13)~ THEN BEGIN 12 // from:
  SAY ~���� ����� "�������� ����". ��� ����� ��� � ������ �� �������, ��� �������!~
  IF ~~ THEN EXIT
END

IF WEIGHT #13 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(17,14)~ THEN BEGIN 13 // from:
  SAY ~������ ���� �������, ��� ����� �������� � ������� "�����". �� �����, ��� �� ��������� ���� ������...~
  IF ~~ THEN EXIT
END

IF WEIGHT #14 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(17,15)~ THEN BEGIN 14 // from:
  SAY ~�� ������ �� ������ �� �������. �� �� ������� ��� �������, ������?~
  IF ~~ THEN EXIT
END

IF WEIGHT #15 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(17,16)~ THEN BEGIN 15 // from:
  SAY ~�... ����������, �� �����. ��� ��� ����� �������� � �������... �� ������ �����, ���� ��� �� �������!~
  IF ~~ THEN EXIT
END

IF WEIGHT #16 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(17,17)~ THEN BEGIN 16 // from:
  SAY ~�� �������� ���! ������, ����������, �������� ��� � �����!!!~
  IF ~~ THEN EXIT
END

