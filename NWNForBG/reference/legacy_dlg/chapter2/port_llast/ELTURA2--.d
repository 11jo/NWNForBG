// ����-����� ������� �������    ������� �������      ��� ���� � �������, ��� �������, ������� � ���� ���������� ��������.

BEGIN ~ELTURA2~

IF WEIGHT #0 /* Triggers after states #: 1 even though they appear after this state */
~  OR(2)Global("ElturaQuest","GLOBAL",0)Global("ElturaQuest","GLOBAL",6)~ THEN BEGIN 0 // from:
  SAY ~����� ���������� � �����, ��� � �� �������. � ������� �������, � ���� �� �� ������� ���-�� ��� ����� ���������� ����� �������.~ [ELTUR055]
  IF ~  GlobalGT("ElturaQuest","GLOBAL",0)GlobalLT("ElturaQuest","GLOBAL",6)OR(5)
PartyHasItem("NWBOOK37")
PartyHasItem("NWBOOK34")
PartyHasItem("NWBOOK32")
PartyHasItem("NWBOOK36")
PartyHasItem("NWBOOK38")~ THEN REPLY ~� ���� ���� ���� �� ����, ������� �� �����.~ GOTO 1
  IF ~  Global("ElturaQuest","GLOBAL",1)
PartyHasItem("NWBOOK37")
PartyHasItem("NWBOOK34")
PartyHasItem("NWBOOK32")
PartyHasItem("NWBOOK36")
PartyHasItem("NWBOOK38")~ THEN REPLY ~� ���� ���� ��� �����, ������� �� �����.~ GOTO 15
  IF ~~ THEN REPLY ~����� ������ �� �������� �����?~ GOTO 2
  IF ~~ THEN REPLY ~���� � ���������� ���� ������?~ GOTO 3
  IF ~~ THEN REPLY ~��� �� �������� ������ ��� ��������� ��������.~ GOTO 4
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 5
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~�� ��� �� ������������ �������. ����������, �������� ���, ��� � ��� ����. �, ��� ��� ��� ��������!~
  IF ~  PartyHasItem("NWBOOK37")~ THEN REPLY ~���������� ��� ����.~ GOTO 6
  IF ~  PartyHasItem("NWBOOK34")~ THEN REPLY ~���������� ��� ����.~ GOTO 7
  IF ~  PartyHasItem("NWBOOK32")~ THEN REPLY ~���������� ��� �����.~ GOTO 8
  IF ~  PartyHasItem("NWBOOK36")~ THEN REPLY ~���������� ��� ������.~ GOTO 9
  IF ~  PartyHasItem("NWBOOK38")~ THEN REPLY ~���������� ��� ���������.~ GOTO 10
  IF ~~ THEN REPLY ~���� ��� � �� ���� ������������ � �������.~ GOTO 11
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY ~��, � ������ ���� ������ �� ���������� ���������������. ��������, ���� �� ��� ������� ����� ����� ���������� ��������, ��� � ����.~
  IF ~  GlobalGT("ElturaQuest","GLOBAL",0)GlobalLT("ElturaQuest","GLOBAL",6)OR(5)
PartyHasItem("NWBOOK37")
PartyHasItem("NWBOOK34")
PartyHasItem("NWBOOK32")
PartyHasItem("NWBOOK36")
PartyHasItem("NWBOOK38")~ THEN REPLY ~� ���� ���� ���� �� ����, ������� �� �����.~ GOTO 1
  IF ~  Global("ElturaQuest","GLOBAL",1)
