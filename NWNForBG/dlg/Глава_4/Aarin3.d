// �����������   ����� �����       ����� ����

BEGIN ~AARIN3~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  !IsGabber(Player1)~ THEN BEGIN 0 // from:
  SAY ~����� ���� ��������, �� ��� �� <CHARNAME>? � ���� ������������� ������ � ���.~ ~����� ���� ��������, �� ��� �� <CHARNAME>? � ���� ������������� ������ � ���.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 1 // from: NASHER2.2
  SAY ~�� ����� ������ �������, ������. � ����� ������, � ��� ��� ��� ���� ����� ������.~ [AARIN471]
  IF ~~ THEN EXTERN ~NASCHER2~ 3
END

IF ~~ THEN BEGIN 2 // from: NASHER2.3
  SAY ~��������, �������� ������� ��� �� �����, ���� �� ��������� �� �� ����������.~ [AARIN472]
  IF ~~ THEN EXTERN ~NASCHER2~ 4
END

IF ~~ THEN BEGIN 3 // from: NASHER2.4
  SAY ~�������� ���������� ��� � ������ ����� � ���������� ����� �����. ���� �� �� ���, ��� �� �� ��� �� �� �������� ������-��������.~ [AARIN473]
  IF ~~ THEN EXTERN ~NASCHER2~ 5
END

IF ~~ THEN BEGIN 4 // from: NASHER2.5
  SAY ~��������, <CHARNAME> ������ ����������� ��������.��� ������ ��� ��������.~ [AARIN474]
  IF ~~ THEN EXTERN ~NASCHER2~ 6
END

IF ~~ THEN BEGIN 5 // from: NASHER2.24
  SAY ~�� �������� �����������������, ���� �����. ����������� ���������� �� ���, ����� ������� �� ������������� �������.~ [AARIN475]
  IF ~~ THEN EXTERN ~NASCHER2~ 34
END

IF ~~ THEN BEGIN 6 // from: NASHER2.34
  SAY ~����� � �������� � ��� �� ������, ���� �����, �� �������� ����, ���� �� � ����� ������� ���. �� �������, ��� � ��� �������?~ [AARIN476]
  IF ~~ THEN EXTERN ~NASCHER2~ 42
END

IF ~~ THEN BEGIN 7 // from: NASHER2.42
  SAY ~� ��� ��� �� ����� �������, ���� �����. �� ������ � ������ ������ ���� �����. � �� ������ �� ������ ������� � ������ ��������������� �����.~ [AARIN477]
  IF ~~ THEN EXTERN ~NASCHER2~ 48
END

// ------------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  IsGabber(Player1)Global("Nascher2Talk","MYAREA",0)Global("Aarin3Talk","MYAREA",0)~ THEN BEGIN 8 // from:
  SAY ~������� ��� �������� ���������� � ������ �������, <CHARNAME>.~ [AARIN570]
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 0.1
  SAY ~����� ���������� � ���, ������������� � ���������� �� ����.~ [AARIN571]
  IF ~~ THEN EXIT
END

// ------------------------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  IsGabber(Player1)Global("Nascher2Talk","MYAREA",1)Global("Aarin3Talk","MYAREA",0)!Dead("Morag")~ THEN BEGIN 10 // from:
  SAY ~������� ������ �������, <CHARNAME> - ����, ����� ����, � �� ����� ������, ��� ������� ����� ������. ������ ������������ ������� �� ����� �������� ���������, ��� ���-���� �� ��� ����� ����������.~ [AARIN516]
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.1
  SAY ~�� ���� ����������� ��� �������� ������, �� ��� ������ ������� � ���� ���� ����. ��� ����� �����, ����� � ������ �������. � ������� �������� ��� ������� ������� ������.~ [AARIN517]
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.1
  SAY ~� ���� ���� �� ��������� ������. ��� ���������� ��� ��� ������ �����������. ���� � ���� �� ����������, ��� ��� ����� �������. ��������, ����� ��������, ��������,  ���-������ ��������.~ [AARIN518]
  IF ~  PartyHasItem("NWWord4")~ THEN REPLY ~� ���� ���� ��������� ����� ������.~ GOTO 13
  IF ~  Dead("Maugrim")~ THEN REPLY ~������� �����.~ GOTO 17
  IF ~  Global("HaedralinJob","GLOBAL",1)~ THEN REPLY ~�������� �������� ��� ����������, � �������, �����, ��� ����� ������.~ GOTO 18
  IF ~~ THEN REPLY ~��� �������� �� ������ ��������� ��������.~ GOTO 19
  IF ~  Global("AarinFriend","GLOBAL",5)~ THEN REPLY ~��� ����� ���� ������, ��� �� ���������, �����.~ GOTO 20
  IF ~  Global("HaedralinJob","GLOBAL",0)~ THEN REPLY ~��� ���� ����.~ GOTO 21
  IF ~  GlobalGT("HaedralinJob","GLOBAL",0)~ THEN REPLY ~��� ���� ����.~ GOTO 22
