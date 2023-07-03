// ���� ������� ���� �����  ������� �������  ���� ������� ������� ���� �������� ����� ������ ����, �� �� �� ����� �� ������ ���������� ���������. ������ � ����� � ��� ����� ���-�����. ����� ������ ���� ������ ������ (� ������ ������ ����� ����� ���������� ���������). ��������� �� ���� ����. � ����� �������� ������ � ���� ����� � ������� �������, ������� ������� ������ � �������. 

BEGIN ~CHEFNW1~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Password","LOCALS",0)OpenState("Door4",FALSE)~ THEN BEGIN 0 // from:
  SAY ~�� ���� ���� ����������. � �� ������ ��� ������, � ��� ��� �� �����. ������ �������� ������ � ���������, ��� ��� ���������. � �� ���� ���� ���������� �� � ����� �����. ���� �� ������ ������, �� � ��� ������ ���� ���� ����. � ���� ��� ���.~
  IF ~~ THEN REPLY ~��� ��? ��� �� �������?~ GOTO 1
  IF ~~ THEN REPLY ~��� ����� ������?~ GOTO 2
  IF ~~ THEN REPLY ~����� ����������������, ��� ��� �� �������, � ��� ��������� ��� ���?~ GOTO 3
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 4
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~���, �? � - �����, � ��� "�������� ������" ��������� ���� ���� �������� �����, ������ ��� ��� ��� �������� ��-�� ���� ������� ����� �����. ��� ��� ��� �����. � ����������� ��������. � ������, ���� �� ������ ������, ��������.~
  IF ~  Global("KnowPasswordNW","GLOBAL",1)~ THEN REPLY ~������ '������� ������'.~ GOTO 5
  IF ~  CheckStatGT(LastTalkedToBy(Myself),13,CHR)~ THEN REPLY ~���� ��� ��� �����, �����, ������ ������� �� ����?~ GOTO 6
  IF ~  CheckStatLT(LastTalkedToBy(Myself),14,CHR)~ THEN REPLY ~���� ��� ��� �����, �����, ������ ������� �� ����?~ GOTO 7
  IF ~  Gender(LastTalkedToBy(Myself),FEMALE)~ THEN REPLY ~��� �, ��������, �����, �� ������... ���-������ ���������?~ GOTO 8
  IF ~~ THEN REPLY ~�����, ��������� ������� �������� ��� ������, ��� ��� ����� ������?~ GOTO 9
  IF ~~ THEN REPLY ~�������� ����, ��� � ������� ���� ���� �� �����������!~ GOTO 10
  IF ~~ THEN REPLY ~� �� ���� ������.~ GOTO 11
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~��, ������, ������. ���� ��� ����� ��������� �� ����, ��� � ������ ������, � ������ ������� ������. ������ �������� ������.~
  IF ~  Global("KnowPasswordNW","GLOBAL",1)~ THEN REPLY ~������ '������� ������'.~ GOTO 5
  IF ~  CheckStatGT(LastTalkedToBy(Myself),13,CHR)~ THEN REPLY ~���� ��� ��� �����, �����, ������ ������� �� ����?~ GOTO 6
  IF ~  CheckStatLT(LastTalkedToBy(Myself),14,CHR)~ THEN REPLY ~���� ��� ��� �����, �����, ������ ������� �� ����?~ GOTO 7
  IF ~  Gender(LastTalkedToBy(Myself),FEMALE)~ THEN REPLY ~��� �, ��������, �����, �� ������... ���-������ ���������?~ GOTO 8
  IF ~~ THEN REPLY ~�����, ��������� ������� �������� ��� ������, ��� ��� ����� ������?~ GOTO 9
  IF ~~ THEN REPLY ~�������� ����, ��� � ������� ���� ���� �� �����������!~ GOTO 10
  IF ~~ THEN REPLY ~� �� ���� ������.~ GOTO 11
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY ~����������, � ������ �����. � ������� "��������� ������", ������� ���� �� ����. ���� � ��� ���� �����, ������. ������ �������� ������ � ���������.~
  IF ~  Global("KnowPasswordNW","GLOBAL",1)~ THEN REPLY ~������ '������� ������'.~ GOTO 5
  IF ~  CheckStatGT(LastTalkedToBy(Myself),13,CHR)~ THEN REPLY ~���� ��� ��� �����, �����, ������ ������� �� ����?~ GOTO 6
  IF ~  CheckStatLT(LastTalkedToBy(Myself),14,CHR)~ THEN REPLY ~���� ��� ��� �����, �����, ������ ������� �� ����?~ GOTO 7
  IF ~  Gender(LastTalkedToBy(Myself),FEMALE)~ THEN REPLY ~��� �, ��������, �����, �� ������... ���-������ ���������?~ GOTO 8
  IF ~~ THEN REPLY ~�����, ��������� ������� �������� ��� ������, ��� ��� ����� ������?~ GOTO 9
  IF ~~ THEN REPLY ~�������� ����, ��� � ������� ���� ���� �� �����������!~ GOTO 10
  IF ~~ THEN REPLY ~� �� ���� ������.~ GOTO 11
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY ~�� ���������� ���� ������. � ���� ���������� ����, ��� � ����� ����� ���� ���� ��������.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.1
  SAY ~������, ��� ��� ��������. �� ����� ����, ��� ���� ���� �� ��� �� �����. ���� � ���� ���-������ ����, ����� ���� ��������. ��� ������� ������� �� �� ������ ������. � ���� ���������, ������ � �����.~
  IF ~~ THEN DO ~SetGlobal("MainDoor","MYAREA",1)TriggerActivation("Basement",TRUE)EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.2
  SAY ~������, �����, �� �����. �� ������ ���� ��� ��� ������! � �� �� ��������! � �� �� ���������! �� ������ ������ ����� �����, ���������. �� ����� ����, � ���� ����� ����, ��� �� ������ ������.~
  IF ~  OpenState("Door4",TRUE)~ THEN GOTO 12
  IF ~  OpenState("Door4",FALSE)~ THEN GOTO 13
