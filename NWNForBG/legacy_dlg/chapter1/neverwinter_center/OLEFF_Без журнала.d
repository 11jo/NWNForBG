// ����� ������������ ������ (����)  ����� - ������ ������� ���������. ��� ���������� ����� ����� ����� �������� ����� ������� ���������. �������, �������� ��������� ������� ������� ���, ��� � ������ ������ ���������� � ������������ ������� � �����������.

BEGIN ~OLEFF~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Global("OleffQuest","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY ~������������ ������������ ����. ����� ���������� � ��� ����. � ����������� ����� ����� �����, �� ������ ������������� ����~ [OLEFF052]
  IF ~  IsGabber(Player1)~ THEN REPLY ~������������, �����. � <CHARNAME>. �� �������� �� �� ��� �������?~ GOTO 1
  IF ~  !IsGabber(Player1)~ THEN REPLY ~������������, �����. �� �������� �� �� ��� �������?~ GOTO 1
  IF ~~ THEN REPLY ~�������� ��������. � ���� � ��� �������.~ GOTO 3
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 4
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~��� ���������� ������� ������������ ���� �������� ���������. ����������� ��� ������, � ���������� ��������.~
  IF ~  PartyHasItem("Nwmisc18")~ THEN REPLY ~�������, ��� ������� ����� �������� ����. ��� ���� ����������?~ GOTO 5
  IF ~  PartyHasItem("OphalLet")~ THEN REPLY ~� ���� � ��� ������ �� �����.~ GOTO 6
  IF ~~ THEN REPLY ~������ ���� ���������?~ GOTO 7
  IF ~  OR(3)Class(Player1,CLERIC_ALL)Class(Player1,PALADIN)Class(Player1,MONK)~ THEN REPLY ~������ ������� ����������� ����������?~ GOTO 8
  IF ~  !Class(Player1,CLERIC_ALL)!Class(Player1,PALADIN)!Class(Player1,MONK)~ THEN REPLY ~������ ������� ����������� ����������?~ GOTO 2
  IF ~~ THEN REPLY ~��� ����� ������ �����. ��� �� ������ ����������?~ GOTO 9
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 1.5
  SAY ~� ����� ���� �� ������������ ���� ��������. � �� ��������� ���������� �� ��� �� ��������� � ������������ ����.~
  IF ~  PartyHasItem("OphalLet")~ THEN REPLY ~� ���� � ��� ������ �� �����.~ GOTO 6
  IF ~~ THEN REPLY ~������ ���� ���������?~ GOTO 7
  IF ~~ THEN REPLY ~��� ����� ������ �����. ��� �� ������ ����������?~ GOTO 9
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY ~��� ����� ��� ������ ������ ����, �� ������� �� ����� �����. � ���� ����� �� ������ ����������.~
  IF ~  PartyHasItem("Nwmisc18")~ THEN REPLY ~�������, ��� ������� ����� �������� ����. ��� ���� ����������?~ GOTO 5
  IF ~  PartyHasItem("OphalLet")~ THEN REPLY ~� ���� � ��� ������ �� �����.~ GOTO 6
  IF ~~ THEN REPLY ~������ ���� ���������?~ GOTO 7
  IF ~  OR(3)Class(Player1,CLERIC_ALL)Class(Player1,PALADIN)Class(Player1,MONK)~ THEN REPLY ~������ ������� ����������� ����������?~ GOTO 8
  IF ~  !Class(Player1,CLERIC_ALL)!Class(Player1,PALADIN)!Class(Player1,MONK)~ THEN REPLY ~������ ������� ����������� ����������?~ GOTO 2
  IF ~~ THEN REPLY ~��� ����� ������ �����. ��� �� ������ ����������?~ GOTO 9
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY ~��� �������� ���� � ��������������.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.1
  SAY ~������� ������������! ���� ���� ������� ����� �������� ���� ����, ��� ����� ���������� ����� ���� �� ������! ������ ��� ������. � ��� �������, ��� �� ������� ���. ������ �� ������� ����������� �������� ������, �� ����� ��� � � ������ �� ����� ������. �� ����� ��� ���� ����������� ���������� ������������ ������� ������ � ��� ���������. �� ���������, ��� ����� ������� ������ ������� ��� ������ ������ � ��� ������� �����. �����������, ����, ��� ������� ���, ���� �������.~
  IF ~  PartyHasItem("Nwmisc18")~ THEN REPLY ~����������, ��� ������� ��������������� ���� ����� � �������� �������.~ GOTO 10
  IF ~~ THEN REPLY ~������, ��� ���� �����.~ GOTO 11
END

IF ~~ THEN BEGIN 6 // from: 1.2
  SAY ~���? �����-�� ���������. ��, ��, �������. ����� ���, �������� ������, � � ��� ��� ��, ��� �����.~
  IF ~  OR(2)StateCheck(LastTalkedToBy(Myself),STATE_DISEASED)StateCheck(Player1,STATE_DISEASED)~ THEN GOTO 12
  IF ~  !StateCheck(LastTalkedToBy(Myself),STATE_DISEASED)!StateCheck(Player1,STATE_DISEASED)~ THEN GOTO 13
END

IF ~~ THEN BEGIN 7 // from: 1.3
  SAY ~�� �������� ������� �����. � ������ �� ���������� �������� ����������, ������� ������ ����� ����������� ��� ������ ������.~
  IF ~  Class(Player1,CLERIC_ALL)~ THEN GOTO 14
  IF ~  Class(Player1,PALADIN)~ THEN GOTO 15
  IF ~  Class(Player1,MONK)~ THEN GOTO 16
  IF ~  !Class(Player1,CLERIC_ALL)!Class(Player1,PALADIN)!Class(Player1,MONK)~ THEN GOTO 17
END

IF ~~ THEN BEGIN 8 // from: 1.4
  SAY ~���� ����� ���� ���������� ����. �� ������ �������, ������������. �� ����� � �������� ��������������. ���������� ������� ��������� ������, ���������� ��������, ���������� �������� � ������ ���� �������� � �������������. �� ������ �������, ���������� �, ���� �����������, ��������. ������������� ���� � ��������� ������������ ����� � ��������������.~
  IF ~~ THEN REPLY ~��������� ������ ��� ������.~ GOTO 18
  IF ~  PartyHasItem("OphalLet")~ THEN REPLY ~� ���� � ��� ������ �� �����.~ GOTO 6
  IF ~~ THEN REPLY ~������ ���� ���������?~ GOTO 7
  IF ~~ THEN REPLY ~��� ����� ������ �����. ��� �� ������ ����������?~ GOTO 9
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 4
END

IF ~~ THEN BEGIN 9 // from: 1.6
  SAY ~�������� ������ ��������, ��������� ������. ��� ������ ������ ��� ������... ��, ������ ��� �� ���� �������� ������ ��-�� ����~
  IF ~~ THEN DO ~StartStore("Oleff",LastTalkedToBy(Myself))~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 5.1
  SAY ~���?! �� ������� �������, ����� ��� ��������� ��������� �����? ��� ������ ����� ���������������! ����� ����������! ��� �� ������ ��������, �� ������� �������� ������. ������ �������� ���������� ���� ����� ����� �� ����� ����. �������� 1000 �������. ��� ����� �������, ��� �� ����� ����. �� ����� ���� ������. �� ������� ���� �� ����� ������� ������, �� ��� ��� �� ���.~
  IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 11 // from: 5.2
  SAY ~������ �����������. ������������� ���� �� �������� ����� ��������.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 12 // from: 6.1
  SAY ~� ����...  �������, ���� ������� ���������� �����-�� �������. ���� �������, ��� ���, ���� �� �����, �� ����, ������ � �� ���� ����������� ���� ������ ��������� ��������, ���� �� �� ��� �� ����������. ������� ���� ��������� ������. ��� ������ �������� ���� �����.~
  IF ~~ THEN REPLY ~��� ����� ������ �����. ��� �� ������ ����������?~ GOTO 9
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 4
END

IF ~~ THEN BEGIN 13 // from: 6.2
  SAY ~���������... ����... ��, �� � ������ �� ��������. ��� ��� ��������. ����� �� ����� ����� ������ ������ ������... �����������.~
  IF ~~ THEN REPLY ~������ �� �������� � ���� ������� �����?~ GOTO 23
  IF ~~ THEN REPLY ~�� ��������.~ DO ~TakePartyItem("OphalLet")DestroyItem("OphalLet")GiveItemCreate("OleffLet",LastTalkedToBy,1,0,0)~ GOTO 4
END

IF ~~ THEN BEGIN 14 // from: 7.1
  SAY ~�� ���� � ���� ����, ��� ��� ������ ������ ������� ��� �������� �����. � ������? ������ � ����� ����� ��� � �������������� �����������.~
  IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 15 // from: 7.2
  SAY ~����������, �� �������, ��� ��� �����. � ��� ������� ��������, ��� ������ �� ������� ������������������, ��� ��� �����.~
  IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 16 // from: 7.3
  SAY ~�� �����, ������? � �� ����, ����� �� ����, �� �����, �� �������, ��� ����� ��, ���� � �����.~
  IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 17 // from: 7.4
  SAY ~��� ���� �������������� �� ���� ��������� ��������, �, �� ��� ������, �� ���������� �� ���� ����� �������. �� ����������.~
  IF ~  CheckStatGT(LastTalkedToBy(Myself),9,WIS)~ THEN REPLY ~�����, � ��� �� ����� ������?~ GOTO 27
  IF ~  CheckStatLT(LastTalkedToBy(Myself),10,WIS)~ THEN REPLY ~�����, � ��� �� ����� ������?~ GOTO 28
  IF ~  OR(3)Class(Player1,CLERIC_ALL)Class(Player1,PALADIN)Class(Player1,MONK)~ THEN REPLY ~������ ������� ����������� ����������?~ GOTO 8
  IF ~  !Class(Player1,CLERIC_ALL)!Class(Player1,PALADIN)!Class(Player1,MONK)~ THEN REPLY ~������ ������� ����������� ����������?~ GOTO 2
  IF ~~ THEN REPLY ~��� ����� ������ �����. ��� �� ������ ����������?~ GOTO 9
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 4
END

IF ~~ THEN BEGIN 18 // from: 8.1
  SAY ~����� �����������, �� �������� �������������� ��� ���� ��������������� ����� � ���������. � ������� ������� ��� ������� ����� �������.~
  IF ~  PartyHasItem("OphalLet")~ THEN REPLY ~� ���� � ��� ������ �� �����.~ GOTO 6
  IF ~~ THEN REPLY ~������ ���� ���������?~ GOTO 7
  IF ~~ THEN REPLY ~��� ����� ������ �����. ��� �� ������ ����������?~ GOTO 9
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 4
END

IF ~~ THEN BEGIN 19 // from: 10.1
  SAY ~���� ��� ���������, ��������� ��� �����������. �� ��������� ������ �� �������� �� ����� ������ ���������� ���������. ��� ����� �������������� � �������� �������, ����������� ������������! ��� ������������� �������� ������� ������� �������� ������ ����������. � ��� ��� ��� ���� �� �������� ������� ��������! ���� ���������� ��� ���������. ��� ����� ��������, ������ ��� �������� ����� ����� ������ ���-�� ��������� �������� � ������.~
  IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 19.1
  SAY ~���� ��������, ��������� ��� � �� �������, � ��� ����� �� �������� �������. ����� ������� �������� �� �� ���. ���� �����, ��� ����� � ��������� ������� ������ ����� ����� ������ ���������. �� ����� � ����� �� ��� �� �������.~
  IF ~~ THEN REPLY ~� ������ ��� �������� ������.~ GOTO 21
  IF ~~ THEN REPLY ~��� ����������� ��� ��������.~ GOTO 22
END

IF ~~ THEN BEGIN 21 // from: 20.1
  SAY ~� ����� ���, ��� �� ���������� ���� ������. �� �� ����� ��������� � ����� ���������� �����. ���, �������� ������ � ���� �������. ��� ������, ��� �� ���������� �� ����� �������. �������� ��� ������ �� ����������, � �� ������� ���. �� �������� ��� ��������� ������. ��� � ������� ������ �� ����� �� ������� ������ �����������. �������������, ���� ������� ���-������, � �� � � ����� �� ��������.~
  IF ~~ THEN DO ~SetGlobal("OleffQuest","GLOBAL",1)TakePartyItem("Nwmisc18")DestroyItem("Nwmisc18")GiveItemCreate("OleffL1",LastTalkedToBy,1,0,0)GiveGoldForce(1000)
AddexperienceParty(30000)~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 20.2
  SAY ~��������, � � ������� ���� ���������. ���� ��� �� ����������� � ������ ������, ���������� �� ���� �����.~
  IF ~~ THEN DO ~TakePartyItem("Nwmisc18")DestroyItem("Nwmisc18")GiveGoldForce(1000)AddexperienceParty(30000)~ EXIT
END

IF ~~ THEN BEGIN 23// from: 13.1
  SAY ~���? ��... ����������, � ����� ���� ����� ����������� ������. ����� ������� ����� ����� �������� � ��� ����. � ����� ���� �������� ������. ~
  IF ~  Global("Robbed","LOCALS",0)~ THEN REPLY ~������. ��� ���� ������, ����� ������� ��� �� �����.~ GOTO 24
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 25
END

IF ~~ THEN BEGIN 24// from: 23.1
  SAY ~� ���? ������ ������? ����������, ��! � �������, �� ������ �� ����� ������� ���������! �������?! ��� � ����, ��� ��� ��� ������ �����. ���. 500 �������. � ������ �� ����� �� ����! �� �����!~
  IF ~~ THEN DO ~TakePartyItem("OphalLet")DestroyItem("OphalLet")GiveItemCreate("OleffLet",LastTalkedToBy,1,0,0)GiveGoldForce(500)SetGlobal("Robbed","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 25// from: 23.2
  SAY ~��� �������� ���� � ��������������.~
  IF ~~ THEN DO ~TakePartyItem("OphalLet")DestroyItem("OphalLet")GiveItemCreate("OleffLet",LastTalkedToBy,1,0,0)~ EXIT
END

IF ~~ THEN BEGIN 26 // from: 14.1 15.1 16.1
  SAY ~�� ��������� ������ �� �������� �� ����� ������ ���������� ���������. ��� ����� �������������� � �������� �������, ����������� ������������! ��� ������������� �������� ������� ������� �������� ������ ����������. � ��� ��� ��� ���� �� �������� ������� ��������!~
  IF ~~ THEN REPLY ~���� ���������� ��� ���������.~ GOTO 29
  IF ~~ THEN REPLY ~��� ���� ������ ������� �����, ����� �������� ����.~ GOTO 30
  IF ~~ THEN REPLY ~������ ����� �������, ���� �� �������� ��������.~ GOTO 30
END

IF ~~ THEN BEGIN 27 // from: 17.1
  SAY ~��������, � ���� ������� ������. � ��� ������� ����. �����, �� �������, ������ ��� ��� �����.~
  IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 28 // from: 17.2
  SAY ~���, � ���� ���� �����������, �� ����� ����� ���� �������� �������, ����� �������� � ������ ������.~
  IF ~  OR(3)Class(Player1,CLERIC_ALL)Class(Player1,PALADIN)Class(Player1,MONK)~ THEN REPLY ~������ ������� ����������� ����������?~ GOTO 8
  IF ~  !Class(Player1,CLERIC_ALL)!Class(Player1,PALADIN)!Class(Player1,MONK)~ THEN REPLY ~������ ������� ����������� ����������?~ GOTO 2
  IF ~~ THEN REPLY ~��� ����� ������ �����. ��� �� ������ ����������?~ GOTO 9
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 4
END

IF ~~ THEN BEGIN 29 // from: 26.1
  SAY ~�� ������ ���. ��� ����� ��������, ������ ��� �������� ����� ����� ������ ���-�� ��������� �������� � ������.~
  IF ~~ THEN GOTO 31
END

IF ~~ THEN BEGIN 30 // from: 26.2
  SAY ~������� ������ ��������������� ������, ���� ����� ������ ������ ����������� ��� ������, �������� ������, ����� � ������ ������������ ����.~
  IF ~~ THEN GOTO 31
END

IF ~~ THEN BEGIN 31 // from: 29.1 30.1
  SAY ~���� ��������, ��������� ��� � �� �������, � ��� ����� �� �������� �������. ����� ������� �������� �� �� ���. ���� �����, ��� ����� � ��������� ������� ������ ����� ����� ������ ���������. �� ����� � ����� �� ��� �� �������.~
  IF ~~ THEN REPLY ~��� �� ������ � ������� ������?~ GOTO 32
  IF ~~ THEN REPLY ~� ������ ��� �������� ������.~ GOTO 33
  IF ~~ THEN REPLY ~��� ����������� ��� ��������.~ GOTO 34
END

IF ~~ THEN BEGIN 32 // from: 31.1
  SAY ~�� ������� �����������. �� � ��� ���� ��� ��������. �� ���� ������ ����������� ���������. �������, �� ������� ��� ������ ������ �����������, �������� �������� ���� �������� ������� � ������. � ��� ��� � ��� ��������� ��������� � ���� �������. ������ ����� �� �� ������, ���� �� ����� �������� ����������� ��� �����. ����� ����������, ���� � ������� ����� ������ ������ ��� �����������.~
  IF ~~ THEN REPLY ~� ������ ��� �������� ������.~ GOTO 33
  IF ~~ THEN REPLY ~��� ����������� ��� ��������.~ GOTO 34
END

IF ~~ THEN BEGIN 33 // from: 31.2
  SAY ~� ����� ���, ��� �� ���������� ���� ������. �� �� ����� ��������� � ����� ���������� �����. ���, �������� ������ � ���� �������. ��� ������, ��� �� ���������� �� ����� �������. �������� ��� ������ �� ����������, � �� ������� ���. �� �������� ��� ��������� ������. ��� � ������� ������ �� ����� �� ������� ������ �����������. �������������, ���� ������� ���-������, � �� � � ����� �� ��������.~
  IF ~~ THEN DO ~SetGlobal("OleffQuest","GLOBAL",1)GiveItemCreate("OleffL1",LastTalkedToBy,1,0,0)~ EXIT
END

IF ~~ THEN BEGIN 34 // from: 31.3
  SAY ~��������, � � ������� ���� ���������. ���� ��� �� ����������� � ������ ������, ���������� �� ���� �����.~
  IF ~~ THEN EXIT
END

// ------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Global("OleffQuest","GLOBAL",1)IsGabber(Player1)~ THEN BEGIN 35 // from:
  SAY ~����������� ��� ���, <CHARNAME>. ������, ��� �� ��������� � ��� ����.~ [OLEFF053]
  IF ~  GlobalLT("OleffQuestBreak","GLOBAL",3)~ THEN GOTO 36
  IF ~  Global("OleffQuestBreak","GLOBAL",3)~ THEN DO ~SetGlobal("OleffQuest","GLOBAL",9)~ GOTO 37
END

IF ~~ THEN BEGIN 36 // from: 35.1
  SAY ~�������, ������ ������ ������� ������ ������������? ��� ������� ��� �������.~
  IF ~  PartyHasItem("OphalLet")~ THEN REPLY ~� ���� � ��� ������ �� �����.~ GOTO 6
  IF ~  OR(4)PartyHasItem("Nwmisc15")PartyHasItem("Nwmisc16")PartyHasItem("Nwmisc17")PartyHasItem("Nwmisc18")~ THEN REPLY ~� ���� ���� ��������, ������ � ����� �� �����.~ GOTO 38
  IF ~~ THEN REPLY ~���������� ��� ���, ��� ����� ������.~ GOTO 39
  IF ~~ THEN REPLY ~��� ����� ������ �����.~ GOTO 9
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 4
END

IF ~~ THEN BEGIN 37 // from: 35.2
  SAY ~������ � ���� ����������, ���� ��� ���������� ��������� ���� ������� �������. �� ���� ����� �������, ���... ������������� ������ �������� � ���� ������������ ��������� �� �������, ������� �� ������. ������ ���������� �� �� �������... ��� ������ � ���� ���. � ���������� �� ����, ��� ��� ����� ���������. ���� ����� ����������, ���� ������ ������ �� ���������. ��� ����� ����...~
  IF ~  PartyHasItem("OphalLet")~ THEN REPLY ~� ���� � ��� ������ �� �����.~ GOTO 6
  IF ~~ THEN REPLY ~��� ����� ������ �����.~ GOTO 9
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 4
END

IF ~~ THEN BEGIN 38 // from: 36.2
  SAY ~������? �����������. ����, ����������, ��� �� �� �����?~
  IF ~  PartyHasItem("Nwmisc15")~ THEN REPLY ~���������� � ���, ��� ����� ������� ������� ������.~ GOTO 40
  IF ~  PartyHasItem("Nwmisc16")~ THEN REPLY ~����������, ��� ����� ������ ������� ������� ������.~ GOTO 41
  IF ~  PartyHasItem("Nwmisc17")~ THEN REPLY ~����������, ��� ��� ������ ������ ������ ����.~ GOTO 42
  IF ~  PartyHasItem("Nwmisc18")~ THEN REPLY ~����������, ��� �������� ��������������� ���� ����� � �������� �������.~ GOTO 43
  IF ~~ THEN REPLY ~������, ��� ���� �����.~ GOTO 11
END

IF ~~ THEN BEGIN 39 // from: 36.3
  SAY ~�� ��������� ������ �� �������� �� ����� ������ ���������� ���������. ��� ����� �������������� � �������� �������, ����������� ������������! ��� ������������� �������� ������� ������� �������� ������ ����������. � ��� ��� ��� ���� �� �������� ������� ��������! ���� ���������� ��� ���������. ��� ����� ��������, ������ ��� �������� ����� ����� ������ ���-�� ��������� �������� � ������.~
  IF ~~ THEN GOTO 44
END

IF ~~ THEN BEGIN 40 // from: 38.1
  SAY ~���������� �������! ������������ ����� ������� ������ ������ � ����� ������. ��������, ����� ���� ��� ���� �����-��.~
  IF ~  GlobalGT("OleffQuestBreak","GLOBAL",0)~ THEN GOTO 45
  IF ~  Global("OleffQuestBreak","GLOBAL",0)Global("MyArtefact","LOCALS",2)~ THEN GOTO 46
  IF ~  Global("OleffQuestBreak","GLOBAL",0)GlobalLT("MyArtefact","LOCALS",2)~ THEN GOTO 47
END

IF ~~ THEN BEGIN 41 // from: 38.2
  SAY ~��� ����������� ������! � ��� ������! ��� �� ��� ��������, ��� ��� ���, �����, ����� ������? ��� ������� � ��� ������� ����� ��������� � �������� ������ ������������. ���� � ����� ������� �� �� ������� � ����.~
  IF ~  GlobalGT("OleffQuestBreak","GLOBAL",0)~ THEN GOTO 49
  IF ~  Global("OleffQuestBreak","GLOBAL",0)Global("MyArtefact","LOCALS",2)~ THEN GOTO 50
  IF ~  Global("OleffQuestBreak","GLOBAL",0)GlobalLT("MyArtefact","LOCALS",2)~ THEN GOTO 51
END

IF ~~ THEN BEGIN 42 // from: 38.3
  SAY ~��� ��� ������ ����� �� �� ������ ������ ���������. ��� ��-������ �������� �������� ������� ������ � ��� ����������.~
  IF ~  GlobalGT("OleffQuestBreak","GLOBAL",0)~ THEN GOTO 52
  IF ~  Global("OleffQuestBreak","GLOBAL",0)Global("MyArtefact","LOCALS",2)~ THEN GOTO 53
  IF ~  Global("OleffQuestBreak","GLOBAL",0)GlobalLT("MyArtefact","LOCALS",2)~ THEN GOTO 54
END

IF ~~ THEN BEGIN 43 // from: 38.4
  SAY ~���?! �� ������� �������, ����� ��� ��������� ��������� �����? ��� ������ ����� ���������������! ����� ����������! ��� �� ������ ��������, �� ������� �������� ������. ������ �������� ���������� ���� ����� ����� �� ����� ����. �������� 1000 �������. ��� ����� �������, ��� �� ����� ����.~
  IF ~~ THEN DO ~TakePartyItem("Nwmisc18")DestroyItem("Nwmisc18")GiveGoldForce(1000)AddexperienceParty(30000)~ EXIT
END

IF ~~ THEN BEGIN 44 // from: 39.1
  SAY ~���� ��������, ��������� ��� � �� �������, � ��� ����� �� �������� �������. ����� ������� �������� �� �� ���. ���� �����, ��� ����� � ��������� ������� ������ ����� ����� ������ ���������. �� ����� � ����� �� ��� �� �������.~
  IF ~  PartyHasItem("OphalLet")~ THEN REPLY ~� ���� � ��� ������ �� �����.~ GOTO 6
  IF ~  OR(4)PartyHasItem("Nwmisc15")PartyHasItem("Nwmisc16")PartyHasItem("Nwmisc17")PartyHasItem("Nwmisc18")~ THEN REPLY ~� ���� ���� ��������, ������ � ����� �� �����.~ GOTO 38
  IF ~~ THEN REPLY ~��� ����� ������ �����.~ GOTO 9
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 4
END

IF ~~ THEN BEGIN 45 // from: 40.1
  SAY ~��� � � ������, ��� ���� �������. �������� ��� 1000 �������. ��, �������� �� ���� ������, �� �� ���� ����� �������, ������� ���� �����������. ������� ����������� ���������� � ������, �... ��������� �� �����, ��� �� ������, ������ � ���� ����. � �� �������, ��� ��� ����� ���������, �� ������������� ������ ������ ����������� ��� ���� ����� ������������ �������... ����� ��� � ���� ���, ��� ��� � ��� ������.~
  IF ~~ THEN GOTO 48
END

IF ~~ THEN BEGIN 46 // from: 40.2
  SAY ~��� ����������� ��� ���� ��������! ��� ������� ���������, ��� ������ �� �������� ������! �� ����� ������� ������� ��� ���� � ������, � ������� ��� ���� �������. �������� ���� ������ � ������, � ����� � ��������������� ����.~
  IF ~~ THEN DO ~TakePartyItem("Nwmisc15")DestroyItem("Nwmisc15")IncrementGlobal("MyArtefact","LOCALS",1)
GiveGoldForce(1000)AddexperienceParty(60000)SetGlobal("OleffQuest","GLOBAL",2)GiveItemCreate("OleffAmu",LastTalkedToBy,1,1,1)~ EXIT
END

IF ~~ THEN BEGIN 47 // from: 40.3
  SAY ~�� ����� ���� ������. �� ������� ���� �� ����� ������� ������, �� ��� ��� �� ���. ���� ��� ���������, ��������� ��� �����������. �������������, ����� ������� ��. � ������ ��� �������, � ����� ������� ���, �������� ���.~
  IF ~~ THEN DO ~TakePartyItem("Nwmisc15")DestroyItem("Nwmisc15")GiveGoldForce(1000)AddexperienceParty(30000)IncrementGlobal("MyArtefact","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 48 // from: 45.1
  SAY ~�� ������� ����, ���� � ������ � ���������� ��������������, �� ��� ��? ��� ����������� ��� �������, ����� ����������� ��������, ��� �� ��������� �� ����� ����� ������.~
  IF ~~ THEN DO ~TakePartyItem("Nwmisc15")DestroyItem("Nwmisc15")GiveGoldForce(1000)AddexperienceParty(30000)SetGlobal("OleffQuest","GLOBAL",9)~ EXIT
END

IF ~~ THEN BEGIN 49 // from: 41.1
  SAY ~��� � � ������, ��� ���� �������. �������� ��� 1000 �������. ��, �������� �� ���� ������, �� �� ���� ����� �������, ������� ���� �����������. ������� ����������� ���������� � ������, �... ��������� �� �����, ��� �� ������, ������ � ���� ����. � �� �������, ��� ��� ����� ���������, �� ������������� ������ ������ ����������� ��� ���� ����� ������������ �������... ����� ��� � ���� ���, ��� ��� � ��� ������.~
  IF ~~ THEN GOTO 55
END

IF ~~ THEN BEGIN 50 // from: 41.2
  SAY ~��� ����������� ��� ���� ��������! ��� ������� ���������, ��� ������ �� �������� ������! �� ����� ������� ������� ��� ���� � ������, � ������� ��� ���� �������. �������� ���� ������ � ������, � ����� � ��������������� ����.~
  IF ~~ THEN DO ~TakePartyItem("Nwmisc16")DestroyItem("Nwmisc16")IncrementGlobal("MyArtefact","LOCALS",1)
GiveGoldForce(1000)AddexperienceParty(60000)SetGlobal("OleffQuest","GLOBAL",2)GiveItemCreate("OleffAmu",LastTalkedToBy,1,1,1)~ EXIT
END

IF ~~ THEN BEGIN 51 // from: 41.3
  SAY ~�� ������ �����������, � ���� �������� ��������� ����� ������� ������, �� �� ������, ��� ��� �� ���. ���� ��� ���������, ��������� ��� �����������. �������������, ����� ������� ��. � ������ ��� �������, � ����� ������� ���, �������� ���.~
  IF ~~ THEN DO ~TakePartyItem("Nwmisc16")DestroyItem("Nwmisc16")GiveGoldForce(1000)AddexperienceParty(30000)IncrementGlobal("MyArtefact","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 52 // from: 42.1
  SAY ~��� � � ������, ��� ���� �������. �������� ��� 1000 �������. ��, �������� �� ���� ������, �� �� ���� ����� �������, ������� ���� �����������. ������� ����������� ���������� � ������, �... ��������� �� �����, ��� �� ������, ������ � ���� ����. � �� �������, ��� ��� ����� ���������, �� ������������� ������ ������ ����������� ��� ���� ����� ������������ �������... ����� ��� � ���� ���, ��� ��� � ��� ������.~
  IF ~~ THEN GOTO 56
END

IF ~~ THEN BEGIN 53 // from: 42.2
  SAY ~��� ����������� ��� ���� ��������! ��� ������� ���������, ��� ������ �� �������� ������! �� ����� ������� ������� ��� ���� � ������, � ������� ��� ���� �������. �������� ���� ������ � ������, � ����� � ��������������� ����.~
  IF ~~ THEN DO ~TakePartyItem("Nwmisc17")DestroyItem("Nwmisc17")IncrementGlobal("MyArtefact","LOCALS",1)
GiveGoldForce(1000)AddexperienceParty(60000)SetGlobal("OleffQuest","GLOBAL",2)GiveItemCreate("OleffAmu",LastTalkedToBy,1,1,1)~ EXIT
END

IF ~~ THEN BEGIN 54 // from: 42.3
  SAY ~�� ����� ���� ������. �� ������� ���� �� ����� ������� ������, �� ��� ��� �� ���. ���� ��� ���������, ��������� ��� �����������. �������������, ����� ������� ��. � ������ ��� �������, � ����� ������� ���, �������� ���.~
  IF ~~ THEN DO ~TakePartyItem("Nwmisc17")DestroyItem("Nwmisc17")GiveGoldForce(1000)AddexperienceParty(30000)IncrementGlobal("MyArtefact","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 55 // from: 49.1
  SAY ~�� ������� ����, ���� � ������ � ���������� ��������������, �� ��� ��? ��� ����������� ��� �������, ����� ����������� ��������, ��� �� ��������� �� ����� ����� ������.~
  IF ~~ THEN DO ~TakePartyItem("Nwmisc16")DestroyItem("Nwmisc16")GiveGoldForce(1000)AddexperienceParty(30000)SetGlobal("OleffQuest","GLOBAL",9)~ EXIT
END

IF ~~ THEN BEGIN 56 // from: 52.1
  SAY ~�� ������� ����, ���� � ������ � ���������� ��������������, �� ��� ��? ��� ����������� ��� �������, ����� ����������� ��������, ��� �� ��������� �� ����� ����� ������.~
  IF ~~ THEN DO ~TakePartyItem("Nwmisc17")DestroyItem("Nwmisc17")GiveGoldForce(1000)AddexperienceParty(30000)SetGlobal("OleffQuest","GLOBAL",9)~ EXIT
END

// ------------------------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Global("OleffQuest","GLOBAL",1)!IsGabber(Player1)~ THEN BEGIN 57 // from:
  SAY ~������������. �� � <CHARNAME>? ���������, ��� ���� ������ ������ ������� ������.~ [OLEFF054]
  IF ~  GlobalLT("OleffQuestBreak","GLOBAL",3)~ THEN GOTO 36
  IF ~  Global("OleffQuestBreak","GLOBAL",3)~ THEN DO ~SetGlobal("OleffQuest","GLOBAL",9)~ GOTO 37
END

// ------------------------------------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  Global("OleffQuest","GLOBAL",9)~ THEN BEGIN 58 // from:
  SAY ~��� ������������ ���� ��� �������, � � �� ���� ��� ��������. ������ ������� ��� �� ���� ����� ������� ����������. ����� ����... ��������� ����, ���� ��������� ��������, ��� �� ������... � ����� ���! �� �������� ����� ������� �����������... �� ������ � ���� ���� ������.~ [OLEFF051]
  IF ~~ THEN GOTO 59
END

IF ~~ THEN BEGIN 59 // from: 58.1
  SAY ~������ ����. �� ��� ��� ��������� ����� �������� ����. �� ������������ ������������� ���� �� �� ���.~
  IF ~  PartyHasItem("OphalLet")~ THEN REPLY ~� ���� � ��� ������ �� �����.~ GOTO 6
  IF ~  PartyHasItem("Nwmisc18")~ THEN REPLY ~����������, ��� ������� ��������������� ���� ����� � �������� �������.~ GOTO 60
  IF ~~ THEN REPLY ~��� ����� ������ �����.~ GOTO 9
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 4
END

IF ~~ THEN BEGIN 60 // from: 59.2
  SAY ~� ��� ����������� ����� ��������, �� ��� ���� ����� ����� ����� ������� ���. �� �� ����� ���� ����� �� ������� ����� ����������. ���. �������� ������� ������. ������, ��������� ���� ������ � ���� ������ �����������.~
  IF ~~ THEN DO ~TakePartyItem("Nwmisc18")DestroyItem("Nwmisc18")GiveGoldForce(1000)AddexperienceParty(10000)~ EXIT
END

// ------------------------------------------------------------

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  Global("OleffQuest","GLOBAL",2)~ THEN BEGIN 61 // from:
  SAY ~���� ������������ � ������ ������������, �� ������ �������� �� �������. �� ����� ���������, � �� �������� � ���� ���� ������� ������! ��������� �� ���� ������, ��� ������ ���������.~ [OLEFF050]
  IF ~  PartyHasItem("OphalLet")~ THEN REPLY ~� ���� � ��� ������ �� �����.~ GOTO 6
  IF ~  PartyHasItem("Nwmisc18")~ THEN REPLY ~����������, ��� ������� ��������������� ���� ����� � �������� �������.~ GOTO 62
  IF ~~ THEN REPLY ~��� ����� ������ �����.~ GOTO 9
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 4
END

IF ~~ THEN BEGIN 62 // from: 61.2
  SAY ~��� �������� ������� ������ ������, ����� ��� ������� ���� �������? �������������! �� ������� ���� ������� ������, ������� ��� � ������! �� �������� ���� ����, � �� ����� �� �������. ���, ��� 1000 �������. ��� ����� �������, ��� �� ����� ����. � ���������, ������ �� �� ����� ������� ����� ������. �������, ����� ����������. ��������� ���. �������.~
  IF ~~ THEN DO ~TakePartyItem("Nwmisc18")DestroyItem("Nwmisc18")GiveGoldForce(1000)AddexperienceParty(30000)~ EXIT
END