END

IF ~~ THEN BEGIN 13 // from: 12.1
  SAY ~��� ������ �������� ���, ��� ��� ������� ����� ��������� ����� ������, <CHARNAME>. ���� ��� �� ��������, �������� ��� ���� ���������� ����������.~ [AARIN490]
  IF ~~ THEN EXTERN ~NASCHER2~ 68
END

IF ~~ THEN BEGIN 14 // from: NASCHER2.68
  SAY ~������, ����� � ��� ���� ��� ������ �����, ��������, ��� ������� �������� �� ����, ���� �����.~ [AARIN491]
  IF ~~ THEN EXTERN ~NASCHER2~ 69
END

IF ~~ THEN BEGIN 15 // from: NASCHER2.69
  SAY ~���, �� ��� �������, �������� �������� �� �����. ��������, <CHARNAME> ������ ������� �� �������� �������.~ [AARIN492]
  IF ~~ THEN EXTERN ~NASCHER2~ 70
END

IF ~~ THEN BEGIN 16 // from: NASCHER2.70
  SAY ~�����, ���� ����� ����. ���� ����� ���������� �� ���� � ��������. ���-������ ���, <CHARNAME>?~ [AARIN493]
  IF ~  Dead("Maugrim")~ THEN REPLY ~������� �����.~ GOTO 17
  IF ~  Global("HaedralinJob","GLOBAL",1)~ THEN REPLY ~�������� �������� ��� ����������, � �������, �����, ��� ����� ������.~ GOTO 18
  IF ~~ THEN REPLY ~��� �������� �� ������ ��������� ��������.~ GOTO 19
  IF ~  Global("AarinFriend","GLOBAL",5)~ THEN REPLY ~��� ����� ���� ������, ��� �� ���������, �����.~ GOTO 20
  IF ~  Global("HaedralinJob","GLOBAL",0)~ THEN REPLY ~��� ���� ����.~ GOTO 21
  IF ~  GlobalGT("HaedralinJob","GLOBAL",0)~ THEN REPLY ~��� ���� ����.~ GOTO 22
END

IF ~~ THEN BEGIN 17 // from: 12.2
  SAY ~��, �������, �� ������� �� ��������, � ��� ������ ���� ������. �� ��� ���������� �� �������. ��������� � ������, ��� ������ ���������� ����� �������.~ [AARIN494]
  IF ~~ THEN GOTO 23
END

IF ~~ THEN BEGIN 18 // from: 12.3
  SAY ~�����, �������� �� �������� ���. ��� ������ �������, �������� �����, ������� ��� �������� �� �������� ����. ��� ������ ������������� ������ � ����.~ [AARIN518]
  IF ~~ THEN GOTO 24
END

IF ~~ THEN BEGIN 19 // from: 12.4
  SAY ~�����-�� � ���� ��� ����� ����� ������, �� ������ ������� �������, � ���� � ������� � ��������. ��� �� �����, � �������� ��� ���, ��� �����.~ [AARIN519]
  IF ~~ THEN REPLY ~��� �� ������ ������� ��� � ��������?~ GOTO 25
  IF ~~ THEN REPLY ~��� �� ������ ������� ��� � ������ ������?~ GOTO 26
  IF ~~ THEN REPLY ~��� �� ������ ������� ��� � �����-���������?~ GOTO 27
  IF ~~ THEN REPLY ~������ ��������� ������� � ������?~ GOTO 28
  IF ~  GlobalGT("AribetSurrendered","GLOBAL",0)!Dead("Aribeth")~ THEN REPLY ~� ���� �������� ��� �� ������.~ GOTO 29
  IF ~  Global("AribetSurrendered","GLOBAL",0)!Dead("Aribeth")~ THEN REPLY ~� ���� �������� ��� �� ������.~ GOTO 30
  IF ~~ THEN REPLY ~� ���� �������� ������ � ����� ������.~ GOTO 31
  IF ~  Global("HaedralinJob","GLOBAL",0)~ THEN REPLY ~��� ���� ����.~ GOTO 21
  IF ~  GlobalGT("HaedralinJob","GLOBAL",0)~ THEN REPLY ~��� ���� ����.~ GOTO 22
END

IF ~~ THEN BEGIN 20 // from: 12.5
  SAY ~��������� ����� ����� �������, ������ ���. ������ ������� ������� ��� ���� ���.~ [AARIN512]
  IF ~~ THEN GOTO 32
END

IF ~~ THEN BEGIN 21 // from: 12.6
  SAY ~�� ������ ���������� � �������� ������ ��� ������. ����� ���� ��� ��������� ��� ���-������ � �����-��������� ��� � ������ ������.~ [AARIN567]
  IF ~~ THEN GOTO 33
END

IF ~~ THEN BEGIN 22 // from: 12.7
  SAY ~��, <CHARNAME> - ��� ��� ����� ������ ����� �������, ����� ������ �����������.~ [AARIN569]
  IF ~~ THEN DO ~SetGlobal("Aarin3Talk","MYAREA",1)~ EXIT