END

IF ~~ THEN BEGIN 7 // from: 1.3
  SAY ~���, �� �����, ��� ��� ����� ������. � �� ��������, �� ��� "�������� ������" - ��������� �������.~
  IF ~  Global("KnowPasswordNW","GLOBAL",1)~ THEN REPLY ~������ '������� ������'.~ GOTO 5
  IF ~  Gender(LastTalkedToBy(Myself),FEMALE)~ THEN REPLY ~��� �, ��������, �����, �� ������... ���-������ ���������?~ GOTO 8
  IF ~~ THEN REPLY ~�����, ��������� ������� �������� ��� ������, ��� ��� ����� ������?~ GOTO 9
  IF ~~ THEN REPLY ~�������� ����, ��� � ������� ���� ���� �� �����������!~ GOTO 10
  IF ~~ THEN REPLY ~� �� ���� ������.~ GOTO 11
END

IF ~~ THEN BEGIN 8 // from: 1.4
  SAY ~�� ��� �, ������ �� ���� �������� ����� ����������� ��������. �, � ������ ���. � �� ��������. ����� ��� ������ ���� ��������� ����� ������? �� ������ ������ ����� �����, ���������. �� ����� ����, � ���� ����� ����, ��� �� ������ ������.~
  IF ~  OpenState("Door4",TRUE)~ THEN GOTO 12
  IF ~  OpenState("Door4",FALSE)~ THEN GOTO 13
END

IF ~~ THEN BEGIN 9 // from: 1.5
  SAY ~�� ���� � ������ �� ����. ��� ����, ��� �� ���� �����������, ��������, ��� ��� ����� �� �����.~
  IF ~  CheckStatGT(LastTalkedToBy(Myself),12,CHR)PartyGoldGT(49)~ THEN REPLY ~��� ������ 50 �������, ����� �� ����������� � ���� �� ��������?~ GOTO 14
  IF ~  CheckStatLT(LastTalkedToBy(Myself),13,CHR)PartyGoldGT(49)~ THEN REPLY ~��� ������ 50 �������, ����� �� ����������� � ���� �� ��������?~ GOTO 15
  IF ~  CheckStatGT(LastTalkedToBy(Myself),10,CHR)PartyGoldGT(99)~ THEN REPLY ~��� ������ 100 �������, ����� �� ����������� � ���� �� ��������?~ GOTO 16
  IF ~  CheckStatLT(LastTalkedToBy(Myself),11,CHR)PartyGoldGT(99)~ THEN REPLY ~��� ������ 100 �������, ����� �� ����������� � ���� �� ��������?~ GOTO 17
  IF ~  PartyGoldGT(199)~ THEN REPLY ~200 ������� ������� ��� ������ ��� ���, ���?~ GOTO 18
  IF ~~ THEN REPLY ~� ������ �������� ���. �� ��������� ��������.~ GOTO 19
