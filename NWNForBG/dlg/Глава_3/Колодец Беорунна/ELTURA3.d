// ������� ��������: ������ ������� ��������� �����   ������� �������  �������   ����������������� ������� ��������� ����� ������ ��� ���������, ����� ��������� ������������ ��� ����� ����� ����������� ��� �� ������� ������� ����.

BEGIN ~ELTURA3~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Class(Player1,MAGE_ALL)GlobalGT("CloakTower","GLOBAL",3)IsGabber(Player1)~ THEN BEGIN 0 // from:
  SAY ~����� ����������, <CHARNAME>, � ��� ��������� ��������� ������� ��������� �����. �� ����������, ���� ����� ���� ���� ����� ������� ���� ���� ��� ����������, ������� ������ ������������� ���� �������.~ [ELTUR056]
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~�� ����� �����-������ ������������ ������� ��� �����-�� ��������� ����������? ���, ���� �����, �������������� ��������� ������������, ������� � ��� ��������?~ [ELTUR058]
  IF ~  Global("CloakTower","GLOBAL",0)~ THEN REPLY ~��� ��?~ GOTO 2
  IF ~  Global("CloakTower","GLOBAL",0)~ THEN REPLY ~������ �� ������ ��� ���?~ GOTO 3
  IF ~~ THEN REPLY ~������ ��� ��������� ��������� ������� ��������� �����?~ GOTO 4
  IF ~  Class(Player1,MAGE_ALL)~ THEN REPLY ~� ���� ���������� ���������� ����.~ GOTO 5
  IF ~  Class(Player1,MAGE_ALL)~ THEN REPLY ~� ���� ���������� ����������.~ GOTO 12
  IF ~  !Class(Player1,MAGE_ALL)~ THEN REPLY ~� ���� ���������� ���������� ����.~ GOTO 6
  IF ~  !Class(Player1,MAGE_ALL)~ THEN REPLY ~� ���� ���������� ����������.~ GOTO 13
  IF ~~ THEN REPLY ~� ���� ��������������� ����� ������������.~ GOTO 7
  IF ~~ THEN REPLY ~��� ����� ����~ GOTO 8
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY ~�������. ��� ��������, ���� �������� � ����� ������������ ����������� ������ ���� ������� ��� ���. � ������� �������, ��� ������� ��������� ����� � ������������.~
  IF ~  Global("CloakTower","GLOBAL",0)~ THEN REPLY ~������ �� ������ ��� ���?~ GOTO 3
  IF ~~ THEN REPLY ~������ ��� ��������� ��������� ������� ��������� �����?~ GOTO 4
  IF ~  Class(Player1,MAGE_ALL)~ THEN REPLY ~� ���� ���������� ���������� ����.~ GOTO 5
  IF ~  Class(Player1,MAGE_ALL)~ THEN REPLY ~� ���� ���������� ����������.~ GOTO 12
  IF ~  !Class(Player1,MAGE_ALL)~ THEN REPLY ~� ���� ���������� ���������� ����.~ GOTO 6
  IF ~  !Class(Player1,MAGE_ALL)~ THEN REPLY ~� ���� ���������� ����������.~ GOTO 13
  IF ~~ THEN REPLY ~� ���� ��������������� ����� ������������.~ GOTO 7
  IF ~~ THEN REPLY ~��� ����� ����~ GOTO 8
END

IF ~~ THEN BEGIN 3 // from: 1.2
  SAY ~�� �����, <CHARNAME>, � �� ��������� �������. � ����� ������������� �������� ���������� ���������� ����� ������. ����, ��� � ���� ���� ������?~
  IF ~  Global("CloakTower","GLOBAL",0)~ THEN REPLY ~��� ��?~ GOTO 2
  IF ~~ THEN REPLY ~������ ��� ��������� ��������� ������� ��������� �����?~ GOTO 4
  IF ~  Class(Player1,MAGE_ALL)~ THEN REPLY ~� ���� ���������� ���������� ����.~ GOTO 5
  IF ~  Class(Player1,MAGE_ALL)~ THEN REPLY ~� ���� ���������� ����������.~ GOTO 12
  IF ~  !Class(Player1,MAGE_ALL)~ THEN REPLY ~� ���� ���������� ���������� ����.~ GOTO 6
  IF ~  !Class(Player1,MAGE_ALL)~ THEN REPLY ~� ���� ���������� ����������.~ GOTO 13
  IF ~~ THEN REPLY ~� ���� ��������������� ����� ������������.~ GOTO 7
  IF ~~ THEN REPLY ~��� ����� ����~ GOTO 8
