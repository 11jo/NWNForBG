// ����-����� ������� ���������� ���������� ������ ������� ��������
BEGIN ~CHALJAL~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~ True()~ THEN BEGIN 0 // from:
  SAY ~����� ���������� � '���������� ����������'. � - ������ �������, � �� �����, � �������, ����� ��������� ���� � �������� �� �������, �, �����������?~
  IF ~~ THEN REPLY ~��� � ���� ����� ����������?~ GOTO 1
  IF ~~ THEN REPLY ~�������� ���, ��� � ���� ������.~ GOTO 2
  IF ~~ THEN REPLY ~� ���� ���� ������� �� ���������� ���������.~ GOTO 3
  IF ~~ THEN REPLY ~� ���� ���� ���, ��� ��� �����. �� �������, ������.~ GOTO 4
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~��, � ��� ������� ����� �������, ��������, ��� �� - ������������� ����� � ����� ������� ������, ��� ����-�����. ������ �� ��� �� ���������� ������ �������?~
  IF ~~ THEN REPLY ~�������� ���, ��� � ���� ������.~ GOTO 2
  IF ~~ THEN REPLY ~� ���� ���� ������� �� ���������� ���������.~ GOTO 3
  IF ~~ THEN REPLY ~� ���� ���� ���, ��� ��� �����. �� �������, ������.~ GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~�� �� ��������, �������. ������ �� ��������. ���, ���������.~
  IF ~~ THEN DO ~StartStore("Chaljal",LastTalkedToBy(Myself))~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY ~��, �������� ���, <SIRMAAM>. � ���� ������ ������� ����� ����.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY ~������ � ����� ������� �������, ������ ���. �� ����� ����� ���-���, ������ ��� ��� ����� ����� ���� �����������, �������, � ������ � �������.~
  IF ~  GlobalGT("CharwoodCompleted","GLOBAL",0)~ THEN REPLY ~�� ������ �� �� �������� �� �������?~ GOTO 5
  IF ~  Global("CharwoodCompleted","GLOBAL",0)~ THEN REPLY ~�� ������ �� �� �������� �� �������?~ GOTO 6
  IF ~  GlobalGT("NwnwoodCompleted","GLOBAL",0)~ THEN REPLY ~�� ���� �� ���� ������ �� ���� �����������?~ GOTO 7
  IF ~  Global("NwnwoodCompleted","GLOBAL",0)~ THEN REPLY ~�� ���� �� ���� ������ �� ���� �����������?~ GOTO 8
  IF ~~ THEN REPLY ~�� ���� �� ������ �� �������?~ GOTO 9
  IF ~~ THEN REPLY ~�������, � ������ ���.~ GOTO 4
END

IF ~~ THEN BEGIN 5 // from: 3.1
  SAY ~���, ��� ����� ������ ���� ��������, �� ������� ��� ��������� �����-�� �������� �����������, ��� �� ������� ��� ��� ��������. ������, ����� � ������ ������ ������ ������� ���������, ��� ���������� �����-�� ������� ����. ����� ���, ���� �� ������, ��� ��� ���� ������ ������ �����, ��� ��� �����.~
  IF ~  GlobalGT("NwnwoodCompleted","GLOBAL",0)~ THEN REPLY ~�� ���� �� ���� ������ �� ���� �����������?~ GOTO 7
  IF ~  Global("NwnwoodCompleted","GLOBAL",0)~ THEN REPLY ~�� ���� �� ���� ������ �� ���� �����������?~ GOTO 8
  IF ~~ THEN REPLY ~�� ���� �� ������ �� �������?~ GOTO 9
  IF ~~ THEN REPLY ~�������� ���, ��� � ���� ������.~ GOTO 2
  IF ~~ THEN REPLY ~�������, � �����.~ GOTO 4
END

IF ~~ THEN BEGIN 6 // from: 3.2
  SAY ~������ ������, ��� �������� ����� �� ������� ������� ������ �� ���������. � �����-��, ���, �������, � �������. �������, ������������ �����.~
  IF ~  GlobalGT("NwnwoodCompleted","GLOBAL",0)~ THEN REPLY ~�� ���� �� ���� ������ �� ���� �����������?~ GOTO 7
  IF ~  Global("NwnwoodCompleted","GLOBAL",0)~ THEN REPLY ~�� ���� �� ���� ������ �� ���� �����������?~ GOTO 8
  IF ~~ THEN REPLY ~�� ���� �� ������ �� �������?~ GOTO 9
  IF ~~ THEN REPLY ~�������� ���, ��� � ���� ������.~ GOTO 2
  IF ~~ THEN REPLY ~�������, � �����.~ GOTO 4
END

IF ~~ THEN BEGIN 7 // from: 3.3
  SAY ~��� ������ ��������� ����������� ���������������, ����� ��������� ������, � ��� ������������, ��� ���-�� �������, ���, ������� ����. ��� �� �������, ��� ���� ������ ��������, ������� ������, ��� ��� ��� ����� � ��� �����������.~
  IF ~  GlobalGT("CharwoodCompleted","GLOBAL",0)~ THEN REPLY ~�� ������ �� �� �������� �� �������?~ GOTO 5
  IF ~  Global("CharwoodCompleted","GLOBAL",0)~ THEN REPLY ~�� ������ �� �� �������� �� �������?~ GOTO 6
  IF ~~ THEN REPLY ~�� ���� �� ������ �� �������?~ GOTO 9
  IF ~~ THEN REPLY ~�������� ���, ��� � ���� ������.~ GOTO 2
  IF ~~ THEN REPLY ~�������, � �����.~ GOTO 4
END

