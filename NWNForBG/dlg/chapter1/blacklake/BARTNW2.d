// ���������� ����� ����� ���������� ������� ��� ���� �� �������������� � ������������ ��������� �������������� ���������. �� ��������� ������, ����� ������� �������� � ����� ��������.  GiveItemCreate("Grpermit",LastTalkedToBy,0,0,0)

// Global("NWArena","GLOBAL",4) - �������� ������ ���������� ������! �������� ����. ��������� ������ SetGlobalTimer("NWTaxTime","GLOBAL",SEVEN_DAYS) 

BEGIN ~BARTNW2~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalLT("NWArena","GLOBAL",4)~ THEN BEGIN 0 // from:
  SAY ~������������. ��� ������� ����� ���-�� ���������?~
  IF ~  PartyHasItem("Grpermit")~ THEN REPLY ~� ���� ���� ������� � "��������".~ GOTO 1
  IF ~  Global("PartyHasKey","LOCALS",1)~ THEN REPLY ~� ���� ���� ������� � "��������".~ GOTO 2
  IF ~  Global("PartyHasKey","LOCALS",1)~ THEN REPLY ~��� ����������� � ���� �������?~ GOTO 2
  IF ~  !Global("PartyHasKey","LOCALS",1)~ THEN REPLY ~��� ����������� � ���� �������?~ GOTO 3
  IF ~~ THEN REPLY ~���������, ��� � ��� ���� �� �������.~ DO ~StartStore("Bartnw2",LastTalkedToBy(Myself))~ EXIT
  IF ~~ THEN REPLY ~�� ��������, � ����� �������.~ GOTO 4
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~���. �� ��� ������. ��� ����. ����� ����, ����� ��������. ����� � ������ ����� �����. ��� ��������, ������� � ������.~
  IF ~~ THEN REPLY ~��� ����� ������������ ��� "��������"?~ GOTO 5
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 6
END

IF ~~ THEN BEGIN 2 // from: 0.2 0.3
  SAY ~� ��� ��� ���� ����. ����� � "��������", ���� ������. ����� � ���-�������� ���� �������. ��� ���� ��������, ������� � ������.~
  IF ~~ THEN REPLY ~��� ����� ������������ ��� "��������"?~ GOTO 7
  IF ~~ THEN REPLY ~���������, ��� � ��� ���� �� �������.~ DO ~StartStore("Bartnw2",LastTalkedToBy(Myself))~ EXIT
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 0.4
  SAY ~������, � ��� ����� �������� �����. ���, ������.~
  IF ~  Class(LastTalkedToBy(Myself),FIGHTER_ALL)~ THEN REPLY ~�� �����, ��� ��� �������, ���� ������� ���?~ GOTO 8
  IF ~  !Class(LastTalkedToBy(Myself),FIGHTER_ALL)~ THEN REPLY ~�� �����, ��� ��� �������, ���� ������� ���?~ GOTO 9
  IF ~  CheckStatGT(LastTalkedToBy(Myself),15,STR)~ THEN REPLY ~�� ���� ��������� ����, �� ���� �� �������, ��������.~ GOTO 10
  IF ~  PartyHasItem("Grpermit")~ THEN REPLY ~� ���� ���� ������� � "��������".~ GOTO 1
  IF ~~ THEN REPLY ~�� ��������, � ����� �������.~ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 0.5
  SAY ~� ������ ���, ��������.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.1
  SAY ~��� ������������ ��� ���, ��� �������, ��� ������� - ��� ����� ���������� �� ����, ��� ������ ��� ���������. �������� - ��������� ������ � ������������. ���������� - ��� ��������, � ����� � ���. ��� ��� ����� ������, �������� �� �� ��� �����.~
  IF ~~ THEN REPLY ~������ ��� ����� ������� ������?~ GOTO 11
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 1.3
  SAY ~� ������ ���, ��������.~
  IF ~~ THEN DO ~TakePartyItem("Grpermit")DestroyItem("Grpermit")SetGlobal("PartyHasKey","LOCALS",1)GiveItemCreate("Nwkey05",LastTalkedToBy,0,0,0)~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.1
  SAY ~��� ������������ ��� ���, ��� �������, ��� ������� - ��� ����� ���������� �� ����, ��� ������ ��� ���������. �������� - ��������� ������ � ������������. ���������� - ��� ��������, � ����� � ���. ��� ��� ����� ������, �������� �� �� ��� �����.~
  IF ~~ THEN REPLY ~������ ��� ����� ������� ������?~ GOTO 12
  IF ~~ THEN REPLY ~���������, ��� � ��� ���� �� �������.~ DO ~StartStore("Bartnw2",LastTalkedToBy(Myself))~ EXIT
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 4
END