END

IF ~~ THEN BEGIN 23 // from: 17.1
  SAY ~��� �� � ���������, �� ������, ��������� �� ���, ����� ��� ����� ������ ����, ��� ��� �������. ������������, ��� ��� �������� - ����������� ������������ ��� ����� ������ � ��������, ����� ������ ��������� �������.~ [AARIN495]
  IF ~~ THEN GOTO 34
END

IF ~~ THEN BEGIN 24 // from: 18.1
  SAY ~��������, ��� �� ����� ���������� �� �����. ���� ��� ������� ���������� ��� � ����, �� ������ �� ������ ������� ��� �� ����.~ [AARIN498]
  IF ~~ THEN REPLY ~�������� ����� ��� �������� ������.~ GOTO 35
  IF ~~ THEN REPLY ~�� �����, �����. ��� ����� �� ����� �� ������ ������ ��� � ����.~ GOTO 36
END

IF ~~ THEN BEGIN 25 // from: 19.1
  SAY ~��� ������� ���� ������ ����� ����, ��� ������ ����� ������ ���� ���������� � ����� �����. ���� ����� ����������, ��� ��� �������, � ������� �� � ������.~ [AARIN520]
  IF ~~ THEN GOTO 37
END

IF ~~ THEN BEGIN 26 // from: 19.2
  SAY ~���� ����� ����� �� ������� �����, �������� ��������� ������������. �� �������, ��� ���� �����-�� ����� ����� ������� � ������-����������.~ [AARIN519]
  IF ~~ THEN GOTO 38
END

IF ~~ THEN BEGIN 27 // from: 19.3
  SAY ~�������� ���������� ��� � �����-��������� � � �������� ����� ��� ������ �����. ��� ������� ����� � �������� � �������� ��������, ��� ������� ������ �� ���������� � ������������� �������� ������ ��� ������ ������������.~ [AARIN531]
  IF ~~ THEN GOTO 39
END

IF ~~ THEN BEGIN 28 // from: 19.4
  SAY ~����� ������ �������� ����� ��� ������� �����������. ��������� ������ � ������ ������, �� � �� ����, ��� ����� ��� ������� ���������� ���.~ [AARIN534]
  IF ~  Dead("Maugrim")~ THEN GOTO 40
  IF ~  !Dead("Maugrim")~ THEN GOTO 41
END

IF ~~ THEN BEGIN 29 // from: 19.5
  SAY ~� ������� ���� ������������ � ���, <CHARNAME>, ��, ������ ������, �� ����, ��� ��� �������. �� ������ ��� �� ������.~ [AARIN555]
  IF ~~ THEN GOTO 42
END

IF ~~ THEN BEGIN 30 // from: 19.6
  SAY ~��� ������ �������� � ���. ���� �����, ����� ��� ��������, ��� ��� ����� ������������, � ���� �� ������....~ [AARIN558]
  IF ~~ THEN GOTO 43
END

IF ~~ THEN BEGIN 31 // from: 19.7
  SAY ~������, �����-�� �� ��� ������� ��������� �����������. ����� �� �, ����� �� ������������� � ��� ����� - �������� ����� � ������ ����� �����.~ [AARIN563]
  IF ~~ THEN GOTO 44
END

IF ~~ THEN BEGIN 32 // from: 20.1
  SAY ~��� ������, ��� �� ���������� ��� ������, <CHARNAME>. �� ���� �� ����� ������ �����������, ������ ��������� ����� �������� ��������� ��� �� ����� ����. �� ������ ������������������ �� �������������� �������.~ [AARIN509]
  IF ~  PartyHasItem("NWWord4")~ THEN REPLY ~� ���� ���� ��������� ����� ������.~ GOTO 13
  IF ~~ THEN REPLY ~��� �������� �� ������ ��������� ��������.~ GOTO 19
  IF ~  Global("HaedralinJob","GLOBAL",0)~ THEN REPLY ~��� ���� ����.~ GOTO 21
  IF ~  GlobalGT("HaedralinJob","GLOBAL",0)~ THEN REPLY ~��� ���� ����.~ GOTO 22
END

IF ~~ THEN BEGIN 33 // from: 21.1
  SAY ~��� ��������� ������� ���, ��� ��� - ���� � �������� ������������, � � ������ �������� ����� ����������.~ [AARIN568]
  IF ~~ THEN DO ~SetGlobal("Aarin3Talk","MYAREA",1)~ UNSOLVED_JOURNAL ~��������� �����

����� ������� ��� ����������������� ������ � �������� ����� ������� ��������� �����������. � ��������� ������ ���� �������� ������� �� ����� �������� ������ ���� �����. ����� ���� ������, ��� ��������, ������������ ������������� ��������, ������� ������ ������� � ���������� ����� �����, ����� �����, ��� ������ �����. ������ ��� ����� �������� ������� ���� ������, � ������� ��� ����� ������-��������. � ���� �� ���� �������, ��� ������ ����, ������� ������ ������� ������-�������� � ������� ��� ����������� ����� �����, ����� ���������� ���-����� �����������.~ EXIT
END

