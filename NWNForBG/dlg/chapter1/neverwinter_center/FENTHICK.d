// ����� ������������  ��� ��������������   ������ ����   ������ ����� �������� ������� �������, �� ����� �� ���, ���� �� ��������� �� ���������. �� �������� ��������, �� ������ �������. + DESTHER

BEGIN ~FENTHICK~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  NumTimesTalkedTo(0)Global("NWNChapter","GLOBAL",0)IsGabber(Player1)~ THEN BEGIN 0 // from:
  SAY @0
  IF ~~ THEN EXTERN ~DESTHER~ 2 // ��� ������, ������. ���� <CLASS> ��� ��������! ��� �� ������ ��������� ����� ������ �������?
END

IF ~~ THEN BEGIN 1 // from: DESTHER 2
  SAY @1
  IF ~~ THEN REPLY @2 EXTERN ~DESTHER~ 3 // � � ������, ��� ����� ���������� ���� ���������, <GIRLBOY> ������ �� ������!
  IF ~~ THEN REPLY @3 EXTERN ~DESTHER~ 4 // ����� �������� ���������� � ���������� ������! � ����� �������� ������ �� ��� ��������, ������?
  IF ~~ THEN REPLY @4 EXTERN ~DESTHER~ 4 // ����� �������� ���������� � ���������� ������! � ����� �������� ������ �� ��� ��������, ������?
END

IF ~~ THEN BEGIN 2 // from: DESTHER 3
  SAY @5
  IF ~~ THEN REPLY @6 GOTO 4
  IF ~~ THEN REPLY @7 GOTO 5
  IF ~~ THEN REPLY @8 GOTO 5
END

IF ~~ THEN BEGIN 3 // from: DESTHER 4
  SAY @9
  IF ~~ THEN REPLY @6 GOTO 4
  IF ~~ THEN REPLY @7 GOTO 5
  IF ~~ THEN REPLY @8 GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY @10
  IF ~~ THEN REPLY @11 GOTO 6
END

IF ~~ THEN BEGIN 5 // from: 2.2
  SAY @12
  IF ~~ THEN REPLY @11 GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY @13
  IF ~~ THEN EXTERN ~DESTHER~ 5 // ��������� �� �������� ���� �������� ��������� ��� � ��������� ��������� ������, ������ - ����� ������ ����� ������, ��� ������ �������� ��������� ��-�� ���������� ����!
END

IF ~~ THEN BEGIN 7 // from: DESTHER 5
  SAY @14
  IF ~~ THEN REPLY @15 GOTO 8
  IF ~~ THEN REPLY @16 GOTO 9
END

IF ~~ THEN BEGIN 8 // from: 7.1
  SAY @17
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.2
  SAY @18
  IF ~~ THEN REPLY @19 GOTO 10
  IF ~~ THEN REPLY @20 GOTO 11
  IF ~~ THEN REPLY @21 GOTO 12
  IF ~~ THEN REPLY @22 GOTO 13
  IF ~~ THEN REPLY @23 GOTO 14
  IF ~~ THEN REPLY @24 EXTERN ~DESTHER~ 10 // <HESHE> ������� ���, ������ ���� ����� ���! �������, ��� ����� � ������� ����� - ��� ������� ������� � ����.
END

IF ~~ THEN BEGIN 10 // from: 9.1
  SAY @25
  IF ~~ THEN REPLY @20 GOTO 11
  IF ~~ THEN REPLY @21 GOTO 12
  IF ~~ THEN REPLY @22 GOTO 13
  IF ~~ THEN REPLY @23 GOTO 14
  IF ~~ THEN REPLY @24 EXTERN ~DESTHER~ 10 // <HESHE> ������� ���, ������ ���� ����� ���! �������, ��� ����� � ������� ����� - ��� ������� ������� � ����.
  IF ~~ THEN REPLY @26 GOTO 16
END

IF ~~ THEN BEGIN 11 // from: 9.2
  SAY @27
  IF ~~ THEN REPLY @28 EXTERN ~DESTHER~ 6 // ��� ������ ���� ����! ���� �������� ������ ������ ������, � � ��� �������� ��� ����� ��� �������.
  IF ~~ THEN REPLY @26 GOTO 16
END

IF ~~ THEN BEGIN 12 // from: 9.3
  SAY @29
  IF ~~ THEN EXTERN ~DESTHER~ 8 // ����� <CHARNAME> ������ ������, ������! � ������ ���� ���������, �� ��� �������� ���, ������ ��� ���������� ���� ��������, � �� ���� ���������-���������!