PartyHasItem("NWBOOK37")
PartyHasItem("NWBOOK34")
PartyHasItem("NWBOOK32")
PartyHasItem("NWBOOK36")
PartyHasItem("NWBOOK38")~ THEN REPLY ~� ���� ���� ��� �����, ������� �� �����.~ GOTO 15
  IF ~~ THEN REPLY ~���� � ���������� ���� ������?~ GOTO 3
  IF ~~ THEN REPLY ~��� �� �������� ������ ��� ��������� ��������.~ GOTO 4
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 5
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY ~��, ������ �� ���� ������. ���, � ����� ������ �� ������ �� ��������� �� ��, ��� �� ����� ��� ����������?~
  IF ~~ THEN DO ~  StartStore("ELTURA",LastTalkedToBy(Myself))~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY ~�� ������ �������� ������, � ������ ��������, � ���� ����� �� ���� ��������.~
  IF ~~ THEN REPLY ~�� ������� ���-������ � ������-��������� ������ �� ����-������?~ GOTO 12
  IF ~  Global("ElturaQuest","GLOBAL",0)~ THEN REPLY ~� ��� ������. ������ �� ������ ����������?~ GOTO 13
  IF ~  GlobalGT("ElturaQuest","GLOBAL",0)GlobalLT("ElturaQuest","GLOBAL",6)~ THEN REPLY ~� ��� ������. ������ �� ������ ����������?~ GOTO 16
  IF ~~ THEN REPLY ~������-�� ��� ����� ������ ������.~ GOTO 14
  IF ~  GlobalGT("ElturaQuest","GLOBAL",0)GlobalLT("ElturaQuest","GLOBAL",6)~ THEN REPLY ~������ ��� ��������� �� ���� ������ �� ����������� ����?~ GOTO 19
  IF ~~ THEN REPLY ~���� � ���������� ���� ������?~ GOTO 3
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 0.6
  SAY ~� ����� ��� ������� �������� <DAYNIGHT>, <SIRMAAM>. ����������, �������� ���.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.1
  SAY ~��, ��� ����! ��� ����� ���������� ���������� � ���� ���������. ������� ��� �������, � ������ ��������� � �������. � �������, �� ���� ������ ������ ��������. �� ��� ��?~
  IF ~~ THEN ~ DO ~IncrementGlobal("ElturaQuest","GLOBAL",1)TakePartyItem("NWBOOK37")GiveItemCreate("ELTRITM1",LastTalkedToBy(Myself))AddexperienceParty(40000)~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.2
  SAY ~���, ��� ����. ��� ���� ���������� ������ �������� ��� ��������. ������� ��� �� ���. � ������ ��������� � �������. � �������, �� ���� ������ ������ ��������. �� ��� ��?~
  IF ~~ THEN ~ DO ~IncrementGlobal("ElturaQuest","GLOBAL",1)TakePartyItem("NWBOOK34")GiveItemCreate("ELTRITM2",LastTalkedToBy(Myself))AddexperienceParty(40000)~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 1.3
  SAY ~�, ��� ��� �������������� ����� � � ������������� ���������, �������. ��� ��� ���� ��-���������� ������. � ��� ���.... � �������, �� ���� ������ ������ ��������. �� ��� ��?~
  IF ~~ THEN ~ DO ~IncrementGlobal("ElturaQuest","GLOBAL",1)TakePartyItem("NWBOOK32")GiveItemCreate("ELTRITM3",LastTalkedToBy(Myself))AddexperienceParty(40000)~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 1.4
  SAY ~��, ����� �������������� �����. � ������ ������, ��� ������ - ��� ����� ������, ����������� ����. ��� ����� ����� ������� ���������� ���� ���������. � �������, �� ���� ������ ������ �������� ��������.~
  IF ~~ THEN ~ DO ~IncrementGlobal("ElturaQuest","GLOBAL",1)TakePartyItem("NWBOOK36")GiveItemCreate("ELTRITM4",LastTalkedToBy(Myself))AddexperienceParty(40000)~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 1.5
  SAY ~���-���, ��� ���������. ���� � � ��������� �� ������, �� ���� �������, ��� ������� �� �� ����� � ����� ����������. ������� ��� ���� ���������� - � ���������������. � �������, �� ������ ������ �������� ��������.~
  IF ~~ THEN ~ DO ~IncrementGlobal("ElturaQuest","GLOBAL",1)TakePartyItem("NWBOOK38")GiveItemCreate("ELTRITM5",LastTalkedToBy(Myself))AddexperienceParty(40000)~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 1.6
  SAY ~��, ��� ����� ��� �����������. ��� �� �����, ���� �� �������� �������� ���-������ �� ���� ���, ������ ��������� �� ���.~
  IF ~~ THEN REPLY ~����� ������ �� �������� �����?~ GOTO 2
  IF ~~ THEN REPLY ~���� � ���������� ���� ������?~ GOTO 3
  IF ~~ THEN REPLY ~��� �� �������� ������ ��� ��������� ��������.~ GOTO 4
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 5
END

