// �������� ������, ������� ������� ������, ������� 1 �����, ������� ���� ���� ������ �������� ��������� ����������� ����, �� ���� �������

BEGIN ~KASMA~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)GlobalLT("KnowsAboutMatch","GLOBAL",3)~ THEN BEGIN 0 // from:
  SAY ~�, ������. ��� ����� ��������, �?~
  IF ~  GlobalGT("KnowsAboutMatch","GLOBAL",0)~ THEN REPLY ~��������, ���� ��������� � ����������.~ GOTO 1
  IF ~~ THEN REPLY ~��, �����. �� ������, ������?~ GOTO 2
  IF ~~ THEN REPLY ~����������, ��� ���. � �� ���?~ GOTO 3
  IF ~~ THEN REPLY ~� �����.~ GOTO 4
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~� ��. ����� ���� ��� � �������. ����� ����� �����. ��� ��� ��� ���������! ��������� �� ����, ����� �� � ����� � ����������!~
  IF ~~ THEN REPLY ~� ��� ��� - ��� ��� ������ �� ������?~ GOTO 5
  IF ~~ THEN REPLY ~��������� ���� ���������� ������� �������? �� � ��� ��� �� ������� �����!~ GOTO 6
  IF ~~ THEN REPLY ~� �����.~ GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~��� �������� ��-�� ���� ��������... �������� �����������, ����� ����, ����� �������� ������ ����� ���������� ��� ��������. �������, ��� ����� ������� � ��������... � ������, ��� ������ �� �����, ������� �������. ��, � ����� ����, �������. ��������� � �������, ��� ��� �������� � �����. ������� ����������� ��������� ����, ����� ������������ ��������. �� ����� ����� ��������� ������������ �������.~
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 2.1
  SAY ~���� ��� ��� � ������� ����������. ���������� � ���������. ��, �������, ����� ������, ��� �.~
  IF ~~ THEN DO ~SetGlobal("KnowsAboutMatch","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY ~���� ����� �����. � ���� �� ���� �������. �������� ������� ��������, ����� ������� ������� � ����������. ��� ������ ���������!~
  IF ~  GlobalGT("KnowsAboutMatch","GLOBAL",0)~ THEN REPLY ~� ��� ��� - ��� ��� ������ �� ������?~ GOTO 5
  IF ~  GlobalGT("KnowsAboutMatch","GLOBAL",0)~ THEN REPLY ~��������� ���� ���������� ������� �������? �� � ��� ��� �� ������� �����!~ GOTO 6
  IF ~  Global("KnowsAboutMatch","GLOBAL",0)~ THEN REPLY ~� ����� ���������� �� ��������?~ GOTO 2
  IF ~~ THEN REPLY ~� �����.~ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY ~��, ����� �����. ����� ���!~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.1
  SAY ~�� ���, ������-��. ������� �������. � ���� ���� ������ � ����������� ��������, ���� ������������ �� ��������. � ��-����� *���* ����� ����� ������!~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.2
  SAY ~��� ���������. ��� �����, ����� ���.~
  IF ~~ THEN EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)GlobalLT("KnowsAboutMatch","GLOBAL",3)~ THEN BEGIN 8 // from:
  SAY ~����� ��� �����, �������! ��� �� �� ��� �� ������� ����, �������, � ���� ������ �� ��������.~
  IF ~~ THEN EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  !NumTimesTalkedTo(0)GlobalGT("KnowsAboutMatch","GLOBAL",2)~ THEN BEGIN 12 // from:
  SAY ~����, ��� ��������� �������, ��� ����� ���� ��������.~
  IF ~~ THEN EXIT
END