END

IF ~~ THEN BEGIN 10 // from: 1.6
  SAY ~���? ���, �������! � �� ��������� ��-�� ����� �������! ������! ������!~
  IF ~~ THEN DO ~SetGlobal("Guards","MYAREA",1)SetGlobal("MainDoor","MYAREA",1)TriggerActivation("Basement",TRUE)EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 1.7
  SAY ~����� ���������� � ������ ���� �� ����������. ���� �� �� ������ ������, ����� ��� ����� �� �����.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 12 // from: 6.1
  SAY ~����� ���� ������� �� ������ ���������� �������. ��, ���� �� ������.~
  IF ~~ THEN DO ~SetGlobal("MainDoor","MYAREA",1)TriggerActivation("Basement",TRUE)EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 6.2
  SAY ~�����������, ��� ��� ����� �������� ������� �����. �� ���� � ������ �� ����. ���� ��� ���� ����, � ��� ������ ���� ���� ����.~
  IF ~~ THEN DO ~SetGlobal("MainDoor","MYAREA",1)TriggerActivation("Basement",TRUE)EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 9.1
  SAY ~�����, ��� ��������. �� ��� ���������, � ������, ��� � ����� �����, ����� ���� �����? � �����! �� ������ ������ ����� �����, ���������. �� ����� ����, � ���� ����� ����, ��� �� ������ ������.~
  IF ~  OpenState("Door4",TRUE)~ THEN GOTO 20
  IF ~  OpenState("Door4",FALSE)~ THEN GOTO 21
END

IF ~~ THEN BEGIN 15 // from: 9.2
  SAY ~���, �� �����, ��� ��� ����� ������. � �� ��������, �� ��� "�������� ������" - ��������� �������.~
  IF ~  Global("KnowPasswordNW","GLOBAL",1)~ THEN REPLY ~������ '������� ������'.~ GOTO 5
  IF ~  CheckStatGT(LastTalkedToBy(Myself),10,CHR)~ THEN REPLY ~��� ������ 100 �������, ����� �� ����������� � ���� �� ��������?~ GOTO 16
  IF ~  CheckStatLT(LastTalkedToBy(Myself),11,CHR)~ THEN REPLY ~��� ������ 100 �������, ����� �� ����������� � ���� �� ��������?~ GOTO 17
  IF ~~ THEN REPLY ~200 ������� ������� ��� ������ ��� ���, ���?~ GOTO 18
  IF ~~ THEN REPLY ~� ������ �������� ���. �� ��������� ��������.~ GOTO 19
END

IF ~~ THEN BEGIN 16 // from: 9.3
  SAY ~�����, ����� ����� ����������. �� ����, ����� ��� ������ ������� ���� ��������� ��� �����?! � �� �����. �����! �� ������ ������ ����� �����, ���������. �� ����� ����, � ���� ����� ����, ��� �� ������ ������.~
  IF ~  OpenState("Door4",TRUE)~ THEN GOTO 22
  IF ~  OpenState("Door4",FALSE)~ THEN GOTO 23
END

IF ~~ THEN BEGIN 17 // from: 9.4
  SAY ~���, � �� ���� ��������� ����� ���� �� ����� �����. �� ��� �� ���������. ������� � ��� �� �������� ����������� �������?.~
  IF ~  Global("KnowPasswordNW","GLOBAL",1)~ THEN REPLY ~������ '������� ������'.~ GOTO 5
  IF ~~ THEN REPLY ~200 ������� ������� ��� ������ ��� ���, ���?~ GOTO 18
  IF ~~ THEN REPLY ~� ������ �������� ���. �� ��������� ��������.~ GOTO 19
END

IF ~~ THEN BEGIN 18 // from: 9.5
  SAY ~�������, �������� ������. �� ����, ����� ��� ������ ������� ���� �������� ��� �����? � �� �����! �� ������ ������ ����� �����, ���������. �� ����� ����, � ���� ����� ����, ��� �� ������ ������.~
  IF ~  OpenState("Door4",TRUE)~ THEN GOTO 24
  IF ~  OpenState("Door4",FALSE)~ THEN GOTO 25