IF ~~ THEN BEGIN 12 // from: 4.1
  SAY ~��, � ���-��� �������. ������ - ��-�����, ��� �������?.. �� ����� ���� ����������, ����� ����� ������-�� ��������, �������. ������ ������, ��� ����� ���� ��������� ���� ����� ��� ��� ������; � ���� ������� �������� �� �������� ����. �� ������ ���-������ ���?~
  IF ~  Global("ElturaQuest","GLOBAL",0)~ THEN REPLY ~� ��� ������. ������ �� ������ ����������?~ GOTO 13
  IF ~  GlobalGT("ElturaQuest","GLOBAL",0)GlobalLT("ElturaQuest","GLOBAL",6)~ THEN REPLY ~� ��� ������. ������ �� ������ ����������?~ GOTO 16
  IF ~~ THEN REPLY ~������-�� ��� ����� ������ ������.~ GOTO 14
  IF ~  GlobalGT("ElturaQuest","GLOBAL",0)GlobalLT("ElturaQuest","GLOBAL",6)~ THEN REPLY ~������ ��� ��������� �� ���� ������ �� ����������� ����?~ GOTO 19
  IF ~~ THEN REPLY ~���� � ���������� ���� ������?~ GOTO 3
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 5
END

IF ~~ THEN BEGIN 13 // from: 4.2
  SAY ~���-���-���. � ���� � � ����� ���� ���� ��� ��� �������. ��� �� ������ ����, ����� ��������� ��� ���� ��������� ������ ����?~
  IF ~~ THEN REPLY ~������. ������������� ������.~ GOTO 17
  IF ~~ THEN REPLY ~��� � ���� ������? ��� ��� ������?~ GOTO 18
  IF ~~ THEN REPLY ~�� ����������, �� � ���� ���� ��� ������.~ GOTO 4
  IF ~~ THEN REPLY ~���� � ���������� ���� ������?~ GOTO 3
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 5
END

IF ~~ THEN BEGIN 14 // from: 4.4
  SAY ~��, � �������, ���-������ ����� ��� � ���� ����������� �������... ���� ������ �� �� ������ �����, ��� � ����� ������ ��� ���-���� ��������.~
  IF ~~ THEN REPLY ~�� ������� ���-������ � ������-��������� ������ �� ����-������?~ GOTO 12
  IF ~  Global("ElturaQuest","GLOBAL",0)~ THEN REPLY ~� ��� ������. ������ �� ������ ����������?~ GOTO 13
  IF ~  GlobalGT("ElturaQuest","GLOBAL",0)GlobalLT("ElturaQuest","GLOBAL",6)~ THEN REPLY ~� ��� ������. ������ �� ������ ����������?~ GOTO 16
  IF ~  GlobalGT("ElturaQuest","GLOBAL",0)GlobalLT("ElturaQuest","GLOBAL",6)~ THEN REPLY ~������ ��� ��������� �� ���� ������ �� ����������� ����?~ GOTO 19
  IF ~~ THEN REPLY ~���� � ���������� ���� ������?~ GOTO 3
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 5
END

IF ~~ THEN BEGIN 15 // from: 0.2
  SAY ~��, �������, ��� ��� ������������! ��, ����� �������������� �����. ��� ����� ����� ������� ���������� ���� ���������. � �������, �� ������ ������ �������� ��������.~
  IF ~~ THEN ~ DO ~SetGlobal("ElturaQuest","GLOBAL",6)TakePartyItem("NWBOOK37")
TakePartyItem("NWBOOK34")TakePartyItem("NWBOOK32")TakePartyItem("NWBOOK36")TakePartyItem("NWBOOK38")
GiveItemCreate("ELTRITM1",LastTalkedToBy(Myself))GiveItemCreate("ELTRITM2",LastTalkedToBy(Myself))GiveItemCreate("ELTRITM3",LastTalkedToBy(Myself))
GiveItemCreate("ELTRITM4",LastTalkedToBy(Myself))GiveItemCreate("ELTRITM5",LastTalkedToBy(Myself))AddexperienceParty(200000)~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 4.3
  SAY ~� ����� �� ����������, ��� ��� ���������� ��� ������, � �� ���� �����������. �� ������ �������� ������?~
  IF ~  GlobalGT("ElturaQuest","GLOBAL",0)GlobalLT("ElturaQuest","GLOBAL",6)OR(5)
