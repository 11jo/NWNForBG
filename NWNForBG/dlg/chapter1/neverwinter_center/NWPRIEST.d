// ����� ������������  ��� �������   ���� ����  ���� ��������� ���� ���� � ��������� ����� ������ ����� ����.

BEGIN ~NWPRIEST~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Global("DestherIsTraitor","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("DestherIsTraitor","GLOBAL",0)~ THEN BEGIN 1 // from:
  SAY @1
  IF ~~ THEN EXIT
END

