// ����� ������������  ��� �������   ����� �����  ��� ���������� ����� ����� ����� �������� ����� ������� ���������. �������, �������� ��������� ������� ������� ���, ��� � ������ ������ ���������� � ������������ ������� � �����������.

BEGIN ~OLEFF2~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)Global("DestherIsTraitor","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY ~�����������, ���! �� ������� ���������� ������ ����� ������������ � ��� ������� �������.~ [OLEFF055]
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1  // 0.1
  SAY ~� ���� ������������� ���� ����� �������, ��� �� �������� ���������������� ��� ������� �������� ��������� ����� ����, ��� ��� ���� ������ ����� ���������.~ [OLEFF056]
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2 // 1.1
  SAY ~������ ����� ��� ��� �� ������ ������, ��������� ������� ����������� �����, ����������, ������� ������������ � ���� � �������� ��� ���� ������������ ������������� �� ���, ���� �� ��������.~ [OLEFF057]
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3 // 0.2
  SAY ~��, �������, ���������� � ���� - ��� ��� ����� �������� ���������� �������� ��������� �����.~ [OLEFF058]
  IF ~  Global("Blanc","LOCALS",0)~ THEN DO ~IncrementGlobal("MedicineTalkNWN","MYAREA",1)SetGlobal("Blanc","LOCALS",1)~ EXIT
  IF ~  Global("Blanc","LOCALS",1)~ THEN EXIT
END

//------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)Global("DestherIsTraitor","GLOBAL",0)~ THEN BEGIN 4 // from:
  SAY ~����� ��������� ������� �� ���, ���� �� �������, ������ �� ������� ����� �� ���������, ����� ������ ����. � ����������� ��������� �� ���������, ��� �� ��� ���������.~
  IF ~~ THEN GOTO 1
END

// ------------------------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)GlobalGT("DestherIsTraitor","GLOBAL",0)~ THEN BEGIN 5 // from:
  SAY ~����� ������� ��������, ����� ��������, ������ ����� �� ��������� ��� �� ������, ����� �� ����� � ���� � ������� ���������� ���������.~
  IF ~~ THEN EXIT
END

