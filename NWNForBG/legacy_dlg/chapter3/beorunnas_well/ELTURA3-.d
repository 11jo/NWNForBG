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
  IF ~  Class(Player1,MAGE_ALL)~ THEN REPLY ~� ���� ���������� ���������� �������.~ GOTO 5
  IF ~  !Class(Player1,MAGE_ALL)~ THEN REPLY ~� ���� ���������� ���������� �������.~ GOTO 6
  IF ~  Class(Player1,MAGE_ALL)GlobalGT("CloakTower","GLOBAL",3)~ THEN REPLY ~� ���� ��������������� ����� ������������.~ GOTO 7
  IF ~  Class(Player1,MAGE_ALL)GlobalLT("CloakTower","GLOBAL",4)~ THEN REPLY ~� ���� ��������������� ����� ������������.~ GOTO 8
  IF ~  !Class(Player1,MAGE_ALL)~ THEN REPLY ~� ���� ��������������� ����� ������������.~ GOTO 9
  IF ~~ THEN REPLY ~��� ����� ����~ GOTO 10
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY ~�������. ��� ��������, ���� �������� � ����� ������������ ����������� ������ ���� ������� ��� ���. � ������� �������, ��� ������� ��������� ����� � ������������.~
  IF ~  Global("CloakTower","GLOBAL",0)~ THEN REPLY ~������ �� ������ ��� ���?~ GOTO 3
  IF ~~ THEN REPLY ~������ ��� ��������� ��������� ������� ��������� �����?~ GOTO 4
  IF ~  Class(Player1,MAGE_ALL)~ THEN REPLY ~� ���� ���������� ���������� �������.~ GOTO 5
  IF ~  !Class(Player1,MAGE_ALL)~ THEN REPLY ~� ���� ���������� ���������� �������.~ GOTO 6
  IF ~  Class(Player1,MAGE_ALL)GlobalGT("CloakTower","GLOBAL",3)~ THEN REPLY ~� ���� ��������������� ����� ������������.~ GOTO 7
  IF ~  Class(Player1,MAGE_ALL)GlobalLT("CloakTower","GLOBAL",4)~ THEN REPLY ~� ���� ��������������� ����� ������������.~ GOTO 8
  IF ~  !Class(Player1,MAGE_ALL)~ THEN REPLY ~� ���� ��������������� ����� ������������.~ GOTO 9
  IF ~~ THEN REPLY ~��� ����� ����~ GOTO 10
END

IF ~~ THEN BEGIN 3 // from: 1.2
  SAY ~�� �����, <CHARNAME>, � �� ��������� �������. � ����� ������������� �������� ���������� ���������� ����� ������. ����, ��� � ���� ���� ������?~
  IF ~  Global("CloakTower","GLOBAL",0)~ THEN REPLY ~��� ��?~ GOTO 2
  IF ~~ THEN REPLY ~������ ��� ��������� ��������� ������� ��������� �����?~ GOTO 4
  IF ~  Class(Player1,MAGE_ALL)~ THEN REPLY ~� ���� ���������� ���������� �������.~ GOTO 5
  IF ~  !Class(Player1,MAGE_ALL)~ THEN REPLY ~� ���� ���������� ���������� �������.~ GOTO 6
  IF ~  Class(Player1,MAGE_ALL)GlobalGT("CloakTower","GLOBAL",3)~ THEN REPLY ~� ���� ��������������� ����� ������������.~ GOTO 7
  IF ~  Class(Player1,MAGE_ALL)GlobalLT("CloakTower","GLOBAL",4)~ THEN REPLY ~� ���� ��������������� ����� ������������.~ GOTO 8
  IF ~  !Class(Player1,MAGE_ALL)~ THEN REPLY ~� ���� ��������������� ����� ������������.~ GOTO 9
  IF ~~ THEN REPLY ~��� ����� ����~ GOTO 10
END

IF ~~ THEN BEGIN 4 // from: 1.3
  SAY ~�� �������� ���������� ������������� � ��������� ����������� � ������ �������� �� ���� �������� ��� ����, ��� ���������� ������, ����� ���������� �� �����. ����������� � ���� � ���� ������� ���������� ���� ������. ����� ���� �������� ��� �������� ����, ����� �� ����� ������ � ������� �����, � ����� ���������� ���� ����������� ��������� �����������, ������� ���� ������������ ����� ������. ������� � ������������� ������� ���, ��� �������� ������ ��� �����.~
  IF ~  Global("CloakTower","GLOBAL",0)~ THEN REPLY ~��� ��?~ GOTO 2
  IF ~  Global("CloakTower","GLOBAL",0)~ THEN REPLY ~������ �� ������ ��� ���?~ GOTO 3
  IF ~  Class(Player1,MAGE_ALL)~ THEN REPLY ~� ���� ���������� ���������� �������.~ GOTO 5
  IF ~  !Class(Player1,MAGE_ALL)~ THEN REPLY ~� ���� ���������� ���������� �������.~ GOTO 6
  IF ~  Class(Player1,MAGE_ALL)GlobalGT("CloakTower","GLOBAL",3)~ THEN REPLY ~� ���� ��������������� ����� ������������.~ GOTO 7
  IF ~  Class(Player1,MAGE_ALL)GlobalLT("CloakTower","GLOBAL",4)~ THEN REPLY ~� ���� ��������������� ����� ������������.~ GOTO 8
  IF ~  !Class(Player1,MAGE_ALL)~ THEN REPLY ~� ���� ��������������� ����� ������������.~ GOTO 9
  IF ~~ THEN REPLY ~��� ����� ����~ GOTO 10
