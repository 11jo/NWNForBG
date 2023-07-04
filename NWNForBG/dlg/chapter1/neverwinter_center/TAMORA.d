// ����� ������� ����� 3 ���� ������ ����   ����������   ������ ������� �����  ��� ������� ��������� �� ��� �������. ��� ����������� ��� � ������ ������������ �����.

BEGIN ~TAMORA~

IF WEIGHT #0 /* Triggers after states #: 9 even though they appear after this state */
~  Gender(LastTalkedToBy(Myself),MALE)NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY ~����� ���������� � ����� ������� �����, ���������� ����������! � ������, � � ���� ����� ������ ���� ���� �����. � �� ������� ���� ������?~ [TAMORA53]
  IF ~~ THEN REPLY ~� ���� �������� � ����... � �� ������ ��������.~ GOTO 1
  IF ~  Global("TamoraQuest","GLOBAL",0)~ THEN REPLY ~���� ���� �������� ����������, �?~ GOTO 2
  IF ~~ THEN REPLY ~�������, �����. � �� ��� ���������� �����.~ GOTO 3
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 4
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY ~���, ����������. �� ��, ��� ���������. �����, ����������� �������, � � ����� ��� ���� �����. � ����� �������... ��� ����� �����.~
  IF ~  PartyHasItem("Oppermit")IsGabber(Player1)~ THEN REPLY ~��� �������. ���� ����� <CHARNAME>.~ GOTO 5
  IF ~  PartyHasItem("Oppermit")!IsGabber(Player1)~ THEN REPLY ~��� �������.~ GOTO 49
  IF ~~ THEN REPLY ~� ���� ��� ��������.~ GOTO 6
  IF ~  Global("TamoraQuest","GLOBAL",0)~ THEN REPLY ~��� ������ ��������� ��������?~ GOTO 18
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY ~����� ����, ���� �� �� ����� �� �������. ��� ������� ��������� ��... �����, �� ����� �� ����. ������� ��� �������, � �� ��������� ���������.~
  IF ~~ THEN REPLY ~��� ������ ��������� ��������? �� ���� ��� ���������?~ GOTO 18
  IF ~  PartyHasItem("Oppermit")IsGabber(Player1)~ THEN REPLY ~��� �������. ���� ����� <CHARNAME>.~ GOTO 5
  IF ~  PartyHasItem("Oppermit")!IsGabber(Player1)~ THEN REPLY ~��� �������.~ GOTO 49
  IF ~~ THEN REPLY ~� ���� ��� ��������.~ GOTO 6
  IF ~  Global("TamoraQuest","GLOBAL",0)~ THEN REPLY ~��� ������ ��������� ��������?~ GOTO 18
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY ~��, ����� ������! � ���� ����� ����� ��������, �� ��� �� ���� ����. ��� ����� ��� �����? �������� ������� � ������� ������������� ���������.~
  IF ~  PartyHasItem("Oppermit")IsGabber(Player1)~ THEN REPLY ~��� �������. ���� ����� <CHARNAME>.~ GOTO 5
  IF ~  PartyHasItem("Oppermit")!IsGabber(Player1)~ THEN REPLY ~��� �������.~ GOTO 49
  IF ~~ THEN REPLY ~� ���� ��� ��������.~ GOTO 6
  IF ~  Global("TamoraQuest","GLOBAL",0)~ THEN REPLY ~��� ������ ��������� ��������?~ GOTO 18
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY ~����� �� ��������. ��������� ��������� - �� �������� �������. ����� � ���� ��� ����� �������.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.1
  SAY ~������, <CHARNAME>. ���������� ��� � ����. � ��� �� �������? � ������ ���� �������, ���� ��� ����� ������ ���.~
  IF ~~ THEN REPLY ~�� ����������� ��������? ��������� �������� ����� "��������" �������������?~ GOTO 7
  IF ~~ THEN REPLY ~������� ��������� � ��� � � ���, ��� �� ������.~ GOTO 8
  IF ~~ THEN REPLY ~����� � ����� ��������� ������ ��������?~ GOTO 9
  IF ~  CheckStatGT(LastTalkedToBy(Myself),14,CHR)IsGabber(Player1)~ THEN REPLY ~�����, ��... ������ � ��� � �������, ��� ����?~ GOTO 10
  IF ~  CheckStatGT(LastTalkedToBy(Myself),14,CHR)!IsGabber(Player1)~ THEN REPLY ~�����, ��... ������ � ��� � �������, ��� ����?~ GOTO 50
  IF ~  CheckStatLT(LastTalkedToBy(Myself),15,CHR)~ THEN REPLY ~�����, ��... ������ � ��� � �������, ��� ����?~ GOTO 11
  IF ~~ THEN REPLY ~����� � �����, �������!~ GOTO 12
  IF ~~ THEN REPLY ~��� ���� ����.~ GOTO 13
