// ������� ��������: �������� ���� ����� ������������  �����-������. ���� ��� ������ ���� ���� �������� ������ �������� �������� � ��������� - ��������� ������������ ������� ������� � �������.

BEGIN ~BARUN~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Global("BarunSay","MYAREA",0)~ THEN BEGIN 0 // from:
  SAY ~����� ���������� � ������� ������, <SIRMAAM>. �, ����������, �����, ������� ��������� � ��������� �������� ���������� ���������. ��� � ���� ������ ���?~
  IF ~~ THEN REPLY ~��� �� ����� �������?~ GOTO 1
  IF ~  GlobalGT("PlantedItems","MYAREA",0)~ THEN REPLY ~� ���� �������� ��� ���� ����.~ GOTO 2
  IF ~~ THEN REPLY ~��� ����� ����.~ GOTO 4
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~� ������, ���������� �� ������ � �����, ����� ���. � ���� ���������� � ��������� �� � ����������� ����������, ����� ������ ��� ����� �������������� ��������. �� ����� �� � ������ ����, ���� ��������. ���� �������, � �������� ���� ���������� � ������� �����, ����� ��� �������� ���-�� ����������, ����� � ������ ��� ������������� ������� ������ ��� ������ ������. ��� �� �� ������, ����� � �������?~
  IF ~~ THEN REPLY ~���� ���������� ������ � �������.~ GOTO 7
  IF ~~ THEN REPLY ~���� ���������� �������� ������~ GOTO 8
  IF ~~ THEN REPLY ~���� ���������� ���������� ����.~ GOTO 9
  IF ~~ THEN REPLY ~���� ���������� �� ������ ������� ������.~ GOTO 10
  IF ~  Global("MyBook","LOCALS",0)~ THEN REPLY ~��� ��� �� "������������" �����?~ DO ~SetGlobal("MyBook","LOCALS",1)GiveItemCreate("Barubook",LastTalkedToBy,0,0,0)~ GOTO 5
  IF ~  Global("MyBook","LOCALS",1)~ THEN REPLY ~��� ��� �� "������������" �����?~ GOTO 6
  IF ~~ THEN REPLY ~���, ������ ���� ������ �� ����������.~ GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~�� ���� ���������� ���-��� ����. ������� �������� � � �����, ��� � ���� ��� ��� �������.~
  IF ~  Global("PlantedItems","MYAREA",1)~ THEN GOTO 11
  IF ~  Global("PlantedItems","MYAREA",2)~ THEN GOTO 12
  IF ~  Global("PlantedItems","MYAREA",3)~ THEN GOTO 13
  IF ~  Global("PlantedItems","MYAREA",4)~ THEN GOTO 14
  IF ~  Global("PlantedItems","MYAREA",5)~ THEN GOTO 15
  IF ~  Global("PlantedItems","MYAREA",6)~ THEN GOTO 16
  IF ~  Global("PlantedItems","MYAREA",7)~ THEN GOTO 17
  IF ~  Global("PlantedItems","MYAREA",8)~ THEN GOTO 18
  IF ~  Global("PlantedItems","MYAREA",9)~ THEN GOTO 19
  IF ~  Global("PlantedItems","MYAREA",10)~ THEN GOTO 20
  IF ~  Global("PlantedItems","MYAREA",11)~ THEN GOTO 21
  IF ~  Global("PlantedItems","MYAREA",12)~ THEN GOTO 22
  IF ~  Global("PlantedItems","MYAREA",13)~ THEN GOTO 23
  IF ~  Global("PlantedItems","MYAREA",14)~ THEN GOTO 24
  IF ~  Global("PlantedItems","MYAREA",15)~ THEN GOTO 25
  IF ~  Global("PlantedItems","MYAREA",16)~ THEN GOTO 26
  IF ~  Global("PlantedItems","MYAREA",17)~ THEN GOTO 27
  IF ~  Global("PlantedItems","MYAREA",18)~ THEN GOTO 28
  IF ~  Global("PlantedItems","MYAREA",19)~ THEN GOTO 29
  IF ~  Global("PlantedItems","MYAREA",20)~ THEN GOTO 30
  IF ~  Global("PlantedItems","MYAREA",21)~ THEN GOTO 31
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY ~�������� �� ���������� ���� ������������, ���������� ������ ��� �������� ���������� ��������, � � ������ ���. �� ���� �� ���������� ����-�� �� ������� - ��� ��� ������ - � �� ����� ������ �������, ����?~
  IF ~  Global("MyBook","LOCALS",0)~ THEN REPLY ~��� ��� �� "������������" �����?~ DO ~SetGlobal("MyBook","LOCALS",1)GiveItemCreate("Barubook",LastTalkedToBy,0,0,0)~ GOTO 5
  IF ~  Global("MyBook","LOCALS",1)~ THEN REPLY ~��� ��� �� "������������" �����?~ GOTO 6
  IF ~~ THEN REPLY ~���, ������ ���� ������ �� ����������.~ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY ~�������� ��� ���, <SIRMAAM>.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.5
  SAY ~�� ����������, ������ �������� ��� ��� �����. ��� ����������� ���, ��� � ���� ������� � ��� ����������, ������� ���������� ��� �����.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.6
  SAY ~��������, � ���� ��� ���� ����� ���� ����� � ���������. ��� ���� ��� ����? ������ �������� ��, ���� ���� ������.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.1
  SAY ~����, ������ � �������? �����-�� ��� ��������� �� ���� ����, � � �����, ��� � ����� �� ��� �������. ���� �������� ��� � ������, ������, � ��� ��� ������ �����. �������� ��, ��� � ������ ��� ��� �������.~
  IF ~  PartyHasItem("Plat04")PartyHasItem("Rithtel2")~ THEN REPLY ~������� ������: ��������� ��������� � ������ ������ ������~ GOTO 35
  IF ~  PartyHasItem("Chan02")PartyHasItem("Holywanw")~ THEN REPLY ~����� ������: ���������� ������ ������ ���� � �������� +1 � �� 4.~ GOTO 35
  IF ~  PartyHasItem("Leat07")PartyHasItem("GarSkull")~ THEN REPLY ~������� ������ ����� �����: ����� ����� �������� � �������� ������� ������ +2 � �� 5~ GOTO 35
  IF ~  PartyHasItem("AX1H02")PartyHasItem("Adamant")~ THEN REPLY ~�����: ��������� ������� � ������ ����� +1~ GOTO 35
  IF ~  PartyHasItem("Halb02")PartyHasItem("Adamant")~ THEN REPLY ~��������� ����� ��������� �������: ��������� ������� � �������� +1.~ GOTO 35
  IF ~   PartyHasItem("AX1H02")PartyHasItem("Drablood")~ THEN REPLY ~�������� ���� +4: ���������� ����� ������� � ������ ����� +1~ GOTO 35
  IF ~~ THEN REPLY ~� ���� ��� ������ ������������.~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 1.2
  SAY ~��� ����� ������, ������ � ������, ��? � ������� �� ���� ����, � ����� �����, ��� ��� ���������, � ����� ����������� ������, ��� � ���� �� ����� ��� ��� �������. ���� �������� ��� � ������, ������, � ��� ��� ������ �����. �������� ��, ��� � ������ ��� ��� �������.~
  IF ~  PartyHasItem("Blun01")PartyHasItem("Ironwood")~ THEN REPLY ~������ ����������: ���������� �������� ������ � ������� ������.~ GOTO 35
  IF ~  PartyHasItem("Blun05")PartyHasItem("Ironwood")~ THEN REPLY ~������ �� ��������� ������: ���������� �������� ������ � ������ +1.~ GOTO 35
  IF ~  PartyHasItem("HAMM02")PartyHasItem("Rithtel2")~ THEN REPLY ~����� ����: ��������� ��������� � ������ ����� +1.~ GOTO 35
  IF ~  PartyHasItem("Blun03")PartyHasItem("Ironwood")~ THEN REPLY ~������� ����������: ���������� �������� ������ � ��� +1.~ GOTO 35
  IF ~  PartyHasItem("Blun05")PartyHasItem("Holywanw")~ THEN REPLY ~������ ���������: ���������� ������ ������ ���� � ������ +1.~ GOTO 35
  IF ~   PartyHasItem("Blun07")PartyHasItem("Magdust")~ THEN REPLY ~�������� �����������: ���������� ��������� ���� �  ����������� +1.~ GOTO 35
  IF ~  PartyHasItem("Hamm03")PartyHasItem("Adamant")~ THEN REPLY ~������ �����: ��������� ������� � ������ ����� +2.~ GOTO 35
  IF ~~ THEN REPLY ~� ���� ��� ������ ������������.~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 1.3
  SAY ~��� ����� ���� ����� ������� ������� ����? ����������� ������. ����, ��������� ��� ��������� � ���� �����, � � ����� ���, ����� ������������� ������ � ���� ������� �� �� �����������. ���� �������� ��� � ������, ������, � ��� ��� ������ �����. �������� ��, ��� � ������ ��� ��� �������.~
  IF ~  PartyHasItem("Sw2h02")PartyHasItem("Adamant")~ THEN REPLY ~��������� ��� �������������: ��������� ������� � ��������� ��� +1.~ GOTO 35
  IF ~  PartyHasItem("Sw1h44")PartyHasItem("Adamant")~ THEN REPLY ~������ ������: ��������� ������� � ������ +1.~ GOTO 35
  IF ~  PartyHasItem("Sw1h05")PartyHasItem("Rithtel2")~ THEN REPLY ~���������� ������� ���: ��������� ��������� � ������� ��� +1..~ GOTO 35
  IF ~  PartyHasItem("Sw1h02")PartyHasItem("Rithtel2")~ THEN REPLY ~���������� ���������� ���: ��������� ��������� � ���������� ��� +1.~ GOTO 35
  IF ~  PartyHasItem("Sw1h022")PartyHasItem("Adamant")~ THEN REPLY ~�������� ���������� �����: ��������� ������� � �������� +1. ~ GOTO 35
  IF ~   PartyHasItem("Sw1h008")PartyHasItem("Magdust")~ THEN REPLY ~�������� ��� ������ ����: ���������� ��������� ���� � �������� ��� +1. ~ GOTO 35
  IF ~~ THEN REPLY ~� ���� ��� ������ ������������.~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 1.4
  SAY ~�������. �� ���� ������ ����� ������, ���� � ������, ������? ���, ����������, ��� ���������� � ���� ������� �� ����������� ����� �����. ���� �������� ��� � ������, ������, � ��� ��� ������ �����. �������� ��, ��� � ������ ��� ��� �������.~
  IF ~  PartyHasItem("Halb03")PartyHasItem("Drablood")~ THEN REPLY ~�������� ��������: ���������� ����� ������� � �������� +2.  ~ GOTO 35
  IF ~   PartyHasItem("SPER02")PartyHasItem("Magdust")~ THEN REPLY ~�������� ���: ���������� ��������� ���� � ����� +1.  ~ GOTO 35
  IF ~~ THEN REPLY ~� ���� ��� ������ ������������.~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 2.1
  SAY ~���������... � ��� ��������� � �������� ���������� ��������. � ��� �� ������� ��� ������� ������ - ���������� ������ � ���, ����� � ���. �� ������ ��� ����� ��������. �������� ��������� ��� 7000 �������. ������ ������, ����������.~
  IF ~  PartyGoldGT(6999)~ THEN REPLY ~��� ���� 7000 �������.~ DO ~TakePartyGold(7000)DestroyGold(7000)~ GOTO 32
  IF ~  PartyGoldLT(7000)~ THEN REPLY ~� �� ���� ���� ����� ���������.~ GOTO 33
  IF ~~ THEN REPLY ~�������, � �� ���� ������ ����������.~ GOTO 34