IF ~~ THEN BEGIN 34 // from: 23.1
  SAY ~���� ����� ��� ���-������, <CHARNAME>? ���� ���, � ������� ������ ������ ��������.~ [AARIN496]
  IF ~  PartyHasItem("NWWord4")~ THEN REPLY ~� ���� ���� ��������� ����� ������.~ GOTO 13
  IF ~  Global("HaedralinJob","GLOBAL",1)~ THEN REPLY ~�������� �������� ��� ����������, � �������, �����, ��� ����� ������.~ GOTO 18
  IF ~~ THEN REPLY ~��� �������� �� ������ ��������� ��������.~ GOTO 19
  IF ~  Global("AarinFriend","GLOBAL",5)~ THEN REPLY ~��� ����� ���� ������, ��� �� ���������, �����.~ GOTO 20
  IF ~  Global("HaedralinJob","GLOBAL",0)~ THEN REPLY ~��� ���� ����.~ GOTO 21
  IF ~  GlobalGT("HaedralinJob","GLOBAL",0)~ THEN REPLY ~��� ���� ����.~ GOTO 22
END

IF ~~ THEN BEGIN 35 // from: 24.1
  SAY ~������ � ������, ��� ������ ����� ��������, <CHARNAME>. � ������� �� ����������� ���� ������� ������� ������������. � �� ����� ��������� ����� ������ ������������� ���������, ��� ��������.~ [AARIN499]
  IF ~~ THEN GOTO 46
END

IF ~~ THEN BEGIN 36 // from: 24.2
  SAY ~���� �� �� ����������� ����������� ����������� �����, � ���� ��������� �� ����� �����. �� ��� ����������� ������ ������� ������ ������� �� ���� ���, ����� �������� ����� ������� ���������� � ������ ������.~ [AARIN501]
  IF ~~ THEN GOTO 47
END

IF ~~ THEN BEGIN 37 // from: 25.1
  SAY ~����� ������������� ������ �� ���� ��������� ���������, � � �����, ��� ������ �������� ������ �� �������� ���. ��� ���������� � �����-��������� ��� ������, �� ������ ������.~ [AARIN521]
  IF ~~ THEN GOTO 48
END

IF ~~ THEN BEGIN 38 // from: 26.1
  SAY ~��, � ���������, ������� ����� ������ ������ �� ������� ������ �� � ������ ������, �� � ����� ���������.~ [AARIN528]
  IF ~~ THEN REPLY ~��� � ���� ����� ������� �����?~ GOTO 49
  IF ~~ THEN REPLY ~��� �������� �� ������ ��������� ��������.~ GOTO 19
  IF ~  Global("HaedralinJob","GLOBAL",0)~ THEN REPLY ~��� ���� ����.~ GOTO 21
  IF ~  GlobalGT("HaedralinJob","GLOBAL",0)~ THEN REPLY ~��� ���� ����.~ GOTO 22
END

IF ~~ THEN BEGIN 39 // from: 27.3
  SAY ~����� �� ����� ������, ���� ����� �������� ������� �����, �������� ��������� ������������, ��������� ������� ���.~ [AARIN532]
  IF ~~ THEN GOTO 50
END

IF ~~ THEN BEGIN 40 // from: 28.1
  SAY ~����� ����������� ��� ������, � ������ ����� �������� ������ ���� ����� � ���� ������. � ������ ��� �� ������ ������������ ������ ���.~ [AARIN535]
  IF ~   !Dead("Maugrim")Global("AribetSurrendered","GLOBAL",0)!Dead("Aribeth")~ THEN REPLY ~� ��� ���� � ����� ����� ������ � ��������?~ GOTO 51
  IF ~~ THEN REPLY ~��� �������� �� ������ ��������� ��������.~ GOTO 19
  IF ~  Global("HaedralinJob","GLOBAL",0)~ THEN REPLY ~��� ���� ����.~ GOTO 21
  IF ~  GlobalGT("HaedralinJob","GLOBAL",0)~ THEN REPLY ~��� ���� ����.~ GOTO 22
END

IF ~~ THEN BEGIN 41 // from: 28.2
  SAY ~������ �������� ����� ����� �� �������� �� �������������� ����� ������. ������, ����� �� �� ��� �������� �� �������������.~ [AARIN541]
  IF ~~ THEN REPLY ~��� �� ������ � ����?~ GOTO 52
  IF ~~ THEN REPLY ~��� �������� �� ������ ��������� ��������.~ GOTO 19
  IF ~  Global("HaedralinJob","GLOBAL",0)~ THEN REPLY ~��� ���� ����.~ GOTO 21
  IF ~  GlobalGT("HaedralinJob","GLOBAL",0)~ THEN REPLY ~��� ���� ����.~ GOTO 22
END

