// ��� - ��������� 

BEGIN ~GETH~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)Global("Dialogue","LOCALS",0)~ THEN BEGIN 0 // from:
  SAY ~��� �� ����� �������? ����� �� �����? � �� �����, ����� ���� ����������.~
  IF ~~ THEN REPLY ~��� ��?~ GOTO 1
  IF ~~ THEN REPLY ~������. � �����.~ GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~��� - ������� ������� �������, � �� ������� ����� - ����� �� ����-������. ����� ���� ��� �����?~
  IF ~  PartyHasItem("AmulNeu")~ THEN REPLY ~� ���� ���� ���������� ������� �� �������.~ GOTO 3
  IF ~~ THEN REPLY ~��� �� ���� ���������?~ GOTO 4
  IF ~~ THEN REPLY ~���� ������� ��������� � ����������. ���� �� ������ ��� ���� ������, � ���� � ���� ������ �� ����� ������.~ GOTO 5
  IF ~  !PartyHasItem("AmulNeu")~ THEN REPLY ~� �������� ��������, ��� �� ����� ���� ������. ��������� �����.~ GOTO 6
  IF ~  !PartyHasItem("AmulNeu")~ THEN REPLY ~� �����, ����� ����� ����, ���. �� �����?~ GOTO 7
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~�������...~
  IF ~~ THEN DO ~SetGlobal("Pause","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY ~�������? �����, � � �� ����� ������� �� ������ ������ ��������, �� ��� �� �� ����� �� ���������������� �����.~
  IF ~~ THEN REPLY ~���� �� ������ �������� �������, ������ ��� ���.~ GOTO 8
  IF ~  RandomNum(2,1)~ THEN REPLY ~���� ������ - �� �������. �� ���������.~ GOTO 9
  IF ~  RandomNum(2,2)~ THEN REPLY ~���� ������ - �� �������. �� ���������.~ GOTO 10
  IF ~~ THEN REPLY ~���� ������, � �� � ���� ��������.~ GOTO 11
  IF ~~ THEN REPLY ~�� ��� ��� �����. ������ � ���� ��������.~ GOTO 7
END

IF ~~ THEN BEGIN 4 // from: 1.2
  SAY ~������� ������ ���� ���� � ��������� ���� ������: ����, ����� � ������. �� �����, ����� �� ������� ��� ����� ��������. ������� ��� ������, � ��� ��� �����������. ��� ��������. � ��� �� ����� ����������, ����� ������. ��������� � ����, ��� �� �������.~
  IF ~~ THEN REPLY ~�� ������, ��� ��� ����� ������?~ GOTO 12
  IF ~  PartyHasItem("AmulNeu")~ THEN REPLY ~� ���� ���� ���������� ������� �� �������.~ GOTO 3
  IF ~~ THEN REPLY ~���� ������� ��������� � ����������. ���� �� ������ ��� ���� ������, � ���� � ���� ������ �� ����� ������.~ GOTO 5
  IF ~  !PartyHasItem("AmulNeu")~ THEN REPLY ~� �������� ��������, ��� �� ����� ���� ������. ��������� �����.~ GOTO 6
  IF ~  !PartyHasItem("AmulNeu")~ THEN REPLY ~� �����, ����� ����� ����, ���. �� �����?~ GOTO 7
END

IF ~~ THEN BEGIN 5 // from: 1.3
  SAY ~�����, ����. ��� ��� �� �����. ���� �� ��� ���-�� ������� � ���� �����.~
  IF ~~ THEN DO ~SetGlobal("GethFraud","GLOBAL",1)
SetGlobal("Pause","LOCALS",1)GiveItem("GetRing",LastTalkedToBy(Myself))IncrementGlobal("DeceiveNeurrik","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.4
  SAY ~��� ����� ���� ����� ������ ����-��. �� �� �� �������. �����, ������ - ������ ������ ���� � �����.~
  IF ~~ THEN DO ~SetGlobal("Pause","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.5
  SAY ~� �� ����� ������ - ������ �����, � �������� �����������. ���� �� �����, ����� ����� ����, ��� � �� ���� ���� ������.~
IF ~~ THEN DO ~Enemy()Attack(LastTalkedToBy(Myself))~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.1
  SAY ~�������, ��� �������. ���� � ���� ������ ��� � ������ �� ������, ��� ������ � �� ���������, �����? �����, ����� ���� ���������� ������.~
  IF ~~ THEN DO ~SetGlobal("Amulet","LOCALS",1)SetGlobal("Pause","LOCALS",0)TakePartyItem("AmulNeu")~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 3.2
  SAY ~� ��� �������� �������. �����, � ������? �����, ����� ���� ������ � ���������, ��� �����.~
  IF ~~ THEN DO ~SetGlobal("Amulet","LOCALS",1)SetGlobal("Pause","LOCALS",0)TakePartyItem("AmulNeu")~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 3.3
  SAY ~������� ������ ���, ��� � ��� � ���� � ������������, � ������� �� ���� ������. ���, �����, � ������� ���� �����������.~
  IF ~~ THEN REPLY ~���� ������, � �� � ���� ��������.~ GOTO 11
  IF ~~ THEN REPLY ~�� ��� ��� �����. ������ � ���� ��������.~ GOTO 7
END

IF ~~ THEN BEGIN 11 // from: 3.4
  SAY ~��, ���� ����� � ���� �����, �������, ����� ��� ����� ���� ������. ������ �����, ������ ����� - ����� �������?~
  IF ~~ THEN DO ~SetGlobal("Amulet","LOCALS",1)SetGlobal("Pause","LOCALS",0)TakePartyItem("AmulNeu")~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 4.1
  SAY ~���, �� ����. � � ����� �� ����� ���������. �����, �� ��� ��������, �� �� ������?~
  IF ~  PartyHasItem("AmulNeu")~ THEN REPLY ~� ���� ���� ���������� ������� �� �������.~ GOTO 3
  IF ~~ THEN REPLY ~���� ������� ��������� � ����������. ���� �� ������ ��� ���� ������, � ���� � ���� ������ �� ����� ������.~ GOTO 5
  IF ~  !PartyHasItem("AmulNeu")~ THEN REPLY ~� �������� ��������, ��� �� ����� ���� ������. ��������� �����.~ GOTO 6
  IF ~  !PartyHasItem("AmulNeu")~ THEN REPLY ~� �����, ����� ����� ����, ���. �� �����?~ GOTO 7
END

// ---------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Dialogue","LOCALS",1)Global("GethFraud","GLOBAL",0)~ THEN BEGIN 13 // from:
  SAY ~� - ����� �������! ��� ��� - �����? ��� ��� ��� ������� ��� �� ���? ����� �� �, ����� ��� ��������� �������! �, ���� ��� ������ � ������ ��� �������. ~
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 13.1
  SAY ~� �� ������ ���� ����� �� �������. � ����� �������! ������� ����, ������ ����, �������. � ���� ������� ������!~
  IF ~~ THEN DO ~SetGlobal("SPRITE_IS_DEADGET","GLOBAL",0)
SetGlobal("Dialogue","LOCALS",2)GiveItem("GetRing",LastTalkedToBy(Myself))IncrementGlobal("DeceiveNeurrik","GLOBAL",-1)EscapeArea()~ EXIT
END

// ---------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Dialogue","LOCALS",1)Global("GethFraud","GLOBAL",1)~ THEN BEGIN 18 // from:
  SAY ~� - ����� �������! ��� ��� - �����? ��� ��� ��� ������� ��� �� ���? ����� �� �, ����� ��� ��������� �������!~
  IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.1
  SAY ~� �� ������ ���� ����� �� �������. � ����� �������! ������� ����, ������ ����, �������. � ���� ������� ������!~
  IF ~~ THEN DO ~SetGlobal("SPRITE_IS_DEADGET","GLOBAL",0)
SetGlobal("Dialogue","LOCALS",2)DestroyItem("GetRing")IncrementGlobal("DeceiveNeurrik","GLOBAL",-1)EscapeArea()~ EXIT
END

// ---------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Pause","LOCALS",1)~ THEN BEGIN 15 // from:
  SAY ~���� - ����������! - ������� - �� ���� ��������... ����!~
  IF ~  PartyHasItem("AmulNeu")~ THEN REPLY ~� ���� ���� ���������� ������� �� �������.~ GOTO 3
  IF ~  !PartyHasItem("AmulNeu")~ THEN REPLY ~� �������� ��������, ��� �� ����� ���� ������. ��������� �����.~ GOTO 6
  IF ~  !PartyHasItem("AmulNeu")~ THEN REPLY ~� �����, ����� ����� ����, ���. �� �����?~ GOTO 7
END

// -----------------------------------

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Dialogue","LOCALS",2)~ THEN BEGIN 16 // from:
  SAY ~�������� �����! � ������ �� ��������� �� ���� ��������!~
  IF ~~ THEN EXIT
END

// -----------------------------------

IF WEIGHT #5 /* Triggers after states #: 9 even though they appear after this state */
~  False()~ THEN BEGIN 17 // from:
  SAY ~���� - ����������! - ������� - �� ���� ��������... ����!~
  IF ~~ THEN EXIT
END