END

IF ~~ THEN BEGIN 19 // from: 9.6
  SAY ~��� ������, ��� �� ������ ������ ��� ��� �� ���?~
  IF ~  Global("KnowPasswordNW","GLOBAL",1)~ THEN REPLY ~������ '������� ������'.~ GOTO 5
  IF ~  CheckStatGT(LastTalkedToBy(Myself),13,CHR)~ THEN REPLY ~���� ��� ��� �����, �����, ������ ������� �� ����?~ GOTO 6
  IF ~  CheckStatLT(LastTalkedToBy(Myself),14,CHR)~ THEN REPLY ~���� ��� ��� �����, �����, ������ ������� �� ����?~ GOTO 7
  IF ~  Gender(LastTalkedToBy(Myself),FEMALE)~ THEN REPLY ~��� �, ��������, �����, �� ������... ���-������ ���������?~ GOTO 8
  IF ~~ THEN REPLY ~�����, ��������� ������� �������� ��� ������, ��� ��� ����� ������?~ GOTO 9
  IF ~~ THEN REPLY ~�������� ����, ��� � ������� ���� ���� �� �����������!~ GOTO 10
  IF ~~ THEN REPLY ~� �� ���� ������.~ GOTO 11
END

IF ~~ THEN BEGIN 20 // from: 14.1
  SAY ~����� ���� ������� �� ������ ���������� �������. ��, ���� �� ������.~
  IF ~~ THEN DO ~TakePartyGold(50)SetGlobal("MainDoor","MYAREA",1)TriggerActivation("Basement",TRUE)EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 21 // from: 14.2
  SAY ~�����������, ��� ��� ����� �������� ������� �����. �� ���� � ������ �� ����. ���� ��� ���� ����, � ��� ������ ���� ���� ����.~
  IF ~~ THEN DO ~TakePartyGold(50)SetGlobal("MainDoor","MYAREA",1)TriggerActivation("Basement",TRUE)EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 16.1
  SAY ~����� ���� ������� �� ������ ���������� �������. ��, ���� �� ������.~
  IF ~~ THEN DO ~TakePartyGold(100)SetGlobal("MainDoor","MYAREA",1)TriggerActivation("Basement",TRUE)EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 23 // from: 16.2
  SAY ~�����������, ��� ��� ����� �������� ������� �����. �� ���� � ������ �� ����. ���� ��� ���� ����, � ��� ������ ���� ���� ����.~
  IF ~~ THEN DO ~TakePartyGold(100)SetGlobal("MainDoor","MYAREA",1)TriggerActivation("Basement",TRUE)EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 24 // from: 18.1
  SAY ~����� ���� ������� �� ������ ���������� �������. ��, ���� �� ������.~
  IF ~~ THEN DO ~TakePartyGold(200)SetGlobal("MainDoor","MYAREA",1)TriggerActivation("Basement",TRUE)EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 25 // from: 18.2
  SAY ~�����������, ��� ��� ����� �������� ������� �����. �� ���� � ������ �� ����. ���� ��� ���� ����, � ��� ������ ���� ���� ����.~
  IF ~~ THEN DO ~TakePartyGold(200)SetGlobal("MainDoor","MYAREA",1)TriggerActivation("Basement",TRUE)EscapeArea()~ EXIT
END

// ----------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Global("Password","LOCALS",0)OpenState("Door4",TRUE)~ THEN BEGIN 26 // from:
  SAY ~��, ��� ��� ������ �����? � ������ �� ���� ��� ������, ���� � ��� ���� ��� ���. �������, �� �� ����� ��� ���� �� ����� ����. ����� ��� ��������� ������ �������� ��� ������ �����, ��� ��� �����.~
  IF ~~ THEN REPLY ~��� ��? ��� �� �������?~ GOTO 1
  IF ~~ THEN REPLY ~��� ����� ������?~ GOTO 2
  IF ~~ THEN REPLY ~����� ����������������, ��� ��� �� �������, � ��� ��������� ��� ���?~ GOTO 3
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 4
END

// ----------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("Password","LOCALS",0)~ THEN BEGIN 27 // from:
  SAY ~�� ���������� ���, ������? ��� ����� ������ � ������ ���������, � ��� ��� �����, ��� ������ ����� ��� �������.~
  IF ~~ THEN EXIT
END