END

IF ~~ THEN BEGIN 49 // from: 1.1
  SAY ~������, ���������� ��� � ����. � ��� �� �������? � ������ ���� �������, ���� ��� ����� ������ ���.~
  IF ~~ THEN REPLY ~�� ����������� ��������? ��������� �������� ����� "��������" �������������?~ GOTO 7
  IF ~~ THEN REPLY ~������� ��������� � ��� � � ���, ��� �� ������.~ GOTO 8
  IF ~~ THEN REPLY ~����� � ����� ��������� ������ ��������?~ GOTO 9
  IF ~  CheckStatGT(LastTalkedToBy(Myself),14,CHR)IsGabber(Player1)~ THEN REPLY ~�����, ��... ������ � ��� � �������, ��� ����?~ GOTO 10
  IF ~  CheckStatGT(LastTalkedToBy(Myself),14,CHR)!IsGabber(Player1)~ THEN REPLY ~�����, ��... ������ � ��� � �������, ��� ����?~ GOTO 50
  IF ~  CheckStatLT(LastTalkedToBy(Myself),15,CHR)~ THEN REPLY ~�����, ��... ������ � ��� � �������, ��� ����?~ GOTO 11
  IF ~~ THEN REPLY ~����� � �����, �������!~ GOTO 12
  IF ~~ THEN REPLY ~��� ���� ����.~ GOTO 13
END

IF ~~ THEN BEGIN 6 // from: 1.2
  SAY ~���, � ������ ������������� �������? �� �� ���. ������ � ������� �������. � ���� �� �����.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1
  SAY ~��������. ������� �� ����, �������� ��� ��� ��� ���. ��� ���������� ���, � � �� �������. �� ������ �� ����? ��� ��� ���������?~
  IF ~~ THEN REPLY ~������������, ��� ��� �������� ����������� ��� �������.~ GOTO 14
  IF ~~ THEN REPLY ~���������� � ���, ��� ������ ���� ����������� �����.~ GOTO 14
  IF ~~ THEN REPLY ~� �������. ������ ��� �� �������.~ GOTO 15
  IF ~~ THEN REPLY ~������� ������� ���-������ ���.~ GOTO 16
  IF ~~ THEN REPLY ~��� ���� ����.~ GOTO 13
END

IF ~~ THEN BEGIN 8 // from: 5.2
  SAY ~�? ���, ���� �� �� ���. � ���� ���, ��� �� ������� ���� ������. ����� ����, �������� �� �� ���� ������, ���� �� �� ��� �������?~
  IF ~~ THEN REPLY ~��-�����, ��� ����������� - ��� ��� ��������������� ����.~ GOTO 17
  IF ~~ THEN REPLY ~��� ����� �������������� - ��� ��� ������������ ����.~ GOTO 19
  IF ~~ THEN REPLY ~������ ��? �� ���������� �� � ����?~ GOTO 20
  IF ~~ THEN REPLY ~�����! ����� � ��� �� ������ ������?~ GOTO 21
  IF ~~ THEN REPLY ~������� ������� ���-������ ���.~ GOTO 16
  IF ~~ THEN REPLY ~��� ���� ����.~ GOTO 13
END

IF ~~ THEN BEGIN 9 // from: 5.3
  SAY ~� �� �������� ���� ������ � ������. ����� �����. ����� �����������, ����� � ���-�� ����������.~
  IF ~~ THEN REPLY ~��� �� ������ � ����?~ GOTO 23
  IF ~~ THEN REPLY ~��� �� ������ �������� �����?~ GOTO 24
  IF ~~ THEN REPLY ~������� ������� ���-������ ���.~ GOTO 16
  IF ~~ THEN REPLY ~��� ���� ����.~ GOTO 13
END

