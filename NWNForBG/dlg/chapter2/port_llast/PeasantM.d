// ����-����� ������� ������� ���

BEGIN ~PEASANTM~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  See("Minsc")
InParty("Minsc")
!StateCheck("Minsc",STATE_SLEEPING)
Global("slumm4minsc","NW2000",0)~ THEN BEGIN 0 // from:
  SAY ~�����, � ��� �� ����� �� ��� �������� ������, ������? ��� �������� �������. ��� ������ ���� ������� �� ���?~
  IF ~~ THEN DO ~SetGlobal("slumm4minsc","NW2000",1)~ EXTERN ~MINSCJ~ 32
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(9,1)~ THEN BEGIN 0 // from:
  SAY ~������ �� �� ������ �� �����, �� ��������?~
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(9,2)~ THEN BEGIN 1 // from:
  SAY ~� �� ���� �������������. ������ ������ ���� � �����.~
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(9,3)~ THEN BEGIN 2 // from:
  SAY ~������� ��� ��� ��� ������! �������, ������ �� �����������.~
  IF ~~ THEN EXIT
END

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(9,4)~ THEN BEGIN 3 // from:
  SAY ~������ ����, �� �� ���������� ������ ������� ������! �������, �� ������� ���� �����!~
  IF ~~ THEN EXIT
END

IF WEIGHT #5 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(9,5)~ THEN BEGIN 4 // from:
  SAY ~�, ����� ����� �����. ��� �� ���� �������!~
  IF ~~ THEN EXIT
END

IF WEIGHT #6 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(9,6)~ THEN BEGIN 5 // from:
  SAY ~�� ������� ���� ������ �� �����, ���. �� ������ ����� �����������.~ ~�� ������� ���� ������ �� �����, �����. �� ������ ����� �����������.~
  IF ~~ THEN EXIT
END

IF WEIGHT #7 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(9,7)~ THEN BEGIN 6 // from:
  SAY ~���� ����� ���� ����� ���������... ����� �����, ��� � ���� ������ ������� ��������.~
  IF ~~ THEN EXIT
END

IF WEIGHT #8 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(9,8)~ THEN BEGIN 7 // from:
  SAY ~�������, �� �� � ������ �������������. �������, ����� �������.~
  IF ~~ THEN EXIT
END

IF WEIGHT #9 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(9,9)~ THEN BEGIN 8 // from:
  SAY ~�... ��, ��������, �� ���� ���������, ��� ������ ������� � �����, ��?~
  IF ~~ THEN EXIT
END