IF ~~ THEN BEGIN 8 // from: 3.1
  SAY ~����������, ���� �� ������������� ������ ������������� � ���, ��� ����� ����������, ��������� ������� � �������� �� ������� �����. ����� � ���������.~
  IF ~~ THEN REPLY ~������� �����? ��� ���?~ GOTO 13
  IF ~  PartyHasItem("Grpermit")~ THEN REPLY ~� ���� ���� ������� � "��������".~ GOTO 1
  IF ~~ THEN REPLY ~���������, ��� � ��� ���� �� �������.~ DO ~StartStore("Bartnw2",LastTalkedToBy(Myself))~ EXIT
  IF ~~ THEN REPLY ~�� ��������, � ����� �������.~ GOTO 4
END

IF ~~ THEN BEGIN 9 // from: 3.2
  SAY ~���, � ��� �� �����. ��� ����� ������ ������.~
  IF ~  CheckStatGT(LastTalkedToBy(Myself),15,STR)~ THEN REPLY ~�� ���� ��������� ����, �� ���� �� �������, ��������.~ GOTO 10
  IF ~  PartyHasItem("Grpermit")~ THEN REPLY ~� ���� ���� ������� � "��������".~ GOTO 1
  IF ~~ THEN REPLY ~�� ��������, � ����� �������.~ GOTO 4
END

IF ~~ THEN BEGIN 10 // from: 3.3
  SAY ~���, ���� ���� �� � ���������, ��� ������ �� ������. ����� ��� � ��� ���� ������� �� �������� � ������� �����. ����� ����� � ����������.~
  IF ~~ THEN REPLY ~������� �����? ��� ���?~ GOTO 13
  IF ~  PartyHasItem("Grpermit")~ THEN REPLY ~� ���� ���� ������� � "��������".~ GOTO 1
  IF ~~ THEN REPLY ~���������, ��� � ��� ���� �� �������.~ DO ~StartStore("Bartnw2",LastTalkedToBy(Myself))~ EXIT
  IF ~~ THEN REPLY ~�� ��������, � ����� �������.~ GOTO 4
END

IF ~~ THEN BEGIN 11 // from: 5.1
  SAY ~����������, ��� �� ������ ��������� - �������� �� ����� ��� ��������� ���������. � ��� ���� ���������� ������... ���� ����� �������� �����������... ��������� ��������� ������� ��� ����� �������� �������, �� ��� �� ���. � ��� ���� �����, �� ��� �� �������� �����. ��������� ����� ���� ��, ��� �����. ���� ������ �����������, ��� ���� �����. ������ �� �������� �� ���� � �� ���������, ���� ����������. ���� ����� �� �����.~
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 6
END

IF ~~ THEN BEGIN 12 // from: 7.1
  SAY ~����������, ��� �� ������ ��������� - �������� �� ����� ��� ��������� ���������. � ��� ���� ���������� ������... ���� ����� �������� �����������... ��������� ��������� ������� ��� ����� �������� �������, �� ��� �� ���. � ��� ���� �����, �� ��� �� �������� �����. ��������� ����� ���� ��, ��� �����. ���� ������ �����������, ��� ���� �����. ������ �� �������� �� ���� � �� ���������, ���� ����������. ���� ����� �� �����.~
  IF ~~ THEN REPLY ~���������, ��� � ��� ���� �� �������.~ DO ~StartStore("Bartnw2",LastTalkedToBy(Myself))~ EXIT
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 4
END

IF ~~ THEN BEGIN 13 // from: 10.1
  SAY ~���� �� �� ������, �� ���� �� ���������. ��� ������� ��������� �� ���-������� ������ ������. ������ � ������ �� �����.~
  IF ~  PartyHasItem("Grpermit")~ THEN REPLY ~� ���� ���� ������� � "��������".~ GOTO 1
  IF ~~ THEN REPLY ~���������, ��� � ��� ���� �� �������.~ DO ~StartStore("Bartnw2",LastTalkedToBy(Myself))~ EXIT
  IF ~~ THEN REPLY ~�� ��������, � ����� �������.~ GOTO 4
END