IF ~~ THEN BEGIN 10 // from: 5.4
  SAY ~��������� ����������. ������, <CHARNAME>, �� ��� ���������. �����, � ����� ���� �����������. �������� �� ����. �� ��������� ������� ����.~
  IF ~~ THEN DO ~TakePartyItem("Oppermit")DestroyItem("Oppermit")SetGlobal("TamoraTired","MYAREA",1)~ EXIT
END

IF ~~ THEN BEGIN 50 // from: 5.4
  SAY ~��������� ����������, �� ��� ���������. �����, � ����� ���� �����������. �������� �� ����. �� ��������� ������� ����.~
  IF ~~ THEN DO ~TakePartyItem("Oppermit")DestroyItem("Oppermit")SetGlobal("TamoraTired","MYAREA",1)~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 5.5
  SAY ~������� ��������� ���. �� ���� �� �� ���, ��� ����� ������? ���, �� ������ ������� ���������. ������� ��������� ���.~
  IF ~~ THEN REPLY ~�� ����������� ��������? ��������� �������� ����� "��������" �������������?~ GOTO 7
  IF ~~ THEN REPLY ~������� ��������� � ��� � � ���, ��� �� ������.~ GOTO 8
  IF ~~ THEN REPLY ~����� � ����� ��������� ������ ��������?~ GOTO 9
  IF ~~ THEN REPLY ~��� ���� ����.~ GOTO 13
END

IF ~~ THEN BEGIN 12 // from: 5.6
  SAY ~�������! �� �� ������ �������������! ������ ��� �������, �������� �� ���� ������� ��� ���. ��������, ��� ��� �� ����������.~
  IF ~~ THEN REPLY ~�� ����������� ��������? ��������� �������� ����� "��������" �������������?~ GOTO 7
  IF ~~ THEN REPLY ~������� ��������� � ��� � � ���, ��� �� ������.~ GOTO 8
  IF ~~ THEN REPLY ~����� � ����� ��������� ������ ��������?~ GOTO 9
  IF ~~ THEN REPLY ~��� ���� ����.~ GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 5.7
  SAY ~���� �� ����� ������... �� �� �� ������� ��������� ������ ���. ���� �� ���������, �������� ��������� ���. ��� ��� �� ������?~
  IF ~~ THEN REPLY ~� ������ ����� ���.~ GOTO 26
  IF ~~ THEN REPLY ~��� ����� ����. ��������~ GOTO 27
END

IF ~~ THEN BEGIN 14 // from: 7.1
  SAY ~��� �, �������������, ��� �� ���� ��� ����������. �����, �� ��� ���������. � �� ����. ������� �� ��������, ��� ���� ����� ������� ����� � ��� ���� ���� ������ �������. � �� ��������� ������ ��������. ���� ����� ����������, �������, ��������� ���������� � ��� �����.~
  IF ~~ THEN REPLY ~������ ���������. � ��� �������.~ GOTO 15
  IF ~~ THEN REPLY ~������� ������� ���-������ ���.~ GOTO 16
  IF ~~ THEN REPLY ~��� ���� ����.~ GOTO 13
END

IF ~~ THEN BEGIN 15 // from: 7.3
  SAY ~������ �����, �� � ���� ����� ������, ������� ������������� ��� ��, � �� ����� ���� ��� ����� ������. � ��� ������ ���? �����, �� ���������� ���� �������, ��� �� ��������� ����� ���, ��� ������ ��? �� ��������, ��� ��� �� ����� ��������. ����� �� �� ���� �� ������, �� ��� ��? �������, �� ����� ������ ���� ���� �����, ����� �� �������� � ���������� �����������. � ���� ��� ������ ����������.~
  IF ~~ THEN REPLY ~�����! ����� � ��� �� ������ ������?~ GOTO 21
  IF ~~ THEN REPLY ~������� ������� ���-������ ���.~ GOTO 16
  IF ~~ THEN REPLY ~��� ���� ����.~ GOTO 13
END