END

IF ~~ THEN BEGIN 4 // from: 1.3
  SAY ~�� �������� ���������� ������������� � ��������� ����������� � ������ �������� �� ���� �������� ��� ����, ��� ���������� ������, ����� ���������� �� �����. ����������� � ���� � ���� ������� ���������� ���� ������. ����� ���� �������� ��� �������� ����, ����� �� ����� ������ � ������� �����, � ����� ���������� ���� ����������� ��������� �����������, ������� ���� ������������ ����� ������. ������� � ������������� ������� ���, ��� �������� ������ ��� �����.~
  IF ~  Global("CloakTower","GLOBAL",0)~ THEN REPLY ~��� ��?~ GOTO 2
  IF ~  Global("CloakTower","GLOBAL",0)~ THEN REPLY ~������ �� ������ ��� ���?~ GOTO 3
  IF ~  Class(Player1,MAGE_ALL)~ THEN REPLY ~� ���� ���������� ���������� ����.~ GOTO 5
  IF ~  Class(Player1,MAGE_ALL)~ THEN REPLY ~� ���� ���������� ����������.~ GOTO 12
  IF ~  !Class(Player1,MAGE_ALL)~ THEN REPLY ~� ���� ���������� ���������� ����.~ GOTO 6
  IF ~  !Class(Player1,MAGE_ALL)~ THEN REPLY ~� ���� ���������� ����������.~ GOTO 13
  IF ~~ THEN REPLY ~� ���� ��������������� ����� ������������.~ GOTO 7
  IF ~~ THEN REPLY ~��� ����� ����~ GOTO 8
END

IF ~~ THEN BEGIN 5 // from: 1.4
  SAY ~����������, <CHARNAME>. ����� �� ������� ���, ��� ����� ����������� ����.~
  IF ~~ THEN DO ~  StartStore("ELTURA3",LastTalkedToBy(Myself))~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 1.4
  SAY ~����������, <CHARNAME>. ����� �� ������� ���, ��� ����� ����������� ����.~
  IF ~~ THEN DO ~  StartStore("ELTURA4",LastTalkedToBy(Myself))~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.5
  SAY ~����������, <CHARNAME>, ���� ��� �������, ������� ����� ���� ����� ���������� ���� ���, ��� ���������� �����.~
  IF ~~ THEN DO ~  StartStore("ELTURA3",LastTalkedToBy(Myself))~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 1.5
  SAY ~����������, <CHARNAME>, ���� ��� �������, ��� ������ ���������� ���� ���, ��� ���������� �����.~
  IF ~~ THEN DO ~  StartStore("ELTURA4",LastTalkedToBy(Myself))~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.6
  SAY ~�� ������ �������������� ������ �� �����, ��� ���� � ������������ �������, <CHARNAME>, ������, ���� � ���� ��� ����� �������� ���������, � ����������, ��� � ���� ���-������ ���������. ��� ���������� ������������ ����������� ���� � ������ ����~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 8 // from: 1.9
  SAY ~��� ���������. ������, <CHARNAME>. ����� �������, ���� ���� ��� �����������.~
  IF ~~ THEN EXIT
END

// ---------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Class(Player1,MAGE_ALL)GlobalLT("CloakTower","GLOBAL",4)IsGabber(Player1)~ THEN BEGIN 9 // from:
  SAY ~����� ����������, <CHARNAME>, � ��� ��������� ��������� ������� ��������� �����. ��� �������, ������ ������ ����� ������� ���������� ������ �� ������, �� ����� ���� �������� ���� ���������� �� ���� �������������, �������� ��������������, � ������� �� ��� ���������.~ [ELTUR057]
  IF ~~ THEN GOTO 1
END

// ---------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  !Class(Player1,MAGE_ALL)IsGabber(Player1)~ THEN BEGIN 10 // from:
  SAY ~�����������, <CHARNAME>. ������ � �� ���� ���� � ����, � ���� ��� ����������� �����, �� ����� ���� �������� ���� ������������ ���, ��� � ���� ���� ������, ���� �� ��� ������� ���������� �����.~ [ELTUR059]
  IF ~~ THEN GOTO 1
END

// ---------------------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  !IsGabber(Player1)~ THEN BEGIN 11 // from:
  SAY ~�����������, ���� ��� ������. �� ��� �� <CHARNAME>. � �� ��������� ������������� � ���~
  IF ~~ THEN EXIT
END