END

IF ~~ THEN BEGIN 13 // from: 9.4
  SAY @30
  IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 14 // from: 9.5
  SAY @31
  IF ~~ THEN EXTERN ~DESTHER~ 9 // �� ���������� ����� �������� ����� ��� ���� ����, ������. ���� ��������� ������ �� ����������.
END

IF ~~ THEN BEGIN 15 // from: DESTHER 10
  SAY @32
  IF ~~ THEN REPLY @19 GOTO 10
  IF ~~ THEN REPLY @20 GOTO 11
  IF ~~ THEN REPLY @21 GOTO 12
  IF ~~ THEN REPLY @22 GOTO 13
  IF ~~ THEN REPLY @23 GOTO 14
  IF ~~ THEN REPLY @26 GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 8.1
  SAY @33
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 17 // from: DESTHER 6
  SAY @34
  IF ~~ THEN EXTERN ~DESTHER~ 7 // ������ ��������, ����� ���� ������ � ��������� �� �������� � � ���, ��� ������ �������� ���������.
END

IF ~~ THEN BEGIN 18 // from: DESTHER 7
  SAY @35
  IF ~~ THEN REPLY @19 GOTO 10
  IF ~~ THEN REPLY @21 GOTO 12
  IF ~~ THEN REPLY @22 GOTO 13
  IF ~~ THEN REPLY @23 GOTO 14
  IF ~~ THEN REPLY @24 EXTERN ~DESTHER~ 10 // <HESHE> ������� ���, ������ ���� ����� ���! �������, ��� ����� � ������� ����� - ��� ������� ������� � ����.
  IF ~~ THEN REPLY @26 GOTO 16
END

IF ~~ THEN BEGIN 19 // from: DESTHER 8
  SAY @35
  IF ~~ THEN REPLY @19 GOTO 10
  IF ~~ THEN REPLY @20 GOTO 11
  IF ~~ THEN REPLY @22 GOTO 13
  IF ~~ THEN REPLY @23 GOTO 14
  IF ~~ THEN REPLY @24 EXTERN ~DESTHER~ 10 // <HESHE> ������� ���, ������ ���� ����� ���! �������, ��� ����� � ������� ����� - ��� ������� ������� � ����.
  IF ~~ THEN REPLY @26 GOTO 16
END

IF ~~ THEN BEGIN 20 // from: 13.4
  SAY @36
  IF ~~ THEN REPLY @19 GOTO 10
  IF ~~ THEN REPLY @20 GOTO 11
  IF ~~ THEN REPLY @21 GOTO 12
  IF ~~ THEN REPLY @23 GOTO 14
  IF ~~ THEN REPLY @24 EXTERN ~DESTHER~ 10 // <HESHE> ������� ���, ������ ���� ����� ���! �������, ��� ����� � ������� ����� - ��� ������� ������� � ����.
  IF ~~ THEN REPLY @26 GOTO 16
END

IF ~~ THEN BEGIN 21 // from: DESTHER 9
  SAY @37
  IF ~~ THEN REPLY @19 GOTO 10
  IF ~~ THEN REPLY @20 GOTO 11
  IF ~~ THEN REPLY @21 GOTO 12
  IF ~~ THEN REPLY @22 GOTO 13
  IF ~~ THEN REPLY @24 EXTERN ~DESTHER~ 10 // <HESHE> ������� ���, ������ ���� ����� ���! �������, ��� ����� � ������� ����� - ��� ������� ������� � ����.
  IF ~~ THEN REPLY @26 GOTO 16
END

// ------------------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  OR(2)Global("NWNChapter","GLOBAL",0)Global("WtDeepCreature","GLOBAL",0)IsGabber(Player1)~ THEN BEGIN 22 // from:
  SAY @38
  IF ~~ THEN REPLY @39 GOTO 23
  IF ~  PartyHasItem("AnonymL1")~ THEN REPLY @40 GOTO 24
  IF ~  PartyHasItem("AnonymL2")~ THEN REPLY @41 GOTO 31
  IF ~  PartyHasItem("AnonymL3")~ THEN REPLY @42 GOTO 37
  IF ~~ THEN REPLY @26 GOTO 16
END

IF ~~ THEN BEGIN 23 // from: 22.1
  SAY @43
  IF ~~ THEN REPLY @19 GOTO 10
  IF ~~ THEN REPLY @20 GOTO 11
  IF ~~ THEN REPLY @21 GOTO 12
  IF ~~ THEN REPLY @22 GOTO 13
  IF ~~ THEN REPLY @23 GOTO 14
  IF ~~ THEN REPLY @26 GOTO 16