IF ~~ THEN BEGIN 16 // from: 7.4
  SAY ~�������. �� ����� ������ ���, ��� �� ��������. � �������� ���������, �������. ������� - ��� ����������.~
  IF ~~ THEN REPLY ~�� ����������� ��������? ��������� �������� ����� "��������" �������������?~ GOTO 7
  IF ~~ THEN REPLY ~������� ��������� � ��� � � ���, ��� �� ������.~ GOTO 8
  IF ~~ THEN REPLY ~����� � ����� ��������� ������ ��������?~ GOTO 9
  IF ~  RandomNum(2,1)IsGabber(Player1)~ THEN REPLY ~�����, ��... ������ � ��� � �������, ��� ����?~ GOTO 10
  IF ~  RandomNum(2,1)!IsGabber(Player1)~ THEN REPLY ~�����, ��... ������ � ��� � �������, ��� ����?~ GOTO 50
  IF ~  RandomNum(2,2)~ THEN REPLY ~�����, ��... ������ � ��� � �������, ��� ����?~ GOTO 11
  IF ~~ THEN REPLY ~����� � �����, �������!~ GOTO 12
  IF ~~ THEN REPLY ~��� ���� ����.~ GOTO 13
END

IF ~~ THEN BEGIN 17 // from: 8.1
  SAY ~�����, ��� �� �������. ���� ��������� �������� ���� �� �����. ����� � ��� ������� �����.~
  IF ~~ THEN REPLY ~������ ��? �� ���������� �� � ����?~ GOTO 20
  IF ~~ THEN REPLY ~������������, ��� ��� �������� ����������� ��� �������.~ GOTO 14
  IF ~~ THEN REPLY ~���������� � ���, ��� ������ ���� ����������� �����.~ GOTO 14
  IF ~~ THEN REPLY ~�����! ����� � ��� �� ������ ������?~ GOTO 21
  IF ~~ THEN REPLY ~������� ������� ���-������ ���.~ GOTO 16
  IF ~~ THEN REPLY ~��� ���� ����.~ GOTO 13
END

IF ~~ THEN BEGIN 18 // from: 8.2
  SAY ~��� �� ���� ����, ������ ��. ��� ���, �� ������ ������� �� �������� ���������, ��� ������ ������� ��� �����?~
  IF ~~ THEN REPLY ~� ��� ��������? �����, ��� ����� *��������* ���� �����?~ GOTO 22
  IF ~~ THEN REPLY ~�� ����������! ���������� ��� � ����� �������, ��� ���������!~ GOTO 25
  IF ~  PartyHasItem("Oppermit")IsGabber(Player1)~ THEN REPLY ~��� �������. ���� ����� <CHARNAME>.~ GOTO 5
  IF ~  PartyHasItem("Oppermit")!IsGabber(Player1)~ THEN REPLY ~��� �������.~ GOTO 49
  IF ~~ THEN REPLY ~� ���� ��� ��������.~ GOTO 6
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 4
END

IF ~~ THEN BEGIN 19 // from: 8.3
  SAY ~��������. � �� ���� �� �����. � ����� ���������� �� �������. �� � �� ��� ����� ������������ � ����� �����. � ��������� ������ ����� ��������, �� ��� �����, ������� ��, ��� ���.~
  IF ~~ THEN REPLY ~��-�����, ��� ����������� - ��� ��� ��������������� ����.~ GOTO 17
  IF ~~ THEN REPLY ~������ ��? �� ���������� �� � ����?~ GOTO 20
  IF ~~ THEN REPLY ~�����! ����� � ��� �� ������ ������?~ GOTO 21
  IF ~~ THEN REPLY ~������� ������� ���-������ ���.~ GOTO 16
  IF ~~ THEN REPLY ~��� ���� ����.~ GOTO 13
END

IF ~~ THEN BEGIN 20 // from: 8.4
  SAY ~��� ���� �������, ���? � ������. � ������� ����� ���������� �����, ����� �������� ��� ������������. ����� ���� ���� ��� ������ � ������. ���� �� ������.~
  IF ~~ THEN REPLY ~��-�����, ��� ����������� - ��� ��� ��������������� ����.~ GOTO 17
  IF ~~ THEN REPLY ~��� ����� �������������� - ��� ��� ������������ ����.~ GOTO 19
  IF ~~ THEN REPLY ~�����! ����� � ��� �� ������ ������?~ GOTO 21
  IF ~~ THEN REPLY ~������� ������� ���-������ ���.~ GOTO 16
  IF ~~ THEN REPLY ~��� ���� ����.~ GOTO 13
END