// -------------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NWArena","GLOBAL",4)~ THEN BEGIN 14 // from:
  SAY ~������������, ����. ��� � ���� ��� ��� �������?~
  IF ~~ THEN REPLY ~���������, ��� � ��� ���� �� �������.~ DO ~StartStore("Bartnw2",LastTalkedToBy(Myself))~ EXIT
  IF ~  GlobalGT("NwTavTaxes","GLOBAL",499)GlobalLT("NwTavTaxes","GLOBAL",501)~ THEN REPLY ~����� ��� ��������� �� ������.~ GOTO 15
  IF ~  GlobalGT("NwTavTaxes","GLOBAL",999)GlobalLT("NwTavTaxes","GLOBAL",1501)~ THEN REPLY ~����� ��� ��������� �� ������.~ GOTO 16
  IF ~  GlobalGT("NwTavTaxes","GLOBAL",1499)GlobalLT("NwTavTaxes","GLOBAL",2001)~ THEN REPLY ~����� ��� ��������� �� ������.~ GOTO 17
  IF ~  GlobalGT("NwTavTaxes","GLOBAL",1999)GlobalLT("NwTavTaxes","GLOBAL",2501)~ THEN REPLY ~����� ��� ��������� �� ������.~ GOTO 18
  IF ~  GlobalGT("NwTavTaxes","GLOBAL",2499)GlobalLT("NwTavTaxes","GLOBAL",3001)~ THEN REPLY ~����� ��� ��������� �� ������.~ GOTO 19
  IF ~  GlobalGT("NwTavTaxes","GLOBAL",2999)GlobalLT("NwTavTaxes","GLOBAL",3501)~ THEN REPLY ~����� ��� ��������� �� ������.~ GOTO 20
  IF ~  GlobalGT("NwTavTaxes","GLOBAL",3499)GlobalLT("NwTavTaxes","GLOBAL",4001)~ THEN REPLY ~����� ��� ��������� �� ������.~ GOTO 21
  IF ~  GlobalGT("NwTavTaxes","GLOBAL",3999)GlobalLT("NwTavTaxes","GLOBAL",4501)~ THEN REPLY ~����� ��� ��������� �� ������.~ GOTO 22
  IF ~  GlobalGT("NwTavTaxes","GLOBAL",4499)GlobalLT("NwTavTaxes","GLOBAL",5001)~ THEN REPLY ~����� ��� ��������� �� ������.~ GOTO 23
  IF ~  GlobalGT("NwTavTaxes","GLOBAL",4999)GlobalLT("NwTavTaxes","GLOBAL",5501)~ THEN REPLY ~����� ��� ��������� �� ������.~ GOTO 24
  IF ~  GlobalGT("NwTavTaxes","GLOBAL",5499)GlobalLT("NwTavTaxes","GLOBAL",6001)~ THEN REPLY ~����� ��� ��������� �� ������.~ GOTO 25
  IF ~  GlobalGT("NwTavTaxes","GLOBAL",5999)GlobalLT("NwTavTaxes","GLOBAL",6501)~ THEN REPLY ~����� ��� ��������� �� ������.~ GOTO 26
  IF ~  GlobalGT("NwTavTaxes","GLOBAL",6999)GlobalLT("NwTavTaxes","GLOBAL",7501)~ THEN REPLY ~����� ��� ��������� �� ������.~ GOTO 27
  IF ~  GlobalGT("NwTavTaxes","GLOBAL",7999)GlobalLT("NwTavTaxes","GLOBAL",8501)~ THEN REPLY ~����� ��� ��������� �� ������.~ GOTO 28
  IF ~  GlobalGT("NwTavTaxes","GLOBAL",9999)GlobalLT("NwTavTaxes","GLOBAL",10501)~ THEN REPLY ~����� ��� ��������� �� ������.~ GOTO 29
  IF ~  GlobalGT("NwTavTaxes","GLOBAL",14999)GlobalLT("NwTavTaxes","GLOBAL",15501)~ THEN REPLY ~����� ��� ��������� �� ������.~ GOTO 30
  IF ~  GlobalGT("NwTavTaxes","GLOBAL",24999)GlobalLT("NwTavTaxes","GLOBAL",25501)~ THEN REPLY ~����� ��� ��������� �� ������.~ GOTO 31
  IF ~  GlobalGT("NwTavTaxes","GLOBAL",44999)~ THEN REPLY ~����� ��� ��������� �� ������.~ GOTO 32
  IF ~  GlobalLT("NwTavTaxes","GLOBAL",499)~ THEN REPLY ~����� ��� ��������� �� ������.~ GOTO 33
  IF ~  Global("Acquaintance","LOCALS",0)~ THEN REPLY ~������ ��� ���, � ��� ��� ������?~ DO ~SetGlobal("Acquaintance","LOCALS",1)~ GOTO 34
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 35
END

