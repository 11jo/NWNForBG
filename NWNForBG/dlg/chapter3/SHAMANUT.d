// ���� ������ �������� ������� ���� ����� ������� ����, ����� �� ������ ���� ������� ������� � ���, ��� ��� - ������� ������� ����� �� ��������.

BEGIN ~SHAMANUT~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalLT("NW_Medicine","GLOBAL",2)~ THEN BEGIN 0 // from:
  SAY ~���� ���� � ������. ������� ������� ��� �����. ����������, �������� � ������� ������������, ������ ������ �������.~
  IF ~  GlobalGT("NWCoverlet","GLOBAL",0)~ THEN REPLY ~� ��� ��������� � �������.~ GOTO 1
  IF ~  Global("NWCoverlet","GLOBAL",0)~ THEN REPLY ~��� � ���� ����� ������?~ GOTO 2
  IF ~~ THEN REPLY ~������ �����, � ���� ������ ����.~ GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~����� � ���� ���� ����������� � ���� ������, ���� �� ������ �� ����. � ��� ����� �� �������� �������.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY ~�� ������� ������ � ������. ����������, ������ ������������� � ����.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.4
  SAY ~����� �� ������ �������� ���� ��������� ������ �� ���� ������!~
  IF ~~ THEN DO ~SetGlobal("ZokanHostile","GLOBAL",1)Enemy()~ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("NW_Medicine","GLOBAL",1)~ THEN BEGIN 4 // from:
  SAY ~���� ������� ������ ���� ����� �� ������, <CHARNAME>. ������, ����� � ������ ���� �����������, � ���� �������� ���� �����. ������ ������ ������ ���. �� ���� ������� ���� ����� ������ ����� �� ����� �������. �� ������� ���� ����.~
  IF ~~ THEN EXIT
END