IF ~~ THEN BEGIN 21 // from: 8.5
  SAY ~��! �������. � �����, ������ ��� ��� ������ ������. ����� ������. � ���� �������... � ����������� �����. ���� � ��� ��������� ��������, �� � ���� �����������. � ������������ � ������, ��� �������������, � ����� �� ������ �������� �����-�� ����� � �������. ��� � �����, �� ��� ����������. ���� �����, ��� �������� �� �����.~
  IF ~~ THEN REPLY ~�� ����������� ��������? ��������� �������� ����� "��������" �������������?~ GOTO 7
  IF ~~ THEN REPLY ~������� ��������� � ��� � � ���, ��� �� ������.~ GOTO 8
  IF ~~ THEN REPLY ~����� � ����� ��������� ������ ��������?~ GOTO 9
  IF ~~ THEN REPLY ~��� ���� ����.~ GOTO 13
END

IF ~~ THEN BEGIN 22 // from: 15.6
  SAY ~�� �������� ���? ��! ������� � ��� ��� ��������, � ��� ���������, ������� �� �� ������. ���������, ���� ���� ������, �������� ������� �������� ���������� ���� ����. �� ������� ���������� ���� � ���������� ������� ��������... ����� ��� ����. ��� ����� ����. ����� ������ � �����. ������������ ���. �����, �� ���������� ��� ��������? ����� ����� � ���� ����� ��� ���.~
  IF ~  Dead("Hoff")~ THEN REPLY ~����? �������? �� ��� �����.~ GOTO 28
  IF ~~ THEN REPLY ~��� ��� � �����?~ GOTO 29
  IF ~~ THEN REPLY ~�����, ����� ����������, ��� ���. ������.~ GOTO 30
  IF ~~ THEN REPLY ~�����, � � �������. ��� ��� ������ ���������?~ GOTO 31
END

IF ~~ THEN BEGIN 23 // from: 9.1
  SAY ~ ���, ������ �� ���. ����� �� �����, ����� ����� ������� �� ����. �������, ��� ����� ��������� ����.~
  IF ~~ THEN REPLY ~�������, ��� �� �������� ������� ���� ������������ ���� � ��������  ����.~ GOTO 32
  IF ~~ THEN REPLY ~��� �� ������ �������� �����?~ GOTO 24
  IF ~~ THEN REPLY ~������� ������� ���-������ ���.~ GOTO 16
  IF ~~ THEN REPLY ~��� ���� ����.~ GOTO 13
END

IF ~~ THEN BEGIN 24 // from: 9.2
  SAY ~ ���� ��� ������ ���� ������, �� ��� �� �������� � ���? �� ���� ������������� ��� ���������. ��� ����� ���� �� ����������. �����, �� �������� � ����� �������� ������, ��� �� ������� ����?~
  IF ~~ THEN REPLY ~�����! ����� � ��� �� ������ ������?~ GOTO 21
  IF ~~ THEN REPLY ~��� �� ������ � ����?~ GOTO 23
  IF ~~ THEN REPLY ~������� ������� ���-������ ���.~ GOTO 16
  IF ~~ THEN REPLY ~��� ���� ����.~ GOTO 13
END

IF ~~ THEN BEGIN 25 // from: 18.2
  SAY ~�����, ������ ������ ���������� ��� ������... � ����, ����� ������� ������� ��� ����������� � ������ ��������. ���������, ���� ���� ������, �������� ������� �������� ���������� ���� ����. �� ������� ���������� ���� � ���������� ������� ��������... ����� ��� ����. ��� ����� ����. ����� ������ � �����. ������������ ���. �����, �� ���������� ��� ��������? ����� ����� � ���� ����� ��� ���.~
  IF ~  Dead("Hoff")~ THEN REPLY ~����? �������? �� ��� �����.~ GOTO 28
  IF ~~ THEN REPLY ~��� ��� � �����?~ GOTO 29
  IF ~~ THEN REPLY ~�����, ����� ����������, ��� ���. ������.~ GOTO 30
  IF ~~ THEN REPLY ~�����, � � �������. ��� ��� ������ ���������?~ GOTO 31
END

