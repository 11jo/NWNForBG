// ������ - ����� ������� - 4 ���� - ������ ������������ �������  �������� 

// ������ ��������� ������ ����� ����. ��� ������� � �� ����������� ��������� � ��������. ����� �� ����� �� ������ ��� ������, ������, ��� ��� ����������.

// ��������� �� 4 ����: � ������� ������ ���� ������ ���� � � ��� �������� �����, ��� ����� ������� ������, ���������� ��������� 2 �������� � ��������. ������ ��� �������� � ������ �� �������� ������ � ������� �������� �������. � �������� ����� ��� �����. ���������� ����� � ��������� �������� �����. 

BEGIN ~2Q6EPOD~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~   GlobalLT("GolemCreated","MYAREA",2)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~  Global("GolemCreated","MYAREA",0)~ THEN REPLY @1 GOTO 1
  IF ~  Global("GolemCreated","MYAREA",1)~ THEN REPLY @1 GOTO 2
  IF ~  PartyHasItem("Wandnw5")Global("GolemCreated","MYAREA",0)~ THEN REPLY @2 GOTO 3
  IF ~  PartyHasItem("Wandnw5")Global("GolemCreated","MYAREA",1)~ THEN REPLY @2 GOTO 4
  IF ~  PartyHasItem("Wandnw6")Global("GolemCreated","MYAREA",0)~ THEN REPLY @3 GOTO 5
  IF ~  PartyHasItem("Wandnw6")Global("GolemCreated","MYAREA",1)~ THEN REPLY @3 GOTO 6
  IF ~~ THEN REPLY @4 GOTO 7
  IF ~~ THEN REPLY @5 GOTO 8
END

IF ~~ THEN BEGIN 1 // from: 1.1
  SAY @6
  IF ~  PartyHasItem("Wandnw5")~ THEN REPLY @2 GOTO 3
  IF ~  PartyHasItem("Wandnw6")~ THEN REPLY @3 GOTO 5
  IF ~~ THEN REPLY @4 GOTO 7
  IF ~~ THEN REPLY @5 GOTO 8
END

IF ~~ THEN BEGIN 2 // from: 2.2
  SAY @7
  IF ~  PartyHasItem("Wandnw5")~ THEN REPLY @2 GOTO 4
  IF ~  PartyHasItem("Wandnw6")~ THEN REPLY @3 GOTO 6
  IF ~~ THEN REPLY @4 GOTO 7
  IF ~~ THEN REPLY @5 GOTO 8
END

IF ~~ THEN BEGIN 3 // from: 1.3
  SAY @8
  IF ~~ THEN DO ~SetGlobal("GolemCreated","MYAREA",1)TakePartyItem("Wandnw5")DestroyItem("Wandnw5")~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.4
  SAY @9
  IF ~~ THEN DO ~SetGlobal("GolemCreated","MYAREA",2)TakePartyItem("Wandnw5")DestroyItem("Wandnw5")~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.5
  SAY @8
  IF ~~ THEN DO ~SetGlobal("GolemCreated","MYAREA",1)TakePartyItem("Wandnw6")DestroyItem("Wandnw6")~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.6
  SAY @9
  IF ~~ THEN DO ~SetGlobal("GolemCreated","MYAREA",2)TakePartyItem("Wandnw6")DestroyItem("Wandnw6")~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.7
  SAY @10
  IF ~  Global("GolemCreated","MYAREA",0)~ THEN REPLY @1 GOTO 1
  IF ~  Global("GolemCreated","MYAREA",1)~ THEN REPLY @1 GOTO 2
  IF ~  PartyHasItem("Wandnw5")Global("GolemCreated","MYAREA",0)~ THEN REPLY @2 GOTO 3
  IF ~  PartyHasItem("Wandnw5")Global("GolemCreated","MYAREA",1)~ THEN REPLY @2 GOTO 4
  IF ~  PartyHasItem("Wandnw6")Global("GolemCreated","MYAREA",0)~ THEN REPLY @3 GOTO 5
  IF ~  PartyHasItem("Wandnw6")Global("GolemCreated","MYAREA",1)~ THEN REPLY @3 GOTO 6
  IF ~~ THEN REPLY @5 GOTO 8
END


IF ~~ THEN BEGIN 8 // from: 1.8
  SAY @11
  IF ~~ THEN EXIT
END

// -------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~   GlobalGT("GolemCreated","MYAREA",1)~ THEN BEGIN 9 // from:
  SAY @12
  IF ~~ THEN EXIT
END