END

IF ~~ THEN BEGIN 24 // from: 22.2
  SAY @44
  IF ~~ THEN EXTERN ~DESTHER~ 11 // ��� ����� ���� ���� ������ ������, ������? �����, <CHARNAME> ���������� ��� ���� '���������������' ������-�� �������� ��������!
END

IF ~~ THEN BEGIN 25 // from: ������ ������ ������ - �� �������
  SAY @32
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 26 // from: DESTHER 12 DESTHER 13
  SAY @45
  IF ~~ THEN EXTERN ~DESTHER~ 14 // ���� - ��� ���������, ������������ ������, ����� ��������� ���� ����, � �� ����� �������� ������ ������������. ��������� ��� ��� ������ �������� - ������ ����� �������!
END

IF ~~ THEN BEGIN 27 // from: DESTHER 14.1
  SAY @46
  IF ~~ THEN REPLY @47 GOTO 30
  IF ~~ THEN REPLY @48 GOTO 30
END

IF ~~ THEN BEGIN 28 // from: DESTHER 15
  SAY @49
  IF ~~ THEN GOTO 29
END

IF ~~ THEN BEGIN 29 // from: 28.1
  SAY @50
  IF ~~ THEN REPLY @47 GOTO 30
  IF ~~ THEN REPLY @48 GOTO 30
END

IF ~~ THEN BEGIN 30 // from: 29.1
  SAY @51
  IF ~~ THEN DO ~TakePartyItem("AnonymL1")DestroyItem("AnonymL1")GiveGoldForce(500)AddexperienceParty(50000)~ EXIT
END

IF ~~ THEN BEGIN 31 // from: 22.3
  SAY @52
  IF ~~ THEN EXTERN ~DESTHER~ 16 // ������ ��� ������ ������ ����� �� ������������� ������� ������������� ������, ������, ��� ����������� ������ �������������. ��� �� �����, ��� ��� ������� ����������.
END

IF ~~ THEN BEGIN 32 // from: DESTHER 17
  SAY @53
  IF ~~ THEN GOTO 35
END

IF ~~ THEN BEGIN 33 // from: DESTHER 16.2
  SAY @54
  IF ~~ THEN GOTO 35
END

IF ~~ THEN BEGIN 34 // from: DESTHER 18
  SAY @55
  IF ~~ THEN GOTO 35
END

IF ~~ THEN BEGIN 35 // from: 32.1
  SAY @50
  IF ~~ THEN REPLY @47 GOTO 36
  IF ~~ THEN REPLY @48 GOTO 36
END

IF ~~ THEN BEGIN 36 // from: 35.1
  SAY @56
  IF ~~ THEN DO ~TakePartyItem("AnonymL2")DestroyItem("AnonymL2")GiveGoldForce(500)AddexperienceParty(50000)~ EXIT
END

IF ~~ THEN BEGIN 37 // from: 22.4
  SAY @57
  IF ~~ THEN EXTERN ~DESTHER~ 19 // *���* �����, ��� � �������� ��������� ������������ ��������, ������ - �� ���� ���� �������� ������� ��� �������! ��������� ��������� ��-�� ������� ���, ���� ������ ���������� ������ ���� ������ ���������. ������ ����� ����������� ������ - ������ ��� ����� ������!
END

IF ~~ THEN BEGIN 38 // from: DESTHER 20
  SAY @58
  IF ~~ THEN GOTO 39
END

IF ~~ THEN BEGIN 39 // from: DESTHER 19.2
  SAY @59
  IF ~~ THEN GOTO 40
END

IF ~~ THEN BEGIN 40 // from: 38.1 39.1 DESTHER 19.3
  SAY @50
  IF ~~ THEN REPLY @47 GOTO 41
  IF ~~ THEN REPLY @48 GOTO 41
END

IF ~~ THEN BEGIN 41 // from: 40.1
  SAY @60
  IF ~~ THEN DO ~TakePartyItem("AnonymL3")DestroyItem("AnonymL3")GiveGoldForce(500)AddexperienceParty(50000)~ EXIT
END

// ------------------------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NWNChapter","GLOBAL",1)Global("WtDeepCreature","GLOBAL",1)IsGabber(Player1)~ THEN BEGIN 42 // from:
  SAY @61
  IF ~~ THEN EXTERN ~DESTHER~ 21 // �� ��� ��� ���� ��������, ������? ��� ��� ��� ��� ������. �� �� ����� � ���, ���� ���� ������� �� ����?