IF ~~ THEN BEGIN 26 // from: 13.1
  SAY ~������, ������� ��������� ���. � ��� ���� ����, ��� ����������. ������. � ��� ������, ��.~
  IF ~~ THEN REPLY ~�� ����������� ��������? ��������� �������� ����� "��������" �������������?~ GOTO 7
  IF ~~ THEN REPLY ~������� ��������� � ��� � � ���, ��� �� ������.~ GOTO 8
  IF ~~ THEN REPLY ~����� � ����� ��������� ������ ��������?~ GOTO 9
  IF ~  RandomNum(2,1)IsGabber(Player1)~ THEN REPLY ~�����, ��... ������ � ��� � �������, ��� ����?~ GOTO 10
  IF ~  RandomNum(2,1)!IsGabber(Player1)~ THEN REPLY ~�����, ��... ������ � ��� � �������, ��� ����?~ GOTO 50
  IF ~  RandomNum(2,2)~ THEN REPLY ~�����, ��... ������ � ��� � �������, ��� ����?~ GOTO 11
  IF ~~ THEN REPLY ~����� � �����, �������!~ GOTO 12
  IF ~~ THEN REPLY ~��� ���� ����.~ GOTO 13
END

IF ~~ THEN BEGIN 27 // from: 13.2
  SAY ~����� �� �������. �������� ��������� � �������.~
  IF ~~ THEN DO ~TakePartyItem("Oppermit")DestroyItem("Oppermit")~ EXIT
END

IF ~~ THEN BEGIN 28 // from: 22.1
  SAY ~��� ������, ��� � �������. �� � �� ���� � �������� �� ������. �� ��� ��������� ��������. �������. �� �������� �� ���� �����-�� ������� �������. � ���� ������ ���, ����� ������������� �� ������� �����.~
  IF ~~ THEN DO ~SetGlobal("TamoraQuest","GLOBAL",2)AddexperienceParty(40000)~ EXIT
END

IF ~~ THEN BEGIN 29 // from: 22.2
  SAY ~�� ����. ��������������? ����������, ��� �� �� ������ ������� ������ ����, ��� �� �������. � �� ���� ���� ��������� ��� ������ �������.~
  IF ~  Dead("Hoff")~ THEN REPLY ~����? �������? �� ��� �����.~ GOTO 28
  IF ~~ THEN REPLY ~�����, ����� ����������, ��� ���. ������.~ GOTO 30
  IF ~~ THEN REPLY ~�����, � � �������. ��� ��� ������ ���������?~ GOTO 31
END

IF ~~ THEN BEGIN 30 // from: 22.3
  SAY ~�, ������� ��� �� ������������ ��������. ���, �������� �����, ����� ���� ����, ��� ��� � ��� �������. �������� ��! �������, ����� ���������! � �� �� ������ ���, ���� �� ���� �� ���� ����� ������. ���� ����... � � ��� ����� ������ �� ����. �������, �� ���-�� � �����.~
  IF ~~ THEN DO ~SetGlobal("TamoraQuest","GLOBAL",1)GiveItem("Nwmisc19",LastTalkedToBy)~ EXIT
END

IF ~~ THEN BEGIN 31 // from: 15.4
  SAY ~�� ����������. ���, �������� �����, ����� ���� ����, ��� ��� � ��� �������. �������� ��! �������, ����� ���������! � �� �� ������ ���, ���� �� ���� �� ���� ����� ������. ���� ����... � � ��� ����� ������ �� ����. �������, �� ���-�� � �����.~
  IF ~~ THEN DO ~SetGlobal("TamoraQuest","GLOBAL",1)GiveItem("Nwmisc19",LastTalkedToBy)~ EXIT
END

IF ~~ THEN BEGIN 32 // from: 23.1
  SAY ~� ��� ����� �� ����� �������? ��. �, �������, �������, ��� ��� ����� ������� ������, �� ����� ����� ���� ����������? ~
  IF ~~ THEN REPLY ~��� �� ������ �������� �����?~ GOTO 24
  IF ~~ THEN REPLY ~������� ������� ���-������ ���.~ GOTO 16
  IF ~~ THEN REPLY ~��� ���� ����.~ GOTO 13
END

// -------------------------------------------

