// ������ ����� ������� ������� ���� ������� ������� ������� ������� ��� ��� �������, ��������, ����������. ���� �� �� ������������ ����, ���� ����������� �� ����� � ��� �� ������.
BEGIN ~REFUGEE2~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("BeggarsNestDone","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY ~�������� ���� �������. ���� ��... �����������, ��� ���-�� ������ ������� ��� ������... �������.~
  IF ~~ THEN DO ~EscapeAreaDestroy(50)~ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(14,1)Global("BeggarsNestDone","GLOBAL",0)~ THEN BEGIN 1 // from:
  SAY ~�... � �� ���. ���� ��� ���� �� �����. ��� ��� ��������, ��� ��� ��� ����������?~
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(14,2)Global("BeggarsNestDone","GLOBAL",0)~ THEN BEGIN 2 // from:
  SAY ~������� ��������� ������ �� ����� �������? �����, ����� ������� ��������? ��, ���� ���-������? ��� ������...~
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(14,3)Global("BeggarsNestDone","GLOBAL",0)~ THEN BEGIN 3 // from:
  SAY ~��� ���� ����? � ���� ������ ��� ���� ���... ��� �������� ��� �������, ����� �������� �� �����... � ���� ������ �� ��������...~
  IF ~~ THEN EXIT
END

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(14,4)Global("BeggarsNestDone","GLOBAL",0)~ THEN BEGIN 4 // from:
  SAY ~�������� ��� �����. ������, �������� ���� ����� ���, ��� ����� ��� ���������. ��, ��� ��� - ������ �� ���������... �� ��������.~
  IF ~~ THEN EXIT
END

IF WEIGHT #5 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(14,5)Global("BeggarsNestDone","GLOBAL",0)~ THEN BEGIN 5 // from:
  SAY ~�� ������, ��� ����� ������ �� �����? �������� ��� ��� �������? ��� ������ ��� �������� ������...~
  IF ~~ THEN EXIT
END

IF WEIGHT #6 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(14,6)Global("BeggarsNestDone","GLOBAL",0)~ THEN BEGIN 6 // from:
  SAY ~��� ��� ��� � ����... �������. ����� ���������� ����� �� ���������...~
  IF ~~ THEN EXIT
END

IF WEIGHT #7 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(14,7)Global("BeggarsNestDone","GLOBAL",0)~ THEN BEGIN 7 // from:
  SAY ~���� ��� ����� ������, ���� ���� ������ �������� � ��, ��� ������� ����� ������� �����? ��� ����� ������ ���� ���-������ ����� ���� ����������?~
  IF ~~ THEN EXIT
END

IF WEIGHT #8 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(14,8)Global("BeggarsNestDone","GLOBAL",0)~ THEN BEGIN 8 // from:
  SAY ~��������, ����� ���� �� ����������� ��������� �� ��������� ������... �� ��� ����� ������� �����. � � �� ���� ����������...~
  IF ~~ THEN EXIT
END

IF WEIGHT #9 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(14,9)Global("BeggarsNestDone","GLOBAL",0)~ THEN BEGIN 9 // from:
  SAY ~�� �����, �� ������� ����, ����� ���� �� �����-�� ����� �������, � ��� ����... ������� �� ����, ��� ����� �������� ����.~
  IF ~~ THEN EXIT
END

IF WEIGHT #10 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(14,10)Global("BeggarsNestDone","GLOBAL",0)~ THEN BEGIN 10 // from:
  SAY ~���� ��� ������ ����... ������. ��������, ����� ������ ���������, ���� ����� �� ������ ��� �����...~
  IF ~~ THEN EXIT
END

IF WEIGHT #11 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(14,11)Global("BeggarsNestDone","GLOBAL",0)~ THEN BEGIN 11 // from:
  SAY ~�������, ��������� �������� ���������� � ������ ������, �� ��������� �� ���������� �� ����� ������. ��� �� �����, ����� ���� ���������������� ...~
  IF ~~ THEN EXIT
END

IF WEIGHT #12 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(14,12)Global("BeggarsNestDone","GLOBAL",0)~ THEN BEGIN 12 // from:
  SAY ~��������� ������ �� ���� ��� ������� ������ �� ���� �����... ����� ����, ������ - ������� �� ���.~
  IF ~~ THEN EXIT
END

IF WEIGHT #13 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(14,13)Global("BeggarsNestDone","GLOBAL",0)~ THEN BEGIN 13 // from:
  SAY ~�� ��������... ������. ����� ������ ����... ������� �� ����� ������� �����. ����� ���� ������?~
  IF ~~ THEN EXIT
END

IF WEIGHT #14 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(14,14)Global("BeggarsNestDone","GLOBAL",0)~ THEN BEGIN 14 // from:
  SAY ~��� ����� �����... � ����� ������. ����, ������... ��� ������ �� ������� ������-������ ��������� ���������, � ����� ����� �����.~
  IF ~~ THEN EXIT
END