END

IF ~~ THEN BEGIN 12 // from: 2.2
  SAY ~��� ���? ������ ������ ����? ������ �����. �� ��� � ����� ���������� �������� � ��� �� ������� ����� ������. �� ������ ��� ����� ��������. �������� ��������� ��� 6000 �������. ������ ������, ����������.~
  IF ~  PartyGoldGT(5999)~ THEN REPLY ~��� ���� 6000 �������.~ DO ~TakePartyGold(6000)DestroyGold(6000)~ GOTO 32
  IF ~  PartyGoldLT(6000)~ THEN REPLY ~� �� ���� ���� ����� ���������.~ GOTO 33
  IF ~~ THEN REPLY ~�������, � �� ���� ������ ����������.~ GOTO 34
END

IF ~~ THEN BEGIN 13 // from: 2.3
  SAY ~���... �� ����� ������ �������� � ����� ������� �������� � ��� �� ������� ���������� ����� ����� �����. �� ������ ��� ����� ��������. �������� ��������� ��� 5000 �������. ������ ������, ����������.~
  IF ~  PartyGoldGT(4999)~ THEN REPLY ~��� ���� 5000 �������.~ DO ~TakePartyGold(5000)DestroyGold(5000)~ GOTO 32
  IF ~  PartyGoldLT(5000)~ THEN REPLY ~� �� ���� ���� ����� ���������.~ GOTO 33
  IF ~~ THEN REPLY ~�������, � �� ���� ������ ����������.~ GOTO 34
