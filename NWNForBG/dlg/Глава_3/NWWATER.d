// �������� ��� ���������� ���������� ���������� ����

// ��� ����� ����, � ��� ����� ���� � ������� � ���� ����?

BEGIN ~NWWATER~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY ~�, ��� ���� ��� ���� ������� � ���� ����. ����� ���, <RACE>, ��� �� �� ���� ������?~
  IF ~~ THEN REPLY ~��� ��? ��� �� �����?~ GOTO 1
  IF ~  Global("NaxJob","GLOBAL",1)~ THEN REPLY ~� ���� ���������� ������� �����.~ GOTO 2
  IF ~~ THEN REPLY ~���������� ��� �� ���� ����������.~ GOTO 3
  IF ~~ THEN REPLY ~� ����, ����� �� ���� ��� ���������� �������.~ GOTO 4
  IF ~~ THEN REPLY ~�� ������ ������������ � ���� ������ ����.~ GOTO 5
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~�, ����������, ��� ������ ����. �� ������� ������ � �������� ����. ������ � ������ ��������� ��� ������. �� ������ ��������� ��� ��������� �����-������ �������, ��� ��������� ���-�� �������� ���. ������ ������������.~
  IF ~  Global("NaxJob","GLOBAL",1)~ THEN REPLY ~� ���� ���������� ������� �����.~ GOTO 2
  IF ~~ THEN REPLY ~���������� ��� �� ���� ����������.~ GOTO 3
  IF ~~ THEN REPLY ~� ����, ����� �� ���� ��� ���������� �������.~ GOTO 4
  IF ~~ THEN REPLY ~�� ������ ������������ � ���� ������ ����.~ GOTO 5
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~����� ������. ���� �� ����� ������, ����� ������ ����� ���������, ����� ���� � ���������� �� ������ ��������.~
  IF ~  Global("NaxJob","GLOBAL",1)~ THEN REPLY ~��. ��������, ���������� �����.~ GOTO 10
  IF ~~ THEN REPLY ~���������� ��� �� ���� ����������.~ GOTO 3
  IF ~~ THEN REPLY ~� ����, ����� �� ���� ��� ���������� �������.~ GOTO 4
  IF ~~ THEN REPLY ~�� ������ ������������ � ���� ������ ����.~ GOTO 5
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY ~������� � ���� ����� ��� ��� ����� �������, ���������� �� ���� �����������. ����� �� ��������� ������ � ������ ���� ��������� ����. � ���������� �� ��� ����... ���� � ��������, ��� ����� ���������� ������ ���. �� ��� �����, ���� ����� ������ ������ ��� ���� ������� � ���� ������ ����������.~
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY ~���� ������, � ���� ���� ��� ���-���, ��� ������� �� ���� �� ����� �����. �� ������ �����? � �� ���� ��� �������, ��� ��� ����� �� �������, �� �� ����� ���������� ��������������.~
  IF ~~ THEN REPLY ~��, ����� ��� ���-������ ����������.~ GOTO 7
  IF ~~ THEN REPLY ~���. ��� �� ����� ���������� �������.~ GOTO 8
END

IF ~~ THEN BEGIN 5 // from: 0.5
  SAY ~� ��� ��� �������� ��� ����� ���������, �� ������������, ���� �� ��������� �������� ���� ����, � ����� �� ������������.~
  IF ~~ THEN REPLY ~��. � ����, ����� �� ����.~ GOTO 9
  IF ~~ THEN REPLY ~��� ��? ��� �� �����?~ GOTO 1
  IF ~  Global("NaxJob","GLOBAL",1)~ THEN REPLY ~� ���� ���������� ������� �����.~ GOTO 2
  IF ~~ THEN REPLY ~���������� ��� �� ���� ����������.~ GOTO 3
  IF ~~ THEN REPLY ~� ����, ����� �� ���� ��� ���������� �������.~ GOTO 4
END

IF ~~ THEN BEGIN 6 // from: 3.1
  SAY ~�� �������� ����, <RACE> � ��������� ����� ������ �������� � ������ ��������� ��� ������. ���� �� ������ �� ����?~
  IF ~  Global("NaxJob","GLOBAL",1)~ THEN REPLY ~� ���� ���������� ������� �����.~ GOTO 2
  IF ~~ THEN REPLY ~� ����, ����� �� ���� ��� ���������� �������.~ GOTO 4
  IF ~~ THEN REPLY ~�� ������ ������������ � ���� ������ ����.~ GOTO 5
END

IF ~~ THEN BEGIN 7 // from: 4.1
  SAY ~�������, ����� ��������� ���� �������, � � ����� �� ���.~
  IF ~~ THEN DO ~GiveItemCreate("WAND12",LastTalkedToBy,18,0,0)PlayDead(45)CreateVisualEffectObject("SPDISPMA",Myself)DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.2
  SAY ~�������. ����� ������ ������� ���, ���� �� ������, � � ������� ���� �������.~
  IF ~~ THEN REPLY ~��� ��? ��� �� �����?~ GOTO 1
  IF ~  Global("NaxJob","GLOBAL",1)~ THEN REPLY ~� ���� ���������� ������� �����.~ GOTO 2
  IF ~~ THEN REPLY ~���������� ��� �� ���� ����������.~ GOTO 3
  IF ~~ THEN REPLY ~� ����, ����� �� ���� ��� ���������� �������.~ GOTO 4
END

IF ~~ THEN BEGIN 9 // from: 5.1
  SAY ~����� ������. � ������� ����, ������ ������.~
  IF ~~ THEN DO ~PlayDead(45)CreateVisualEffectObject("SPDISPMA",Myself)DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.1
  SAY ~����� ������. � ������, ��� �� �������.~
  IF ~~ THEN DO ~SetGlobal("ToNax","MYAREA",1)~ EXIT
END