IF ~~ THEN BEGIN 42 // from: 29.1
  SAY ~���� ��� ����� ������������, ���� ����� ����������� � ���, ����� ��� ����, ����� ��� ����� � ������ �������� ��� ����������� � ����� �������.~ [AARIN556]
  IF ~~ THEN GOTO 53
END

IF ~~ THEN BEGIN 43 // from: 30.1
  SAY ~�� ������������� ��������� ��� ����, � �������� ����� ������. �� ������� � ���� �� ����������, �� ��� �������, ��� ���� ������������ ��� � ��� �������� ���� �� ����� �������.~ [AARIN559]
  IF ~  Global("AarinFriend","GLOBAL",5)~ THEN GOTO 54
  IF ~  !Global("AarinFriend","GLOBAL",5)~ THEN GOTO 55
END

IF ~~ THEN BEGIN 44 // from: 31.1
  SAY ~������ ��� ������ �������. ��� ��� ����� ������� �������, �� ���� ���������� ��������������� ����� ���. �� ���������� ��� ����� ������� � ���������.~ [AARIN564]
  IF ~~ THEN GOTO 56
END

IF ~~ THEN BEGIN 46 // from: 35.1
  SAY ~� ������� ���, <CHARNAME>, � ��� �������, ��� ����� �� ����������� �������� � ���� �� ����������, � ��� ����� ������ �� �����.~ [AARIN500]
  IF ~~ THEN GOTO 36
END

IF ~~ THEN BEGIN 47 // from: 36.1
  SAY ~�����, ��� �������� � �������� ��������� ���������� ��������. ���� �� � ���-������ ��� ������, <CHARNAME>?~ [AARIN502]
  IF ~  PartyHasItem("NWWord4")~ THEN REPLY ~� ���� ���� ��������� ����� ������.~ GOTO 13
  IF ~  Dead("Maugrim")~ THEN REPLY ~������� �����.~ GOTO 17
  IF ~~ THEN REPLY ~��� �������� �� ������ ��������� ��������.~ GOTO 19
  IF ~  Global("HaedralinJob","GLOBAL",0)~ THEN REPLY ~��� ���� ����.~ GOTO 21
  IF ~  GlobalGT("HaedralinJob","GLOBAL",0)~ THEN REPLY ~��� ���� ����.~ GOTO 22
END

IF ~~ THEN BEGIN 48 // from: 37.1
  SAY ~����� ���� �� ���������� ���������� � ���. ��� �������� ���. � � ��������, ��� ���� ���-�� ����� ������, ��� ��� �� ������� ��� � ������ ������ � �����-���������.~ [AARIN522]
  IF ~~ THEN REPLY ~��� � ���� ����� ��������?~ GOTO 57
  IF ~~ THEN REPLY ~�� ������ ��������� �������� �� ����������?~ GOTO 58
  IF ~~ THEN REPLY ~��� �������� �� ������ ��������� ��������.~ GOTO 19
  IF ~  Global("HaedralinJob","GLOBAL",0)~ THEN REPLY ~��� ���� ����.~ GOTO 21
  IF ~  GlobalGT("HaedralinJob","GLOBAL",0)~ THEN REPLY ~��� ���� ����.~ GOTO 22
END

IF ~~ THEN BEGIN 49 // from: 38.1
  SAY ~� ��� ���, ��� �� �������� ������ ��� ������, ������ ���� �������� ��� ���� �����, ������ ���.~ [AARIN529]
  IF ~~ THEN GOTO 58
END

IF ~~ THEN BEGIN 50 // from: 39.1
  SAY ~�� �� ��� ��� ������-�������� �� ������ �� ������ �� ����� ��������. ���� �� ������ ���-������ ��� ������ �� ����, ���������� � �������� ������.~ [AARIN533]
  IF ~~ THEN REPLY ~��� � ���� ����� ������� �����?~ GOTO 49
  IF ~~ THEN REPLY ~��� �������� �� ������ ��������� ��������.~ GOTO 19
  IF ~  Global("HaedralinJob","GLOBAL",0)~ THEN REPLY ~��� ���� ����.~ GOTO 21
  IF ~  GlobalGT("HaedralinJob","GLOBAL",0)~ THEN REPLY ~��� ���� ����.~ GOTO 22
END

IF ~~ THEN BEGIN 51 // from: 40.1
  SAY ~� ����������, ��� ��� ��� ���-�� �������. ������ ��� ��������� ���������� ����� �������� �� ������ ������������.~ [AARIN536]
  IF ~~ THEN GOTO 59
END

IF ~~ THEN BEGIN 52 // from: 41.1
  SAY ~�� ���� ��������� ��� ����������, <CHARNAME>. ��� ������������� ������� ����, ���������, ������� ������� ��� ������ ��� � ����������� ����� ������.~ [AARIN542]
  IF ~~ THEN GOTO 60
END

