// ����� ������������ ������� �����   �����  �����   �������� ������ �������� �������� ������� � �����������, � ���� ���� - �� ����������. ������, �� ���������� �� ������ ������ �� ������ �������.

BEGIN ~GRAXX~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(2,1)Global("MyPermit","LOCALS",0)~ THEN BEGIN 0 // from:
  SAY ~� ���� �������� � ���� ������ ���� � ��� ������ ����. � ���� ��� ������� �������, � ���������� ������ ��� ������. � ��� �� ���� �����!~
  IF ~~ THEN REPLY ~��� �������� �� ������ ��������� ��������.~ GOTO 1
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~��������. �� ������� �������. ��� ����� ��� � ����� ����. ��, �����.~
  IF ~Global("MyPermit","LOCALS",1)
!Global("NWArena","GLOBAL",4)~ THEN REPLY ~��� �� ��� �����������?~ GOTO 3
  IF ~  OR(3)Class(Player1,FIGHTER_ALL)
Class(Player1,RANGER_ALL)
Class(Player1,PALADIN)
Global("MyPermit","LOCALS",0)~ THEN REPLY ~��� �� ��� �����������?~ GOTO 4
  IF ~  Global("NWArena","GLOBAL",4)~ THEN REPLY ~��� �� ��� �����������?~ GOTO 5
  IF ~  !Class(Player1FIGHTER_ALL)
!Class(Player1,RANGER_ALL)
!Class(Player1,PALADIN)
Global("MyPermit","LOCALS",0)
!Global("NWArena","GLOBAL",4)~ THEN REPLY ~��� �� ��� �����������?~ GOTO 6
  IF ~~ THEN REPLY ~������ ������ ���������, ���� ���� � ������������ ��� ���� ���������?~ GOTO 7
  IF ~~ THEN REPLY ~��� �� ������ � ����?~ GOTO 8
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~����� �����. ��� �� �������� ��������� �����.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY ~�� � ��� ��� ������. � ��� ��� ���� ������� � "��������" � ������� ����� �����. ��� � ������ ������� �����.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.2
  SAY ~���, ������ �� ������� �� ����� �����. ���� ���� ��������... ���... ��, �� ������ �������� �������. ������ �� �������� �� ����. �� ����, ����� ��� �����. ���� ���� ��� ��������. ���������� "��������". ���� ������ �����������, ����� ����. � ���� ������� ��� �������, �� ����� 250 �������.~
  IF ~  PartyGoldGT(249)~ THEN REPLY ~��� ��� 250 �������.~ GOTO 9
  IF ~  PartyGoldLT(250)~ THEN REPLY ~� ���� ��� ����� �����, � ����� �����.~ GOTO 2
  IF ~~ THEN REPLY ~���, �������.~ GOTO 2
END

IF ~~ THEN BEGIN 5 // from: 1.3
  SAY ~���, ������ �� ������� �� ����� �����. ���� ���� ��������... ���... � ����� ������� ��� "��������", �� � ��� ������ ���������� ������! ��� ���� �� ������ �� �����, �������. �������� ����.~
  IF ~~ THEN REPLY ~������ ������ ���������, ���� ���� � ������������ ��� ���� ���������?~ GOTO 7
  IF ~~ THEN REPLY ~��� �� ������ � ����?~ GOTO 8
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 2
END

IF ~~ THEN BEGIN 6 // from: 1.4
  SAY ~� �� ����. ��� ����� � �������� ��� ��������. �� ��� �������� ������, � ��� ������� ����.~
  IF ~~ THEN REPLY ~�� ������ ������� ���. ������ ���������.~ GOTO 11
  IF ~  Race(LastTalkedToBy(Myself),DWARF)~ THEN REPLY ~�� ��, �� ���� <RACE>, ��� � �. ����� ���� �� ������ ���� ��������.~ GOTO 12
  IF ~~ THEN REPLY ~�������, ��� � ������� ����!~ GOTO 13
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 2
END

IF ~~ THEN BEGIN 7 // from: 1.5
  SAY ~������� �� ������, �������! �������, ����� �� �������, ��� ����� ��������� ���������� ������, ��� ������ ����� ��� ����������, ��� ��, ������ ����, ����� ���������� � ���? ���� �� �������� �� ���, ��� ������ ��������, ��� ��� �� ������, ��� �� �� ����� �� �������� ������.~
  IF ~Global("MyPermit","LOCALS",1)
