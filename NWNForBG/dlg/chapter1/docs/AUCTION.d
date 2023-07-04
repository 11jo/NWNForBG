// ���� ������� ���� ����������  �������  ���� ���������� ��������� �������� ����� ������������ ���, ��� ����������� ����� ���� �� ���� ���, ��� ������������.

BEGIN ~AUCTION~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NWNDocksDone","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY ~��������� �������! ������� ����� � �������� �� ��������� �� ���� �����, � ������ �� ����������� ������ ���! �, ��� � ���. ���-������ ����� ���-������ ������? � ���� ������������� ����, �������.~
  IF ~~ THEN REPLY ~� ���� ��������� �� ������� ������.~ DO ~StartStore("Auction",LastTalkedToBy)~ EXIT
  IF ~  GlobalLT("Assortment","LOCALS",8)~ THEN REPLY ~������� ��������� �� ���� ����������� �����������.~ GOTO 1
  IF ~  GlobalGT("Assortment","LOCALS",7)~ THEN REPLY ~������� ��������� �� ���� ����������� �����������.~ GOTO 2
  IF ~~ THEN REPLY ~������ �� ���������� �������?~ GOTO 3
  IF ~~ THEN REPLY ~����� ���� � ������ ���.~ GOTO 4
END

IF ~~ THEN BEGIN 1 // from: 0.2
  SAY ~� ���� ����� ���� ����. �� �� ������ ���������� �������, ������ ��� ������ ������?~
  IF ~  Global("Weapon","LOCALS",0)~ THEN REPLY ~������.~ GOTO 5
  IF ~  Global("Weapon","LOCALS",1)!HasItem("AxeAuc",Myself)HasItem("SwordAuc",Myself)HasItem("BlunAuc",Myself)~ THEN REPLY ~������.~ GOTO 6
  IF ~  Global("Weapon","LOCALS",1)HasItem("AxeAuc",Myself)!HasItem("SwordAuc",Myself)HasItem("BlunAuc",Myself)~ THEN REPLY ~������.~ GOTO 7
  IF ~  Global("Weapon","LOCALS",1)HasItem("AxeAuc",Myself)HasItem("SwordAuc",Myself)!HasItem("BlunAuc",Myself)~ THEN REPLY ~������.~ GOTO 8
  IF ~  Global("Weapon","LOCALS",2)HasItem("AxeAuc",Myself)~ THEN REPLY ~������.~ GOTO 9
  IF ~  Global("Weapon","LOCALS",2)HasItem("SwordAuc",Myself)~ THEN REPLY ~������.~ GOTO 10
  IF ~  Global("Weapon","LOCALS",2)HasItem("BlunAuc",Myself)~ THEN REPLY ~������.~ GOTO 11
  IF ~  Global("Armor","LOCALS",0)~ THEN REPLY ~�������.~ GOTO 12
  IF ~  Global("Armor","LOCALS",1)!HasItem("PlatAuc",Myself)HasItem("ShldAuc",Myself)HasItem("LeatAuc",Myself)~ THEN REPLY ~�������.~ GOTO 13
  IF ~  Global("Armor","LOCALS",1)HasItem("PlatAuc",Myself)!HasItem("ShldAuc",Myself)HasItem("LeatAuc",Myself)~ THEN REPLY ~�������.~ GOTO 14
  IF ~  Global("Armor","LOCALS",1)HasItem("PlatAuc",Myself)HasItem("ShldAuc",Myself)!HasItem("LeatAuc",Myself)~ THEN REPLY ~�������.~ GOTO 15
  IF ~  Global("Armor","LOCALS",2)HasItem("PlatAuc",Myself)~ THEN REPLY ~�������.~ GOTO 16
  IF ~  Global("Armor","LOCALS",2)HasItem("ShldAuc",Myself)~ THEN REPLY ~�������.~ GOTO 17
  IF ~  Global("Armor","LOCALS",2)HasItem("LeatAuc",Myself)~ THEN REPLY ~�������.~ GOTO 18
  IF ~  HasItem("ClckAuc",Myself)HasItem("BeltAuc",Myself)~ THEN REPLY ~������ ������.~ GOTO 19
  IF ~  HasItem("ClckAuc",Myself)!HasItem("BeltAuc",Myself)~ THEN REPLY ~������ ������.~ GOTO 20
  IF ~  !HasItem("ClckAuc",Myself)HasItem("BeltAuc",Myself)~ THEN REPLY ~������ ������.~ GOTO 21
  IF ~~ THEN REPLY ~����� ���� � ������ ���.~ GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY ~�� ���� ������ ������� ������ �� ��������. �����, ���-������ ������ ������?~
  IF ~~ THEN REPLY ~� ���� ��������� �� ������� ������.~ DO ~StartStore("Auction",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY ~������ �� ���������� �������?~ GOTO 3
  IF ~~ THEN REPLY ~����� ���� � ������ ���.~ GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 0.4
  SAY ~������ ��� �������� ���� ����� ���. ������� ������, ��� � ���� ���� ����� ����������� �� �������, � ������ ������. �� ����� ���� �������� �������, ���� � ���� ��� ������, ��� ����� �� ����������� ����� � ������� ����. ��� ���� ���������� ������, ��� ��� ������� ����� ������� ������ ������ �� ����� '���������� ��� ��������� �� ����'.~
  IF ~~ THEN REPLY ~� ���� ��������� �� ������� ������.~ DO ~StartStore("Auction",LastTalkedToBy)~ EXIT
  IF ~  GlobalLT("Assortment","LOCALS",8)~ THEN REPLY ~������� ��������� �� ���� ����������� �����������.~ GOTO 1
  IF ~  GlobalGT("Assortment","LOCALS",7)~ THEN REPLY ~������� ��������� �� ���� ����������� �����������.~ GOTO 2
  IF ~~ THEN REPLY ~����� ���� � ������ ���.~ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 0.5
  SAY ~� ���� ��� �������. ��� ���� ���������� ��� ���� � ���� �� ����� �������. �� ������� �� ��� �����.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.1
  SAY ~� ���� ���� ���������� ������� �����. ��� ������������ ������. �����������. ����� 15 ����������������� �����. ���� ���������� ������� ���. ��� ��������� ������, �������� �����. ����� 10 ����������������� �����. ���� ���������� �����������. ������� ������, ����� �������. ����� 5 ����������������� �����. ��, ��� ���, ����� ���-������ ��������?~
  IF ~  NumItemsPartyGT("Nwmisc29",14)~ THEN REPLY ~���������� ���������� ������� ����� �� 15 �����.~ GOTO 22
  IF ~  NumItemsPartyGT("Nwmisc29",9)~ THEN REPLY ~���������� ���������� ������� ��� �� 10 �����.~ GOTO 23
  IF ~  NumItemsPartyGT("Nwmisc29",4)~ THEN REPLY ~���������� ���������� ����������� �� 5 �����.~ GOTO 24
  IF ~  Global("Armor","LOCALS",0)~ THEN REPLY ~��������, ��� � ��� �� ����� ��������.~ GOTO 12
  IF ~  Global("Armor","LOCALS",1)!HasItem("PlatAuc",Myself)HasItem("ShldAuc",Myself)HasItem("LeatAuc",Myself)~ THEN REPLY ~��������, ��� � ��� �� ����� ��������.~ GOTO 13
  IF ~  Global("Armor","LOCALS",1)HasItem("PlatAuc",Myself)!HasItem("ShldAuc",Myself)HasItem("LeatAuc",Myself)~ THEN REPLY ~��������, ��� � ��� �� ����� ��������.~ GOTO 14
  IF ~  Global("Armor","LOCALS",1)HasItem("PlatAuc",Myself)HasItem("ShldAuc",Myself)!HasItem("LeatAuc",Myself)~ THEN REPLY ~��������, ��� � ��� �� ����� ��������.~ GOTO 15
  IF ~  Global("Armor","LOCALS",2)HasItem("PlatAuc",Myself)~ THEN REPLY ~��������, ��� � ��� �� ����� ��������.~ GOTO 16
  IF ~  Global("Armor","LOCALS",2)HasItem("ShldAuc",Myself)~ THEN REPLY ~��������, ��� � ��� �� ����� ��������.~ GOTO 17
  IF ~  Global("Armor","LOCALS",2)HasItem("LeatAuc",Myself)~ THEN REPLY ~��������, ��� � ��� �� ����� ��������.~ GOTO 18
  IF ~  HasItem("ClckAuc",Myself)HasItem("BeltAuc",Myself)~ THEN REPLY ~�������� ��� ���� ������ ������.~ GOTO 19
  IF ~  HasItem("ClckAuc",Myself)!HasItem("BeltAuc",Myself)~ THEN REPLY ~�������� ��� ���� ������ ������.~ GOTO 20
  IF ~  !HasItem("ClckAuc",Myself)HasItem("BeltAuc",Myself)~ THEN REPLY ~�������� ��� ���� ������ ������.~ GOTO 21
  IF ~~ THEN REPLY ~� ���� ��������� �� ������� ������.~ DO ~StartStore("Auction",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY ~����� ���� � ������ ���.~ GOTO 4
END

IF ~~ THEN BEGIN 6 // from: 1.2
  SAY ~� ���� ���� ���������� ������� ���. ��� ��������� ������, �������� �����. ����� 10 ����������������� �����. ���� ���������� �����������. ������� ������, ����� �������. ����� 5 ����������������� �����. ��, ��� ���, ����� ���-������ ��������?~
  IF ~  NumItemsPartyGT("Nwmisc29",9)~ THEN REPLY ~���������� ���������� ������� ��� �� 10 �����.~ GOTO 23
  IF ~  NumItemsPartyGT("Nwmisc29",4)~ THEN REPLY ~���������� ���������� ����������� �� 5 �����.~ GOTO 24
  IF ~  Global("Armor","LOCALS",0)~ THEN REPLY ~��������, ��� � ��� �� ����� ��������.~ GOTO 12
  IF ~  Global("Armor","LOCALS",1)!HasItem("PlatAuc",Myself)HasItem("ShldAuc",Myself)HasItem("LeatAuc",Myself)~ THEN REPLY ~��������, ��� � ��� �� ����� ��������.~ GOTO 13
  IF ~  Global("Armor","LOCALS",1)HasItem("PlatAuc",Myself)!HasItem("ShldAuc",Myself)HasItem("LeatAuc",Myself)~ THEN REPLY ~��������, ��� � ��� �� ����� ��������.~ GOTO 14
  IF ~  Global("Armor","LOCALS",1)HasItem("PlatAuc",Myself)HasItem("ShldAuc",Myself)!HasItem("LeatAuc",Myself)~ THEN REPLY ~��������, ��� � ��� �� ����� ��������.~ GOTO 15
  IF ~  Global("Armor","LOCALS",2)HasItem("PlatAuc",Myself)~ THEN REPLY ~��������, ��� � ��� �� ����� ��������.~ GOTO 16
  IF ~  Global("Armor","LOCALS",2)HasItem("ShldAuc",Myself)~ THEN REPLY ~��������, ��� � ��� �� ����� ��������.~ GOTO 17
  IF ~  Global("Armor","LOCALS",2)HasItem("LeatAuc",Myself)~ THEN REPLY ~��������, ��� � ��� �� ����� ��������.~ GOTO 18
  IF ~  HasItem("ClckAuc",Myself)HasItem("BeltAuc",Myself)~ THEN REPLY ~�������� ��� ���� ������ ������.~ GOTO 19
  IF ~  HasItem("ClckAuc",Myself)!HasItem("BeltAuc",Myself)~ THEN REPLY ~�������� ��� ���� ������ ������.~ GOTO 20
  IF ~  !HasItem("ClckAuc",Myself)HasItem("BeltAuc",Myself)~ THEN REPLY ~�������� ��� ���� ������ ������.~ GOTO 21
  IF ~~ THEN REPLY ~� ���� ��������� �� ������� ������.~ DO ~StartStore("Auction",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY ~����� ���� � ������ ���.~ GOTO 4
END

IF ~~ THEN BEGIN 7 // from: 1.3
  SAY ~� ���� ���� ���������� ������� �����. ��� ������������ ������. �����������. ����� 15 ����������������� �����. ���� ���������� �����������. ������� ������, ����� �������. ����� 5 ����������������� �����. ��, ��� ���, ����� ���-������ ��������?~
  IF ~  NumItemsPartyGT("Nwmisc29",14)~ THEN REPLY ~���������� ���������� ������� ����� �� 15 �����.~ GOTO 22
  IF ~  NumItemsPartyGT("Nwmisc29",4)~ THEN REPLY ~���������� ���������� ����������� �� 5 �����.~ GOTO 24
  IF ~  Global("Armor","LOCALS",0)~ THEN REPLY ~��������, ��� � ��� �� ����� ��������.~ GOTO 12
  IF ~  Global("Armor","LOCALS",1)!HasItem("PlatAuc",Myself)HasItem("ShldAuc",Myself)HasItem("LeatAuc",Myself)~ THEN REPLY ~��������, ��� � ��� �� ����� ��������.~ GOTO 13
  IF ~  Global("Armor","LOCALS",1)HasItem("PlatAuc",Myself)!HasItem("ShldAuc",Myself)HasItem("LeatAuc",Myself)~ THEN REPLY ~��������, ��� � ��� �� ����� ��������.~ GOTO 14
  IF ~  Global("Armor","LOCALS",1)HasItem("PlatAuc",Myself)HasItem("ShldAuc",Myself)!HasItem("LeatAuc",Myself)~ THEN REPLY ~��������, ��� � ��� �� ����� ��������.~ GOTO 15
  IF ~  Global("Armor","LOCALS",2)HasItem("PlatAuc",Myself)~ THEN REPLY ~��������, ��� � ��� �� ����� ��������.~ GOTO 16
  IF ~  Global("Armor","LOCALS",2)HasItem("ShldAuc",Myself)~ THEN REPLY ~��������, ��� � ��� �� ����� ��������.~ GOTO 17
  IF ~  Global("Armor","LOCALS",2)HasItem("LeatAuc",Myself)~ THEN REPLY ~��������, ��� � ��� �� ����� ��������.~ GOTO 18
  IF ~  HasItem("ClckAuc",Myself)HasItem("BeltAuc",Myself)~ THEN REPLY ~�������� ��� ���� ������ ������.~ GOTO 19
  IF ~  HasItem("ClckAuc",Myself)!HasItem("BeltAuc",Myself)~ THEN REPLY ~�������� ��� ���� ������ ������.~ GOTO 20
  IF ~  !HasItem("ClckAuc",Myself)HasItem("BeltAuc",Myself)~ THEN REPLY ~�������� ��� ���� ������ ������.~ GOTO 21
  IF ~~ THEN REPLY ~� ���� ��������� �� ������� ������.~ DO ~StartStore("Auction",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY ~����� ���� � ������ ���.~ GOTO 4
END

IF ~~ THEN BEGIN 8 // from: 1.4
  SAY ~� ���� ���� ���������� ������� �����. ��� ������������ ������. �����������. ����� 15 ����������������� �����. ���� ���������� ������� ���. ��� ��������� ������, �������� �����. ����� 10 ����������������� �����. ��, ��� ���, ����� ���-������ ��������?~
  IF ~  NumItemsPartyGT("Nwmisc29",14)~ THEN REPLY ~���������� ���������� ������� ����� �� 15 �����.~ GOTO 22
  IF ~  NumItemsPartyGT("Nwmisc29",9)~ THEN REPLY ~���������� ���������� ������� ��� �� 10 �����.~ GOTO 23
  IF ~  Global("Armor","LOCALS",0)~ THEN REPLY ~��������, ��� � ��� �� ����� ��������.~ GOTO 12
  IF ~  Global("Armor","LOCALS",1)!HasItem("PlatAuc",Myself)HasItem("ShldAuc",Myself)HasItem("LeatAuc",Myself)~ THEN REPLY ~��������, ��� � ��� �� ����� ��������.~ GOTO 13
  IF ~  Global("Armor","LOCALS",1)HasItem("PlatAuc",Myself)!HasItem("ShldAuc",Myself)HasItem("LeatAuc",Myself)~ THEN REPLY ~��������, ��� � ��� �� ����� ��������.~ GOTO 14
  IF ~  Global("Armor","LOCALS",1)HasItem("PlatAuc",Myself)HasItem("ShldAuc",Myself)!HasItem("LeatAuc",Myself)~ THEN REPLY ~��������, ��� � ��� �� ����� ��������.~ GOTO 15
  IF ~  Global("Armor","LOCALS",2)HasItem("PlatAuc",Myself)~ THEN REPLY ~��������, ��� � ��� �� ����� ��������.~ GOTO 16
  IF ~  Global("Armor","LOCALS",2)HasItem("ShldAuc",Myself)~ THEN REPLY ~��������, ��� � ��� �� ����� ��������.~ GOTO 17
  IF ~  Global("Armor","LOCALS",2)HasItem("LeatAuc",Myself)~ THEN REPLY ~��������, ��� � ��� �� ����� ��������.~ GOTO 18
  IF ~  HasItem("ClckAuc",Myself)HasItem("BeltAuc",Myself)~ THEN REPLY ~�������� ��� ���� ������ ������.~ GOTO 19
  IF ~  HasItem("ClckAuc",Myself)!HasItem("BeltAuc",Myself)~ THEN REPLY ~�������� ��� ���� ������ ������.~ GOTO 20
  IF ~  !HasItem("ClckAuc",Myself)HasItem("BeltAuc",Myself)~ THEN REPLY ~�������� ��� ���� ������ ������.~ GOTO 21
  IF ~~ THEN REPLY ~� ���� ��������� �� ������� ������.~ DO ~StartStore("Auction",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY ~����� ���� � ������ ���.~ GOTO 4
END

IF ~~ THEN BEGIN 9 // from: 1.5
  SAY ~� ���� ���� ���������� ������� �����. ��� ������������ ������. �����������. ����� 15 ����������������� �����. ��, ��� ���, ����� ��������?~
  IF ~  NumItemsPartyGT("Nwmisc29",14)~ THEN REPLY ~���������� ���������� ������� ����� �� 15 �����.~ GOTO 22
  IF ~  Global("Armor","LOCALS",0)~ THEN REPLY ~��������, ��� � ��� �� ����� ��������.~ GOTO 12
  IF ~  Global("Armor","LOCALS",1)!HasItem("PlatAuc",Myself)HasItem("ShldAuc",Myself)HasItem("LeatAuc",Myself)~ THEN REPLY ~��������, ��� � ��� �� ����� ��������.~ GOTO 13
  IF ~  Global("Armor","LOCALS",1)HasItem("PlatAuc",Myself)!HasItem("ShldAuc",Myself)HasItem("LeatAuc",Myself)~ THEN REPLY ~��������, ��� � ��� �� ����� ��������.~ GOTO 14
  IF ~  Global("Armor","LOCALS",1)HasItem("PlatAuc",Myself)HasItem("ShldAuc",Myself)!HasItem("LeatAuc",Myself)~ THEN REPLY ~��������, ��� � ��� �� ����� ��������.~ GOTO 15
  IF ~  Global("Armor","LOCALS",2)HasItem("PlatAuc",Myself)~ THEN REPLY ~��������, ��� � ��� �� ����� ��������.~ GOTO 16
  IF ~  Global("Armor","LOCALS",2)HasItem("ShldAuc",Myself)~ THEN REPLY ~��������, ��� � ��� �� ����� ��������.~ GOTO 17
  IF ~  Global("Armor","LOCALS",2)HasItem("LeatAuc",Myself)~ THEN REPLY ~��������, ��� � ��� �� ����� ��������.~ GOTO 18
  IF ~  HasItem("ClckAuc",Myself)HasItem("BeltAuc",Myself)~ THEN REPLY ~�������� ��� ���� ������ ������.~ GOTO 19
  IF ~  HasItem("ClckAuc",Myself)!HasItem("BeltAuc",Myself)~ THEN REPLY ~�������� ��� ���� ������ ������.~ GOTO 20
  IF ~  !HasItem("ClckAuc",Myself)HasItem("BeltAuc",Myself)~ THEN REPLY ~�������� ��� ���� ������ ������.~ GOTO 21
  IF ~~ THEN REPLY ~� ���� ��������� �� ������� ������.~ DO ~StartStore("Auction",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY ~����� ���� � ������ ���.~ GOTO 4
END

IF ~~ THEN BEGIN 10 // from: 1.6
  SAY ~� ���� ���� ���������� ������� ���. ��� ��������� ������, �������� �����. ����� 10 ����������������� �����. ��, ��� ���, ����� ��������?~
  IF ~  NumItemsPartyGT("Nwmisc29",9)~ THEN REPLY ~���������� ���������� ������� ��� �� 10 �����.~ GOTO 23
  IF ~  Global("Armor","LOCALS",0)~ THEN REPLY ~��������, ��� � ��� �� ����� ��������.~ GOTO 12
  IF ~  Global("Armor","LOCALS",1)!HasItem("PlatAuc",Myself)HasItem("ShldAuc",Myself)HasItem("LeatAuc",Myself)~ THEN REPLY ~��������, ��� � ��� �� ����� ��������.~ GOTO 13
  IF ~  Global("Armor","LOCALS",1)HasItem("PlatAuc",Myself)!HasItem("ShldAuc",Myself)HasItem("LeatAuc",Myself)~ THEN REPLY ~��������, ��� � ��� �� ����� ��������.~ GOTO 14
  IF ~  Global("Armor","LOCALS",1)HasItem("PlatAuc",Myself)HasItem("ShldAuc",Myself)!HasItem("LeatAuc",Myself)~ THEN REPLY ~��������, ��� � ��� �� ����� ��������.~ GOTO 15
  IF ~  Global("Armor","LOCALS",2)HasItem("PlatAuc",Myself)~ THEN REPLY ~��������, ��� � ��� �� ����� ��������.~ GOTO 16
  IF ~  Global("Armor","LOCALS",2)HasItem("ShldAuc",Myself)~ THEN REPLY ~��������, ��� � ��� �� ����� ��������.~ GOTO 17
  IF ~  Global("Armor","LOCALS",2)HasItem("LeatAuc",Myself)~ THEN REPLY ~��������, ��� � ��� �� ����� ��������.~ GOTO 18
  IF ~  HasItem("ClckAuc",Myself)HasItem("BeltAuc",Myself)~ THEN REPLY ~�������� ��� ���� ������ ������.~ GOTO 19
  IF ~  HasItem("ClckAuc",Myself)!HasItem("BeltAuc",Myself)~ THEN REPLY ~�������� ��� ���� ������ ������.~ GOTO 20
  IF ~  !HasItem("ClckAuc",Myself)HasItem("BeltAuc",Myself)~ THEN REPLY ~�������� ��� ���� ������ ������.~ GOTO 21
  IF ~~ THEN REPLY ~� ���� ��������� �� ������� ������.~ DO ~StartStore("Auction",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY ~����� ���� � ������ ���.~ GOTO 4
END

IF ~~ THEN BEGIN 11 // from: 1.7
  SAY ~� ���� ���� ���������� ������� �����. ��� ������������ ������. �����������. ����� 15 ����������������� �����. ���� ���������� ������� ���. ��� ��������� ������, �������� �����. ����� 10 ����������������� �����. ���� ���������� �����������. ������� ������, ����� �������. ����� 5 ����������������� �����. ��, ��� ���, ����� ���-������ ��������?~
  IF ~  NumItemsPartyGT("Nwmisc29",4)~ THEN REPLY ~���������� ���������� ����������� �� 5 �����.~ GOTO 24
  IF ~  Global("Armor","LOCALS",0)~ THEN REPLY ~��������, ��� � ��� �� ����� ��������.~ GOTO 12
  IF ~  Global("Armor","LOCALS",1)!HasItem("PlatAuc",Myself)HasItem("ShldAuc",Myself)HasItem("LeatAuc",Myself)~ THEN REPLY ~��������, ��� � ��� �� ����� ��������.~ GOTO 13
  IF ~  Global("Armor","LOCALS",1)HasItem("PlatAuc",Myself)!HasItem("ShldAuc",Myself)HasItem("LeatAuc",Myself)~ THEN REPLY ~��������, ��� � ��� �� ����� ��������.~ GOTO 14
  IF ~  Global("Armor","LOCALS",1)HasItem("PlatAuc",Myself)HasItem("ShldAuc",Myself)!HasItem("LeatAuc",Myself)~ THEN REPLY ~��������, ��� � ��� �� ����� ��������.~ GOTO 15
  IF ~  Global("Armor","LOCALS",2)HasItem("PlatAuc",Myself)~ THEN REPLY ~��������, ��� � ��� �� ����� ��������.~ GOTO 16
  IF ~  Global("Armor","LOCALS",2)HasItem("ShldAuc",Myself)~ THEN REPLY ~��������, ��� � ��� �� ����� ��������.~ GOTO 17
  IF ~  Global("Armor","LOCALS",2)HasItem("LeatAuc",Myself)~ THEN REPLY ~��������, ��� � ��� �� ����� ��������.~ GOTO 18
  IF ~  HasItem("ClckAuc",Myself)HasItem("BeltAuc",Myself)~ THEN REPLY ~�������� ��� ���� ������ ������.~ GOTO 19
  IF ~  HasItem("ClckAuc",Myself)!HasItem("BeltAuc",Myself)~ THEN REPLY ~�������� ��� ���� ������ ������.~ GOTO 20
  IF ~  !HasItem("ClckAuc",Myself)HasItem("BeltAuc",Myself)~ THEN REPLY ~�������� ��� ���� ������ ������.~ GOTO 21
  IF ~~ THEN REPLY ~� ���� ��������� �� ������� ������.~ DO ~StartStore("Auction",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY ~����� ���� � ������ ���.~ GOTO 4
END

IF ~~ THEN BEGIN 12 // from: 1.8
  SAY ~� ���� ���� ���������� ���������. ��� ������� ������ ����� �� 15 ����������������� �����. � ���� ���� ���������� ��� �� 9 ����������������� �����. � ���� ���� �������� ���������� ����, �� ���� �������� �������� ������ �������� ����� �� 5 ����������������� �����. ����, ��� ��� ������������?~
  IF ~  NumItemsPartyGT("Nwmisc29",14)~ THEN REPLY ~���������� ���������� ��������� �� 15 �����.~ GOTO 25
  IF ~  NumItemsPartyGT("Nwmisc29",8)~ THEN REPLY ~���������� ���������� ��� �� 9 �����.~ GOTO 26
  IF ~  NumItemsPartyGT("Nwmisc29",4)~ THEN REPLY ~���������� ���������� ������� ������ �� 5 �����.~ GOTO 27
  IF ~  Global("Weapon","LOCALS",0)~ THEN REPLY ~�������� ���, ����� ������ � ��� ����.~ GOTO 5
  IF ~  Global("Weapon","LOCALS",1)!HasItem("AxeAuc",Myself)HasItem("SwordAuc",Myself)HasItem("BlunAuc",Myself)~ THEN REPLY ~�������� ���, ����� ������ � ��� ����.~ GOTO 6
  IF ~  Global("Weapon","LOCALS",1)HasItem("AxeAuc",Myself)!HasItem("SwordAuc",Myself)HasItem("BlunAuc",Myself)~ THEN REPLY ~�������� ���, ����� ������ � ��� ����.~ GOTO 7
  IF ~  Global("Weapon","LOCALS",1)HasItem("AxeAuc",Myself)HasItem("SwordAuc",Myself)!HasItem("BlunAuc",Myself)~ THEN REPLY ~�������� ���, ����� ������ � ��� ����.~ GOTO 8
  IF ~  Global("Weapon","LOCALS",2)HasItem("AxeAuc",Myself)~ THEN REPLY ~�������� ���, ����� ������ � ��� ����.~ GOTO 9
  IF ~  Global("Weapon","LOCALS",2)HasItem("SwordAuc",Myself)~ THEN REPLY ~�������� ���, ����� ������ � ��� ����.~ GOTO 10
  IF ~  Global("Weapon","LOCALS",2)HasItem("BlunAuc",Myself)~ THEN REPLY ~�������� ���, ����� ������ � ��� ����.~ GOTO 11
  IF ~  HasItem("ClckAuc",Myself)HasItem("BeltAuc",Myself)~ THEN REPLY ~�������� ��� ���� ������ ������.~ GOTO 19
  IF ~  HasItem("ClckAuc",Myself)!HasItem("BeltAuc",Myself)~ THEN REPLY ~�������� ��� ���� ������ ������.~ GOTO 20
  IF ~  !HasItem("ClckAuc",Myself)HasItem("BeltAuc",Myself)~ THEN REPLY ~�������� ��� ���� ������ ������.~ GOTO 21
  IF ~~ THEN REPLY ~� ���� ��������� �� ������� ������.~ DO ~StartStore("Auction",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY ~����� ���� � ������ ���.~ GOTO 4
END

IF ~~ THEN BEGIN 13 // from: 1.9
  SAY ~� ���� ���� ���������� ��� �� 9 ����������������� �����. � ���� ���� �������� ���������� ����, �� ���� �������� �������� ������ �������� ����� �� 5 ����������������� �����. ����, ��� ��� ������������?~
  IF ~  NumItemsPartyGT("Nwmisc29",8)~ THEN REPLY ~���������� ���������� ��� �� 9 �����.~ GOTO 26
  IF ~  NumItemsPartyGT("Nwmisc29",4)~ THEN REPLY ~���������� ���������� ������� ������ �� 5 �����.~ GOTO 27
  IF ~  Global("Weapon","LOCALS",0)~ THEN REPLY ~�������� ���, ����� ������ � ��� ����.~ GOTO 5
  IF ~  Global("Weapon","LOCALS",1)!HasItem("AxeAuc",Myself)HasItem("SwordAuc",Myself)HasItem("BlunAuc",Myself)~ THEN REPLY ~�������� ���, ����� ������ � ��� ����.~ GOTO 6
  IF ~  Global("Weapon","LOCALS",1)HasItem("AxeAuc",Myself)!HasItem("SwordAuc",Myself)HasItem("BlunAuc",Myself)~ THEN REPLY ~�������� ���, ����� ������ � ��� ����.~ GOTO 7
  IF ~  Global("Weapon","LOCALS",1)HasItem("AxeAuc",Myself)HasItem("SwordAuc",Myself)!HasItem("BlunAuc",Myself)~ THEN REPLY ~�������� ���, ����� ������ � ��� ����.~ GOTO 8
  IF ~  Global("Weapon","LOCALS",2)HasItem("AxeAuc",Myself)~ THEN REPLY ~�������� ���, ����� ������ � ��� ����.~ GOTO 9
  IF ~  Global("Weapon","LOCALS",2)HasItem("SwordAuc",Myself)~ THEN REPLY ~�������� ���, ����� ������ � ��� ����.~ GOTO 10
  IF ~  Global("Weapon","LOCALS",2)HasItem("BlunAuc",Myself)~ THEN REPLY ~�������� ���, ����� ������ � ��� ����.~ GOTO 11
  IF ~  HasItem("ClckAuc",Myself)HasItem("BeltAuc",Myself)~ THEN REPLY ~�������� ��� ���� ������ ������.~ GOTO 19
  IF ~  HasItem("ClckAuc",Myself)!HasItem("BeltAuc",Myself)~ THEN REPLY ~�������� ��� ���� ������ ������.~ GOTO 20
  IF ~  !HasItem("ClckAuc",Myself)HasItem("BeltAuc",Myself)~ THEN REPLY ~�������� ��� ���� ������ ������.~ GOTO 21
  IF ~~ THEN REPLY ~� ���� ��������� �� ������� ������.~ DO ~StartStore("Auction",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY ~����� ���� � ������ ���.~ GOTO 4
END

IF ~~ THEN BEGIN 14 // from: 1.10
  SAY ~� ���� ���� ���������� ���������. ��� ������� ������ ����� �� 15 ����������������� �����. � ���� ���� �������� ���������� ����, �� ���� �������� �������� ������ �������� ����� �� 5 ����������������� �����. ����, ��� ��� ������������?~
  IF ~  NumItemsPartyGT("Nwmisc29",14)~ THEN REPLY ~���������� ���������� ��������� �� 15 �����.~ GOTO 25
  IF ~  NumItemsPartyGT("Nwmisc29",4)~ THEN REPLY ~���������� ���������� ������� ������ �� 5 �����.~ GOTO 27
  IF ~  Global("Weapon","LOCALS",0)~ THEN REPLY ~�������� ���, ����� ������ � ��� ����.~ GOTO 5
  IF ~  Global("Weapon","LOCALS",1)!HasItem("AxeAuc",Myself)HasItem("SwordAuc",Myself)HasItem("BlunAuc",Myself)~ THEN REPLY ~�������� ���, ����� ������ � ��� ����.~ GOTO 6
  IF ~  Global("Weapon","LOCALS",1)HasItem("AxeAuc",Myself)!HasItem("SwordAuc",Myself)HasItem("BlunAuc",Myself)~ THEN REPLY ~�������� ���, ����� ������ � ��� ����.~ GOTO 7
  IF ~  Global("Weapon","LOCALS",1)HasItem("AxeAuc",Myself)HasItem("SwordAuc",Myself)!HasItem("BlunAuc",Myself)~ THEN REPLY ~�������� ���, ����� ������ � ��� ����.~ GOTO 8
  IF ~  Global("Weapon","LOCALS",2)HasItem("AxeAuc",Myself)~ THEN REPLY ~�������� ���, ����� ������ � ��� ����.~ GOTO 9
  IF ~  Global("Weapon","LOCALS",2)HasItem("SwordAuc",Myself)~ THEN REPLY ~�������� ���, ����� ������ � ��� ����.~ GOTO 10
  IF ~  Global("Weapon","LOCALS",2)HasItem("BlunAuc",Myself)~ THEN REPLY ~�������� ���, ����� ������ � ��� ����.~ GOTO 11
  IF ~  HasItem("ClckAuc",Myself)HasItem("BeltAuc",Myself)~ THEN REPLY ~�������� ��� ���� ������ ������.~ GOTO 19
  IF ~  HasItem("ClckAuc",Myself)!HasItem("BeltAuc",Myself)~ THEN REPLY ~�������� ��� ���� ������ ������.~ GOTO 20
  IF ~  !HasItem("ClckAuc",Myself)HasItem("BeltAuc",Myself)~ THEN REPLY ~�������� ��� ���� ������ ������.~ GOTO 21
  IF ~~ THEN REPLY ~� ���� ��������� �� ������� ������.~ DO ~StartStore("Auction",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY ~����� ���� � ������ ���.~ GOTO 4
END

IF ~~ THEN BEGIN 15 // from: 1.11
  SAY ~� ���� ���� ���������� ���������. ��� ������� ������ ����� �� 15 ����������������� �����. � ���� ���� ���������� ��� �� 9 ����������������� �����. ����, ��� ��� ������������?~
  IF ~  NumItemsPartyGT("Nwmisc29",14)~ THEN REPLY ~���������� ���������� ��������� �� 15 �����.~ GOTO 25
  IF ~  NumItemsPartyGT("Nwmisc29",8)~ THEN REPLY ~���������� ���������� ��� �� 9 �����.~ GOTO 26
  IF ~  Global("Weapon","LOCALS",0)~ THEN REPLY ~�������� ���, ����� ������ � ��� ����.~ GOTO 5
  IF ~  Global("Weapon","LOCALS",1)!HasItem("AxeAuc",Myself)HasItem("SwordAuc",Myself)HasItem("BlunAuc",Myself)~ THEN REPLY ~�������� ���, ����� ������ � ��� ����.~ GOTO 6
  IF ~  Global("Weapon","LOCALS",1)HasItem("AxeAuc",Myself)!HasItem("SwordAuc",Myself)HasItem("BlunAuc",Myself)~ THEN REPLY ~�������� ���, ����� ������ � ��� ����.~ GOTO 7
  IF ~  Global("Weapon","LOCALS",1)HasItem("AxeAuc",Myself)HasItem("SwordAuc",Myself)!HasItem("BlunAuc",Myself)~ THEN REPLY ~�������� ���, ����� ������ � ��� ����.~ GOTO 8
  IF ~  Global("Weapon","LOCALS",2)HasItem("AxeAuc",Myself)~ THEN REPLY ~�������� ���, ����� ������ � ��� ����.~ GOTO 9
  IF ~  Global("Weapon","LOCALS",2)HasItem("SwordAuc",Myself)~ THEN REPLY ~�������� ���, ����� ������ � ��� ����.~ GOTO 10
  IF ~  Global("Weapon","LOCALS",2)HasItem("BlunAuc",Myself)~ THEN REPLY ~�������� ���, ����� ������ � ��� ����.~ GOTO 11
  IF ~  HasItem("ClckAuc",Myself)HasItem("BeltAuc",Myself)~ THEN REPLY ~�������� ��� ���� ������ ������.~ GOTO 19
  IF ~  HasItem("ClckAuc",Myself)!HasItem("BeltAuc",Myself)~ THEN REPLY ~�������� ��� ���� ������ ������.~ GOTO 20
  IF ~  !HasItem("ClckAuc",Myself)HasItem("BeltAuc",Myself)~ THEN REPLY ~�������� ��� ���� ������ ������.~ GOTO 21
  IF ~~ THEN REPLY ~� ���� ��������� �� ������� ������.~ DO ~StartStore("Auction",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY ~����� ���� � ������ ���.~ GOTO 4
END

IF ~~ THEN BEGIN 16 // from: 1.12
  SAY ~� ���� ���� ���������� ���������. ��� ������� ������ ����� �� 15 ����������������� �����. ������ ��������?~
  IF ~  NumItemsPartyGT("Nwmisc29",14)~ THEN REPLY ~���������� ���������� ��������� �� 15 �����.~ GOTO 25
  IF ~  Global("Weapon","LOCALS",0)~ THEN REPLY ~�������� ���, ����� ������ � ��� ����.~ GOTO 5
  IF ~  Global("Weapon","LOCALS",1)!HasItem("AxeAuc",Myself)HasItem("SwordAuc",Myself)HasItem("BlunAuc",Myself)~ THEN REPLY ~�������� ���, ����� ������ � ��� ����.~ GOTO 6
  IF ~  Global("Weapon","LOCALS",1)HasItem("AxeAuc",Myself)!HasItem("SwordAuc",Myself)HasItem("BlunAuc",Myself)~ THEN REPLY ~�������� ���, ����� ������ � ��� ����.~ GOTO 7
  IF ~  Global("Weapon","LOCALS",1)HasItem("AxeAuc",Myself)HasItem("SwordAuc",Myself)!HasItem("BlunAuc",Myself)~ THEN REPLY ~�������� ���, ����� ������ � ��� ����.~ GOTO 8
  IF ~  Global("Weapon","LOCALS",2)HasItem("AxeAuc",Myself)~ THEN REPLY ~�������� ���, ����� ������ � ��� ����.~ GOTO 9
  IF ~  Global("Weapon","LOCALS",2)HasItem("SwordAuc",Myself)~ THEN REPLY ~�������� ���, ����� ������ � ��� ����.~ GOTO 10
  IF ~  Global("Weapon","LOCALS",2)HasItem("BlunAuc",Myself)~ THEN REPLY ~�������� ���, ����� ������ � ��� ����.~ GOTO 11
  IF ~  HasItem("ClckAuc",Myself)HasItem("BeltAuc",Myself)~ THEN REPLY ~�������� ��� ���� ������ ������.~ GOTO 19
  IF ~  HasItem("ClckAuc",Myself)!HasItem("BeltAuc",Myself)~ THEN REPLY ~�������� ��� ���� ������ ������.~ GOTO 20
  IF ~  !HasItem("ClckAuc",Myself)HasItem("BeltAuc",Myself)~ THEN REPLY ~�������� ��� ���� ������ ������.~ GOTO 21
  IF ~~ THEN REPLY ~� ���� ��������� �� ������� ������.~ DO ~StartStore("Auction",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY ~����� ���� � ������ ���.~ GOTO 4
END

IF ~~ THEN BEGIN 17 // from: 1.13
  SAY ~� ���� ���� ���������� ��� �� 9 ����������������� �����. ������ ��������?~
  IF ~  NumItemsPartyGT("Nwmisc29",8)~ THEN REPLY ~���������� ���������� ��� �� 9 �����.~ GOTO 26
  IF ~  Global("Weapon","LOCALS",0)~ THEN REPLY ~�������� ���, ����� ������ � ��� ����.~ GOTO 5
  IF ~  Global("Weapon","LOCALS",1)!HasItem("AxeAuc",Myself)HasItem("SwordAuc",Myself)HasItem("BlunAuc",Myself)~ THEN REPLY ~�������� ���, ����� ������ � ��� ����.~ GOTO 6
  IF ~  Global("Weapon","LOCALS",1)HasItem("AxeAuc",Myself)!HasItem("SwordAuc",Myself)HasItem("BlunAuc",Myself)~ THEN REPLY ~�������� ���, ����� ������ � ��� ����.~ GOTO 7
  IF ~  Global("Weapon","LOCALS",1)HasItem("AxeAuc",Myself)HasItem("SwordAuc",Myself)!HasItem("BlunAuc",Myself)~ THEN REPLY ~�������� ���, ����� ������ � ��� ����.~ GOTO 8
  IF ~  Global("Weapon","LOCALS",2)HasItem("AxeAuc",Myself)~ THEN REPLY ~�������� ���, ����� ������ � ��� ����.~ GOTO 9
  IF ~  Global("Weapon","LOCALS",2)HasItem("SwordAuc",Myself)~ THEN REPLY ~�������� ���, ����� ������ � ��� ����.~ GOTO 10
  IF ~  Global("Weapon","LOCALS",2)HasItem("BlunAuc",Myself)~ THEN REPLY ~�������� ���, ����� ������ � ��� ����.~ GOTO 11
  IF ~  HasItem("ClckAuc",Myself)HasItem("BeltAuc",Myself)~ THEN REPLY ~�������� ��� ���� ������ ������.~ GOTO 19
  IF ~  HasItem("ClckAuc",Myself)!HasItem("BeltAuc",Myself)~ THEN REPLY ~�������� ��� ���� ������ ������.~ GOTO 20
  IF ~  !HasItem("ClckAuc",Myself)HasItem("BeltAuc",Myself)~ THEN REPLY ~�������� ��� ���� ������ ������.~ GOTO 21
  IF ~~ THEN REPLY ~� ���� ��������� �� ������� ������.~ DO ~StartStore("Auction",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY ~����� ���� � ������ ���.~ GOTO 4
END

IF ~~ THEN BEGIN 18 // from: 1.14
  SAY ~� ���� ���� �������� ���������� ����, �� ���� �������� �������� ������ �������� ����� �� 5 ����������������� �����. ������ ��������?~
  IF ~  NumItemsPartyGT("Nwmisc29",4)~ THEN REPLY ~���������� ���������� ������� ������ �� 5 �����.~ GOTO 27
  IF ~  Global("Weapon","LOCALS",0)~ THEN REPLY ~�������� ���, ����� ������ � ��� ����.~ GOTO 5
  IF ~  Global("Weapon","LOCALS",1)!HasItem("AxeAuc",Myself)HasItem("SwordAuc",Myself)HasItem("BlunAuc",Myself)~ THEN REPLY ~�������� ���, ����� ������ � ��� ����.~ GOTO 6
  IF ~  Global("Weapon","LOCALS",1)HasItem("AxeAuc",Myself)!HasItem("SwordAuc",Myself)HasItem("BlunAuc",Myself)~ THEN REPLY ~�������� ���, ����� ������ � ��� ����.~ GOTO 7
  IF ~  Global("Weapon","LOCALS",1)HasItem("AxeAuc",Myself)HasItem("SwordAuc",Myself)!HasItem("BlunAuc",Myself)~ THEN REPLY ~�������� ���, ����� ������ � ��� ����.~ GOTO 8
  IF ~  Global("Weapon","LOCALS",2)HasItem("AxeAuc",Myself)~ THEN REPLY ~�������� ���, ����� ������ � ��� ����.~ GOTO 9
  IF ~  Global("Weapon","LOCALS",2)HasItem("SwordAuc",Myself)~ THEN REPLY ~�������� ���, ����� ������ � ��� ����.~ GOTO 10
  IF ~  Global("Weapon","LOCALS",2)HasItem("BlunAuc",Myself)~ THEN REPLY ~�������� ���, ����� ������ � ��� ����.~ GOTO 11
  IF ~  HasItem("ClckAuc",Myself)HasItem("BeltAuc",Myself)~ THEN REPLY ~�������� ��� ���� ������ ������.~ GOTO 19
  IF ~  HasItem("ClckAuc",Myself)!HasItem("BeltAuc",Myself)~ THEN REPLY ~�������� ��� ���� ������ ������.~ GOTO 20
  IF ~  !HasItem("ClckAuc",Myself)HasItem("BeltAuc",Myself)~ THEN REPLY ~�������� ��� ���� ������ ������.~ GOTO 21
  IF ~~ THEN REPLY ~� ���� ��������� �� ������� ������.~ DO ~StartStore("Auction",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY ~����� ���� � ������ ���.~ GOTO 4
END

IF ~~ THEN BEGIN 19 // from: 1.15
  SAY ~� ���� ���� ���������� ����, ������� ��� ������� � ��������� ��� ����, ����� �� 14 ����������������� �����. � ���� ���� ���������� ����, ��������, ��� �� �������. �������� ������ �� 6 ����������������� �����. ����, ��� �� �������?~
  IF ~  NumItemsPartyGT("Nwmisc29",13)~ THEN REPLY ~���������� ���������� ���� �� 14 �����.~ GOTO 28
  IF ~  NumItemsPartyGT("Nwmisc29",5)~ THEN REPLY ~���������� ���������� ���� �� 6 �����.~ GOTO 29
  IF ~  Global("Weapon","LOCALS",0)~ THEN REPLY ~�������� ���, ����� ������ � ��� ����.~ GOTO 5
  IF ~  Global("Weapon","LOCALS",1)!HasItem("AxeAuc",Myself)HasItem("SwordAuc",Myself)HasItem("BlunAuc",Myself)~ THEN REPLY ~�������� ���, ����� ������ � ��� ����.~ GOTO 6
  IF ~  Global("Weapon","LOCALS",1)HasItem("AxeAuc",Myself)!HasItem("SwordAuc",Myself)HasItem("BlunAuc",Myself)~ THEN REPLY ~�������� ���, ����� ������ � ��� ����.~ GOTO 7
  IF ~  Global("Weapon","LOCALS",1)HasItem("AxeAuc",Myself)HasItem("SwordAuc",Myself)!HasItem("BlunAuc",Myself)~ THEN REPLY ~�������� ���, ����� ������ � ��� ����.~ GOTO 8
  IF ~  Global("Weapon","LOCALS",2)HasItem("AxeAuc",Myself)~ THEN REPLY ~�������� ���, ����� ������ � ��� ����.~ GOTO 9
  IF ~  Global("Weapon","LOCALS",2)HasItem("SwordAuc",Myself)~ THEN REPLY ~�������� ���, ����� ������ � ��� ����.~ GOTO 10
  IF ~  Global("Weapon","LOCALS",2)HasItem("BlunAuc",Myself)~ THEN REPLY ~�������� ���, ����� ������ � ��� ����.~ GOTO 11
  IF ~  Global("Armor","LOCALS",0)~ THEN REPLY ~��������, ��� � ��� �� ����� ��������.~ GOTO 12
  IF ~  Global("Armor","LOCALS",1)!HasItem("PlatAuc",Myself)HasItem("ShldAuc",Myself)HasItem("LeatAuc",Myself)~ THEN REPLY ~��������, ��� � ��� �� ����� ��������.~ GOTO 13
  IF ~  Global("Armor","LOCALS",1)HasItem("PlatAuc",Myself)!HasItem("ShldAuc",Myself)HasItem("LeatAuc",Myself)~ THEN REPLY ~��������, ��� � ��� �� ����� ��������.~ GOTO 14
  IF ~  Global("Armor","LOCALS",1)HasItem("PlatAuc",Myself)HasItem("ShldAuc",Myself)!HasItem("LeatAuc",Myself)~ THEN REPLY ~��������, ��� � ��� �� ����� ��������.~ GOTO 15
  IF ~  Global("Armor","LOCALS",2)HasItem("PlatAuc",Myself)~ THEN REPLY ~��������, ��� � ��� �� ����� ��������.~ GOTO 16
  IF ~  Global("Armor","LOCALS",2)HasItem("ShldAuc",Myself)~ THEN REPLY ~��������, ��� � ��� �� ����� ��������.~ GOTO 17
  IF ~  Global("Armor","LOCALS",2)HasItem("LeatAuc",Myself)~ THEN REPLY ~��������, ��� � ��� �� ����� ��������.~ GOTO 18
  IF ~~ THEN REPLY ~� ���� ��������� �� ������� ������.~ DO ~StartStore("Auction",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY ~����� ���� � ������ ���.~ GOTO 4
END

IF ~~ THEN BEGIN 20 // from: 1.16
  SAY ~� ���� ���� ���������� ����, ������� ��� ������� � ��������� ��� ����, ����� �� 14 ����������������� �����. ������ ��������?~
  IF ~  NumItemsPartyGT("Nwmisc29",13)~ THEN REPLY ~���������� ���������� ���� �� 14 �����.~ GOTO 28
  IF ~  Global("Weapon","LOCALS",0)~ THEN REPLY ~�������� ���, ����� ������ � ��� ����.~ GOTO 5
  IF ~  Global("Weapon","LOCALS",1)!HasItem("AxeAuc",Myself)HasItem("SwordAuc",Myself)HasItem("BlunAuc",Myself)~ THEN REPLY ~�������� ���, ����� ������ � ��� ����.~ GOTO 6
  IF ~  Global("Weapon","LOCALS",1)HasItem("AxeAuc",Myself)!HasItem("SwordAuc",Myself)HasItem("BlunAuc",Myself)~ THEN REPLY ~�������� ���, ����� ������ � ��� ����.~ GOTO 7
  IF ~  Global("Weapon","LOCALS",1)HasItem("AxeAuc",Myself)HasItem("SwordAuc",Myself)!HasItem("BlunAuc",Myself)~ THEN REPLY ~�������� ���, ����� ������ � ��� ����.~ GOTO 8
  IF ~  Global("Weapon","LOCALS",2)HasItem("AxeAuc",Myself)~ THEN REPLY ~�������� ���, ����� ������ � ��� ����.~ GOTO 9
  IF ~  Global("Weapon","LOCALS",2)HasItem("SwordAuc",Myself)~ THEN REPLY ~�������� ���, ����� ������ � ��� ����.~ GOTO 10
  IF ~  Global("Weapon","LOCALS",2)HasItem("BlunAuc",Myself)~ THEN REPLY ~�������� ���, ����� ������ � ��� ����.~ GOTO 11
  IF ~  Global("Armor","LOCALS",0)~ THEN REPLY ~��������, ��� � ��� �� ����� ��������.~ GOTO 12
  IF ~  Global("Armor","LOCALS",1)!HasItem("PlatAuc",Myself)HasItem("ShldAuc",Myself)HasItem("LeatAuc",Myself)~ THEN REPLY ~��������, ��� � ��� �� ����� ��������.~ GOTO 13
  IF ~  Global("Armor","LOCALS",1)HasItem("PlatAuc",Myself)!HasItem("ShldAuc",Myself)HasItem("LeatAuc",Myself)~ THEN REPLY ~��������, ��� � ��� �� ����� ��������.~ GOTO 14
  IF ~  Global("Armor","LOCALS",1)HasItem("PlatAuc",Myself)HasItem("ShldAuc",Myself)!HasItem("LeatAuc",Myself)~ THEN REPLY ~��������, ��� � ��� �� ����� ��������.~ GOTO 15
  IF ~  Global("Armor","LOCALS",2)HasItem("PlatAuc",Myself)~ THEN REPLY ~��������, ��� � ��� �� ����� ��������.~ GOTO 16
  IF ~  Global("Armor","LOCALS",2)HasItem("ShldAuc",Myself)~ THEN REPLY ~��������, ��� � ��� �� ����� ��������.~ GOTO 17
  IF ~  Global("Armor","LOCALS",2)HasItem("LeatAuc",Myself)~ THEN REPLY ~��������, ��� � ��� �� ����� ��������.~ GOTO 18
  IF ~~ THEN REPLY ~� ���� ��������� �� ������� ������.~ DO ~StartStore("Auction",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY ~����� ���� � ������ ���.~ GOTO 4
END

IF ~~ THEN BEGIN 21 // from: 1.17
  SAY ~� ���� ���� ���������� ����, ��������, ��� �� �������. �������� ������ �� 6 ����������������� �����. ������ ��������?~
  IF ~  NumItemsPartyGT("Nwmisc29",5)~ THEN REPLY ~���������� ���������� ���� �� 6 �����.~ GOTO 29
  IF ~  Global("Weapon","LOCALS",0)~ THEN REPLY ~�������� ���, ����� ������ � ��� ����.~ GOTO 5
  IF ~  Global("Weapon","LOCALS",1)!HasItem("AxeAuc",Myself)HasItem("SwordAuc",Myself)HasItem("BlunAuc",Myself)~ THEN REPLY ~�������� ���, ����� ������ � ��� ����.~ GOTO 6
  IF ~  Global("Weapon","LOCALS",1)HasItem("AxeAuc",Myself)!HasItem("SwordAuc",Myself)HasItem("BlunAuc",Myself)~ THEN REPLY ~�������� ���, ����� ������ � ��� ����.~ GOTO 7
  IF ~  Global("Weapon","LOCALS",1)HasItem("AxeAuc",Myself)HasItem("SwordAuc",Myself)!HasItem("BlunAuc",Myself)~ THEN REPLY ~�������� ���, ����� ������ � ��� ����.~ GOTO 8
  IF ~  Global("Weapon","LOCALS",2)HasItem("AxeAuc",Myself)~ THEN REPLY ~�������� ���, ����� ������ � ��� ����.~ GOTO 9
  IF ~  Global("Weapon","LOCALS",2)HasItem("SwordAuc",Myself)~ THEN REPLY ~�������� ���, ����� ������ � ��� ����.~ GOTO 10
  IF ~  Global("Weapon","LOCALS",2)HasItem("BlunAuc",Myself)~ THEN REPLY ~�������� ���, ����� ������ � ��� ����.~ GOTO 11
  IF ~  Global("Armor","LOCALS",0)~ THEN REPLY ~��������, ��� � ��� �� ����� ��������.~ GOTO 12
  IF ~  Global("Armor","LOCALS",1)!HasItem("PlatAuc",Myself)HasItem("ShldAuc",Myself)HasItem("LeatAuc",Myself)~ THEN REPLY ~��������, ��� � ��� �� ����� ��������.~ GOTO 13
  IF ~  Global("Armor","LOCALS",1)HasItem("PlatAuc",Myself)!HasItem("ShldAuc",Myself)HasItem("LeatAuc",Myself)~ THEN REPLY ~��������, ��� � ��� �� ����� ��������.~ GOTO 14
  IF ~  Global("Armor","LOCALS",1)HasItem("PlatAuc",Myself)HasItem("ShldAuc",Myself)!HasItem("LeatAuc",Myself)~ THEN REPLY ~��������, ��� � ��� �� ����� ��������.~ GOTO 15
  IF ~  Global("Armor","LOCALS",2)HasItem("PlatAuc",Myself)~ THEN REPLY ~��������, ��� � ��� �� ����� ��������.~ GOTO 16
  IF ~  Global("Armor","LOCALS",2)HasItem("ShldAuc",Myself)~ THEN REPLY ~��������, ��� � ��� �� ����� ��������.~ GOTO 17
  IF ~  Global("Armor","LOCALS",2)HasItem("LeatAuc",Myself)~ THEN REPLY ~��������, ��� � ��� �� ����� ��������.~ GOTO 18
  IF ~~ THEN REPLY ~� ���� ��������� �� ������� ������.~ DO ~StartStore("Auction",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY ~����� ���� � ������ ���.~ GOTO 4
END

IF ~~ THEN BEGIN 22 // from: 5.1
  SAY ~�������� �����. �� �� ���������.~
  IF ~~ THEN DO ~IncrementGlobal("Assortment","LOCALS",1)IncrementGlobal("Weapon","LOCALS",1)TakePartyItemNum("Nwmisc29",15)DestroyItem("Nwmisc29")
GiveItem("AxeAuc",LastTalkedToBy)~ EXIT
END

IF ~~ THEN BEGIN 23 // from: 5.2
  SAY ~�������� �����. �� �� ���������.~
  IF ~~ THEN DO ~IncrementGlobal("Assortment","LOCALS",1)IncrementGlobal("Weapon","LOCALS",1)TakePartyItemNum("Nwmisc29",10)DestroyItem("Nwmisc29")
GiveItem("SwordAuc",LastTalkedToBy)~ EXIT
END

IF ~~ THEN BEGIN 24 // from: 5.3
  SAY ~�������� �����. �� �� ���������.~
  IF ~~ THEN DO ~IncrementGlobal("Assortment","LOCALS",1)IncrementGlobal("Weapon","LOCALS",1)TakePartyItemNum("Nwmisc29",5)DestroyItem("Nwmisc29")
GiveItem("BlunAuc",LastTalkedToBy)~ EXIT
END

IF ~~ THEN BEGIN 25 // from: 12.1
  SAY ~�������� �����. �� �� ���������.~
  IF ~~ THEN DO ~IncrementGlobal("Assortment","LOCALS",1)IncrementGlobal("Armor","LOCALS",1)TakePartyItemNum("Nwmisc29",15)DestroyItem("Nwmisc29")
GiveItem("PlatAuc",LastTalkedToBy)~ EXIT
END

IF ~~ THEN BEGIN 26 // from: 12.2
  SAY ~�������� �����. �� �� ���������.~
  IF ~~ THEN DO ~IncrementGlobal("Assortment","LOCALS",1)IncrementGlobal("Armor","LOCALS",1)TakePartyItemNum("Nwmisc29",9)DestroyItem("Nwmisc29")
GiveItem("ShldAuc",LastTalkedToBy)~ EXIT
END

IF ~~ THEN BEGIN 27 // from: 12.3
  SAY ~�������� �����. �� �� ���������.~
  IF ~~ THEN DO ~IncrementGlobal("Assortment","LOCALS",1)IncrementGlobal("Armor","LOCALS",1)TakePartyItemNum("Nwmisc29",5)DestroyItem("Nwmisc29")
GiveItem("LeatAuc",LastTalkedToBy)~ EXIT
END

IF ~~ THEN BEGIN 28 // from: 19.1
  SAY ~�������� �����. �� �� ���������.~
  IF ~~ THEN DO ~IncrementGlobal("Assortment","LOCALS",1)TakePartyItemNum("Nwmisc29",14)DestroyItem("Nwmisc29")GiveItem("ClckAuc",LastTalkedToBy)~ EXIT
END

IF ~~ THEN BEGIN 29 // from: 19.2
  SAY ~�������� �����. �� �� ���������.~
  IF ~~ THEN DO ~IncrementGlobal("Assortment","LOCALS",1)TakePartyItemNum("Nwmisc29",6)DestroyItem("Nwmisc29")GiveItem("BeltAuc",LastTalkedToBy)~ EXIT
END

// ----------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  GlobalGT("NWNDocksDone","GLOBAL",0)~ THEN BEGIN 30 // from:
  SAY ~�������, �����! � ���� ����, ��� �������! �� ����������� ���� ������ ��� ��� �����! �� ����� �������� ��������.~
  IF ~~ THEN REPLY ~� ���� ��������� �� ������� ������.~ DO ~StartStore("Auction",LastTalkedToBy)~ EXIT
  IF ~  GlobalLT("Assortment","LOCALS",8)~ THEN REPLY ~������� ��������� �� ���� ����������� �����������.~ GOTO 1
  IF ~  GlobalGT("Assortment","LOCALS",7)~ THEN REPLY ~������� ��������� �� ���� ����������� �����������.~ GOTO 2
  IF ~~ THEN REPLY ~����� ���� � ������ ���.~ GOTO 4
END

