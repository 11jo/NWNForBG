// ����-����� ��� ������������ 2� ����   ��� - ��������� 

BEGIN ~URTH~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)Global("Dialogue","LOCALS",0)~ THEN BEGIN 0 // from:
  SAY ~��� ���� ����� ����? ��� �������� ������ ���� ����, ����� ���? ��� ����� �� ������� ����, ��� ��� ������? �� ������ �� ������ �������� ���� � �����?~
  IF ~~ THEN REPLY ~��� ��?~ GOTO 1
  IF ~~ THEN REPLY ~� �����, ����� ����� ����. ��� ������������ ������.~ GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~���� ����� ���, � � ��������� ������������. ������� � ��� � �������, ����� ����� �� �����... �����.~
  IF ~  PartyHasItem("AmulNeu")~ THEN REPLY ~� ���� ���� ���������� ������. �� ������� �����?~ GOTO 3
  IF ~~ THEN REPLY ~��� �� ������ ���� ���������?~ GOTO 4
  IF ~~ THEN REPLY ~���� ������� ��������� � ����������. ���� �� ������ ��� ���� ������, � ���� � ���� ������ �� ����� ������.~ GOTO 5
  IF ~  !PartyHasItem("AmulNeu")~ THEN REPLY ~� ����� �����, ��� ���� ����� ������. ������ ���� �����.~ GOTO 6
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~������ �� ����� ���� ����, ��� �����, ������� � ����. ���� ����, ���� ����, �� �� ���������, ���� � ���� ��������������!~
IF ~~ THEN DO ~DestroyItem("MINHP1")ApplySpell(Myself,RESTORE_FULL_HEALTH)Enemy()Attack(LastTalkedToBy(Myself))~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY ~������ �� ������ �� ����� ����? ����� �������, ����� � ������ ��� ���?~
  IF ~~ THEN REPLY ~��� �������� �������. �� ���� �������.~ GOTO 7
  IF ~~ THEN REPLY ~� ��� ��� ����, ����� ���� �������� ��� �����. �������.~ GOTO 8
  IF ~~ THEN REPLY ~����� �������� � ������.~ GOTO 2
END

IF ~~ THEN BEGIN 4 // from: 1.2
  SAY ~��� ������� ���� � ����� ����, ����, ����� � ������, ����� �� ������� ��� ��������� �� ��������. � ��� � �������� �� ����������� � ������������� � ������� ��������. ��� ������� �������� �������� � ������-��������� �, ���� ���������, ��� �������� �� ���. �� ������ �� ��� � ���� ��������. � ��� �� ����.~
  IF ~~ THEN REPLY ~��� ��������� � ������?~ GOTO 9
  IF ~~ THEN REPLY ~����� �� �����? ��� �� ������?~ GOTO 10
  IF ~~ THEN REPLY ~� � ����� ��� � �������? �� �� ������, ��� ��� ����� ���?~ GOTO 11
  IF ~~ THEN REPLY ~��� ������ ��� �������?~ GOTO 12
  IF ~~ THEN REPLY ~����� ��������� � ������.~ GOTO 13
END

IF ~~ THEN BEGIN 5 // from: 1.2
  SAY ~�� ���� �������, ��� � ����? �����, ����� ���� ������� ���� � �����, ���������� ������ ���� � ����������� ���� ����. ��� �������� ������ ���� ���������.~
  IF ~~ THEN REPLY ~������ ����� ��� ���� ������.~ GOTO 14
  IF ~  PartyHasItem("AmulNeu")~ THEN REPLY ~� ���� ���� ���������� ������. �� ������� �����?~ GOTO 3
  IF ~  !PartyHasItem("AmulNeu")~ THEN REPLY ~� ����� �����, ��� ���� ����� ������. ������ ���� �����.~ GOTO 6
  IF ~~ THEN REPLY ~� �����, ����� ����� ����. ��� ������������ ������.~ GOTO 2
END