END

IF ~~ THEN BEGIN 5 // from: 1.4
  SAY ~����������, <CHARNAME>. ����� �� ������� ���, ��� ����� ����������� ����.~
  IF ~~ THEN DO ~  StartStore("ELTURA3",LastTalkedToBy(Myself))~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.5
  SAY ~����������, <CHARNAME>, ���� ��� �������, ������� ����� ���� ����� ���������� ���� ���, ��� ���������� �����.~
  IF ~~ THEN DO ~  StartStore("ELTURA3",LastTalkedToBy(Myself))~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.6
  SAY ~���� ����� ������� ���� ���� �������������� ������ �� �����, ��� ���� � ������������ �������, <CHARNAME>, ������, ���� � ���� ��� ����� �������� ���������, � ����������, ��� ���� ����� ����� ������� � �����������.~
  IF ~~ THEN REPLY ~�������, � ������� �����.~ GOTO 10
  IF ~~ THEN REPLY ~��� �� �������� ����� � �����������.~ GOTO 11
END

IF ~~ THEN BEGIN 8 // from: 1.7
  SAY ~����� ��������������� ������������, ����� ��������� �����. � ����� ������, ������� ������ �����-�� ������� �������������� ��������� ������� � ���������� �����������. ����� �����, ����� ��������� 2000 �������. ���� ������, ���, �������, ����� ������������ ���� � ���, ��� ���� ����� ��������� �������������� ��������������� ������������, ���� � ���� � ����� ��� �����, � ������� ����������� ������� �������� ���������� ���������. ������ ���� ��, ���� �� ���� ������ ���� ��������� �������.~
  IF ~~ THEN REPLY ~�������, � ������� �����.~ GOTO 10
  IF ~  PartyGoldGT(1999)~ THEN REPLY ~� ������� ����� - 2000 �������.~ GOTO 12
END

IF ~~ THEN BEGIN 9 // from: 1.8
  SAY ~��� � ��� ���������, ����������� ��������������� ������ ��� ���, ��� ���������� �����. ������ ���� � ������� ����� ����� ����. � ������ ������ � ������� ����-������ ���.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 10 // from: 1.9
  SAY ~��� ���������. ������, <CHARNAME>. ����� �������, ���� ���� ��� �����������.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 11 // from: 7.2
  SAY ~�������! �� ���� �������, � ��� ���� �����. ����� �������� ������� �����������, �� �� ������ ����� � �����������, ���������������� ����� ��������.~
  IF ~~ THEN DO ~SetGlobal("ToLab","MYAREA",1)~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 8.2
  SAY ~��� ������. ����� ���������� � ������� ������ �������� �����. ����� ������� � �����������, ���� ���� ����� � ����� ������.~
  IF ~~ THEN DO ~SetGlobal("ToLab","MYAREA",1)TakePartyGold(2000)~ EXIT
END

// ---------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Class(Player1,MAGE_ALL)GlobalLT("CloakTower","GLOBAL",4)IsGabber(Player1)~ THEN BEGIN 13 // from:
  SAY ~����� ����������, <CHARNAME>, � ��� ��������� ��������� ������� ��������� �����. ��� �������, ������ ������ ����� ������� ���������� ������ �� ������, �� ����� ���� �������� ���� ���������� �� ���� �������������, �������� ��������������, � ������� �� ��� ���������.~ [ELTUR057]
  IF ~~ THEN GOTO 1
END

// ---------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  !Class(Player1,MAGE_ALL)IsGabber(Player1)~ THEN BEGIN 14 // from:
  SAY ~�����������, <CHARNAME>. ������ � �� ���� ���� � ����, � ���� ��� ����������� �����, �� ����� ���� �������� ���� ������������ ���, ��� � ���� ���� ������, ���� �� ��� ������� ���������� �����.~ [ELTUR059]
  IF ~~ THEN GOTO 1
END

// ---------------------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  !IsGabber(Player1)~ THEN BEGIN 15 // from:
  SAY ~�����������, ���� ��� ������. �� ��� �� <CHARNAME>. � �� ��������� ������������� � ���~
  IF ~~ THEN EXIT
END