IF ~~ THEN BEGIN 8 // from: 3.4
  SAY ~�� ��� ����� ��� �� ����� �� ����, �� ������� ���� ���� ���, ���� � ���� � ��� ������� �� ������ ���.~
  IF ~~ THEN REPLY ~�� ������ ����-������, ��� �� ����� ���� � ��������� �����?~ GOTO 10
  IF ~  GlobalGT("CharwoodCompleted","GLOBAL",0)~ THEN REPLY ~�� ������ �� �� �������� �� �������?~ GOTO 5
  IF ~  Global("CharwoodCompleted","GLOBAL",0)~ THEN REPLY ~�� ������ �� �� �������� �� �������?~ GOTO 6
  IF ~~ THEN REPLY ~�� ���� �� ������ �� �������?~ GOTO 9
  IF ~~ THEN REPLY ~�������� ���, ��� � ���� ������.~ GOTO 2
  IF ~~ THEN REPLY ~�������, � �����.~ GOTO 4
END

IF ~~ THEN BEGIN 10 // from: 8.1
  SAY ~�� ����� ����, ������� ���� �������� �� � ����. �����, ���� ���� � ��� ����������. �� ���-�� � ���� �� ������-������� ����-������ ���������. ���� ���� ����� �� ����� ������, ����� ������� � ����.~
  IF ~  GlobalGT("CharwoodCompleted","GLOBAL",0)~ THEN REPLY ~�� ������ �� �� �������� �� �������?~ GOTO 5
  IF ~  Global("CharwoodCompleted","GLOBAL",0)~ THEN REPLY ~�� ������ �� �� �������� �� �������?~ GOTO 6
  IF ~~ THEN REPLY ~�� ���� �� ������ �� �������?~ GOTO 9
  IF ~~ THEN REPLY ~�������� ���, ��� � ���� ������.~ GOTO 2
  IF ~~ THEN REPLY ~�������, � �����.~ GOTO 4
END

IF ~~ THEN BEGIN 9 // from: 3.5
  SAY ~��, ������ � ��� ���-��� �� �����-�����... ��, � ��� ��� �? �� ��������� � ����������� ������ ������ - ��� ������� ���� ������ ��� ���� ����.~
  IF ~  CheckStatGT(LastTalkedToBy(Myself),13,CHR)~ THEN REPLY ~� �� ������ �� ������ ����������, � ��� ����, ��� ���������� ����?~ GOTO 11
  IF ~  CheckStatLT(LastTalkedToBy(Myself),14,CHR)~ THEN REPLY ~� �� ������ �� ������ ����������, � ��� ����, ��� ���������� ����?~ GOTO 12
  IF ~  GlobalGT("CharwoodCompleted","GLOBAL",0)~ THEN REPLY ~�� ������ �� �� �������� �� �������?~ GOTO 5
  IF ~  Global("CharwoodCompleted","GLOBAL",0)~ THEN REPLY ~�� ������ �� �� �������� �� �������?~ GOTO 6
  IF ~  GlobalGT("NwnwoodCompleted","GLOBAL",0)~ THEN REPLY ~�� ���� �� ���� ������ �� ���� �����������?~ GOTO 7
  IF ~  Global("NwnwoodCompleted","GLOBAL",0)~ THEN REPLY ~�� ���� �� ���� ������ �� ���� �����������?~ GOTO 8
  IF ~~ THEN REPLY ~�������� ���, ��� � ���� ������.~ GOTO 2
  IF ~~ THEN REPLY ~�������, � �����.~ GOTO 4
END

IF ~~ THEN BEGIN 11 // from: 9.1
  SAY ~��. �����... ��� � ����. ����, �������, ����� ����������. �� ���� ������� ��������, ���? ���. �������, ��� ���� ������� ����� ��� ������� ����������, � ��� ������ ��������� �������� ���������. ������� ����� ����� ����, �����, � ������ ������ �������� ��� ��������� � ����� ������, �� � ������� �������� ������ ������.~
  IF ~  GlobalGT("CharwoodCompleted","GLOBAL",0)~ THEN REPLY ~�� ������ �� �� �������� �� �������?~ GOTO 5
  IF ~  Global("CharwoodCompleted","GLOBAL",0)~ THEN REPLY ~�� ������ �� �� �������� �� �������?~ GOTO 6
  IF ~  GlobalGT("NwnwoodCompleted","GLOBAL",0)~ THEN REPLY ~�� ���� �� ���� ������ �� ���� �����������?~ GOTO 7
  IF ~  Global("NwnwoodCompleted","GLOBAL",0)~ THEN REPLY ~�� ���� �� ���� ������ �� ���� �����������?~ GOTO 8
  IF ~~ THEN REPLY ~�������� ���, ��� � ���� ������.~ GOTO 2
  IF ~~ THEN REPLY ~�������, � �����.~ GOTO 4
END

IF ~~ THEN BEGIN 12 // from: 9.2
  SAY ~������, �� �� ���� � ��������� ����� ������. �� �� ������ ������, �� � ����� ���������.~
  IF ~  GlobalGT("CharwoodCompleted","GLOBAL",0)~ THEN REPLY ~�� ������ �� �� �������� �� �������?~ GOTO 5
  IF ~  Global("CharwoodCompleted","GLOBAL",0)~ THEN REPLY ~�� ������ �� �� �������� �� �������?~ GOTO 6
  IF ~  GlobalGT("NwnwoodCompleted","GLOBAL",0)~ THEN REPLY ~�� ���� �� ���� ������ �� ���� �����������?~ GOTO 7
  IF ~  Global("NwnwoodCompleted","GLOBAL",0)~ THEN REPLY ~�� ���� �� ���� ������ �� ���� �����������?~ GOTO 8
  IF ~~ THEN REPLY ~�������� ���, ��� � ���� ������.~ GOTO 2
  IF ~~ THEN REPLY ~�������, � �����.~ GOTO 4
END