IF ~~ THEN BEGIN 53 // from: 42.1
  SAY ~� ����� �����... ��� �, � ������ ������� �������� �����. �� ����� �������� � ������ �������, � ��� ���������� � ����������, ���� ��� ����.~ [AARIN557]
  IF ~~ THEN REPLY ~����� ���� �����. ������ ����������� ������.~ GOTO 61
  IF ~~ THEN REPLY ~�� ������ ������ ��������� �������� ���� ������ � �������������.~ GOTO 62
  IF ~  Global("HaedralinJob","GLOBAL",0)~ THEN REPLY ~��� ���� ����.~ GOTO 21
  IF ~  GlobalGT("HaedralinJob","GLOBAL",0)~ THEN REPLY ~��� ���� ����.~ GOTO 22
END

IF ~~ THEN BEGIN 54 // from: 43.1
  SAY ~���-�� ������, ������ ���, � ���� �������, ������ ������ ��� ���������. ���� �� ���� �������� ������ �������, ��������, � ������ �� �� �� �����.~ [AARIN560]
  IF ~~ THEN GOTO 63
END

IF ~~ THEN BEGIN 55 // from: 43.2
  SAY ~� �� ���������� �������� ������, �� ������ ��������, ��� ��� ������ ����������� �� ������ ����� ����, ��� ������� �������� ����� �� ����� ������ �������������.~ [AARIN561]
  IF ~~ THEN GOTO 63
END

IF ~~ THEN BEGIN 56 // from: 44.1
  SAY ~� ������, � ������ ��� ������������ ���, �����, ��� �� ���������� ���� � ��������. ������������� ������, ������� ���� ��-�� ����� �������, ����� �����  ��� ������... ������ ���� ����� ������ ������� ������.~ [AARIN565]
  IF ~~ THEN GOTO 64
END

IF ~~ THEN BEGIN 57 // from: 48.1
  SAY ~��� ������� � ���������� �����. ������ ����� �� ���-����� � ���������� �� ��������.~ [AARIN523]
  IF ~~ THEN REPLY ~�� ������ ��������� �������� �� ����������?~ GOTO 58
  IF ~~ THEN REPLY ~��� �������� �� ������ ��������� ��������.~ GOTO 19
  IF ~  Global("HaedralinJob","GLOBAL",0)~ THEN REPLY ~��� ���� ����.~ GOTO 21
  IF ~  GlobalGT("HaedralinJob","GLOBAL",0)~ THEN REPLY ~��� ���� ����.~ GOTO 22
END

IF ~~ THEN BEGIN 58 // from: 48.2
  SAY ~�����, ���� ����� ������� �� ��� �� ����������. �� ������� ����, ���� ��� �������� ��������� �����.~ [AARIN524]
  IF ~~ THEN GOTO 65
END

IF ~~ THEN BEGIN 59 // from: 51.1
  SAY ~���� �������� �����, ��� ����� ������� ��� �����, ����, ������ ������, � �� ��� ��������.~ [AARIN537]
  IF ~~ THEN GOTO 66
END

IF ~~ THEN BEGIN 60 // from: 52.1
  SAY ~��������, ����� ������������ � �����-�� ������� ��������, ��� �� �������� ��� ���������. �� ������� ����, ���� ����� ����� ��������� ���� ����. �� ��, ��� ��������� � ��������.~ [AARIN543]
  IF ~~ THEN REPLY ~���� ����� �������� �� ������! � ���� �� ���� ������!~ GOTO 69
  IF ~~ THEN REPLY ~��������, �� ��� ����� ���-�� �������� ���� ����.~ GOTO 70
END

IF ~~ THEN BEGIN 61 // from: 53.1
  SAY ~������ ��������� ������� �������� ����, <CHARNAME>. ������ �������� ����������� � ����������, ������� ��� ������ ����������.~ [AARIN548]
  IF ~~ THEN GOTO 71
END

IF ~~ THEN BEGIN 62 // from: 53.2
  SAY ~� �� ���� �� ����������� � �����, <CHARNAME>... �� ��� �� ��� ������. �� ������������ ������ �� ��������� ������ ������� �����. ����� �����, ��� �� �� ������ ������ �� ������.~ [AARIN551]
  IF ~~ THEN GOTO 75
END

IF ~~ THEN BEGIN 63 // from: 55.1
  SAY ~�� ������ �� ����� ���������, ��������� ��������� ���� �������� ������. �� ������ ������������������ �� ���, ��� ��� ����� ������ ������ �����.~ [AARIN562]
  IF ~~ THEN REPLY ~��� �������� �� ������ ��������� ��������.~ GOTO 19
  IF ~  Global("HaedralinJob","GLOBAL",0)~ THEN REPLY ~��� ���� ����.~ GOTO 21
  IF ~  GlobalGT("HaedralinJob","GLOBAL",0)~ THEN REPLY ~��� ���� ����.~ GOTO 22
END

