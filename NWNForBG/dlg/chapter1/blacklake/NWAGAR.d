// ���������� �������� ���� ������� ������� � ������������� �������. ���, ��� ��� ���� �� �������� ���������, ��� ������� �������� ����������� ������.

// Global("NWArena","GLOBAL",4) - �������� ������ ���������� ������! �������� ����. ��������� ������ SetGlobalTimer("NWTaxTime","GLOBAL",SEVEN_DAYS) 

BEGIN ~NWAGAR~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NWArena","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NWArena","GLOBAL",1)~ THEN BEGIN 1 // from:
  SAY @1
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NWArena","GLOBAL",2)~ THEN BEGIN 2 // from:
  SAY @2
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NWArena","GLOBAL",3)~ THEN BEGIN 3 // from:
  SAY @3
  IF ~~ THEN EXIT
END

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("NWArena","GLOBAL",3)~ THEN BEGIN 4 // from:
  SAY @4
  IF ~~ THEN EXIT
END

