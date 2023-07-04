// creator  : weidu (version 23700)
// argument : GAM.DLG
// game     : .
// source   : ./override/GAM.DLG
// dialog   : ./dialog.tlk
// dialogF  : ./dialogf.tlk

BEGIN ~GAM~

IF ~  NumberOfTimesTalkedTo(0)
GlobalLT("KnowsAboutMatch","GLOBAL",3)
~ THEN BEGIN 0 // from:
  SAY ~��? � ���-�� ���� ��� ��� �������?~
  IF ~~ THEN REPLY ~������ ���������, ��� ��.~ GOTO 1
  IF ~~ THEN REPLY ~�� ��� �� - �������� �������� �����������.~ GOTO 2
  IF ~~ THEN REPLY ~� �����.~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY ~����� ���� ���, � ����� � ���� ����������. ����� ������ ���� ���������� ��� ���� ������.~
  IF ~  Global("KnowsAboutMatch","GLOBAL",0)
~ THEN REPLY ~����������? ��� ���?~ GOTO 3
  IF ~~ THEN REPLY ~�� ��, ����������. � �� �����, ��� ���� ���������.~ GOTO 4
  IF ~~ THEN REPLY ~������-��, � ���� ��������� ������� ������� � ����������.~ GOTO 5
  IF ~~ THEN REPLY ~� �����.~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY ~����� � ���. ����� ���� ��� � ����� � ���� ����������, ����� ������ ���� ����������.~
  IF ~~ THEN REPLY ~����������? ��� ���?~ GOTO 3
  IF ~~ THEN REPLY ~�� ��, ����������. � �� �����, ��� ���� ���������.~ GOTO 4
  IF ~~ THEN REPLY ~������-��, � ���� ��������� ������� ������� � ����������.~ GOTO 5
  IF ~~ THEN REPLY ~� �����.~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 1.0
  SAY ~��� �� ��, ��� � ���� ���������. ��������� � �������, ����� ��� ��������� �� ������ ��������.~
  IF ~  CheckStatGT(LastTalkedToBy(Myself),10,CHR)
~ THEN REPLY ~��������, � ���� ����� ������� � ����������. ���������� ��� � ���.~ GOTO 6
  IF ~  CheckStatLT(LastTalkedToBy(Myself),11,CHR)