IF ~~ THEN BEGIN 6 // from: 1.1
  SAY ~��� � ��� ���� �������? ����������� ���� ��, ��� �������� ���� ����� �������...~
  IF ~~ THEN DO ~SetGlobal("Pause","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.1
  SAY ~�������? ������ ������, ����� ������� � ��������, ��� ��� ���. ����� ���� ���� ������.~
  IF ~~ THEN DO ~SetGlobal("Amulet","LOCALS",1)SetGlobal("Pause","LOCALS",0)TakePartyItem("AmulNeu")~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.2
  SAY ~���� � � ������ ������ ��������� ��������, �� � ������� ����� �� ��������. �����, ����� ���� ���� ������, � � ���� � ��������.~
  IF ~~ THEN DO ~SetGlobal("Amulet","LOCALS",1)SetGlobal("Pause","LOCALS",0)TakePartyItem("AmulNeu")~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 4.1
  SAY ~� �� ����... � ����, ��� �� ��� ��������, ��� � �, � ���� ���������. �� ��� ���� ������?..~
  IF ~~ THEN REPLY ~����� �� �����? ��� �� ������?~ GOTO 10
  IF ~~ THEN REPLY ~� � ����� ��� � �������? �� �� ������, ��� ��� ����� ���?~ GOTO 11
  IF ~~ THEN REPLY ~��� ������ ��� �������?~ GOTO 12
  IF ~~ THEN REPLY ~����� ��������� � ������.~ GOTO 13
END

IF ~~ THEN BEGIN 10 // from: 4.2
  SAY ~����� - �����, � ������, � �����, � ���. � ��� ������ ������� �� �����.~
  IF ~~ THEN REPLY ~��� ��������� � ������?~ GOTO 9
  IF ~~ THEN REPLY ~� � ����� ��� � �������? �� �� ������, ��� ��� ����� ���?~ GOTO 11
  IF ~~ THEN REPLY ~��� ������ ��� �������?~ GOTO 12
  IF ~~ THEN REPLY ~����� ��������� � ������.~ GOTO 13
END

IF ~~ THEN BEGIN 11 // from: 4.3
  SAY ~���? � �� �����, ���� �� ������, �� ���� ��������, �� �� ����� ������ � ������ �������, ����� � �������� '������� ������'.~
  IF ~~ THEN REPLY ~��� ��������� � ������?~ GOTO 9
  IF ~~ THEN REPLY ~����� �� �����? ��� �� ������?~ GOTO 10
  IF ~~ THEN REPLY ~��� ������ ��� �������?~ GOTO 12
  IF ~~ THEN REPLY ~����� ��������� � ������.~ GOTO 13
END

IF ~~ THEN BEGIN 12 // from: 4.4
  SAY ~�� �������� ��� ������ ���������. ���� � ��� � �� ����, � �� �� �����. �� ���� ��� ���� ������ �� ����������. � ���� ������ �� ��� �����-��... ����������.~
  IF ~~ THEN REPLY ~��� ��������� � ������?~ GOTO 9
  IF ~~ THEN REPLY ~����� �� �����? ��� �� ������?~ GOTO 10
  IF ~~ THEN REPLY ~� � ����� ��� � �������? �� �� ������, ��� ��� ����� ���?~ GOTO 11
  IF ~~ THEN REPLY ~����� ��������� � ������.~ GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 4.5
  SAY ~� ��� ��� �� ������ ����������?~
  IF ~  PartyHasItem("AmulNeu")~ THEN REPLY ~� ���� ���� ���������� ������. �� ������� �����?~ GOTO 3
  IF ~  !PartyHasItem("AmulNeu")~ THEN REPLY ~� ����� �����, ��� ���� ����� ������. ������ ���� �����.~ GOTO 6
  IF ~~ THEN REPLY ~� �����, ����� ����� ����. ��� ������������ ������.~ GOTO 2
  IF ~~ THEN REPLY ~���� ������� ��������� � ����������. ���� �� ������ ��� ���� ������, � ���� � ���� ������ �� ����� ������.~ GOTO 5
END

IF ~~ THEN BEGIN 14 // from: 5.1
  SAY ~������, ��� ���. ��������, ���� ����� ������ ��� �������. ����� ���, ��� � ����. �����, ����� ���� �� ���� ���������.~
  IF ~~ THEN DO ~SetGlobal("UrthFraud","GLOBAL",1)
SetGlobal("Pause","LOCALS",1)GiveItem("UrtRing",LastTalkedToBy(Myself))IncrementGlobal("DeceiveNeurrik","GLOBAL",1)StartCutSceneMode()
StartCutScene("WerPause")~ EXIT
END

// ---------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Dialogue","LOCALS",1)Global("UrthFraud","GLOBAL",0)~ THEN BEGIN 15 // from:
  SAY ~�� - �� ��������, � ��� ��������. ������� ���� ��������. ���, ������ ��� ������ � ������ ��� �������, ����� �� ����, ��� � � �������! ������, ����� ��� ��������� ��������, � �����, ��� ����� ���������. ���������� ���������. ������ � ������� ����!~
  IF ~~ THEN DO ~SetGlobal("SPRITE_IS_DEADURT","GLOBAL",0)SetGlobal("Dialogue","LOCALS",2)GiveItem("UrtRing",LastTalkedToBy(Myself))IncrementGlobal("DeceiveNeurrik","GLOBAL",-1)~ EXIT
END

// ---------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Dialogue","LOCALS",1)Global("UrthFraud","GLOBAL",1)~ THEN BEGIN 19 // from:
  SAY ~�� - �� ��������, � ��� ��������. ������� ���� ��������. ������, ����� ��� ��������� ��������, � �����, ��� ����� ���������. ���������� ���������. ������ � ������� ����!~
  IF ~~ THEN DO ~SetGlobal("SPRITE_IS_DEADURT","GLOBAL",0)SetGlobal("Dialogue","LOCALS",2)DestroyItem("UrtRing")IncrementGlobal("DeceiveNeurrik","GLOBAL",-1)~ EXIT
END

// ---------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Pause","LOCALS",1)~ THEN BEGIN 16 // from:
  SAY ~���� - ����������! - ������� - �� ���� ��������... ����!~
  IF ~~ THEN REPLY ~� �����, ����� ����� ����. ��� ������������ ������.~ GOTO 2
  IF ~  PartyHasItem("AmulNeu")~ THEN REPLY ~� ���� ���� ���������� ������. �� ������� �����?~ GOTO 3
  IF ~  !PartyHasItem("AmulNeu")~ THEN REPLY ~� ����� �����, ��� ���� ����� ������. ������ ���� �����.~ GOTO 6
END

// -----------------------------------

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Dialogue","LOCALS",2)~ THEN BEGIN 17 // from:
  SAY ~�� ��� ���� ������! ������ ��� ����!~
  IF ~~ THEN EXIT
END

// -----------------------------------

IF WEIGHT #5 /* Triggers after states #: 9 even though they appear after this state */
~  False()~ THEN BEGIN 18 // from:
  SAY ~���� - ����������! - ������� - �� ���� ��������... ����!~
  IF ~~ THEN EXIT
END