END

IF ~~ THEN BEGIN 43 // from: DESTHER 21
  SAY @62
  IF ~~ THEN EXTERN ~DESTHER~ 22 // ��������... �� � ����������� ������ ������ � ����� ���������, ���� <CLASS>, ���������� ������ �� ������� �������.
END

IF ~~ THEN BEGIN 44 // from: DESTHER 22
  SAY @63
  IF ~~ THEN REPLY @39 GOTO 23
  IF ~  PartyHasItem("AnonymL1")~ THEN REPLY @40 GOTO 24
  IF ~  PartyHasItem("AnonymL2")~ THEN REPLY @41 GOTO 31
  IF ~  PartyHasItem("AnonymL3")~ THEN REPLY @42 GOTO 37
  IF ~~ THEN REPLY @26 GOTO 16
END

// ------------------------------------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NWNChapter","GLOBAL",1)Global("WtDeepCreature","GLOBAL",2)IsGabber(Player1)~ THEN BEGIN 45 // from:
  SAY @64
  IF ~~ THEN EXTERN ~DESTHER~ 23 // ���� �� ������� �������, ������. �������� ��������� ��� �� ����������, ��� �������� ������!
END

IF ~~ THEN BEGIN 46 // from: DESTHER 23
  SAY @65
  IF ~~ THEN EXTERN ~DESTHER~ 24 // �������? ��� �������� �������������� ������� � �������������� �� ������, ������. �� ����� ���� ��������� �������. ���� ����� �� �� ����, ��� ��� ���� <CLASS>.
END

IF ~~ THEN BEGIN 47 // from: DESTHER 24
  SAY @63
  IF ~~ THEN REPLY @39 GOTO 23
  IF ~  PartyHasItem("AnonymL1")~ THEN REPLY @40 GOTO 24
  IF ~  PartyHasItem("AnonymL2")~ THEN REPLY @41 GOTO 31
  IF ~  PartyHasItem("AnonymL3")~ THEN REPLY @42 GOTO 37
  IF ~~ THEN REPLY @26 GOTO 16
END

// ------------------------------------------------------------

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NWNChapter","GLOBAL",1)Global("WtDeepCreature","GLOBAL",3)IsGabber(Player1)~ THEN BEGIN 48 // from:
  SAY @66
  IF ~~ THEN EXTERN ~DESTHER~ 25 // ������ �������� ��� � ���, ������. � ����� ������� ��� ����� ������ ���� ������. � ��� ���������� �������� �� ����� � ���������.
END

IF ~~ THEN BEGIN 49 // from: DESTHER 25
  SAY @67
  IF ~~ THEN EXTERN ~DESTHER~ 26 // � � ��� �������� ������������ ���������� ���������� ����� ����, ������ - �� ��, ��� ���������. �� ���� ������ � ������������� ������, � �� � ��������, ��� ���� <CLASS>.
END

IF ~~ THEN BEGIN 50 // from: DESTHER 26
  SAY @63
  IF ~~ THEN REPLY @39 GOTO 23
  IF ~  PartyHasItem("AnonymL1")~ THEN REPLY @40 GOTO 24
  IF ~  PartyHasItem("AnonymL2")~ THEN REPLY @41 GOTO 31
  IF ~  PartyHasItem("AnonymL3")~ THEN REPLY @42 GOTO 37
  IF ~~ THEN REPLY @26 GOTO 16
END

// ------------------------------------------------------------

IF WEIGHT #5 /* Triggers after states #: 9 even though they appear after this state */
~  Global("NWNChapter","GLOBAL",1)Global("WtDeepCreature","GLOBAL",4)Global("MakingMedicine","GLOBAL",0)IsGabber(Player1)~ THEN BEGIN 51 // from:
  SAY @68
  IF ~  PartyHasItem("AnonymL1")~ THEN REPLY @40 GOTO 24
  IF ~  PartyHasItem("AnonymL2")~ THEN REPLY @41 GOTO 31
  IF ~  PartyHasItem("AnonymL3")~ THEN REPLY @42 GOTO 37
  IF ~~ THEN REPLY @26 GOTO 16
END

// ------------------------------------------------------------

IF WEIGHT #6 /* Triggers after states #: 9 even though they appear after this state */
~  !IsGabber(Player1)~ THEN BEGIN 52 // from:
  SAY @69
  IF ~~ THEN EXIT
END