END

IF ~~ THEN BEGIN 14 // from: 2.4
  SAY ~���� ������� ����� ������������ � ���������� ������ �����, � ��������� �����. ���������� ������. ����� ������. �� ������ ��� ����� ��������. �������� ��������� ��� 5500 �������. ������ ������, ����������.~
  IF ~  PartyGoldGT(5499)~ THEN REPLY ~��� ���� 5500 �������.~ DO ~TakePartyGold(5500)DestroyGold(5500)~ GOTO 32
  IF ~  PartyGoldLT(5500)~ THEN REPLY ~� �� ���� ���� ����� ���������.~ GOTO 33
  IF ~~ THEN REPLY ~�������, � �� ���� ������ ����������.~ GOTO 34
END

IF ~~ THEN BEGIN 15 // from: 2.5
  SAY ~��������. �� ������ �������� � ���������� �������� ��������� ��������� ����� ��������� �������. �� ������ ��� ����� ��������. �������� ��������� ��� 6000 �������. ������ ������, ����������.~
  IF ~  PartyGoldGT(5999)~ THEN REPLY ~��� ���� 6000 �������.~ DO ~TakePartyGold(6000)DestroyGold(6000)~ GOTO 32
  IF ~  PartyGoldLT(6000)~ THEN REPLY ~� �� ���� ���� ����� ���������.~ GOTO 33
  IF ~~ THEN REPLY ~�������, � �� ���� ������ ����������.~ GOTO 34
