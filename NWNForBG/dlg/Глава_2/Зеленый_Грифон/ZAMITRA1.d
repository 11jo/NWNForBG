// �������� ������, ������� ������� ������, ������� 1 �������, ������� ������. ��� ������� ����������� �������, � ����� ����������� � ����� ��������, ������� ������� � �� �������.

BEGIN ~ZAMITRA1~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Global("PickPocket","LOCALS",1)~ THEN BEGIN 10 // from:
  SAY ~����� ���� ���� ��� ����, <MALEFEMALE>...~ [ZAMIT061]
  IF ~~ THEN DO ~SetGlobal("PickPocket","LOCALS",0)~ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Global("PickPocket","LOCALS",2)~ THEN BEGIN 11 // from:
  SAY ~���� � ���������! ��� �� ������ �������� ��� ����!~ [ZAMIT062]
  IF ~~ THEN DO ~SetGlobal("PickPocket","LOCALS",3)SetGlobal("Hostile","MYAREA",1)Enemy()Attack(Player1)~ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Dialog","LOCALS",1)~ THEN BEGIN 0 // from:
  SAY ~������� ����� ���-�� ���� � ���� �����.~ [ZAMIT051]
  IF ~~ THEN EXTERN ~MUTAMIN2~ 19 // � ������� ���, �����, � ��� ����� ��������� ���������. [MUTAM050]
END

IF ~~ THEN BEGIN 1 // from: MUTAMIN2 50
  SAY ~� ������� � ��������� � ���� �����.~ [ZAMIT052]
  IF ~~ THEN DO ~SetGlobal("Dialog","LOCALS",2)~ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  Gender(Player1,MALE)IsGabber(Player1)GlobalGT("AelaithQuest","GLOBAL",0)Global("Pause","MYAREA",0)~ THEN BEGIN 2 // from:
  SAY ~������, �������... ������� ����?~ [ZAMIT059]
  IF ~~ THEN REPLY ~���, � ������ � �����, ��� ������ �����.~ GOTO 3
  IF ~~ THEN REPLY ~�� ���, ��������� ���� �����? ���� �����!~ GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY ~��� ������ ������� ����?~
  IF ~~ THEN REPLY ~�� ������ � ���� - � �����?~ GOTO 6
  IF ~~ THEN REPLY ~��������, �����, ��� �� �� � ���� �����.~ GOTO 4
  IF ~~ THEN REPLY ~��������, �� ��������� �������.~ GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY ~�� ������� ���? ���� ������� �������� ������ �������... ������ � ����� ���, �������! ������ � �����!~
  IF ~~ THEN DO ~SetGlobal("Dialog","LOCALS",2)SetGlobal("Hostile","MYAREA",1)Enemy()Attack(Player1)~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.4
  SAY ~������, ���, �����? ���� ������. ����� ������� ��� �����?~
  IF ~~ THEN DO ~SetGlobal("Dialog","LOCALS",2)SetGlobal("Pause","MYAREA",1)~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.1
  SAY ~���� ������...~
  IF ~~ THEN REPLY ~��� ���� �� �������... � ����� ������� ��� � ����?~ GOTO 7
  IF ~~ THEN REPLY ~��������, �����, ��� �� �� � ���� �����.~ GOTO 4
  IF ~~ THEN REPLY ~��������, �� ��������� �������.~ GOTO 5
END

IF ~~ THEN BEGIN 7 // from: 6.1
  SAY ~����� ���������� � ��� ������� � ������� ��� �� ���� �������� ����� �����������������. � ������� ����� ����������.~
  IF ~~ THEN DO ~SetGlobal("Dialog","LOCALS",2)SetGlobal("SexWithZamitra","GLOBAL",1)EscapeAreaObject("Stairs")~ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  OR(3)Gender(Player1,FEMALE)!IsGabber(Player1)Global("AelaithQuest","GLOBAL",0)~ THEN BEGIN 8 // from:
  SAY ~� �� � ���������� ������ �������������. �����, �����.~ [ZAMIT050]
  IF ~  Gender(Player1,MALE)~ THEN EXIT
  IF ~  Gender(Player1,FEMALE)GlobalGT("AelaithQuest","GLOBAL",0)~ THEN REPLY ~��� ������. ��� ����� ���� ����������� ������.~ GOTO 9
  IF ~  Gender(Player1,FEMALE)GlobalGT("AelaithQuest","GLOBAL",0)~ THEN REPLY ~������. � �����.~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.2
  SAY ~�� ������� ���? ����� ��������! �� ����������� �� ���!~
  IF ~~ THEN DO ~SetGlobal("Hostile","MYAREA",1)Enemy()Attack(Player1)~ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("AelaithQuest","GLOBAL",0)IsGabber(Player1)Global("Pause","MYAREA",1)~ THEN BEGIN 12 // from:
  SAY ~������� ����?~ [ZAMIT052]
  IF ~~ THEN REPLY ~���, � ������ � �����, ��� ������ �����.~ GOTO 3
  IF ~~ THEN REPLY ~�� ���, ��������� ���� �����? ���� �����!~ GOTO 4
END