IF WEIGHT #1 /* Triggers after states #: 9 even though they appear after this state */
~  Gender(LastTalkedToBy(Myself),MALE)Global("HoffHasMisc19","GLOBAL",0)~ THEN BEGIN 33 // from:
  SAY ~������������. �� ������������, ��� �� ����? ������ �� �������� "���� ���� ��� �����������", ������ ��� � ���� ���������� ���, ���� ������ �����.~ [TAMORA52]
  IF ~  Global("TamoraTired","MYAREA",0)~ THEN REPLY ~� ����� � �������� ������� ����� ������� �����.~ GOTO 1
  IF ~  GlobalGT("TamoraTired","MYAREA",0)~ THEN REPLY ~� ����� � �������� ������� ����� ������� �����.~ GOTO 34
  IF ~  Global("TamoraQuest","GLOBAL",0)~ THEN REPLY ~� ��� ��������?~ GOTO 35
  IF ~  Global("TamoraQuest","GLOBAL",1)~ THEN REPLY ~� ����� �� ���� �����.~ GOTO 36
  IF ~~ THEN REPLY ~�� ��������.~ GOTO 4
END

IF ~~ THEN BEGIN 34 // from: 33.2
  SAY ~���� �� ������� ������������, �� � �������� �� �������. � ���� ��� ������� ������, ������.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 35 // from: 33.3
  SAY ~���������, ���� ���� ������, �������� ������� �������� ���������� ���� ����. �� ������� ���������� ���� � ���������� ������� ��������... ����� ��� ����. ��� ����� ����. ����� ������ � �����. ������������ ���. �����, �� ���������� ��� ��������? ����� ����� � ���� ����� ��� ���.~
  IF ~  Dead("Hoff")~ THEN REPLY ~����? �������? �� ��� �����.~ GOTO 28
  IF ~~ THEN REPLY ~��� ��� � �����?~ GOTO 29
  IF ~~ THEN REPLY ~�����, ����� ����������, ��� ���. ������.~ GOTO 30
  IF ~~ THEN REPLY ~�����, � � �������. ��� ��� ������ ���������?~ GOTO 31
END

IF ~~ THEN BEGIN 36 // from: 33.4
  SAY ~�, � ��� �� ������ ��� �������?~
  IF ~  Dead("Hoff")PartyHasItem("Nwmisc19")~ THEN REPLY ~�� �����. ��� ���� �����.~ GOTO 37
  IF ~  Dead("Hoff")!PartyHasItem("Nwmisc19")~ THEN REPLY ~�� �����. ���� ����� � ��������� ��������.~ GOTO 38
  IF ~  Global("HoffScared","GLOBAL",1)!Dead("Hoff")PartyHasItem("Nwmisc19")~ THEN REPLY ~�� ���� �������� �� ������. ��� ���� �����.~ GOTO 39
  IF ~  Global("HoffScared","GLOBAL",1)!Dead("Hoff")!PartyHasItem("Nwmisc19")~ THEN REPLY ~�� ���� �������� �� ������. ���� ����� � ��������� ��������.~ GOTO 40
  IF ~~ THEN REPLY ~������~ GOTO 41
END

IF ~~ THEN BEGIN 37 // from: 36.1
  SAY ~��� ������, ��� � �������. �� � �� ���� � �������� �� ������. �� ��� ��������� ��������. �������. �� �������� �� ���� �����-�� ������� �������. � ���� ������ ���, ����� ������������� �� ������� �����.~
  IF ~~ THEN DO ~SetGlobal("TamoraQuest","GLOBAL",2)AddexperienceParty(60000)TakePartyItem("Nwmisc19")~ EXIT
END

IF ~~ THEN BEGIN 38 // from: 36.2
  SAY ~��� ������, ��� � �������. �� � �� ���� � �������� �� ������. �� ��� ��������� ��������. �������. �� �������� �� ���� �����-�� ������� �������. � ���� ������ ���, ����� ������������� �� ������� �����.~
  IF ~~ THEN DO ~SetGlobal("TamoraQuest","GLOBAL",2)AddexperienceParty(50000)~ EXIT
END

IF ~~ THEN BEGIN 39 // from: 36.3
  SAY ~��� �������� ��� ��������� ��������. �������, �� �� ������ ������ ������ ������. ��� ����� �� �����. ��� ���� �� ���������. �� �������� �� ���� �����-�� ������� �������. � ���� ������ ���, ����� ������������� �� ������� �����.~
  IF ~~ THEN DO ~SetGlobal("TamoraQuest","GLOBAL",2)AddexperienceParty(40000)TakePartyItem("Nwmisc19")~ EXIT
END