PartyHasItem("NWBOOK37")
PartyHasItem("NWBOOK34")
PartyHasItem("NWBOOK32")
PartyHasItem("NWBOOK36")
PartyHasItem("NWBOOK38")~ THEN REPLY ~� ���� ���� ���� �� ����, ������� �� �����.~ GOTO 1
  IF ~  Global("ElturaQuest","GLOBAL",1)
PartyHasItem("NWBOOK37")
PartyHasItem("NWBOOK34")
PartyHasItem("NWBOOK32")
PartyHasItem("NWBOOK36")
PartyHasItem("NWBOOK38")~ THEN REPLY ~� ���� ���� ��� �����, ������� �� �����.~ GOTO 15
  IF ~~ THEN REPLY ~��, � �����, ��� �������.~ GOTO 19
  IF ~~ THEN REPLY ~��� � ���� ������? ��� ��� ������?~ GOTO 18
  IF ~~ THEN REPLY ~��� �� �������� ������ ��� ��������� ��������.~ GOTO 4
  IF ~~ THEN REPLY ~���� � ���������� ���� ������?~ GOTO 3
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 5
END

IF ~~ THEN BEGIN 17 // from: 13.1
  SAY ~���� ����� �������� �������� ��������� ���-�� � ���� ������ � ������������ ����. � ����, ����� �� ����� ��� ���� � ������� �� ���. ���� �� ������� ��� �������, � ��� ��� ������� ������, ��� ����� �����. �� � ���� �� ������ ���� �������. ���� ����, ������� � ����� ��� �����, ��� ���� ���������, �����, ������, ���� � ����.~
  IF ~~ THEN REPLY ~��� ����� ���� ��� ����?~ GOTO 21
  IF ~~ THEN REPLY ~�� ������, ��� ��������� ��� ����?~ GOTO 22
  IF ~~ THEN REPLY ~��� ����� ������ �������� � ���� �����.~ GOTO 23
  IF ~~ THEN REPLY ~��� ��� ����� ��� ������?~ GOTO 24
  IF ~~ THEN REPLY ~�� ������, ��� ��������� ��� ���������?~ GOTO 25
  IF ~~ THEN REPLY ~� ������� ��� ��� �����.~ GOTO 20
  IF ~~ THEN REPLY ~���� ��� �� ����������. �� ��������.~ GOTO 5
END

IF ~~ THEN BEGIN 18 // from: 13.2
  SAY ~����� ������� � ������� ����������, ������� � ���� ��������� - ��� ���� ������ �� ���������� �����. � ��� ���� ������� �������� ���������� ���������. � ���� ���������� ��������� ������� �� ��� �����.~
  IF ~~ THEN REPLY ~������. ������������� ������.~ GOTO 17
  IF ~~ THEN REPLY ~�� ����������, �� � ���� ���� ��� ������.~ GOTO 4
  IF ~~ THEN REPLY ~���� � ���������� ���� ������?~ GOTO 3
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 5
END

IF ~~ THEN BEGIN 19 // from: 12.3
  SAY ~���� ����� �������� �������� ��������� ���-�� � ���� ������ � ������������ ����. � ����, ����� �� ����� ��� ���� � ������� �� ���. ���� �� ������� ��� �������, � ��� ��� ������� ������, ��� ����� �����. �� � ���� �� ������ ���� �������. ���� ����, ������� � ����� ��� �����, ��� ���� ���������, �����, ������, ���� � ����.~
  IF ~~ THEN REPLY ~��� ����� ���� ��� ����?~ GOTO 26
  IF ~~ THEN REPLY ~�� ������, ��� ��������� ��� ����?~ GOTO 27
  IF ~~ THEN REPLY ~��� ����� ������ �������� � ���� �����.~ GOTO 28
  IF ~~ THEN REPLY ~��� ��� ����� ��� ������?~ GOTO 29
  IF ~~ THEN REPLY ~�� ������, ��� ��������� ��� ���������?~ GOTO 30
  IF ~~ THEN REPLY ~���� � ���������� ���� ������?~ GOTO 3
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 5
END