IF ~~ THEN BEGIN 64 // from: 56.1
  SAY ~��� ���������, ��� ������ ����� ������. �� ����� �� ����� ��� ������, ����� ��� ����������� ������ �����. ���-������ ���, <CHARNAME>?~ [AARIN566]
  IF ~~ THEN REPLY ~��� �������� �� ������ ��������� ��������.~ GOTO 19
  IF ~  Global("HaedralinJob","GLOBAL",0)~ THEN REPLY ~��� ���� ����.~ GOTO 21
  IF ~  GlobalGT("HaedralinJob","GLOBAL",0)~ THEN REPLY ~��� ���� ����.~ GOTO 22
END

IF ~~ THEN BEGIN 65 // from: 58.1
  SAY ~� ����� ������, � ����������, ��� ��� ������� ��. ��� �������� �� �������� ���. �������� ��-�� ����, ��� ��������� � ������, �������� �������, ��� ��� � ������������ ��������� �����.~ [AARIN525]
  IF ~~ THEN REPLY ~��� � ���� ����� ��������?~ GOTO 57
  IF ~~ THEN REPLY ~��� �������� �� ������ ��������� ��������.~ GOTO 19
  IF ~  Global("HaedralinJob","GLOBAL",0)~ THEN REPLY ~��� ���� ����.~ GOTO 21
  IF ~  GlobalGT("HaedralinJob","GLOBAL",0)~ THEN REPLY ~��� ���� ����.~ GOTO 22
END

IF ~~ THEN BEGIN 66 // from: 59.1
  SAY ~������ ����� ������� ���������� �� ������ � ����������. ��� ������� ���� � ���������� � �������. �� �� ���� ��� ��� ������ ��-�������. �����-�� ���������� ���� ����� ����� ������ ������.~ [AARIN538]
  IF ~~ THEN GOTO 67
END

IF ~~ THEN BEGIN 67 // from: 66.1
  SAY ~�, �������, �����-�� ������ ������� � �������, ������ ������ ������ ����� ��� �����������, ������ �� � ��������.~ [AARIN539]
  IF ~~ THEN REPLY ~��� �� ������ � ����?~ GOTO 52
  IF ~~ THEN REPLY ~������� ����� �� ����� ������ ��� �� ������?~ GOTO 68
  IF ~~ THEN REPLY ~��� �������� �� ������ ��������� ��������.~ GOTO 19
  IF ~  Global("HaedralinJob","GLOBAL",0)~ THEN REPLY ~��� ���� ����.~ GOTO 21
  IF ~  GlobalGT("HaedralinJob","GLOBAL",0)~ THEN REPLY ~��� ���� ����.~ GOTO 22
END

IF ~~ THEN BEGIN 68 // from: 67.2
  SAY ~������������ �� ����� ������ ��� �������� � ���, �� � �� ������, ��� �� ������ ������������ �� �� �������.~ [AARIN540]
  IF ~  !Dead("Maugrim")Global("AribetSurrendered","GLOBAL",0)!Dead("Aribeth")~ THEN REPLY ~� ��� ���� � ����� ����� ������ � ��������?~ GOTO 51
  IF ~~ THEN REPLY ~��� �������� �� ������ ��������� ��������.~ GOTO 19
  IF ~  Global("HaedralinJob","GLOBAL",0)~ THEN REPLY ~��� ���� ����.~ GOTO 21
  IF ~  GlobalGT("HaedralinJob","GLOBAL",0)~ THEN REPLY ~��� ���� ����.~ GOTO 22
END

IF ~~ THEN BEGIN 69 // from: 60.1
  SAY ~���� ���� - ��������, ��� ����� ������ ����, <CHARNAME>. �� ��� ������� ������� ���� ����������.~ [AARIN544]
  IF ~~ THEN GOTO 73
END

IF ~~ THEN BEGIN 70 // from: 60.2
  SAY ~����� ������� ����. ��� �������, ���� ����� ������ ��������, ������ ��� ������� ������� ������. ��������, �� ���� ������� �� � �����, ���� ������������ ������� �������� ��� ���������.~ [AARIN547]
  IF ~~ THEN REPLY ~��� ����������� ������ �� ��, ��� �������!~ GOTO 61
  IF ~~ THEN REPLY ~�� ������ ������ ��������� �������� ���� ������ � �������������.~ GOTO 62
END

IF ~~ THEN BEGIN 71 // from: 61.1
  SAY ~����� ������ �� ��� ��� ������� ����� �������. �����, ��� � ������. ��������, ������ �� ������ ����, �� �������� �� ��-�������.~ [AARIN552]
  IF ~~ THEN GOTO 76
END

IF ~~ THEN BEGIN 72 // from: 62.1
  SAY ~� �� ���� �� ����������� � �����, <CHARNAME>... �� ��� �� ��� ������. �� ������������ ������ �� ��������� ������ ������� �����. ����� �����, ��� �� �� ������ ������ �� ������.~ [AARIN551]
  IF ~~ THEN GOTO 75
END

IF ~~ THEN BEGIN 73 // from: 69.1
  SAY ~����� ������� ���� ��������� �������, �� ���� ����� ���� ����� ����� ��������, �� �������, ��� � ���� ������ �������������� �� ������� ����������������.~ [AARIN545]
  IF ~~ THEN GOTO 74