END

IF ~~ THEN BEGIN 16 // from: 2.6
  SAY ~����� ������� - ����� ������� �����. ���� � ��� ����� ���������, �� �� ��� � ���� ����������� ������� ������ ����� ������� "�������� ����". �� ������ ��� ����� ��������. �������� ��������� ��� 8000 �������. ������ ������, ����������.~
  IF ~  PartyGoldGT(7999)~ THEN REPLY ~��� ���� 8000 �������.~ DO ~TakePartyGold(8000)DestroyGold(8000)~ GOTO 32
  IF ~  PartyGoldLT(8000)~ THEN REPLY ~� �� ���� ���� ����� ���������.~ GOTO 33
  IF ~~ THEN REPLY ~�������, � �� ���� ������ ����������.~ GOTO 34
END

IF ~~ THEN BEGIN 17 // from: 2.7
  SAY ~�������� ������. ������, �� ����� ��������� ������ � ����� ������ � ���� ������� ������ ����������. �� ������ ��� ����� ��������. �������� ��������� ��� 4000 �������. ������ ������, ����������.~
  IF ~  PartyGoldGT(3999)~ THEN REPLY ~��� ���� 4000 �������.~ DO ~TakePartyGold(4000)DestroyGold(4000)~ GOTO 32
  IF ~  PartyGoldLT(4000)~ THEN REPLY ~� �� ���� ���� ����� ���������.~ GOTO 33
  IF ~~ THEN REPLY ~�������, � �� ���� ������ ����������.~ GOTO 34