IF ~~ THEN BEGIN 15 // from: 14.2
  SAY ~� ���, ���, ��� ��������� "��������", ����������� ����... ���� ������ ��������� ��������. ���, ��� ���� �����. 500 �������. ��� � ���� �������... �������.~
  IF ~~ THEN DO ~SetGlobal("NwTavTaxes","GLOBAL",0)GiveGoldForce(500)~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 14.3
  SAY ~� ���, ���, ��� ��������� "��������", ����������� ����... ���� ������ ��������� ��������. ���, ��� ���� �����. 1000 ������� �� 2 ������. ��� � ���� �������... �������.~
  IF ~~ THEN DO ~SetGlobal("NwTavTaxes","GLOBAL",0)GiveGoldForce(1000)~ EXIT
END

IF ~~ THEN BEGIN 17 // from: 14.3
  SAY ~� ���, ���, ��� ��������� "��������", ����������� ����... ���� ������ ��������� ��������. ���, ��� ���� �����. 1500 ������� �� 3 ������. ��� � ���� �������... �������.~
  IF ~~ THEN DO ~SetGlobal("NwTavTaxes","GLOBAL",0)GiveGoldForce(1500)~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 14.4
  SAY ~� ���, ���, ��� ��������� "��������", ����������� ����... ���� ������ ��������� ��������. ���, ��� ���� �����. 2000 ������� �� �����. ��� � ���� �������... �������.~
  IF ~~ THEN DO ~SetGlobal("NwTavTaxes","GLOBAL",0)GiveGoldForce(2000)~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 14.5
  SAY ~� ���, ���, ��� ��������� "��������", ����������� ����... ���� ������ ��������� ��������. ���, ��� ���� �����. 2500 ������� �� ��� ��� �����. ��� � ���� �������... �������.~
  IF ~~ THEN DO ~SetGlobal("NwTavTaxes","GLOBAL",0)GiveGoldForce(2500)~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 14.6
  SAY ~� ���, ���, ��� ��������� "��������", ����������� ����... ���� ������ ��������� ��������. ���, ��� ���� �����. 3000 ������� �� ��� ��� �����. ��� � ���� �������... �������.~
  IF ~~ THEN DO ~SetGlobal("NwTavTaxes","GLOBAL",0)GiveGoldForce(3000)~ EXIT
END

IF ~~ THEN BEGIN 21 // from: 14.7
  SAY ~� ���, ���, ��� ��������� "��������", ����������� ����... ���� ������ ��������� ��������. ���, ��� ���� �����. 3500 ������� �� ��� ��� �����. ��� � ���� �������... �������.~
  IF ~~ THEN DO ~SetGlobal("NwTavTaxes","GLOBAL",0)GiveGoldForce(3500)~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 14.8
  SAY ~� ���, ���, ��� ��������� "��������", ����������� ����... ���� ������ ��������� ��������. ���, ��� ���� �����. 4000 ������� �� ��� ��� �����. ��� � ���� �������... �������.~
  IF ~~ THEN DO ~SetGlobal("NwTavTaxes","GLOBAL",0)GiveGoldForce(4000)~ EXIT
END

IF ~~ THEN BEGIN 23 // from: 14.9
  SAY ~� ���, ���, ��� ��������� "��������", ����������� ����... ���� ������ ��������� ��������. ���, ��� ���� �����. 4500 ������� �� ��� ��� �����. ��� � ���� �������... �������.~
  IF ~~ THEN DO ~SetGlobal("NwTavTaxes","GLOBAL",0)GiveGoldForce(4500)~ EXIT
END

IF ~~ THEN BEGIN 24 // from: 14.9
  SAY ~� ���, ���, ��� ��������� "��������", ����������� ����... ���� ������ ��������� ��������. ���, ��� ���� �����. 5000 ������� �� ��� ��� �����. ��� � ���� �������... �������.~
  IF ~~ THEN DO ~SetGlobal("NwTavTaxes","GLOBAL",0)GiveGoldForce(5000)~ EXIT