IF ~~ THEN BEGIN 20 // from: 17.6
  SAY ~����� ������. ���� ����� � �����������.~
  IF ~~ THEN DO ~SetGlobal("ElturaQuest","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 21 // from: 17.1
  SAY ~���������� ��������������� ���� ���� ��� ���� ����������. ��� ���������� �������� ����������, ��� �� ���-�� ������ �� ���, �� ��� ���������, � �� ����. ������� ���� �� ������������, ��� ���� ��� ���-�� � �������. ���� � � �� ����, ������, �� ��� ����� �������������� ����� �����������. ���� ����� ���-������ ���, �����, � ������ �� �� ����������.~
  IF ~~ THEN REPLY ~�� ������, ��� ��������� ��� ����?~ GOTO 22
  IF ~~ THEN REPLY ~��� ����� ������ �������� � ���� �����.~ GOTO 23
  IF ~~ THEN REPLY ~��� ��� ����� ��� ������?~ GOTO 24
  IF ~~ THEN REPLY ~�� ������, ��� ��������� ��� ���������?~ GOTO 25
  IF ~~ THEN REPLY ~� ������� ��� ��� �����.~ GOTO 20
  IF ~~ THEN REPLY ~���� ��� �� ����������. �� ��������.~ GOTO 5
END

IF ~~ THEN BEGIN 22 // from: 17.2
  SAY ~���������� ������ � ��� �� ������� �����. � ���� ����� � ����� ��� ����. ������� ��, �������� ����� - �������������� ��������� � ����� �����, ��� ��� �� ����� ����������� �����������.~
  IF ~~ THEN REPLY ~��� ����� ���� ��� ����?~ GOTO 21
  IF ~~ THEN REPLY ~��� ����� ������ �������� � ���� �����.~ GOTO 23
  IF ~~ THEN REPLY ~��� ��� ����� ��� ������?~ GOTO 24
  IF ~~ THEN REPLY ~�� ������, ��� ��������� ��� ���������?~ GOTO 25
  IF ~~ THEN REPLY ~� ������� ��� ��� �����.~ GOTO 20
  IF ~~ THEN REPLY ~���� ��� �� ����������. �� ��������.~ GOTO 5
END

IF ~~ THEN BEGIN 23 // from: 17.3
  SAY ~���� ��� ��������� �� �������� ����� ������, ����� �������� �������. � ���������� ������ � ���� �����, �� �� ������, ��������� �� ���������. ����� � �������� � ��� ������, � �������� ������, �� ����� ��� ������ ����� ���� �� ����. ������������ �����, ��� � ��� �� ��������, ��� ��� ��������; � ���� ������ �� ���� �������.~
  IF ~~ THEN REPLY ~��� ��� �� �������� �������?~ GOTO 31
  IF ~~ THEN REPLY ~��� ��� ��������?~ GOTO 32
  IF ~~ THEN REPLY ~��� ����� ���� ��� ����?~ GOTO 21
  IF ~~ THEN REPLY ~�� ������, ��� ��������� ��� ����?~ GOTO 22
  IF ~~ THEN REPLY ~��� ��� ����� ��� ������?~ GOTO 24
  IF ~~ THEN REPLY ~�� ������, ��� ��������� ��� ���������?~ GOTO 25
  IF ~~ THEN REPLY ~� ������� ��� ��� �����.~ GOTO 20
  IF ~~ THEN REPLY ~���� ��� �� ����������. �� ��������.~ GOTO 5
END

IF ~~ THEN BEGIN 24 // from: 17.4
  SAY ~��� � � ����� ����, ��� ����������� ������� ���, ��� ��� ������ ���� �� ������, ������ ������ � ������. ���� �� ������ � ����� ������ ������, �� ���� ����� ��� ���� �����������.~
  IF ~~ THEN REPLY ~��� ����� ���� ��� ����?~ GOTO 21
  IF ~~ THEN REPLY ~�� ������, ��� ��������� ��� ����?~ GOTO 22
  IF ~~ THEN REPLY ~��� ����� ������ �������� � ���� �����.~ GOTO 23
  IF ~~ THEN REPLY ~�� ������, ��� ��������� ��� ���������?~ GOTO 25
  IF ~~ THEN REPLY ~� ������� ��� ��� �����.~ GOTO 20
  IF ~~ THEN REPLY ~���� ��� �� ����������. �� ��������.~ GOTO 5
END

IF ~~ THEN BEGIN 25 // from: 17.5
  SAY ~��� ����������� ����������, ��� ������� ��� ����� ������ �� ������, � ��� �����������. ��������, ���� �� ����������� � ��� �����������, ����-������ ������� � ��� ��������.~
  IF ~~ THEN REPLY ~��� ����� ���� ��� ����?~ GOTO 21
  IF ~~ THEN REPLY ~�� ������, ��� ��������� ��� ����?~ GOTO 22
  IF ~~ THEN REPLY ~��� ����� ������ �������� � ���� �����.~ GOTO 23
  IF ~~ THEN REPLY ~��� ��� ����� ��� ������?~ GOTO 24
  IF ~~ THEN REPLY ~� ������� ��� ��� �����.~ GOTO 20
  IF ~~ THEN REPLY ~���� ��� �� ����������. �� ��������.~ GOTO 5
END

IF ~~ THEN BEGIN 26 // from: 19.1
  SAY ~���������� ��������������� ���� ���� ��� ���� ����������. ��� ���������� �������� ����������, ��� �� ���-�� ������ �� ���, �� ��� ���������, � �� ����. ������� ���� �� ������������, ��� ���� ��� ���-�� � �������. ���� � � �� ����, ������, �� ��� ����� �������������� ����� �����������. ���� ����� ���-������ ���, �����, � ������ �� �� ����������.~
  IF ~~ THEN REPLY ~�� ������, ��� ��������� ��� ����?~ GOTO 27
  IF ~~ THEN REPLY ~��� ����� ������ �������� � ���� �����.~ GOTO 28
  IF ~~ THEN REPLY ~��� ��� ����� ��� ������?~ GOTO 29
  IF ~~ THEN REPLY ~�� ������, ��� ��������� ��� ���������?~ GOTO 30
  IF ~~ THEN REPLY ~���� � ���������� ���� ������?~ GOTO 3
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 5
END

IF ~~ THEN BEGIN 27 // from: 19.2
  SAY ~���������� ������ � ��� �� ������� �����. � ���� ����� � ����� ��� ����. ������� ��, �������� ����� - �������������� ��������� � ����� �����, ��� ��� �� ����� ����������� �����������.~
  IF ~~ THEN REPLY ~��� ����� ���� ��� ����?~ GOTO 26
  IF ~~ THEN REPLY ~��� ����� ������ �������� � ���� �����.~ GOTO 28
  IF ~~ THEN REPLY ~��� ��� ����� ��� ������?~ GOTO 29
  IF ~~ THEN REPLY ~�� ������, ��� ��������� ��� ���������?~ GOTO 30
  IF ~~ THEN REPLY ~���� � ���������� ���� ������?~ GOTO 3
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 5
END

IF ~~ THEN BEGIN 28 // from: 19.3
  SAY ~���� ��� ��������� �� �������� ����� ������, ����� �������� �������. � ���������� ������ � ���� �����, �� �� ������, ��������� �� ���������. ����� � �������� � ��� ������, � �������� ������, �� ����� ��� ������ ����� ���� �� ����. ������������ �����, ��� � ��� �� ��������, ��� ��� ��������; � ���� ������ �� ���� �������.~
  IF ~~ THEN REPLY ~��� ��� �� �������� �������?~ GOTO 33
  IF ~~ THEN REPLY ~��� ��� ��������?~ GOTO 34
  IF ~~ THEN REPLY ~��� ����� ���� ��� ����?~ GOTO 26
  IF ~~ THEN REPLY ~�� ������, ��� ��������� ��� ����?~ GOTO 27
  IF ~~ THEN REPLY ~��� ��� ����� ��� ������?~ GOTO 29
  IF ~~ THEN REPLY ~�� ������, ��� ��������� ��� ���������?~ GOTO 30
  IF ~~ THEN REPLY ~���� � ���������� ���� ������?~ GOTO 3
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 5
END

IF ~~ THEN BEGIN 29 // from: 19.4
  SAY ~��� � � ����� ����, ��� ����������� ������� ���, ��� ��� ������ ���� �� ������, ������ ������ � ������. ���� �� ������ � ����� ������ ������, �� ���� ����� ��� ���� �����������.~
  IF ~~ THEN REPLY ~��� ����� ���� ��� ����?~ GOTO 26
  IF ~~ THEN REPLY ~�� ������, ��� ��������� ��� ����?~ GOTO 27
  IF ~~ THEN REPLY ~��� ����� ������ �������� � ���� �����.~ GOTO 28
  IF ~~ THEN REPLY ~�� ������, ��� ��������� ��� ���������?~ GOTO 30
  IF ~~ THEN REPLY ~���� � ���������� ���� ������?~ GOTO 3
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 5
END

IF ~~ THEN BEGIN 30 // from: 19.5
  SAY ~��� ����������� ����������, ��� ������� ��� ����� ������ �� ������, � ��� �����������. ��������, ���� �� ����������� � ��� �����������, ����-������ ������� � ��� ��������.~
  IF ~~ THEN REPLY ~��� ����� ���� ��� ����?~ GOTO 26
  IF ~~ THEN REPLY ~�� ������, ��� ��������� ��� ����?~ GOTO 27
  IF ~~ THEN REPLY ~��� ����� ������ �������� � ���� �����.~ GOTO 28
  IF ~~ THEN REPLY ~��� ��� ����� ��� ������?~ GOTO 29
  IF ~~ THEN REPLY ~���� � ���������� ���� ������?~ GOTO 3
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 5
END

IF ~~ THEN BEGIN 31 // from: 23.1
  SAY ~�� ����� ���, ��, �������, ������. �� �� ������ � �������� �������? ��� ����������� � ������� � �������� �������� �������������� ����� ������. ������ �������� �������� ����� ������������ ��������, � ������������, ��� ���������� �� �� ������� ���������, ��� ���������� ����� � ����� ����� �����.~
  IF ~~ THEN REPLY ~��� ��� ��������?~ GOTO 32
  IF ~~ THEN REPLY ~��� ����� ���� ��� ����?~ GOTO 21
  IF ~~ THEN REPLY ~�� ������, ��� ��������� ��� ����?~ GOTO 22
  IF ~~ THEN REPLY ~��� ��� ����� ��� ������?~ GOTO 24
  IF ~~ THEN REPLY ~�� ������, ��� ��������� ��� ���������?~ GOTO 25
  IF ~~ THEN REPLY ~� ������� ��� ��� �����.~ GOTO 20
  IF ~~ THEN REPLY ~���� ��� �� ����������. �� ��������.~ GOTO 5
END

IF ~~ THEN BEGIN 32 // from: 23.2
  SAY ~��������� �� ��� ����� � �����������, � �������, � ���� ���� ����������� �������� �� ���������� ������� �������. ������ ������ ���������. ���� ����� ��� ������� ����������� � ��� ���������� ����������� ������� ��� ������ ��� ������ ����� �������� �� ����������.~
  IF ~~ THEN REPLY ~��� ��� �� �������� �������?~ GOTO 31
  IF ~~ THEN REPLY ~��� ����� ���� ��� ����?~ GOTO 21
  IF ~~ THEN REPLY ~�� ������, ��� ��������� ��� ����?~ GOTO 22
  IF ~~ THEN REPLY ~��� ��� ����� ��� ������?~ GOTO 24
  IF ~~ THEN REPLY ~�� ������, ��� ��������� ��� ���������?~ GOTO 25
  IF ~~ THEN REPLY ~� ������� ��� ��� �����.~ GOTO 20
  IF ~~ THEN REPLY ~���� ��� �� ����������. �� ��������.~ GOTO 5
END

IF ~~ THEN BEGIN 33 // from: 28.1
  SAY ~�� ����� ���, ��, �������, ������. �� �� ������ � �������� �������? ��� ����������� � ������� � �������� �������� �������������� ����� ������. ������ �������� �������� ����� ������������ ��������, � ������������, ��� ���������� �� �� ������� ���������, ��� ���������� ����� � ����� ����� �����.~
  IF ~~ THEN REPLY ~��� ��� ��������?~ GOTO 34
  IF ~~ THEN REPLY ~��� ����� ���� ��� ����?~ GOTO 26
  IF ~~ THEN REPLY ~�� ������, ��� ��������� ��� ����?~ GOTO 27
  IF ~~ THEN REPLY ~��� ��� ����� ��� ������?~ GOTO 29
  IF ~~ THEN REPLY ~�� ������, ��� ��������� ��� ���������?~ GOTO 30
  IF ~~ THEN REPLY ~���� � ���������� ���� ������?~ GOTO 3
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 5
END

IF ~~ THEN BEGIN 34 // from: 28.2
  SAY ~��������� �� ��� ����� � �����������, � �������, � ���� ���� ����������� �������� �� ���������� ������� �������. ������ ������ ���������. ���� ����� ��� ������� ����������� � ��� ���������� ����������� ������� ��� ������ ��� ������ ����� �������� �� ����������.~
  IF ~~ THEN REPLY ~��� ��� �� �������� �������?~ GOTO 33
  IF ~~ THEN REPLY ~��� ����� ���� ��� ����?~ GOTO 26
  IF ~~ THEN REPLY ~�� ������, ��� ��������� ��� ����?~ GOTO 27
  IF ~~ THEN REPLY ~��� ��� ����� ��� ������?~ GOTO 29
  IF ~~ THEN REPLY ~�� ������, ��� ��������� ��� ���������?~ GOTO 30
  IF ~~ THEN REPLY ~���� � ���������� ���� ������?~ GOTO 3
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 5
END

IF WEIGHT #1 /* Triggers after states #: 1 even though they appear after this state */
~  GlobalGT("ElturaQuest","GLOBAL",0)GlobalLT("ElturaQuest","GLOBAL",6)~ THEN BEGIN 35 // from:
  SAY ~��, ������������. �� �������� ��� ��������� �������, ��� ��� ������ ����� ����������? � ����� ������, � ���� ������ ��� �����.~ [ELTUR054]
  IF ~~ THEN REPLY ~��� �� ��������� ������� � ���� ��������?~ GOTO 36
  IF ~  OR(5)
PartyHasItem("NWBOOK37")
PartyHasItem("NWBOOK34")
PartyHasItem("NWBOOK32")
PartyHasItem("NWBOOK36")
PartyHasItem("NWBOOK38")~ THEN REPLY ~� ���� ���� ���� �� ����, ������� �� �����.~ GOTO 1
  IF ~  Global("ElturaQuest","GLOBAL",1)
PartyHasItem("NWBOOK37")
PartyHasItem("NWBOOK34")
PartyHasItem("NWBOOK32")
PartyHasItem("NWBOOK36")
PartyHasItem("NWBOOK38")~ THEN REPLY ~� ���� ���� ��� �����, ������� �� �����.~ GOTO 15
  IF ~~ THEN REPLY ~�� ������ ��������� ��� ������ ���� ������?~ GOTO 19
  IF ~~ THEN REPLY ~���� � ���������� ���� ������?~ GOTO 3
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 5
END

IF ~~ THEN BEGIN 36 // from: 35.1
  SAY ~��, � ������, �������! �� ���-������ �����? �� �� �������, ��� ����������� ������ ���, �����? � ���, ��������, ���������� ��� ������� �� �� �����������.~
  IF ~  OR(5)
PartyHasItem("NWBOOK37")
PartyHasItem("NWBOOK34")
PartyHasItem("NWBOOK32")
PartyHasItem("NWBOOK36")
PartyHasItem("NWBOOK38")~ THEN REPLY ~� ���� ���� ���� �� ����, ������� �� �����.~ GOTO 1
  IF ~  Global("ElturaQuest","GLOBAL",1)
PartyHasItem("NWBOOK37")
PartyHasItem("NWBOOK34")
PartyHasItem("NWBOOK32")
PartyHasItem("NWBOOK36")
PartyHasItem("NWBOOK38")~ THEN REPLY ~� ���� ���� ��� �����, ������� �� �����.~ GOTO 15
  IF ~~ THEN REPLY ~�� ������ ��������� ��� ������ ���� ������?~ GOTO 19
  IF ~~ THEN REPLY ~���� � ���������� ���� ������?~ GOTO 3
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 5
END