END

IF ~~ THEN BEGIN 18 // from: 2.8
  SAY ~���������. �� ��������� ������ � ���� ���������� ������ ����� ������� ������� ������ ��������� ������. �� ������ ��� ����� ��������. �������� ��������� ��� 5000 �������. ������ ������, ����������.~
  IF ~  PartyGoldGT(4999)~ THEN REPLY ~��� ���� 5000 �������.~ DO ~TakePartyGold(5000)DestroyGold(5000)~ GOTO 32
  IF ~  PartyGoldLT(5000)~ THEN REPLY ~� �� ���� ���� ����� ���������.~ GOTO 33
  IF ~~ THEN REPLY ~�������, � �� ���� ������ ����������.~ GOTO 34
END

IF ~~ THEN BEGIN 19 // from: 2.9
  SAY ~������, ���� ��������� ����� ���������� � ���������� �������, � ������ ���������� ����� ����. �� ������ ��� ����� ��������. �������� ��������� ��� 7000 �������. ������ ������, ����������.~
  IF ~  PartyGoldGT(6999)~ THEN REPLY ~��� ���� 7000 �������.~ DO ~TakePartyGold(7000)DestroyGold(7000)~ GOTO 32
  IF ~  PartyGoldLT(7000)~ THEN REPLY ~� �� ���� ���� ����� ���������.~ GOTO 33
  IF ~~ THEN REPLY ~�������, � �� ���� ������ ����������.~ GOTO 34
END

IF ~~ THEN BEGIN 20 // from: 2.10
  SAY ~�� ����� ��������� ������ � ����������� ���� ��������� �������� ������� ���������. �� ������ ��� ����� ��������. �������� ��������� ��� 6000 �������. ������ ������, ����������.~
  IF ~  PartyGoldGT(5999)~ THEN REPLY ~��� ���� 6000 �������.~ DO ~TakePartyGold(6000)DestroyGold(6000)~ GOTO 32
  IF ~  PartyGoldLT(6000)~ THEN REPLY ~� �� ���� ���� ����� ���������.~ GOTO 33
  IF ~~ THEN REPLY ~�������, � �� ���� ������ ����������.~ GOTO 34
END

IF ~~ THEN BEGIN 21 // from: 2.11
  SAY ~���, ������������! �� ������ ������ ���� � ���������� ������ � ������ ������ ���������! �� ������ ��� ����� ��������. �������� ��������� ��� 6000 �������. ������ ������, ����������.~
  IF ~  PartyGoldGT(5999)~ THEN REPLY ~��� ���� 6000 �������.~ DO ~TakePartyGold(6000)DestroyGold(6000)~ GOTO 32
  IF ~  PartyGoldLT(6000)~ THEN REPLY ~� �� ���� ���� ����� ���������.~ GOTO 33
  IF ~~ THEN REPLY ~�������, � �� ���� ������ ����������.~ GOTO 34
END

IF ~~ THEN BEGIN 22 // from: 2.12
  SAY ~������ ���������� - ��������� ����! �� ��� � ����������� ������������ ��������� �������� �������� �����������. �� ������ ��� ����� ��������. �������� ��������� ��� 6500 �������. ������ ������, ����������.~
  IF ~  PartyGoldGT(6499)~ THEN REPLY ~��� ���� 6500 �������.~ DO ~TakePartyGold(6500)DestroyGold(6500)~ GOTO 32
  IF ~  PartyGoldLT(6500)~ THEN REPLY ~� �� ���� ���� ����� ���������.~ GOTO 33
  IF ~~ THEN REPLY ~�������, � �� ���� ������ ����������.~ GOTO 34
