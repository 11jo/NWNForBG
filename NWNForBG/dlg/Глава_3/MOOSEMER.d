// -����-������ �������, ���������� ��������. ���� ������� - ������� ��������

BEGIN ~MOOSEMER~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalLT("Rescue","MYAREA",1)~ THEN BEGIN 0 // from:
  SAY ~�����, ������ ���! �������� ��������� ��� �������!~
  IF ~ ~ THEN REPLY ~��� ������ ��������?~ GOTO 1
  IF ~~ THEN REPLY ~��� ���� ������� ������ ��� ���������?~ GOTO 1
  IF ~~ THEN REPLY ~�� �����? � ���� ���� ���-�� ������?~ GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~�� ������� �� ������ ����� � ������ �������, ������ ��� ��� ��� �����. �� ��� �������� �������� ���� �������, � ��� ��������� ���� ������. ��� ����� ��������, ����� �������� � ������� ��� �������.... � ���!!! �������� ������������! ��������, ��� �����!~
  IF ~~ THEN DO ~SetGlobal("UtgartSpawn", "MYAREA",1)~ EXIT
END

// ------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("Rescue","MYAREA",0)~ THEN BEGIN 2 // from:
  SAY ~�������, ��� ������ ��� �� ���� �������! ������� � ��������, � �������� ������!~
  IF ~~ THEN DO ~AddexperienceParty(24000)EscapeArea()~ EXIT
END