END

IF ~~ THEN BEGIN 25 // from: 14.10
  SAY ~� ���, ���, ��� ��������� "��������", ������ ���� �� ����� ������. ���, ��� ���� �����. 5500 ������� �� ��� ��� �����.~
  IF ~~ THEN DO ~SetGlobal("NwTavTaxes","GLOBAL",0)GiveGoldForce(5500)~ EXIT
END

IF ~~ THEN BEGIN 26 // from: 14.11
  SAY ~� ���, ���, ��� ��������� "��������", ������ ���� �� ����� ������. ���, ��� ���� �����. 6000 ������� �� ��� ��� �����.~
  IF ~~ THEN DO ~SetGlobal("NwTavTaxes","GLOBAL",0)GiveGoldForce(6000)~ EXIT
END

IF ~~ THEN BEGIN 27 // from: 14.12
  SAY ~� ���, ���, ��� ��������� "��������", ������ ���� �� ����� ������. ���, ��� ���� �����. 7000 ������� �� ��� ��� �����.~
  IF ~~ THEN DO ~SetGlobal("NwTavTaxes","GLOBAL",0)GiveGoldForce(7000)~ EXIT
END

IF ~~ THEN BEGIN 28 // from: 14.13
  SAY ~� ���, ���, ��� ��������� "��������", ������ ���� �� ����� ������. ���, ��� ���� �����. 8000 ������� �� ��� ��� �����.~
  IF ~~ THEN DO ~SetGlobal("NwTavTaxes","GLOBAL",0)GiveGoldForce(8000)~ EXIT
END

IF ~~ THEN BEGIN 29 // from: 14.14
  SAY ~� ���, ���, ��� ��������� "��������", ������ ���� �� ����� ������. ���, ��� ���� �����. 10000 ������� �� ��� ��� �����.~
  IF ~~ THEN DO ~SetGlobal("NwTavTaxes","GLOBAL",0)GiveGoldForce(10000)~ EXIT
END

IF ~~ THEN BEGIN 30 // from: 14.15
  SAY ~� ���, ���, ��� ��������� "��������", ������ ���� �� ����� ������. ���, ��� ���� �����. 15000 ������� �� ��� ��� �����.~
  IF ~~ THEN DO ~SetGlobal("NwTavTaxes","GLOBAL",0)GiveGoldForce(15000)~ EXIT
END

IF ~~ THEN BEGIN 31 // from: 14.16
  SAY ~� ���, ���, ��� ��������� "��������", ������ ���� �� ����� ������. ���, ��� ���� �����. 25000 ������� �� ��� ��� �����.~
  IF ~~ THEN DO ~SetGlobal("NwTavTaxes","GLOBAL",0)GiveGoldForce(25000)~ EXIT
END

IF ~~ THEN BEGIN 32 // from: 14.17
  SAY ~� ���, ���, ��� ��������� "��������", ������ ���� �� ����� ������. ���, ��� ���� �����. 50000 ������� �� ��� ��� �����.~
  IF ~~ THEN DO ~SetGlobal("NwTavTaxes","GLOBAL",0)GiveGoldForce(50000)~ EXIT
END

IF ~~ THEN BEGIN 33 // from: 14.18
  SAY ~��������, <SIRMAAM>, �� ����� ��������� ��� �� ������. ����� ��������� �� ����� ������.~
  IF ~~ THEN REPLY ~���������, ��� � ��� ���� �� �������.~ DO ~StartStore("Bartnw2",LastTalkedToBy(Myself))~ EXIT
  IF ~~ THEN REPLY ~������ ��� ���, � ��� ��� ������?~ GOTO 34
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 35
END