END

IF ~~ THEN BEGIN 23 // from: 2.13
  SAY ~����� - �� ������ �������� � ����������� ������� ������ ������ ���������� ������ �����. �� ������ ��� ����� ��������. �������� ��������� ��� 6500 �������. ������ ������, ����������.~
  IF ~  PartyGoldGT(6499)~ THEN REPLY ~��� ���� 6500 �������.~ DO ~TakePartyGold(6500)DestroyGold(6500)~ GOTO 32
  IF ~  PartyGoldLT(6500)~ THEN REPLY ~� �� ���� ���� ����� ���������.~ GOTO 33
  IF ~~ THEN REPLY ~�������, � �� ���� ������ ����������.~ GOTO 34
END

IF ~~ THEN BEGIN 24 // from: 2.14
  SAY ~�, �� ��� �������� ����! ������� � ���������� ��������� ��� ������ ����� ��������� ��� �������������. �� ������ ��� ����� ��������. �������� ��������� ��� 6000 �������. ������ ������, ����������.~
  IF ~  PartyGoldGT(5999)~ THEN REPLY ~��� ���� 6000 �������.~ DO ~TakePartyGold(6000)DestroyGold(6000)~ GOTO 32
  IF ~  PartyGoldLT(6000)~ THEN REPLY ~� �� ���� ���� ����� ���������.~ GOTO 33
  IF ~~ THEN REPLY ~�������, � �� ���� ������ ����������.~ GOTO 34
END

IF ~~ THEN BEGIN 25 // from: 2.15
  SAY ~���, ���-��� ����. �� ������ �������� � ���������� ������ � ���� �������� ������ ������. �� ������ ��� ����� ��������. �������� ��������� ��� 6000 �������. ������ ������, ����������.~
  IF ~  PartyGoldGT(5999)~ THEN REPLY ~��� ���� 6000 �������.~ DO ~TakePartyGold(6000)DestroyGold(6000)~ GOTO 32
  IF ~  PartyGoldLT(6000)~ THEN REPLY ~� �� ���� ���� ����� ���������.~ GOTO 33
  IF ~~ THEN REPLY ~�������, � �� ���� ������ ����������.~ GOTO 34
END

IF ~~ THEN BEGIN 26 // from: 2.16
  SAY ~���������. ������� ��������� � ����������� �������� ����, ������� ���������� ������� ���. �� ������ ��� ����� ��������. �������� ��������� ��� 6500 �������. ������ ������, ����������.~
  IF ~  PartyGoldGT(6499)~ THEN REPLY ~��� ���� 6500 �������.~ DO ~TakePartyGold(6500)DestroyGold(6500)~ GOTO 32
  IF ~  PartyGoldLT(6500)~ THEN REPLY ~� �� ���� ���� ����� ���������.~ GOTO 33
  IF ~~ THEN REPLY ~�������, � �� ���� ������ ����������.~ GOTO 34
END

IF ~~ THEN BEGIN 27 // from: 2.17
  SAY ~���������. ������� ��������� � ����������� ����������� ����, ������� ���������� ���������� ���. �� ������ ��� ����� ��������. �������� ��������� ��� 6500 �������. ������ ������, ����������.~
  IF ~  PartyGoldGT(6499)~ THEN REPLY ~��� ���� 6500 �������.~ DO ~TakePartyGold(6500)DestroyGold(6500)~ GOTO 32
  IF ~  PartyGoldLT(6500)~ THEN REPLY ~� �� ���� ���� ����� ���������.~ GOTO 33
  IF ~~ THEN REPLY ~�������, � �� ���� ������ ����������.~ GOTO 34
END