END

IF ~~ THEN BEGIN 74 // from: 73.1
  SAY ~����� ������� �������� ����� � ������� ������. ��� ����� ������, �� ���� �� �������� � ������ ������� ���. ���� ����� ��������� ��������, ��� �� �������� ����� ����� �� ������.~ [AARIN546]
  IF ~~ THEN REPLY ~��������, �� ��� ����� ���-�� �������� ���� ����.~ GOTO 70
  IF ~~ THEN REPLY ~��� �������� �� ������ ��������� ��������.~ GOTO 19
  IF ~  Global("HaedralinJob","GLOBAL",0)~ THEN REPLY ~��� ���� ����.~ GOTO 21
  IF ~  GlobalGT("HaedralinJob","GLOBAL",0)~ THEN REPLY ~��� ���� ����.~ GOTO 22
END

IF ~~ THEN BEGIN 75 // from: 72.1
  SAY ~����� ������ �� ��� ��� ������� ����� �������. �����, ��� � ������. ��������, ������ �� ������ ����, �� �������� �� ��-�������.~ [AARIN552]
  IF ~~ THEN GOTO 76
END

IF ~~ THEN BEGIN 76 // from: 75.1
  SAY ~� ������, ����� ������������� ������, ��� �������� �� ������ �������� �� ������������, �� � ����� � ���� ����������� � �������� ����� �� ������. �� �� ������� �������, � � ����, ��� ��, � ����� ������, ������ ������ � ������ �������.~ [AARIN553]
  IF ~~ THEN REPLY ~��� �������� �� ������ ��������� ��������.~ GOTO 19
  IF ~  Global("HaedralinJob","GLOBAL",0)~ THEN REPLY ~��� ���� ����.~ GOTO 21
  IF ~  GlobalGT("HaedralinJob","GLOBAL",0)~ THEN REPLY ~��� ���� ����.~ GOTO 22
END

// ------------------------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  IsGabber(Player1)Global("Nascher2Talk","MYAREA",1)GlobalGT("Aarin3Talk","MYAREA",0)GlobalLT("AarinFriend","GLOBAL",5)!Dead("Morag")~ THEN BEGIN 77 // from:
  SAY ~��� ���������� ��������� ������������������ �� ����������� ����� �����, ����� �� ����� �������� ��������� ����� �� ������� �������, <CHARNAME>. ���� ���� ������ ���������� � ������ ������, ��� ��������.~ [AARIN488]
  IF ~~ THEN GOTO 78
END

IF ~~ THEN BEGIN 78 // from: 77.1
  SAY ~�����, � ����� ������� ��� ����� ���� �����, ���� ���������� ������, ��� ������ �����.~ [AARIN489]
  IF ~  PartyHasItem("NWWord4")~ THEN REPLY ~� ���� ���� ��������� ����� ������.~ GOTO 13
  IF ~  Dead("Maugrim")~ THEN REPLY ~������� �����.~ GOTO 17
  IF ~  Global("HaedralinJob","GLOBAL",1)~ THEN REPLY ~�������� �������� ��� ����������, � �������, �����, ��� ����� ������.~ GOTO 18
  IF ~~ THEN REPLY ~��� �������� �� ������ ��������� ��������.~ GOTO 19
  IF ~  Global("AarinFriend","GLOBAL",5)~ THEN REPLY ~��� ����� ���� ������, ��� �� ���������, �����.~ GOTO 20
  IF ~  Global("HaedralinJob","GLOBAL",0)~ THEN REPLY ~��� ���� ����.~ GOTO 21
  IF ~  GlobalGT("HaedralinJob","GLOBAL",0)~ THEN REPLY ~��� ���� ����.~ GOTO 22
END

// ------------------------------------------------

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  IsGabber(Player1)Global("Nascher2Talk","MYAREA",1)GlobalGT("Aarin3Talk","MYAREA",0)Global("AarinFriend","GLOBAL",5)!Dead("Morag")~ THEN BEGIN 79 // from:
  SAY ~��, ������ ���. ������� ����� ������ ����. ���� ������, ��� ����������� ���������� ��� ����� ���������������.~ [AARIN487]
  IF ~~ THEN GOTO 80
END

IF ~~ THEN BEGIN 80 // from: 77.1
  SAY ~��� ���������� ��������� ������������������ �� ����������� ����� �����, ����� �� ����� �������� ��������� ����� �� ������� �������, <CHARNAME>. ���� ���� ������ ���������� � ������ ������, ��� ��������.~ [AARIN488]
  IF ~~ THEN GOTO 78
END

// ------------------------------------------------------------

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~ Dead("Morag")~ THEN BEGIN 81 // from:
  SAY ~��� �������� �����,������������� � ����. ������ �� ����� ������������, ���� ��� �������� ����� �������� � ������� ������!~
  IF ~~ THEN EXIT
END