IF ~~ THEN BEGIN 34 // from: 14.19
  SAY ~��������� ��������, ������, ������� ��� ���, ��� ��� �� ���� ���� ������ ������. �� ��������� ��� ���-�� �����. ���, ��� ��� ����� ������ - ��� ��������� ��� � ������ � �������� �������. ��������� �� ��������, �� ��� �� �����, ��� ������. � ����� ����, � �� �� ��������� ��� ������ �����������. ��, ������, ������ ��� ����. �� ���, ��� ��� ������ ���� � ���������, ���������.~
  IF ~~ THEN REPLY ~���������, ��� � ��� ���� �� �������.~ DO ~StartStore("Bartnw2",LastTalkedToBy(Myself))~ EXIT
  IF ~  GlobalGT("NwTavTaxes","GLOBAL",499)GlobalLT("NwTavTaxes","GLOBAL",501)~ THEN REPLY ~����� ��� ��������� �� ������.~ GOTO 15
  IF ~  GlobalGT("NwTavTaxes","GLOBAL",999)GlobalLT("NwTavTaxes","GLOBAL",1501)~ THEN REPLY ~����� ��� ��������� �� ������.~ GOTO 16
  IF ~  GlobalGT("NwTavTaxes","GLOBAL",1499)GlobalLT("NwTavTaxes","GLOBAL",2001)~ THEN REPLY ~����� ��� ��������� �� ������.~ GOTO 17
  IF ~  GlobalGT("NwTavTaxes","GLOBAL",1999)GlobalLT("NwTavTaxes","GLOBAL",2501)~ THEN REPLY ~����� ��� ��������� �� ������.~ GOTO 18
  IF ~  GlobalGT("NwTavTaxes","GLOBAL",2499)GlobalLT("NwTavTaxes","GLOBAL",3001)~ THEN REPLY ~����� ��� ��������� �� ������.~ GOTO 19
  IF ~  GlobalGT("NwTavTaxes","GLOBAL",2999)GlobalLT("NwTavTaxes","GLOBAL",3501)~ THEN REPLY ~����� ��� ��������� �� ������.~ GOTO 20
  IF ~  GlobalGT("NwTavTaxes","GLOBAL",3499)GlobalLT("NwTavTaxes","GLOBAL",4001)~ THEN REPLY ~����� ��� ��������� �� ������.~ GOTO 21
  IF ~  GlobalGT("NwTavTaxes","GLOBAL",3999)GlobalLT("NwTavTaxes","GLOBAL",4501)~ THEN REPLY ~����� ��� ��������� �� ������.~ GOTO 22
  IF ~  GlobalGT("NwTavTaxes","GLOBAL",4499)GlobalLT("NwTavTaxes","GLOBAL",5001)~ THEN REPLY ~����� ��� ��������� �� ������.~ GOTO 23
  IF ~  GlobalGT("NwTavTaxes","GLOBAL",4999)GlobalLT("NwTavTaxes","GLOBAL",5501)~ THEN REPLY ~����� ��� ��������� �� ������.~ GOTO 24
  IF ~  GlobalGT("NwTavTaxes","GLOBAL",5499)GlobalLT("NwTavTaxes","GLOBAL",6001)~ THEN REPLY ~����� ��� ��������� �� ������.~ GOTO 25
  IF ~  GlobalGT("NwTavTaxes","GLOBAL",5999)GlobalLT("NwTavTaxes","GLOBAL",6501)~ THEN REPLY ~����� ��� ��������� �� ������.~ GOTO 26
  IF ~  GlobalGT("NwTavTaxes","GLOBAL",6999)GlobalLT("NwTavTaxes","GLOBAL",7501)~ THEN REPLY ~����� ��� ��������� �� ������.~ GOTO 27
  IF ~  GlobalGT("NwTavTaxes","GLOBAL",7999)GlobalLT("NwTavTaxes","GLOBAL",8501)~ THEN REPLY ~����� ��� ��������� �� ������.~ GOTO 28
  IF ~  GlobalGT("NwTavTaxes","GLOBAL",9999)GlobalLT("NwTavTaxes","GLOBAL",10501)~ THEN REPLY ~����� ��� ��������� �� ������.~ GOTO 29
  IF ~  GlobalGT("NwTavTaxes","GLOBAL",14999)GlobalLT("NwTavTaxes","GLOBAL",15501)~ THEN REPLY ~����� ��� ��������� �� ������.~ GOTO 30
  IF ~  GlobalGT("NwTavTaxes","GLOBAL",24999)GlobalLT("NwTavTaxes","GLOBAL",25501)~ THEN REPLY ~����� ��� ��������� �� ������.~ GOTO 31
  IF ~  GlobalGT("NwTavTaxes","GLOBAL",44999)~ THEN REPLY ~����� ��� ��������� �� ������.~ GOTO 32
  IF ~  GlobalLT("NwTavTaxes","GLOBAL",499)~ THEN REPLY ~����� ��� ��������� �� ������.~ GOTO 33
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 35
END

IF ~~ THEN BEGIN 35 // from: 14.20
  SAY ~����� ��������.~
  IF ~~ THEN EXIT
END

