IF ~~ THEN BEGIN 28 // from: 2.18
  SAY ~�� �������� � ����������� ��������� � ��� �� �������� ��� �������� ���������� �����. �� ������ ��� ����� ��������. �������� ��������� ��� 5500 �������. ������ ������, ����������.~
  IF ~  PartyGoldGT(5499)~ THEN REPLY ~��� ���� 5500 �������.~ DO ~TakePartyGold(5500)DestroyGold(5500)~ GOTO 32
  IF ~  PartyGoldLT(5500)~ THEN REPLY ~� �� ���� ���� ����� ���������.~ GOTO 33
  IF ~~ THEN REPLY ~�������, � �� ���� ������ ����������.~ GOTO 34
END

IF ~~ THEN BEGIN 29 // from: 2.19
  SAY ~������, � ��� �� ����� ��� ��������� ���� � ��� ���������� �������� ���, � ������� ��� �������� ��� ������ ����. �� ������ ��� ����� ��������. �������� ��������� ��� 5500 �������. ������ ������, ����������.~
  IF ~  PartyGoldGT(5499)~ THEN REPLY ~��� ���� 5500 �������.~ DO ~TakePartyGold(5500)DestroyGold(5500)~ GOTO 32
  IF ~  PartyGoldLT(5500)~ THEN REPLY ~� �� ���� ���� ����� ���������.~ GOTO 33
  IF ~~ THEN REPLY ~�������, � �� ���� ������ ����������.~ GOTO 34
END

IF ~~ THEN BEGIN 30 // from: 2.20
  SAY ~��. ����� �������. �� ����� ����������, ��� �� �� �����, �� �� ��� � ���� ���������� �������� � ���� ������� �������� ��������. �� ������ ��� ����� ��������. �������� ��������� ��� 6000 �������. ������ ������, ����������.~
  IF ~  PartyGoldGT(5999)~ THEN REPLY ~��� ���� 6000 �������.~ DO ~TakePartyGold(6000)DestroyGold(6000)~ GOTO 32
  IF ~  PartyGoldLT(6000)~ THEN REPLY ~� �� ���� ���� ����� ���������.~ GOTO 33
  IF ~~ THEN REPLY ~�������, � �� ���� ������ ����������.~ GOTO 34
END

IF ~~ THEN BEGIN 31 // from: 2.21
  SAY ~���... ��� ��������� ���� �������� � ������ ����������� �����. ���� ������, � ������ �������� ���. �� ������ ��� ����� ��������. �������� ��������� ��� 6000 �������. ������ ������, ����������.~
  IF ~  PartyGoldGT(5999)~ THEN REPLY ~��� ���� 6000 �������.~ DO ~TakePartyGold(6000)DestroyGold(6000)~ GOTO 32
  IF ~  PartyGoldLT(6000)~ THEN REPLY ~� �� ���� ���� ����� ���������.~ GOTO 33
  IF ~~ THEN REPLY ~�������, � �� ���� ������ ����������.~ GOTO 34
END

IF ~~ THEN BEGIN 32 // from: 11.1
  SAY ~<MALEFEMALE> ��� �� ������ �������� ����� � ���� ����������. �������� - ��� �� ��� ����� �� ����� ��� �� ������.~
  IF ~~ THEN DO ~StartCutSceneMode()StartCutScene("CUTBARUN")~ EXIT
END

IF ~~ THEN BEGIN 33 // from: 11.2
  SAY ~����������� - �� � �� ��������� ��������������������. ��� ����� - ��� ��������.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 34 // from: 11.3
  SAY ~����������� - ������ ������ ����� �������� ���� ������.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 35 // from: 7.1
  SAY ~���������� �����. ����� ������ ������, �������� ������������, ������� ������ ���������� �������, �� ����������, � ����� ���������� �� ���.~
  IF ~~ THEN EXIT
END

// -------------------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Global("BarunSay","MYAREA",1)~ THEN BEGIN 36 // from:
  SAY ~���, <SIRMAAM>. ���-���, � ������. �������� ���� ���� � ����������.~
  IF ~~ THEN DO ~SetGlobal("BarunSay","MYAREA",0)~ EXIT
END