~ THEN REPLY ~��������, � ���� ����� ������� � ����������. ���������� ��� � ���.~ GOTO 8
  IF ~~ THEN REPLY ~� �� 100 ������� �� ��� � ��� ����������?~ GOTO 9
  IF ~~ THEN REPLY ~�. ��� �, ��� ���� ���������� �� ����������.~ GOTO 10
  IF ~~ THEN REPLY ~� �����.~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1 1.1
  SAY ~���� ����. �-�� ��������� �������� �������. ������, � ���� ������� �����, ����� ������ ������, ����������� ����, ����� �������� ��.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.2 1.2
  SAY ~��� ���? �����, �����, �� � ���� ��� ���������� ���, �����. ����� ���.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6 // from: 9.0 3.0
  SAY ~���. ��� �, ��� ��� �����, �� ��� ����� �������. �����, � ���� �� ����� �������� �����. �������, �������� ����� ���������, ��� � ���� ����� ��� ��������� �����������. � ������� ����������, �� ������� ����, ��� ��� ��������. � ����� ������, �� ���������� �����, ����� �������� ����������. ��� ���� ������ ���� ����������, � ������� ������-����� ������� � ��������... ������, ��� ������� ��� ����������, ������� ����.~
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY ~�� ���� �� ���� �� �����������. ���������� � ���������, ���� ��� ��� ����������.~
  IF ~~ THEN DO ~SetGlobal("KnowsAboutMatch","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 9.1 3.1
  SAY ~�� ����, �������, �� ������ �� �������, ������� ��. ��������� ������� � ����-������ �������.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 9 // from: 3.2
  SAY ~���� ���� ������ �� ����������. ���������� ������ �� ����-������ �������, ����� � ������� ����������� ����.~
  IF ~  CheckStatGT(LastTalkedToBy(Myself),10,CHR)
~ THEN REPLY ~����� ��������. ������ ��������� ���� �� �����������.~ GOTO 6
  IF ~  CheckStatLT(LastTalkedToBy(Myself),11,CHR)
~ THEN REPLY ~����� ��������. ������ ��������� ���� �� �����������.~ GOTO 8
  IF ~~ THEN REPLY ~� �����.~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 3.3
  SAY ~���? ���� �����������. �������, ���� ��� ���������� �� �������.~
  IF ~~ THEN EXIT
END

IF ~  !NumberOfTimesTalkedTo(0)
GlobalLT("KnowsAboutMatch","GLOBAL",2)
~ THEN BEGIN 11 // from:
  SAY ~��������� ������ ������, �������.~
  IF ~~ THEN EXIT
END

IF ~  !NumberOfTimesTalkedTo(0)
Global("KnowsAboutMatch","GLOBAL",2)
~ THEN BEGIN 12 // from:
  SAY ~����� ������� ����������.~
  IF ~~ THEN EXIT
END

IF ~  AreaCheck("NW2210")
GlobalGT("KnowsAboutMatch","GLOBAL",2)
Global("Cure","LOCALS",0)
~ THEN BEGIN 13 // from:
  SAY ~����... ���� �� ������ �������� ����, �������, � �������� ��� ���, ��� ���� � ���, ��� ���� ��� �������. ���... ���� ���� �� �����.~
  IF ~~ THEN REPLY ~���� ������? ��� ��� ���������?~ GOTO 14
  IF ~~ THEN REPLY ~�� ������ ����������, ����� ������ ����������� � ����������?~ GOTO 15
  IF ~  PartyHasItem("Potn52")
~ THEN REPLY ~���... ������ ���������� �����.~ GOTO 16
  IF ~  !PartyHasItem("Potn52")
PartyHasItem("Potn55")
~ THEN REPLY ~���... ������ ���������� �����.~ GOTO 17
  IF ~  !PartyHasItem("Potn52")
!PartyHasItem("Potn55")
PartyHasItem("Potn08")
~ THEN REPLY ~���... ������ ���������� �����.~ GOTO 18
  IF ~~ THEN REPLY ~��, � ���� �������� ����.~ DO ~SetGlobal("Promise","LOCALS",1)~ EXIT
  IF ~~ THEN REPLY ~� ���������� ���-������ ���������. �������.~ GOTO 19
  IF ~~ THEN REPLY ~� ��� ��� �� ����?~ GOTO 20
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY~� � �������� �������� ���� �� ���� ��������... � ���, �� ����� ������, ��� ����� ��������. ���� �� ���� ��������. ����������... ����� ��� �� ������.~
  IF ~~ THEN REPLY ~������ �� ����. �� � ����� ��������� � ���� ���������.~ GOTO 20
  IF ~~ THEN REPLY ~�� ������ ����������, ����� ������ ����������� � ����������?~ GOTO 15
  IF ~  PartyHasItem("Potn52")
~ THEN REPLY ~���... ������ ���������� �����.~ GOTO 16
  IF ~  !PartyHasItem("Potn52")
PartyHasItem("Potn55")
~ THEN REPLY ~���... ������ ���������� �����.~ GOTO 17
  IF ~  !PartyHasItem("Potn52")
!PartyHasItem("Potn55")
PartyHasItem("Potn08")
~ THEN REPLY ~���... ������ ���������� �����.~ GOTO 18
  IF ~~ THEN REPLY ~��, � ���� �������� ����.~ EXIT
  IF ~~ THEN REPLY ~� ���������� ���-������ ���������. �������.~ GOTO 19
END

IF ~~ THEN BEGIN 15 // from: 14.1 13.1
  SAY ~������ ��� ����������� ��� ����������. � ������ ���� ��������� ������.  ������� ����� �������� ���� ���� ��������� ������.~
  IF ~~ THEN REPLY ~������ �� ����. �� � ����� ��������� � ���� ���������.~ GOTO 20
  IF ~  PartyHasItem("Potn52")
~ THEN REPLY ~���... ������ ���������� �����.~ GOTO 16
  IF ~  !PartyHasItem("Potn52")
PartyHasItem("Potn55")
~ THEN REPLY ~���... ������ ���������� �����.~ GOTO 17
  IF ~  !PartyHasItem("Potn52")
!PartyHasItem("Potn55")
PartyHasItem("Potn08")
~ THEN REPLY ~���... ������ ���������� �����.~ GOTO 18
  IF ~~ THEN REPLY ~��, � ���� �������� ����.~ EXIT
  IF ~~ THEN REPLY ~� ���������� ���-������ ���������. �������.~ GOTO 19
END

IF ~~ THEN BEGIN 16 // from: 15.1 14.2 13.2
  SAY ~�������... �������� �� ���� ������, ���� ���. ��� ��� ��������, ��� � ���� ����� � ���� ����������.~
  IF ~~ THEN DO ~TakePartyItem("Potn52")
SetGlobal("Cure","LOCALS",1)
~ EXIT
END

IF ~~ THEN BEGIN 17 // from: 20.2 15.2 14.3 13.3
  SAY ~�������... �������� �� ���� ������, ���� ���. ��� ��� ��������, ��� � ���� ����� � ���� ����������.~
  IF ~~ THEN DO ~TakePartyItem("Potn55")
SetGlobal("Cure","LOCALS",1)
~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 20.3 15.3 14.4 13.4
  SAY ~�������... �������� �� ���� ������, ���� ���. ��� ��� ��������, ��� � ���� ����� � ���� ����������.~
  IF ~~ THEN DO ~TakePartyItem("Potn08")
SetGlobal("Cure","LOCALS",1)
~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 20.5 15.5 14.6 13.6
  SAY ~�-����������, ����������. �... �� ���� ����� �������, ���� ���.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 20 // from: 15.0 14.0 13.7
  SAY ~����������... �� �������� ���� ����� �������, ���� ���! ������ ����!~
  IF ~~ THEN REPLY ~�����, ��� ����� �������� ����� ����� ����������.~ GOTO 21
  IF ~~ THEN REPLY ~���� �� �������. � ���� �������� � ��� ����� ������.~ GOTO 21
  IF ~  !PartyHasItem("Potn52")
PartyHasItem("Potn55")
~ THEN REPLY ~���... ������ ���������� �����.~ GOTO 17
  IF ~  !PartyHasItem("Potn52")
!PartyHasItem("Potn55")
PartyHasItem("Potn08")
~ THEN REPLY ~���... ������ ���������� �����.~ GOTO 18
  IF ~~ THEN REPLY ~��, � ���� �������� ����.~ EXIT
  IF ~~ THEN REPLY ~� ���������� ���-������ ���������. �������.~ GOTO 19
END

IF ~~ THEN BEGIN 21 // from: 20.1 20.0
  SAY ~����� ����������, <MALEFEMALE>. ������, ����� ���� ������� �� �������� ����� �� ������.~
  IF ~~ THEN DO ~SetGlobal("Cure","LOCALS",66)
~ EXIT
END

IF ~  AreaCheck("NW2210")
GlobalGT("KnowsAboutMatch","GLOBAL",2)
Global("Cure","LOCALS",2)
~ THEN BEGIN 22 // from:
  SAY ~�������... �������� �� ���� ������, ���� ���. ��� ��� ��������, ��� � ���� ����� � ���� ����������.~
  IF ~~ THEN GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY ~� �������� ���� �� ���� ������ ��������� ��������. ��� �������� ������� �����. ��� ��������, � ���� ���������� �������, ����� ���������� � ����, �� ��� �� ���. �� ����� ����� ���� �� ��� ������� ������ ������� � ��� �������� �������, �... ����������. ��� ���� ������ ���� ����������� ��������������� ���� �������... �� ��� ������ ������� ��.~
  IF ~~ THEN GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY ~������ � ����������� ��������� ������. ���, ������ � ������������� �����, ������� � ����� �����. ��������� ��� ���, ���� ���. ����� ���� �����.~
  IF ~~ THEN DO ~SetGlobal("Cure","LOCALS",3)
SetGlobal("GamCure","GLOBAL",1)
GiveItemCreate("Book07",LastTalkedToBy,1,0,0)
EscapeArea()
~ EXIT
END

IF ~  AreaCheck("NW2201")
GlobalGT("KnowsAboutMatch","GLOBAL",2)
Global("GamCure","GLOBAL",1)
~ THEN BEGIN 25 // from:
  SAY ~�������... �������� �� ���� ������, ���� ���. ��� ��������, ��� � ���� � ���� ����������.~
  IF ~~ THEN EXIT
END