!Global("NWArena","GLOBAL",4)~ THEN REPLY ~��� �� ��� �����������?~ GOTO 3
  IF ~  OR(3)Class(Player1,FIGHTER_ALL)
Class(Player1,RANGER_ALL)
Class(Player1,PALADIN)
Global("MyPermit","LOCALS",0)~ THEN REPLY ~��� �� ��� �����������?~ GOTO 4
  IF ~  Global("NWArena","GLOBAL",4)~ THEN REPLY ~��� �� ��� �����������?~ GOTO 5
  IF ~  !Class(Player1FIGHTER_ALL)
!Class(Player1,RANGER_ALL)
!Class(Player1,PALADIN)
Global("MyPermit","LOCALS",0)
!Global("NWArena","GLOBAL",4)~ THEN REPLY ~��� �� ��� �����������?~ GOTO 6
  IF ~~ THEN REPLY ~��� �� ������ � ����?~ GOTO 8
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 2
END

IF ~~ THEN BEGIN 8 // from: 1.6
  SAY ~� ����, ��� ����� ����� �� ����������, � ������� � ����������. ����� �� ����� �� ������, ����� ��� ������ �����, ������� ������, ��� ��� �������.~
  IF ~Global("MyPermit","LOCALS",1)
!Global("NWArena","GLOBAL",4)~ THEN REPLY ~��� �� ��� �����������?~ GOTO 3
  IF ~  OR(3)Class(Player1,FIGHTER_ALL)
Class(Player1,RANGER_ALL)
Class(Player1,PALADIN)
Global("MyPermit","LOCALS",0)~ THEN REPLY ~��� �� ��� �����������?~ GOTO 4
  IF ~  Global("NWArena","GLOBAL",4)~ THEN REPLY ~��� �� ��� �����������?~ GOTO 5
  IF ~  !Class(Player1FIGHTER_ALL)
!Class(Player1,RANGER_ALL)
!Class(Player1,PALADIN)
Global("MyPermit","LOCALS",0)
!Global("NWArena","GLOBAL",4)~ THEN REPLY ~��� �� ��� �����������?~ GOTO 6
  IF ~~ THEN REPLY ~������ ������ ���������, ���� ���� � ������������ ��� ���� ���������?~ GOTO 7
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 2
END

IF ~~ THEN BEGIN 9 // from: 4.1
  SAY ~� ��� � ��� �������. �� ��������, ��� �� ��� �����, ���� ���� �� ��� �������. ����� �� ������� � "��������", �� ����� ��� ����� �� �������. ������� ����� ����� ��������� � ������ ������� �����. ������� ������� �������. ����� �����. ��� ��� �����������.~
  IF ~~ THEN DO ~TakePartyGold(250)SetGlobal("MyPermit","LOCALS",1)GiveItemCreate("Grpermit",LastTalkedToBy,0,0,0)~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 6.2
  SAY ~���, ����� �� � ��������. � "��������" ���� ���� �������. � �����, ��� ��� �� �������, ������ ��� � ��� ����� �� �������.~
  IF ~~ THEN REPLY ~�������, ��� � ������� ����!~ GOTO 13
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 2
END

IF ~~ THEN BEGIN 12 // from: 6.3
  SAY ~���, ����� �� � ��������. � "��������" ���� ���� �������. � �����, ��� ��� �� �������, ������ ��� � ��� ����� �� �������.~
  IF ~~ THEN REPLY ~�������, ��� � ������� ����!~ GOTO 13
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 2
END

IF ~~ THEN BEGIN 13 // from: 6.4
  SAY ~���� � ���� ���� ����� ��������, ����� �� ���� ��� �� �������? ���. ��� ��� ��������. �� ���������� ��� �������.~
  IF ~~ THEN EXIT
END

// ---------------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Global("MyPermit","LOCALS",1)~ THEN BEGIN 14 // from:
  SAY ~�������, �������. �����, � ���� ���� ����� ���������. �� ������� ����� ������� ����, � ���������� �� �� ��� �� �������.~
  IF ~~ THEN REPLY ~��� �������� �� ������ ��������� ��������.~ GOTO 1
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 2
END

// --------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  RandomNum(2,1)Global("MyPermit","LOCALS",0)~ THEN BEGIN 15 // from:
  SAY ~��� ��� ����, �? �� ����������� � ��������� ������� ����� ��� �������.~
  IF ~~ THEN REPLY ~��� �������� �� ������ ��������� ��������.~ GOTO 1
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 2
END