IF ~~ THEN BEGIN 40 // from: 36.4
  SAY ~��� �������� ��� ��������� ��������. �������, �� �� ������ ������ ������ ������. ��� ����� �� �����. ��� ���� �� ���������. �� �������� �� ���� �����-�� ������� �������. � ���� ������ ���, ����� ������������� �� ������� �����.~
  IF ~~ THEN DO ~SetGlobal("TamoraQuest","GLOBAL",2)AddexperienceParty(30000)~ EXIT
END

IF ~~ THEN BEGIN 41 // from: 36.1
  SAY ~������ �������� ���� ���� ������.~
  IF ~~ THEN EXIT
END

// ---------------------------------

IF WEIGHT #2 /* Triggers after states #: 9 even though they appear after this state */
~  Gender(LastTalkedToBy(Myself),FEMALE)~ THEN BEGIN 42 // from:
  SAY ~��������, ����, � ��� �� �������. ���������� � �������. �� ����� ������� � �����.~ [TAMORA50]
  IF ~~ THEN EXIT
END

// ----------------------------------------------

IF WEIGHT #3 /* Triggers after states #: 9 even though they appear after this state */
~  Gender(LastTalkedToBy(Myself),MALE)GlobalGT("TamoraTired","MYAREA",0)!Global("TamoraQuest","GLOBAL",1)!Global("TamoraQuest","GLOBAL",9)~ THEN BEGIN 43 // from:
  SAY ~������������. ���� �� ������� ������������, �� � �������� �� �������. � ���� ��� ������� ������, ������.~ [TAMORA52]
  IF ~~ THEN EXIT
END

// ----------------------------------

IF WEIGHT #4 /* Triggers after states #: 9 even though they appear after this state */
~  Gender(LastTalkedToBy(Myself),MALE)Global("TamoraQuest","GLOBAL",1)Global("HoffHasMisc19","GLOBAL",1)~ THEN BEGIN 44 // from:
  SAY ~����� ���! ��� ������ � �����! ��� ��������� ���, ����� � ����-�� ����������!~ [TAMORA51]
  IF ~  PartyHasItem("Nwmisc19")!Dead("Hoff")~ THEN REPLY ~��� ���� �����. � ����� �� ������ ���.~ GOTO 45
  IF ~  PartyHasItem("Nwmisc19")Dead("Hoff")~ THEN REPLY ~���� �����. ��� ���� �����.~ GOTO 46
  IF ~~ THEN REPLY ~��, � ������� �� ����, ��������� �� ��� ������.~ GOTO 47
END

IF ~~ THEN BEGIN 45 // from: 44.1
  SAY ~�... ��� ������... ���-�� ������ �� ���, � ����� ������ �����? ��� �, ��� ����� ��� ������... �������. � �� ������� �����. ��� ����� ���� �� ���� ��� �����, ����� ��������� ���. �� �������� �� ���� �����-�� ������� �������. � ���� ������ ���, ����� ������������� �� ������� �����.~
  IF ~~ THEN DO ~SetGlobal("HoffHasMisc19","GLOBAL",0)SetGlobal("TamoraQuest","GLOBAL",2)AddexperienceParty(30000)TakePartyItem("Nwmisc19")~ EXIT
END

IF ~~ THEN BEGIN 46 // from: 44.2
  SAY ~�... ��� ������... ���-�� ������ �� ���, � ����� ���� ���, � ������ ����� �����? �����, ������ ����� � � ������. �� �������� �� ���� �����-�� ������� �������. � ���� ������ ���, ����� ������������� �� ������� �����.~
  IF ~~ THEN DO ~SetGlobal("HoffHasMisc19","GLOBAL",0)SetGlobal("TamoraQuest","GLOBAL",2)AddexperienceParty(50000)TakePartyItem("Nwmisc19")~ EXIT
END

IF ~~ THEN BEGIN 47 // from: 44.3
  SAY ~�������. � ������ �� � ��� �� ����� �������������. �������� �� ����!~
  IF ~~ THEN DO ~SetGlobal("TamoraQuest","GLOBAL",9)~ EXIT
END

// ----------------------------------

IF WEIGHT #5 /* Triggers after states #: 9 even though they appear after this state */
~  Gender(LastTalkedToBy(Myself),MALE)Global("TamoraQuest","GLOBAL",9)~ THEN BEGIN 48 // from:
  SAY ~����� ���! ��� ������ � �����! ��� ��������� ���, ����� � ����-�� ����������!~ [TAMORA51]
  IF ~~ THEN EXIT
END

